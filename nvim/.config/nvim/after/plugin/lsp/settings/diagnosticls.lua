return {
    filetypes = { 'javascript', 'angularjs', 'json', 'typescript', 'javascriptvue', 'vue', 'markdown', 'pandoc', 'html'},
    init_options = {
        linters = {
            eslint = {
                sourceName = 'eslint',
                command = 'eslint_d',
                rootPatterns = { '.eslintrc.js', 'package.json' },
                debounce = 100,
                args = { '--stdin', '--stdin-filename', '%filepath', '--format', 'json' },
                parseJson = {
                    errorsRoot = '[0].messages',
                    line = 'line',
                    column = 'column',
                    endLine = 'endLine',
                    endColumn = 'endColumn',
                    message = '[eslint] ${message} [${ruleId}]',
                    security = 'severity'
                },
                securities = {
                    [2] = 'error',
                    [1] = 'warning'
                }
            },
            stylelint = {
                sourceName = 'stylelint',
                command = 'stylelint',
                args = {'--formatter', 'compact', '%filepath'},
                rootPatterns = {'.stylelintrc.json', '.stylelintrc'},
                debounce = 100,
                formatPattern = {
                    [[: line (\d+), col (\d+), (warning|error) - (.+?) \((.+)\)]],
                    {
                        line = 1,
                        column = 2,
                        security = 3,
                        message = {4, ' [', 5, ']'},
                    },
                },
                securities = {
                    warning = 'warning',
                    error = 'error',
                },
            },
        },
        filetypes = {
            javascript = 'eslint',
            typescript = 'eslint',
            javascriptvue = 'eslint',
            angularjs = 'eslint',
            vue = 'eslint',
            -- scss = 'stylelint',
            -- css = 'stylelint',
            html = 'eslint'
        },
        formatters = {
            eslint_d = {
                command = 'eslint_d',
                args = { '--stdin', '--stdin-filename', '%filename', '--fix-to-stdout' },
                rootPatterns = { '.eslintrc.json' },
            },
            prettier = {
                command = 'prettier',
                args = { '--stdin-filepath', '%filename' }
            },
            stylelint = {
                command = 'stylelint',
                args = {'--fix', '--stdin', '--stdin-filename', '%filepath'},
            }
        },
        formatFiletypes = {
            css = 'stylelint',
            javascript = 'eslint_d',
            javascriptvue = 'eslint_d',
            vue = 'eslint_d',
            -- scss = 'stylelint',
            -- less = 'prettier',
            typescript = 'eslint_d',
            json = 'prettier',
            markdown = 'prettier',
        }
    }
}
