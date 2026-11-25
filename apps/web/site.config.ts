export const siteConfig = {
  authorName: 'Enrique Quero',
  authorUrl: 'https://equero.dev',
  siteCreationYear: '2024',
  get copyrightYear() {
    return `${this.siteCreationYear}-${new Date().getFullYear().toString().slice(-2)}`
  },
}
