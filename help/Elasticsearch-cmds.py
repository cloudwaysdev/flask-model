from elasticsearch import Elasticsearch


es = Elasticsearch('http://172.6.0.25:9200')

es.index(index='my_index', id=1, body={'text': 'this is a test'})
es.index(index='my_index', id=2, body={'text': 'a second test'})

es.search(index='my_index', body={'query': {'match': {'text': 'this test'}}})



# from application.search import add_to_index, remove_from_index, query_index
# from application.models import Post
#     for post in Post.query.all():
#         add_to_index('posts', post)
#
#  query_index('posts', 'one two three four five', 1, 100)([15, 13, 12, 4, 11, 8, 14], 7)