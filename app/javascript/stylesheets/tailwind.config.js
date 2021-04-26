module.exports = {
  purge: [
    "./app/**/*.html.erb",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/javascript/**/*.vue",
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      height: {
        'bandeau': '8%',
        'corp': '92%'
      },
      colors: {
        pweep: {
          purple: "#201C35",
          background: "#100E1B",
          yellow: "#FFA630",
          blue: "#4DFFF3"
        }
      }
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
