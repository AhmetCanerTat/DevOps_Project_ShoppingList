import { render, screen } from '@testing-library/react';
import App from './App';



test("test something",()=>{

  render(<App/>);
  const testElement = screen.getByPlaceholderText(/Add an item.../)
  expect(testElement).toBeInTheDocument();


})