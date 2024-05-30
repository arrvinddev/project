parameters = [
    { name= "prod.frontend.catalogue_url", value= "http://catalogue-prod.robog.store:80/"},
    { name= "prod.frontend.cart_url", value= "http://cart-prod.robog.store:80/"},
    { name= "prod.frontend.user_url", value= "http://user-prod.robog.store:80/"},
    { name= "prod.frontend.payment_url", value= "http://payment-prod.robog.store:80/"},
    { name= "prod.frontend.shipping_url", value= "http://shipping-prod.robog.store:80/"},
   
    {name="prod.catalogue.mongo_endpoint", value="mongodb-prod.robog.store"},
    {name="prod.catalogue.documentdb", value="true"},
    

    {name="prod.user.documentdb", value="true"},
    {name="prod.user.redis_host", value="elasticache-prod-elasticache.ppugfs.ng.0001.use1.cache.amazonaws.com"},
    {name="prod.user.mongo_endpoint", value="mongodb-prod.robog.store"},

    {name="prod.cart.catalogue_port", value="80"},
    {name="prod.cart.redis_host", value="elasticache-prod-elasticache.nieflx.0001.use1.cache.amazonaws.com"},
    {name="prod.cart.catalogue_host", value="catalogue"},

    {name="prod.shipping.cart_endpoint", value="cart:80"},
    {name="prod.rds.db_host", value="rds-prod-rds.cluster-c5mq8cysmv5n.us-east-1.rds.amazonaws.com"},
    {name="prod.shipping.db_user", value="root"},
    

    {name="prod.payment.cart_host",value="cart"},
    {name="prod.payment.cart_port",value="80"},
    {name="prod.payment.user_host",value="user-"},
    {name="prod.payment.user_port",value="80"},
    {name="prod.payment.amqp_host",value="rabbitmq-prod.robog.store"},
    {name="prod.payment.amqp_user",value="roboshop"},
    {name= "prod.docdb.db_endpoint", value= "docdb-prod.cluster-c5mq8cysmv5n.us-east-1.docdb.amazonaws.com"}
]

passwords = [
    {name="prod.payment.amqp_pass",value="roboshop123"},
    {name="prod.shipping.db_pass",value="RoboShop@1"},
    {name="prod.docdb.db_user",value="roboshop"},
    {name="prod.docdb.db_pass",value="roboshop123456"},
    {name="prod.rds.db_pass", value="roboshop123456"},
    {name="prod.rds.db_user", value= "roboshop"},
    {name="prod.rabbitmq.db_user", value= "roboshop"},
    {name="prod.rabbitmq.rabbitmq_appuser_password", value= "roboshop123"},
    {name="prod.catalogue.mongo_url", value="mongodb://roboshop:roboshop123456@docdb-prod.cluster-c5mq8cysmv5n.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false"},
    {name="prod.user.mongo_url", value="mongodb://roboshop:roboshop123456@docdb-prod.cluster-c5mq8cysmv5n.us-east-1.docdb.amazonaws.com:27017/users?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false"}
    
]