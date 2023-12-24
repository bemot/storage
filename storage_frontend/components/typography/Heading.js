import { getSession } from 'next-auth/react';

export default function Heading({ children }) {
  return <h1 className="heading">{children}</h1>;
}
