// import Link from 'next/link';
// export default function Layout({ children }) {
//   return (
//     <>
//       <nav className="navigation shadow">
//         <Link href="/protected/all_storages">
//           <a className="nav-link">all storages</a>
//         </Link>
//
//         <Link href="/protected/newsearch">
//           <a className="nav-link">Searching</a>
//         </Link>
//         <Link href="/protected/additem">
//           <a className="nav-link">Add item</a>
//         </Link>
//
//         <Link href="/protected/contact">
//           <a className="nav-link">Contact</a>
//         </Link>
//         <Link href="/">
//           <a className="nav-link">Logout</a>
//         </Link>
//       </nav>
//       <div className="content-container">{children}</div>
//     </>
//   );
// }
//

import Link from 'next/link';

export default function Layout({ children }) {
  return (
    <>
      <nav className="bg-black shadow-md py-4">
        <div className="max-w-6xl mx-auto px-4">
          <div className="flex justify-between">
            <div className="flex space-x-4">
              {/* Navigation Links Here */}
              <Link href="/protected/all_storages">
                <a className="nav-link px-3 py-2 rounded-md text-sm font-medium text-gray-700 hover:text-gray-900 hover:bg-gray-100">
                  All Storages
                </a>
              </Link>

              <Link href="/protected/newsearch">
                <a className="nav-link px-3 py-2 rounded-md text-sm font-medium text-gray-700 hover:text-gray-900 hover:bg-gray-100">
                  Searching
                </a>
              </Link>

              <Link href="/protected/additem">
                <a className="nav-link px-3 py-2 rounded-md text-sm font-medium text-gray-700 hover:text-gray-900 hover:bg-gray-100">
                  Add Item
                </a>
              </Link>

              <Link href="/protected/contact">
                <a className="nav-link px-3 py-2 rounded-md text-sm font-medium text-gray-700 hover:text-gray-900 hover:bg-gray-100">
                  Contact
                </a>
              </Link>

              <Link href="/">
                <a className="nav-link px-3 py-2 rounded-md text-sm font-medium text-gray-700 hover:text-gray-900 hover:bg-gray-100">
                  Logout
                </a>
              </Link>
            </div>
          </div>
        </div>
      </nav>
      <div className="content-container p-4">{children}</div>
    </>
  );
}
