from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

import sqlalchemy as db

engine = db.create_engine('postgresql://cadastre:postgres@localhost:9005/cadastredb', echo=True)
metadata = db.MetaData()
# use session_factory() to get a new Session
_SessionFactory = sessionmaker(bind=engine)

Model = declarative_base()


def session_factory():
    Model.metadata.create_all(engine)
    return _SessionFactory()