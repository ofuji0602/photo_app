/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './app/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{html,js,erb}',
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
