import Head from 'next/head';
import styles from '../../styles/SignIn.module.css';
import { signIn } from 'next-auth/react';
import { useRouter } from 'next/router';

export default function SignIn() {
  const router = useRouter();

  const onSubmit = async (e) => {
    console.log(e);
    e.preventDefault();
    const result = await signIn('credentials', {
      redirect: false,
      email: e.target[0].value,
      password: e.target[1].value,
    });
    if (result.ok) {
      console.log(e.target[0].value, e.target[1].value);
      router.replace('/protected');
      return;
    }
    alert('Credential is not valid' + email + password);
  };

  return (
    <div className={styles.container}>
      <Head>
        <title>Storages</title>
      </Head>
      <h1>Please, sign in dear customer:</h1>
      <form className={styles.form} onSubmit={onSubmit}>
        <label htmlFor="email">Email</label>
        <input id="email" name="email" type="email" className={styles.input} />
        <label
          style={{
            marginTop: 10,
          }}
          htmlFor="password"
        >
          Password
        </label>
        <input
          id="password"
          name="password"
          type="password"
          className={styles.input}
        />
        <button
          className={styles.button}
          style={{
            marginTop: 15,
          }}
        >
          Sign In
        </button>
      </form>
    </div>
  );
}
