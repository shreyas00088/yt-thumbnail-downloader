<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>YouTube Thumbnail Grabber</title>
<style>
  body { font-family: Arial, sans-serif; padding: 20px; text-align: center; }
  input { width: 80%; padding: 10px; margin: 20px 0; font-size: 16px; }
  button { padding: 10px 20px; font-size: 16px; cursor: pointer; }
</style>
</head>
<body>
  <h1>YouTube Thumbnail Grabber</h1>
  <input type="text" placeholder="Paste YouTube video link here" id="videoLink" />
  <br />
  <button onclick="getThumbnail()">Get Thumbnail</button>

  <script>
    function getThumbnail() {
      const link = document.getElementById('videoLink').value.trim();
      const videoIdMatch = link.match(/v=([^&]+)/) || link.match(/youtu\.be\/([^?&]+)/);
      if (!videoIdMatch) {
        alert('Please enter a valid YouTube video link!');
        return;
      }
      const videoId = videoIdMatch[1];
      const thumbnailUrl = `https://img.youtube.com/vi/${videoId}/maxresdefault.jpg`;
      window.open(thumbnailUrl, '_blank');
    }
  </script>
</body>
</html>
