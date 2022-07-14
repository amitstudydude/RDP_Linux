javascript:
(function()
  {
    var arr = [];
    var content = "";
    var images = document.images;
    var links = document.links;
    var meta = document.getElementsByTagName("meta");
    var videos = document.getElementsByTagName("video");
    var audios = document.getElementsByTagName("audio");
    var iframes = document.getElementsByTagName("iframe");
    var resources = [];
    var resourceList = window.performance.getEntriesByType("resource");
    var refresh = window.localStorage.getItem("refresh");
    var isMobile = (/iPhone|iPad|iPod|Android/i).test(navigator.userAgent);
    
    if (images.length <= 0 && links.length <= 0 && meta.length <= 0 && videos.length <= 0 && audios.length <= 0 && resourceList.length <= 0 && iframes.length <= 0)
    {
      alert("No media was found.\nPlease refresh to try again.");
    }
    else if (!isMobile && document.URL.includes("instagram.com/p/") && refresh === null)
    {
      window.localStorage.setItem("refresh", "1");
      location.reload();
    }
    else
    {
      window.localStorage.removeItem("refresh");
      getMedia();
    }
    
    function getMedia()
    {
      /*var redirectURL = "http://sfrom.net/" + window.location.href;
      resources.push(redirectURL);*/
      
      for (var i = 0; i < images.length; i++)
      {
        if (arr.indexOf(images[i].src) === -1)
        {
          arr.push(images[i].src);
        }
      }
      
      for (var i = 0; i < links.length; i++)
      {
        content = links[i].href;
        if (content.includes(".jpg") || content.includes(".png") || content.includes(".jpeg") || content.includes(".gif") || content.includes(".svg") || content.includes(".ico") || content.includes(".bmp") || content.includes(".mp4") || content.includes(".mp3") || content.includes(".ogg") || content.includes(".wav") || content.includes(".avi") || content.includes(".m3u8") || content.includes(".ts"))
        {
          if (arr.indexOf(content) === -1)
          {
            arr.push(content);
          }
        }
      }
      
      for (var i = 0; i < meta.length; i++)
      {
        content = meta[i].getAttribute("content");
        if (content != null)
        {
          if (content.includes(".jpg") || content.includes(".png") || content.includes(".jpeg") || content.includes(".gif") || content.includes(".svg") || content.includes(".ico") || content.includes(".bmp") || content.includes(".mp4") || content.includes(".mp3") || content.includes(".ogg") || content.includes(".wav") || content.includes(".avi") || content.includes(".m3u8") || content.includes(".ts"))
          {
            if (arr.indexOf(content) === -1)
            {
              arr.push(content);
            }
          }
        }
      }
      
      for (var i = 0; i < videos.length; i++)
      {
        content = videos[i].getAttribute("src");
        if (content != null)
        {
          if (arr.indexOf(content) === -1)
          {
            arr.push(content);
          }
        }
        else
        {
          var videoSources = videos[i].getElementsByTagName("source");
          if (videoSources != null)
          {
            for (var j = 0; j < videoSources.length; j++)
            {
              if (arr.indexOf(videoSources[j].src) === -1)
              {
                arr.push(videoSources[j].src);
              }
            }
          }
        }
      }
      
      for (var i = 0; i < audios.length; i++)
      {
        content = audios[i].getAttribute("src");
        if (content != null)
        {
          if (arr.indexOf(content) === -1)
          {
            arr.push(content);
          }
        }
        else
        {
          var audioSources = audios[i].getElementsByTagName("source");
          if (audioSources != null)
          {
            for (var j = 0; j < audioSources.length; j++)
            {
              if (arr.indexOf(audioSources[j].src) === -1)
              {
                arr.push(audioSources[j].src);
              }
            }
          }
        }
      }
      
      for (var i = 0; i < resourceList.length; i++)
      {
        var content = resourceList[i].name;
        
        if (content.includes(".jpg") || content.includes(".png") || content.includes(".jpeg") || content.includes(".gif") || content.includes(".svg") || content.includes(".ico") || content.includes(".bmp") || content.includes(".mp4") || content.includes(".mp3") || content.includes(".ogg") || content.includes(".wav") || content.includes(".avi") || content.includes(".m3u8") || content.includes(".ts"))
        {
          if (arr.indexOf(content) === -1)
          {
            arr.push(content);
          }
        }
      }
      
      for (var i = 0; i < iframes.length; i++)
      {
        var content = iframes[i].src;
        
        if (arr.indexOf(content) === -1)
        {
          arr.push(content);
        }
      }
      
      if (arr.length <= 0)
      {
        alert("No media was found.\nPlease refresh to try again.");
      }
      else
      {
        document.body.innerHTML = "";
        document.head.innerHTML = "";
        var node = document.createElement("style");
        node.innerHTML =
        `
			/* The Modal (background) */
			.modal 
			{
				display: block; /* Visible by default none; invisible */
				position: fixed; /* Stay in place */
				z-index: 1; /* Sit on top */
				left: 0;
				top: 0;
				width: 100%; /* Full width */
				height: 100%; /* Full height */
				overflow: auto; /* Enable scroll if needed */
				background-color: rgb(0,0,0); /* Fallback color */
				background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
			}

			/* Modal Content/Box */
			.modal-content 
			{
				background-color: #fefefe;
				color: #ffffff;
				margin: 15% auto; /* 15% from the top and centered */
				padding: 20px;
				border: 1px solid #888;
				width: 80%; /* Could be more or less, depending on screen size */
				min-height: 100px;
			}

			/* The Close Button */
			.close 
			{
				color: #aaa;
				float: right;
				font-size: 25px;
				font-weight: bold;
				width: 50px;
				height: 50px;
				border: 2px solid #c0c0c0;
				background-color: #fefefe;
				border-radius: 50%;
			}

			.close:hover,
			.close:focus 
			{
				color: white;
				text-decoration: none;
				cursor: pointer;
			}
			
			/* Media */
			#media 
			{
				margin-left: auto;
				margin-right: auto;
				margin: 10px;
				text-align: center;
				-ms-text-justify: distribute-all-lines;
				text-justify: distribute-all-lines;
			}
			
			#media img 
			{
				vertical-align: top;
				display: inline-block;
				*display: inline;
				zoom: 1;
				max-width:100px;
				max-height:100px;
				width:auto;
				height:auto;
				margin: 10px;
				border: 2px solid #c0c0c0;
			}
			
			#media video 
			{
				vertical-align: top;
				display: inline-block;
				*display: inline;
				zoom: 1;
				max-width:100px;
				max-height:100px;
				width:auto;
				height:auto;
				margin: 10px;
				border: 2px solid #c0c0c0;
			}
			
			#media audio 
			{
				margin: 10px;
				border: 2px solid #c0c0c0;
			}
			
			/* Resources */
			#resources 
			{
				margin-left: auto;
				margin-right: auto;
				margin: 10px;
				text-align: center;
				-ms-text-justify: distribute-all-lines;
				text-justify: distribute-all-lines;
				overflow-wrap: break-word;
				word-break: break-all;
			}
			
			#resources a 
			{
				text-decoration: none;
				border:1px solid #c0c0c0;
				border-radius:5px;
				padding:10px 10px 10px 10px;
				margin: 10px;
				display: inline-block;
			}
			
			/* unvisited link */
			#resources a:link 
			{
				color: #1E90FF;
				background-color: #fefefe;
			}

			/* visited link */
			#resources a:visited 
			{
				color: #f3323d;
				background-color: #fefefe;
			}

			/* mouse over link */
			#resources a:hover 
			{
				color: #c0c0c0;
				background-color: #fefefe;
			}

			/* selected link */
			#resources a:active 
			{
				color: #3d00d6;
				background-color: #fefefe;
			}
			
			/* Stretch */
			.stretch 
			{
				width: 100%;
				display: inline-block;
				font-size: 0;
				line-height: 0
			}
			`;
			document.body.appendChild(node);
			
			document.body.innerHTML += 
			`
			<div id="myModal" class="modal">

			  <!-- Modal content -->
			  <div class="modal-content">
				<div>
				<button class="close" id="close">&times;</button>
				</div>
				<div id="media"></div>
				<div id="resources"></div>
			  </div>

			</div>
			`;
			
			function close() 
			{
				var modal = document.getElementById('myModal');
				
				modal.style.display = "none";
				location.reload();
			}
			
			function expand()
			{
				window.location.href = this.src;
			}
			
			function shortenURL(url)
			{
				if(url.length > 20)
				{
				 return "..." + url.slice(-20);
				} 
				else 
				{ 
				 return url;
				}
			}
			
			function filename(url)
			{
				return url.substr(url.lastIndexOf('/') + 1);
			}
			
			var btn = document.getElementById("close");
			btn.onclick = close;
			
			var mediaDiv = document.getElementById("media");
			var resourcesDiv = document.getElementById("resources");
			
			function loadData()
			{
				var imgBtn, vidBtn, audBtn, resBtn;
				for (var i = 0; i < arr.length; i++)
				{
					if (arr[i].includes(".jpg") || arr[i].includes(".png") || arr[i].includes(".jpeg") || arr[i].includes(".gif") || arr[i].includes(".svg") || arr[i].includes(".ico") || arr[i].includes(".bmp"))
					{
						imgBtn = document.createElement("img");
						imgBtn.src = arr[i];
						imgBtn.onclick = expand;
						mediaDiv.appendChild(imgBtn);
					}
					else if (arr[i].includes(".mp4") || arr[i].includes(".ogg") || content.includes(".avi") || content.includes(".m3u8") || content.includes(".ts"))
					{
						vidBtn = document.createElement("video");
						vidBtn.src = arr[i];
						vidBtn.onclick = expand;
						vidBtn.setAttribute("controls", "controls");
						mediaDiv.appendChild(vidBtn);
					}
					else if (arr[i].includes(".mp3") || arr[i].includes(".ogg") || arr[i].includes(".wav"))
					{
						audBtn = document.createElement("audio");
						audBtn.src = arr[i];
						audBtn.onclick = expand;
						audBtn.setAttribute("controls", "controls");
						mediaDiv.appendChild(audBtn);
					}
					
					if (resources.indexOf(arr[i]) === -1)
					{
						resources.push(arr[i]);
					}
				}
				
				for (var i = 0; i < resourceList.length; i++)
				{
					if (resources.indexOf(resourceList[i].name) === -1)
					{
						resources.push(resourceList[i].name);
					}
				}
				
				for (var i = 0; i < resources.length; i++)
				{
					resBtn = document.createElement("a");
					resBtn.setAttribute("href", resources[i]);
					resBtn.innerHTML = resources[i];
					resourcesDiv.appendChild(resBtn);
				}
			}
			document.onload = loadData();
		}
	}

})();


