import 'package:html/dom.dart';
import 'package:html/parser.dart' show parse;

class Scraper {
  String htmlDoc;
  late Document doc;

  Scraper(this.htmlDoc) {
    doc = parse(htmlDoc);
  }

  Element? find({required String id}) {
    return doc.querySelector(id);
  }

  Element? call(String selector) => doc.querySelector(selector);

  List<Element> findAll(String selector) {
    return doc.querySelectorAll(selector);
  }

  String getText() {
    return doc.querySelector("html")!.text;
  }

  String print() {
    return doc.querySelector("html")!.outerHtml;
  }

  String? attr(Element e, String attribute) => e.attributes[attribute];
}
