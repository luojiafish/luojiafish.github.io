var posts=["2025/10/20/大学生如何去找实习/","2025/10/18/如何用github创建一个属于自己的blog/","2025/10/24/如何去打人工智能算法挑战赛/","2025/10/30/深度学习/","2025/11/15/Matlab仿真建模学习/","2025/11/15/SolidWorks建模学习/","2025/12/05/电机控制入门/"];function toRandomPost(){
    pjax.loadUrl('/'+posts[Math.floor(Math.random() * posts.length)]);
  };