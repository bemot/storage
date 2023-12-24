import { getSession } from 'next-auth/react';
import { signOut, useSession } from 'next-auth/react';
import Link from 'next/link';
import Feedback from '../components/Feedback';
export default function Layout({ children }) {
  return (
    <>
      <nav className="navigation shadow">
        <Link href="/protected/all_storages">
          <a className="nav-link">all storages</a>
        </Link>

        <Link href="/protected/newsearch">
          <a className="nav-link">Searching</a>
        </Link>
        <Link href="/protected/additem">
          <a className="nav-link">Add item</a>
        </Link>

        <Link href="/protected/contact">
          <a className="nav-link">Contact</a>
        </Link>
        <Link href="/">
          <a className="nav-link">Logout</a>
        </Link>
      </nav>
      <div className="content-container">{children}</div>
    </>
  );
}
