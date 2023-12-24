import { getSession } from 'next-auth/react';
import Layout from '../../components/Layout.js';
import Heading from '../../components/typography/Heading.js';

import { useState } from 'react';
import axios from 'axios';
import { STORAGE_API } from '../../constants/Api';
import { API_TOKEN } from '../../constants/Api.js';
import Image from 'next/image';
import { PICTURES_API } from '../../constants/Api.js';

export default function All(props) {
  const [currentPage, setCurrentPage] = useState(1);
  const allItems = props.items;
  console.log('allItems=', allItems);
  const itemsPerPage = 10;

  const indexOfLastItem = currentPage * itemsPerPage;
  const indexOfFirstItem = indexOfLastItem - itemsPerPage;
  const currentItems = allItems.slice(indexOfFirstItem, indexOfLastItem);
  const paginate = (pageNumber) => setCurrentPage(pageNumber);

  const pageNumbers = [];
  for (let i = 1; i <= Math.ceil(allItems.length / itemsPerPage); i++) {
    pageNumbers.push(i);
  }

  const pages = 'Pages: ';

  return (
    <Layout>
      <>
        <Heading> Home </Heading>
        <div className="grid grid-cols-5 gap-4">
          {currentItems.map((item) => (
            <a href={`item/${item.id}`} key={item.id}>
              <div className="grid grid-rows-1 gap-2">
                <div>номер {item.id}</div>
              </div>
              <div className="grid grid-rows-1 gap-2">
                <div>
                  місце зберігання:{' '}
                  {item.attributes.storage_place.data.attributes.storage_name}
                </div>
              </div>

              <div className="grid grid-rows-1 gap-2">
                <div> назва: {item.attributes.name_of_item}</div>
              </div>

              <div className="grid grid-rows-1 gap-2">
                <div>стелаж: {item.attributes.shelf}</div>
              </div>
              <div className="grid grid-rows-1 gap-2">
                <div>місце на стелажі: {item.attributes.shelf_space}</div>
              </div>
              <div className="grid grid-rows-1 gap-2">
                <div>дата покупки: {item.attributes.purchase_date}</div>
              </div>
              <div className="grid grid-rows-1 gap-2">
                <div>
                  <Image
                    src={
                      PICTURES_API +
                      item.attributes.pictures.data[0].attributes.formats
                        .thumbnail.url
                    }
                    width={
                      item.attributes.pictures.data[0].attributes.formats
                        .thumbnail.width
                    }
                    height={
                      item.attributes.pictures.data[0].attributes.formats
                        .thumbnail.height
                    }
                    priority
                    alt="My Image"
                  ></Image>
                </div>
              </div>
            </a>
          ))}
        </div>
        {/* Pagination Links */}
        <nav>
          <ul className="pagination">
            {/* First page link */}
            <li className="page-item">
              {pages}
              <a
                onClick={(e) => {
                  e.preventDefault();
                  paginate(1);
                }}
                href="#"
                className="page-link"
              >
                First
              </a>
            </li>

            {/* Page number links */}
            {pageNumbers.map((number) => (
              <li key={number} className="page-item">
                <a
                  onClick={(e) => {
                    e.preventDefault();
                    paginate(number);
                  }}
                  href="#"
                  className="page-link"
                >
                  {number}
                </a>
              </li>
            ))}

            {/* Last page link */}
            <li className="page-item">
              <a
                onClick={(e) => {
                  e.preventDefault();
                  paginate(pageNumbers.length); // Assuming pageNumbers contains all pages
                }}
                href="#"
                className="page-link"
              >
                Last
              </a>
            </li>
          </ul>
        </nav>
      </>
    </Layout>
  );
}

// export const getServerSideProps = async (context) => {
//   const session = await getSession(context);
//
//   //const session = await setTimeout(() => getSession(context), 1);
//
//   //  console.log(session);
//   // Check if session exists or not, if not, redirect
//   if (session == null) {
//     return {
//       redirect: {
//         destination: '/auth/not-authenticated',
//         permanent: true,
//       },
//     };
//   }
//   return {
//     props: {},
//   };
// };
//
export const getServerSideProps = async (context) => {
  let items = [];
  const session = await getSession(context);
  //const session = await setTimeout(() => getSession(context), 1000);

  // If session does not exist, redirect immediately
  if (!session) {
    return {
      redirect: {
        destination: '/auth/not-authenticated',
        permanent: false, // Set to false unless you want this redirection to be cached
      },
    };
  }
  try {
    const response = await axios.get(
      `${STORAGE_API}/items?filters[users_permissions_user.data[0].attributes.email]=${session.email}&populate=*`,
      {
        headers: { Authorization: `Bearer ${API_TOKEN}` },
      },
    );
    items = response.data.data;
  } catch (error) {
    console.error('Error fetching items:', error);
  } finally {
  }

  // If session exists, return the usual props
  return {
    props: {
      session,
      items: items,
    },
  };
};
