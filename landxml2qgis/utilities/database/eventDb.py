import sqlalchemy as db
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

engine = db.create_engine('postgresql://event_user:postgres@localhost:9002/eventuatdb', echo=True)
metadata = db.MetaData()
Model = declarative_base()


def session_factory():

    Model.metadata.create_all(engine)
    # use session_factory() to get a new Session
    _SessionFactory = sessionmaker(bind=engine)
    return _SessionFactory()