exports.config = 
    paths: 
        watched: ["dev"],
        public: "public"
    
    files:
        stylesheets: 
            defaultExtension: 'scss'
            joinTo: 'css/app.min.css'
            order:
                before: [
                    'dev/vendor/stylesheets/bootstrap.scss'
                ]

        javascripts: 
            defaultExtension: 'js'
            joinTo: "js/app.min.js"
            order:
                before: [
                    'dev/vendor/javascripts/jquery.js',
                    'dev/vendor/javascripts/bootstrap.js'
                ]

    conventions: 
        assets: /static[\\/]/
    
    plugins: 
        imageoptimizer: 
            smushit: true
            path: "images/"
        
        jadePages:
            
            destination: (path) ->
                path.replace /^dev\/jade-templates[\/\\](.*)\.jade$/, "/$1.html"         
    
        jade:
            doctype: "html"
            pretty: true
            htmlmin: false
    
    modules: 
        wrapper: false,
        definition: false
    
    overrides: 
        "DEV": 
            optimize: true,
            sourceMaps: true,
            plugins: 
                autoReload: 
                    enabled: true
