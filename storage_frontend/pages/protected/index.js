import { getSession } from 'next-auth/react';
import Heading from '../../components/typography/Heading.js';
import Layout from '../../components/Layout.js';
import Link from 'next/link';
import styles from '../../styles/Home.module.css';

export default function Protected(props) {
  console.log('props from protected index', props);
  return (
    <>
      <Layout>
        <div className={styles.container}>
          <Heading>
            <title>Strapi - Next - NextAuth</title>
          </Heading>
          <h1>Protected Page</h1>
          <Link href="/">
            <button>Back to login page</button>
          </Link>
        </div>
      </Layout>
    </>
  );
}

export const getServerSideProps = async (context) => {
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

  // If session exists, return the usual props
  return {
    props: {
      session,
    },
  };
};
