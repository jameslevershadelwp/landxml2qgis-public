import sqlalchemy as db
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker


Model = declarative_base()


def session_factory():
    engine = db.create_engine('postgresql://adjustment:postgres@localhost:9002/postgres', echo=True)
    metadata = db.MetaData()
    _SessionFactory = sessionmaker(bind=engine)
    Model.metadata.create_all(engine)
    return _SessionFactory()