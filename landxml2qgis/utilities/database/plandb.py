import sqlalchemy as db
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker, session

engine = db.create_engine('postgresql://plan:postgres@localhost:9002/plandb', echo=True)
metadata = db.MetaData()
# use session_factory() to get a new Session
_SessionFactory = sessionmaker(bind=engine)

Model = declarative_base()


def session_factory() -> session:
    Model.metadata.create_all(engine)
    return _SessionFactory()
