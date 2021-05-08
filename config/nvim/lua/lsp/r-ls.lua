require'lspconfig'.r_language_server.setup {
    cmd = {"R", "--no-echo", "-e", "languageserver::run()"},
    filetypes = {"r", "rmd"},
    log_level = 2
    -- root_dir = root_pattern(".git") or os_homedir
}
