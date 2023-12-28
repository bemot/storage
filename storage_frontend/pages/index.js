import { signOut, useSession } from 'next-auth/react';
import Head from 'next/head';
import Link from 'next/link';
import { useEffect } from 'react';
import styles from '../styles/Home.module.css';
import Heading from '../components/typography/Heading';
import { useRouter } from 'next/router';


export default function Home() {

  const router = useRouter();

  const { data: session } = useSession();

  useEffect(() => {
    if (session == null) return;
    //console.log('session.jwt', session.jwt);
  }, [session]);


  const handleSignOut = async () => {
    await signOut({ redirect: false });
    router.push('/auth/sign-in');
  };
 

  return (
    <>
      <div className={styles.container}>
        <Heading>Storages</Heading>
        <h1>{session ? 'Authenticated' : 'Not Authenticated'}</h1>
        {session && (
          <div style={{ marginBottom: 10 }}>
            <h3>Session Data</h3>
            <div>Email: {session.user.email}</div>
            <div>JWT from Strapi</div>
          </div>
        )}
        {session ? (
        //<button onClick={() => signOut({ callbackUrl: `https://engineeringukraine.com.ua/auth/sign-in` })}>Sign out</button>
          <button onClick={handleSignOut}>Sign out</button>

        ) : (
          <Link href="/auth/sign-in" i passHref>
            <a>
              <button>Sign In</button>
            </a>
          </Link>
        )}
        <Link href="/protected/" passHref>
          <a>
            <button
              style={{
                marginTop: 10,
              }}
            >
              Protected Page
            </button>
          </a>
        </Link>
      </div>
    </>
  );
}

