-- "C-/" to comment visual regions/lines
-- For some reason <C-_> is how you use ctrl + /
return {
  'numToStr/Comment.nvim',
  opts = {
    toggler = {
      line = '<C-_>'
    },
    opleader = {
      line = '<C-_>'
    }
  }
}
