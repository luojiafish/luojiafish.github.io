var posts=["2025/10/18/hello-world/","2025/10/18/如何用github创建一个属于自己的blog/","2025/10/19/如何去使用md来编辑美观好看的博客/"];function toRandomPost(){
    pjax.loadUrl('/'+posts[Math.floor(Math.random() * posts.length)]);
  };