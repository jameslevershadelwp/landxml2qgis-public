
class GenericRepository(object):
    def __init__(self, DBSession):
        self.session = DBSession

    def __enter__(self):
        return self

    def __exit__(self, exc_type, exc_val, exc_tb):
        self.session.close()

    def save(self, entity):
       # self.session.add(entity)
        self.session.flush()
        self.session.commit()
        return entity

    def save_bulk(self, list):
        self.session.bulk_save_objects(list)
        self.session.flush()
        self.session.commit()

    def create(self, entity):
        self.session.add(entity)
        self.session.flush()
        self.session.commit()
        return entity
