import Link from 'next/link';
import { ConnectWallet } from '@thirdweb-dev/react';

export default function Navbar() {
  return (
    <div className="navbar">
      <Link href="/">
        <p className="brand">Tanmay's Portfolio</p>
      </Link>
      <ConnectWallet 
      btnTitle='sign in' modalTitle=' select sign in method' detailsBtn={ () => { return <p className="hi"> profile</p>}} />
      <style >{`
        .navbar {
          display: flex;
          justify-content: space-between;
          align-items: center;
          padding: 1rem;
          color: white;
        }

        .brand {
          margin: 0;
          color: white;
          font-size: 1.2rem;
          cursor: pointer;
          
        }
        .hi{
        margin-right: 5rem;
        cursor: pointer;

        }
      `}</style>
    </div>
  );
}
