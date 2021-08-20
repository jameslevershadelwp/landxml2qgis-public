from flask_cors import CORS
from flask_migrate import Migrate
from flask_restx import Api
from utilities.contextRuleFactory.vic.contextRuleFactory import ContextRuleFactory

migrate = Migrate()
cors = CORS()
api = Api()
rule_factory = ContextRuleFactory()


