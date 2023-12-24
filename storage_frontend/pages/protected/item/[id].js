import { STORAGE_API } from '../../../constants/Api';
import { PICTURES_API } from '../../../constants/Api.js';
import { API_TOKEN } from '../../../constants/Api.js';
import Layout from '../../../components/Layout';
import axios from 'axios';
import Heading from '../../../components/typography/Heading';
import Image from 'next/image';

export default function Item({ item }) {
  console.log(item);
  return (
    <Layout>
      <div className="item-details-container shadow">
        <Heading>{item.attributes.name_of_item}</Heading>
        <div>
          місце зберігання:{' '}
          {item.attributes.storage_place.data.attributes.storage_name}
        </div>
        <div>Стелаж: {item.attributes.shelf}</div>
        <div>Місце на стелажі: {item.attributes.shelf_space}</div>
        <div>Дата покупки: {item.attributes.purchase_date}</div>
        <div>Notes:{item.attributes.notes}</div>
        <div>Pictures:</div>
        <div>
          {item.attributes.pictures.data.map((picture) => {
            return (
              <div key={picture.id}>
                <div className="img-container">
                  <Image
                    src={PICTURES_API + picture.attributes.url}
                    width={picture.attributes.width}
                    height={picture.attributes.height}
                    priority
                    alt="My Image"
                  ></Image>
                </div>
              </div>
            );
          })}
        </div>
      </div>
    </Layout>
  );
}

export async function getServerSideProps({ params }) {
  console.log('params=', params);
  const url = `${STORAGE_API}/items/${params.id}?populate=*`;

  try {
    const response = await axios.get(url, {
      headers: { Authorization: `Bearer ${API_TOKEN}` },
    });
    const item = response.data.data;
    console.log('item = ', item);

    return { props: { item } };
  } catch (error) {
    console.error(error);
    return { props: { item: null } };
  }
}
