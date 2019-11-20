module.exports =
    deactivate: ->
        @toolBar?.removeItems()

    consumeToolBar: (toolBar) ->
        @toolBar = toolBar 'tool-bar-pgilfernandez'

        # Settings and commands ----------------------------------------

        @toolBar.addButton
            'icon': 'bars'
            'callback': 'command-palette:toggle'
            'tooltip': 'Toggle Command Palette'
            'iconset': 'fa'

        @toolBar.addButton
            'icon': 'cog'
            'callback': 'settings-view:open'
            'tooltip': 'Open Settings View'
            'iconset': 'fa'

        @toolBar.addSpacer()
        @toolBar.addSpacer()

        # Toogle panels ----------------------------------------

        @toolBar.addButton
            'icon': 'chevron-right'
            'callback': 'tree-view:toggle'
            'tooltip': 'Toggle Sidebar'
            'iconset': 'fa'

        if atom.packages.loadedPackages['markdown-preview-enhanced']
            @toolBar.addButton
                'icon': 'markdown'
                'callback': 'markdown-preview-enhanced:toggle'
                'tooltip': 'Toggle Markdown Preview Enhanced'
        else
            @toolBar.addButton
                'icon': 'markdown'
                'callback': 'markdown-preview:toggle'
                'tooltip': 'Markdown Preview'

        if atom.packages.loadedPackages['atom-html-preview']
            @toolBar.addButton
                'icon': 'globe'
                'callback': 'atom-html-preview:toggle'
                'tooltip': 'HTML Preview'
                'iconset': 'fa'

        if atom.packages.loadedPackages['browser-plus']
            @toolBar.addButton
                'icon': 'globe'
                'callback': 'browser-plus:open'
                'tooltip': 'Open Browser Plus'
                'iconset': 'fa'

        @toolBar.addButton
            'icon': 'chevron-left'
            'callback': 'github:toggle-github-tab'
            'tooltip': 'Toggle GitHub Tab'
            'iconset': 'fa'

        @toolBar.addSpacer()
        @toolBar.addSpacer()

        # Common file/folder commands ----------------------------------------

        @toolBar.addButton
            icon: 'file'
            callback: 'application:new-file'
            tooltip: 'New File'
            iconset: 'fa'

        @toolBar.addButton
            icon: 'file-alt'
            callback: 'application:open-file'
            tooltip: 'Open File'
            iconset: 'fa'

        @toolBar.addButton
            'icon': 'file-download'
            'callback': 'core:save'
            'tooltip': 'Save File'
            'iconset': 'fa'

        @toolBar.addButton
            'icon': 'folder-open'
            'callback': 'application:open-folder'
            'tooltip': 'Open Folder'
            'iconset': 'fa'
            'iconset': 'fa'

        @toolBar.addButton
            'icon': 'save'
            'callback': 'window:save-all'
            'tooltip': 'Save All'
            'iconset': 'fa'

        if atom.packages.loadedPackages['project-manager']
            @toolBar.addSpacer()

            @toolBar.addButton
                'icon': 'book'
                'callback': 'project-manager:list-projects'
                'tooltip': 'List projects'
                'iconset': 'fa'

        @toolBar.addSpacer()

        # Editor tools ----------------------------------------

        @toolBar.addButton
            'icon': 'search'
            'callback': 'find-and-replace:toggle'
            'tooltip': 'Find in Buffer'
            'iconset': 'fa'

        if atom.packages.loadedPackages['atom-beautify']
            @toolBar.addButton
                'icon': 'spa'
                'callback': 'atom-beautify:beautify-editor'
                'tooltip': 'Beautify'
                'iconset': 'fa'

        if atom.packages.loadedPackages['color-picker']
            @toolBar.addButton
                'icon': 'eye-dropper'
                'callback': 'color-picker:open'
                'tooltip': 'Beautify'
                'iconset': 'fa'

        @toolBar.addButton
            'icon': 'hashtag'
            'callback': 'editor:toggle-line-comments'
            'tooltip': 'Comment'
            'iconset': 'fa'

        @toolBar.addSpacer()
