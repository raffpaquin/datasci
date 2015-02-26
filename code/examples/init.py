from datetime import datetime
from elasticsearch import Elasticsearch

es = Elasticsearch()

es.indices.create(index='orders')

es.index(index="orders", doc_type="order", id=1, body={"number": "100001", "customer":"customer_1", "timestamp": datetime.now()})
es.index(index="orders", doc_type="order", id=2, body={"number": "100002", "customer":"customer_2", "timestamp": datetime.now()})
es.index(index="orders", doc_type="order", id=3, body={"number": "100003", "customer":"customer_1", "timestamp": datetime.now()})
es.index(index="orders", doc_type="order", id=4, body={"number": "100004", "customer":"customer_2", "timestamp": datetime.now()})
es.index(index="orders", doc_type="order", id=5, body={"number": "100005", "customer":"customer_3", "timestamp": datetime.now()})