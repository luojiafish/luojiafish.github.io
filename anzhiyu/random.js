var posts=["2025/10/18/如何用github创建一个属于自己的blog/"];function toRandomPost(){
    pjax.loadUrl('/'+posts[Math.floor(Math.random() * posts.length)]);
  };