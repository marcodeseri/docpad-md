docpadConfig = {
	templateData:  

        site:
            url: "http://www.marcodeseri.com"
            title: "Data Informed E-Commerce UX"  
            description: "E-commerce UX expert, detail driven and optimization obsessed. Lean thinker, design lover."
            
         getPreparedTitle: ->
            if @document.title
                "#{@document.title} | #{@site.title}"
            else
                @site.title
                
        getPreparedDescription: ->            
            @document.description or @site.description
                
            
    collections:
        posts: ->
            @getCollection("html").findAllLive({relativeOutDirPath: 'posts'},[{date:-1}])
        
        highlights: ->
            @getCollection("html").findAllLive({relativeOutDirPath: 'hp-highlights'},[{date:-1}])
            
    plugins:
        datefromfilename:
            removeDate: true

}

# Export the DocPad Configuration
module.exports = docpadConfig