import { getSession } from 'next-auth/react';
import { signOut, useSession } from 'next-auth/react';

import Layout from '../../components/Layout';
import Heading from '../../components/typography/Heading';
import { useForm } from 'react-hook-form';
import * as yup from 'yup';
import { yupResolver } from '@hookform/resolvers/yup';
import React, { useState, useEffect } from 'react';
import Feedback from '../../components/Feedback';
import { API_TOKEN } from '../../constants/Api.js';

const schema = yup.object().shape({
  name: yup
    .string()
    .required('Please enter your name')
    .min(3, 'Must be at least 3 characters'),
  surname: yup
    .string()
    .required('Please enter your surname')
    .min(4, 'Must be at least 4 characters'),
  email: yup
    .string()
    .required('Please enter an email address')
    .email('Please enter a valid email address'),
  message: yup
    .string()
    .required('Please enter your message')
    .min(10, 'The message must be at least 10 characters'),
  select: yup.string().required('Please select a option'),
});

export default function Contact() {
  const [message, setMessage] = useState('');
  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm({
    resolver: yupResolver(schema),
  });

  // Example useEffect for initialization or side effects
  useEffect(() => {
    // Perform any initialization or side effects here
    console.log('Component mounted');
  }, []);

  async function onSubmit({ name, surname, email, message, select }) {
    const receiveddata = {
      name,
      surname,
      email,
      message,
      select,
    };
    const bb = JSON.stringify(receiveddata);
    const bbb = '{' + '"' + 'data' + '"' + ':' + bb + '}';
    console.log('bbb=', bbb);

    try {
      const res = await fetch('http://localhost:1337/api/notes', {
        mode: 'cors',
        method: 'POST',
        body: bbb,
        headers: {
          'content-type': 'application/json',
          Authorization: `Bearer ${API_TOKEN}`,
        },
      });
      console.log(res);
      if (res.ok) {
        console.log('Yeai!');

        setMessage('Your joke was successfully sent!');
      } else {
        console.log('Oops! Something is wrong.');
      }
    } catch (error) {
      console.log(error);
    }
  }

  return (
    <>
      <Layout />
      <Heading>Contact</Heading>
      <Feedback type="success" content={message} />

      <form onSubmit={handleSubmit(onSubmit)} className="form shadow">
        <div className="form-content">
          <div className="form-field">
            <label className="form-label">Name</label>
            <input {...register('name')} className="form-input" />
            {errors.name && <span>{errors.name.message}</span>}
          </div>

          <div className="form-field">
            <label className="form-label">Surname</label>
            <input {...register('surname')} className="form-input" />
            {errors.surname && <span>{errors.surname.message}</span>}
          </div>

          <div className="form-field">
            <label className="form-label">Email</label>
            <input {...register('email')} className="form-input" />
            {errors.email && <span>{errors.email.message}</span>}
          </div>

          <div className="form-field">
            <label className="form-label">Message</label>
            <textarea {...register('message')} className="form-input" />
            {errors.message && <span>{errors.message.message}</span>}
          </div>

          <div className="form-field">
            <label className="form-label">Subject</label>
            <select {...register('select')} className="form-input">
              <option value="">choose subject</option>
              <option value="пропозиція">пропозиція</option>
              <option value="запит">запит</option>
              <option value="критичне зауваження">критичне зауваження</option>
              <option value="порада">порада</option>
              <option value="жарт">жарт</option>
            </select>
            {errors.select && <span>{errors.select.message}</span>}
          </div>

          <button className="form-button">Send</button>
        </div>
      </form>
    </>
  );
}

export const getServerSideProps = async (context) => {
  const session = await getSession(context);

  //const session = await setTimeout(() => getSession(context), 100);

  //  console.log(session);
  // Check if session exists or not, if not, redirect
  if (session == null) {
    return {
      redirect: {
        destination: '/auth/not-authenticated',
        permanent: true,
      },
    };
  }
  return {
    props: {},
  };
};
