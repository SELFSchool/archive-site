module.exports = {
  mode: 'jit',
  purge: ['./public/**/*.html', './src/**/*.{astro,js,jsx,ts,tsx,vue,svelte}'],
  theme: {
    extend: {
      colors: {
        transparent: 'transparent',
        current: 'currentColor',
        primary: {
          DEFAULT: '#7400B3'
        },
        secondary: {
          DEFAULT: '#FFFFFF'
        },
        tertiary: {
          DEFAULT: '#A90AFF'
        }
      }
    }
  },
  plugins: [
    require('@tailwindcss/typography'),
  ],
};
