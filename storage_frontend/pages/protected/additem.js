import { getSession } from 'next-auth/react';
import { signOut, useSession } from 'next-auth/react';

import Layout from '../../components/Layout';
import Heading from '../../components/typography/Heading';
import { useForm, Controller } from 'react-hook-form';
import * as yup from 'yup';
import { yupResolver } from '@hookform/resolvers/yup';
import React, { useState } from 'react';
import Feedback from '../../components/Feedback';
import { API_TOKEN } from '../../constants/Api.js';
import { STORAGE_API } from '../../constants/Api.js';
import axios from 'axios';

const schema = yup.object().shape({
  name_of_item: yup
    .string()
    .required('Please enter the name of the item')
    .min(3, 'Must be at least 3 characters'),
  shelf: yup
    .string()
    .required('Please enter the shelf number')
    .min(1, 'Must be at least 1 character'),
  shelf_space: yup
    .string()
    .required('Please enter the shelf space number')
    .min(1, 'Must be at least 1 character'),
  notes: yup
    .string()
    .required('Please enter your notes')
    .min(10, 'Must be at least 10 characters'),

  storage_place: yup.string().required('Please choose storage place'),
  category_of_items: yup.string().required('Please choose category of item'),
});

export default function AddItem(props) {
  const [message, setMessage] = useState('');

  // console.log("here1", props.storages);
  // console.log("here2", props.categories);

  const [file, setFile] = useState(null);

  const handleFileChange = (event) => {
    setFile(event.target.files[0]);
  };

  const {
    control,
    handleSubmit,
    formState: { errors },
  } = useForm({
    resolver: yupResolver(schema),
    defaultValues: {
      name_of_item: '', // Provide initial values here
      shelf: '',
      shelf_space: '',
      notes: '',
      category_of_items: '',
      storage_place: '',
    },
  });
  async function onSubmit(data) {
    const formData = new FormData();

    // Append the file
    if (file) {
      formData.append('files.pictures', file, file.name); // Assuming 'image' is the field name for the file in Strapi
    }

    // Append other data, including user ID
    formData.append(
      'data',
      JSON.stringify({
        ...data,
        users_permissions_user: 1, // Assuming this is the correct field name in Strapi
      }),
    );

    try {
      const res = await fetch('http://127.0.0.1:1337/api/items?populate=*', {
        method: 'POST',
        body: formData,
        headers: {
          Authorization: `Bearer ${API_TOKEN}`,
        },
      });

      if (res.ok) {
        setMessage('Your item was successfully stored!');
      } else {
        const errorResponse = await res.json();
        console.log('Oops! Something went wrong.', errorResponse);
      }
    } catch (error) {
      console.error('Fetch error:', error);
    }
  }

  return (
    <>
      <Layout />
      <Heading>Add Item</Heading>
      <Feedback type="success" content={message} />

      <form onSubmit={handleSubmit(onSubmit)} className="form shadow">
        <div className="form-content">
          <div className="form-field">
            <label className="form-label">Name of item</label>
            <Controller
              name="name_of_item"
              control={control}
              render={({ field }) => (
                <input {...field} className="form-input" />
              )}
            />
            {errors.name_of_item && <span>{errors.name_of_item.message}</span>}
          </div>

          <div className="form-field">
            <label className="form-label">Shelf</label>
            <Controller
              name="shelf"
              control={control}
              render={({ field }) => (
                <input {...field} className="form-input" />
              )}
            />
            {errors.shelf && <span>{errors.shelf.message}</span>}
          </div>

          <div className="form-field">
            <label className="form-label">Shelf space</label>
            <Controller
              name="shelf_space"
              control={control}
              render={({ field }) => (
                <input {...field} className="form-input" />
              )}
            />
            {errors.shelf_space && <span>{errors.shelf_space.message}</span>}
          </div>

          <div className="form-field">
            <label className="form-label">Notes</label>
            <Controller
              name="notes"
              control={control}
              render={({ field }) => (
                <textarea {...field} className="form-input" />
              )}
            />
            {errors.notes && <span>{errors.notes.message}</span>}
          </div>

          <div className="form-field">
            <label className="form-label">Category of item</label>
            <Controller
              name="category_of_items"
              control={control}
              render={({ field }) => (
                <select {...field} className="form-input">
                  <option value="">Choose a category</option>
                  {props.categories.map((category) => (
                    <option key={category.id} value={category.id}>
                      {category.attributes.category}
                    </option>
                  ))}
                </select>
              )}
            />
            {errors.category_of_items && (
              <span>{errors.category_of_items.message}</span>
            )}
          </div>

          <div className="form-field">
            <label className="form-label">Storage name</label>
            <Controller
              name="storage_place"
              control={control}
              render={({ field }) => (
                <select {...field} className="form-input">
                  <option value="">Choose a storage place</option>
                  {props.storages.map((storage) => (
                    <option key={storage.id} value={storage.id}>
                      {storage.attributes.storage_name}
                    </option>
                  ))}
                </select>
              )}
            />
            {errors.storage_place && (
              <span>{errors.storage_place.message}</span>
            )}
          </div>

          <input type="file" onChange={handleFileChange} />

          <button type="submit" className="form-button">
            Send
          </button>
        </div>
      </form>
    </>
  );
}

export const getServerSideProps = async (context) => {
  let categories = [];
  let storages = []; //storage places

  const session = await getSession(context);

  //console.log(session);
  // Check if session exists or not, if not, redirect
  if (session == null) {
    return {
      redirect: {
        destination: '/auth/not-authenticated',
        permanent: true,
      },
    };
  }
  try {
    const response = await axios.get(STORAGE_API + '/category-of-items', {
      headers: { Authorization: `Bearer ${API_TOKEN}` },
    });
    categories = response.data.data;
    console.log(categories);
  } catch (error) {
    console.log('we have errors = ', error);
  }

  try {
    const response = await axios.get(STORAGE_API + '/garages', {
      headers: { Authorization: `Bearer ${API_TOKEN}` },
    });
    storages = response.data.data;
  } catch (error) {
    console.log('we have errors = ', error);
  }

  return {
    props: {
      categories: categories,
      storages: storages,
    },
  };
};
