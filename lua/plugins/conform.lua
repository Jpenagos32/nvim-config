return {
    'stevearc/conform.nvim',
    opts = {
        format_on_save = {
            timeout_ms = 1000,
            lsp_format = "fallback",
        },

        formatters_by_ft = {
            php = { 'php_cs_fixer' },
        },

        formatters = {
            php_cs_fixer = {
                command = 'php-cs-fixer',
                args = {
                    'fix',
                    "$FILENAME",
                    '--rules={"braces": {"position_after_control_structures": "same", "position_after_functions_and_oop_constructs": "same", "position_after_anonymous_constructs": "same"}}'
                }
            }
        }
    },
}
