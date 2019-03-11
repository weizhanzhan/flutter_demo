class Post {
  const Post({
    this.title,
    this.author,
    this.imgUrl,
  });
  final String title;
  final String author;
  final String imgUrl;
}

final List<Post> posts = [
  Post(
    title: 'test1',
    author: 'weizhan',
    imgUrl: 'http://www.wzsky.net/img/uploadimg/20110801/1241520.jpg'
  ),
  Post(
    title: 'test2',
    author: 'weizhan',
    imgUrl: 'http://www.wzsky.net/img/uploadimg/20110801/1241520.jpg'
  ),
  Post(
    title: 'test3',
    author: 'weizhan',
    imgUrl: 'http://www.wzsky.net/img/uploadimg/20110801/1241520.jpg'
  )
];