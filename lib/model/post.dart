// 定义一个类
class Post{
    const Post({
      this.title,
      this.author,
      this.imageUrl,
    });

    final String title;  // final是分配数据就不能改
    final String author;
    final String imageUrl;
}

final List<Post> posts = [
  Post(
    title: '烧钱模式结束后，共享巨头们还能活多久？',
    author: '国是直通车',
    imageUrl: 'https://inews.gtimg.com/newsapp_bt/0/7083396892/1000'
  ),
  Post(
    title: '新京报评论：“河南警车在京逆行”遭罚 刚性执法无损法治形象',
    author: '新京报',
    imageUrl: 'https://inews.gtimg.com/newsapp_bt/0/7081080210/1000'
  ),
  Post(
    title: '政事儿：县委书记升职后，遭原下属敲诈勒索60万',
    author: '政事儿',
    imageUrl: 'https://inews.gtimg.com/newsapp_ls/0/7082160778_294195/0'
  )
];