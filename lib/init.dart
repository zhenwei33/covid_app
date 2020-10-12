import 'package:covid_app/object/state.dart';
import 'package:covid_app/object/news.dart';
import 'package:web_scraper/web_scraper.dart';

class Init {
  static final List<StateObject> states = [];
  static final List<News> news = [];

  static Future initialize() async {
    List data = [await fetchStates(), await fetchNewsKwongWah()];
    return data;
  }

  // static Future initialize() async {
  //   List data = [[], []];
  //   return data;
  // }

  
  static List<Map<String, dynamic>> data;

  static Future <List<StateObject>> fetchStates() async {
    final url = "http://covid-19.livephotos123.com";
    final webScraper = WebScraper(url);
    List<StateObject> _states = [];
    if (await webScraper.loadWebPage('')) {
      data = webScraper.getElement('table > tbody > tr > td', ['class']);
    }
    for (var i = 0; i < data.length - 14; i++) {
      var name = data[i]['title'];
      i = i + 1;
      var newCase = data[i]['title'];
      i = i + 1;
      var infected = data[i]['title'];
      i = i + 1;
      var death = data[i]['title'];

      var _state = StateObject(name, newCase, infected, death);
      _states.add(_state);
    }
    return _states;
  }

  // static final url2 = "http://news.seehua.com/?cat=8";
  // static final webScraper2 = WebScraper(url2);
  // static List<Map<String, dynamic>> newsTitle;
  // static List<Map<String, dynamic>> newsDate;
  // static List<Map<String, dynamic>> newsUrl;
  // static List<Map<String, dynamic>> newsThumbUrl;

  // static Future <List<News>> fetchNews() async {
  //   List<News> _news = [];
  //   if (await webScraper2.loadWebPage('')) {
  //     newsTitle = webScraper2.getElement('div.td-ss-main-content > div.td-block-row > div.td-block-span6 > div.td_module_1 > h3.entry-title > a', ['title']);
  //     newsDate = webScraper2.getElement('div.td-ss-main-content > div.td-block-row > div.td-block-span6 > div.td_module_1 > div.td-module-meta-info > span.td-post-date > time.entry-date', ['class']);
  //     newsUrl = webScraper2.getElement('div.td-ss-main-content > div.td-block-row > div.td-block-span6 > div.td_module_1 > div.td-module-image > div.td-module-thumb > a', ['href']);
  //     newsThumbUrl = webScraper2.getElement('div.td-ss-main-content > div.td-block-row > div.td-block-span6 > div.td_module_1 > div.td-module-image > div.td-module-thumb > a > img.entry-thumb', ['src']);
  //   }

  //   for (var i=0; i<newsTitle.length; i++) {
  //     var _new = News(newsThumbUrl[i]['attributes']['src'], newsTitle[i]['title'], newsDate[i]['title'], newsUrl[i]['attributes']['href']);
  //     _news.add(_new);
  //   }
  //   return _news;
  // }

  
  static List<Map<String, dynamic>> newsTitle;
  static List<Map<String, dynamic>> newsDate;
  static List<Map<String, dynamic>> newsUrl;
  static List<Map<String, dynamic>> newsThumbUrl;
  static List<Map<String, dynamic>> newsContent;

  static Future <List<News>> fetchNewsKwongWah() async {
    final url = "https://www.kwongwah.com.my/category/%E5%9B%BD%E5%86%85%E6%96%B0%E9%97%BB/";
    final webScraper = WebScraper(url);
    List<News> _news = [];
    if (await webScraper.loadWebPage('')) {
      newsTitle = webScraper.getElement('div.td_block_wrap > div.td-block-row > div.td-block-span6 > div.td_module_2 > h3.entry-title > a', ['title']);
      newsDate = webScraper.getElement('div.td_block_wrap > div.td-block-row > div.td-block-span6 > div.td_module_2 > div.td-module-meta-info > span.td-post-date > time.entry-date', ['class']);
      newsUrl = webScraper.getElement('div.td_block_wrap > div.td-block-row > div.td-block-span6 > div.td_module_2 > div.td-module-image > div.td-module-thumb > a', ['href']);
      newsThumbUrl = webScraper.getElement('div.td_block_wrap > div.td-block-row > div.td-block-span6 > div.td_module_2 > div.td-module-image > div.td-module-thumb > a > img.entry-thumb', ['src']);
    }

    for (var i=0; i<newsTitle.length; i++) {
      var _new = News(newsThumbUrl[i]['attributes']['src'], newsTitle[i]['title'], newsDate[i]['title'], newsUrl[i]['attributes']['href']);
      _news.add(_new);
    }
    return _news;
  }

  static Future<String> fetchNewsKwongWahFull(String url) async {
    final webScraper = WebScraper(url);
    String content = "";
    if (await webScraper.loadWebPage('')) {
      newsTitle = webScraper.getElement('div.td_block_wrap > div.td-block-row > div.td-block-span6 > div.td_module_2 > h3.entry-title > a', ['title']);
      newsContent = webScraper.getElement('div.td-post-content > p', ['class']);
    }
    for (var i =0; i<newsContent.length; i++) {
      content += newsContent[i]['title'] + '\n\n';
    }
    return content;
  }

  
}