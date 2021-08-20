import os


class ContextRuleFactory:
    def __init__(self):
        self.rules = {}
        self.configure_rules()

    def build(self, proxy, responses, plan_type, execution_context, validation):
        jurisdiction = os.environ.get("DCM_RULES_JURISDICTION")
        context = jurisdiction + '.' + execution_context + '.' + plan_type
        rule_list = self.rules[context]
        context_rules = []
        for rule_name in rule_list:
            context_rules.append(self.get_rule(context, proxy, responses, rule_name, validation))
        return context_rules

    def build_for_context(self, proxy,  context, validation):
        rule_list = self.rules[context]
        context_rules = []
        for rule_name in rule_list:
            context_rules.append(self.get_rule(context, proxy, None, rule_name, validation))
        return context_rules


    def configure_rules(self):
        self.rules["VIC.VALIDATION.PS"] = self.get_validation_rules_for_ps()
        self.rules["VIC.PROPOSED.PS"] = self.get_proposed_rules_for_ps()
        self.rules["VIC.FINAL.PS"] = self.get_final_rules_for_ps()
        self.rules["VIC.VALIDATION.PS.MCA.INPUT"] = self.get_validation_rules_for_ps_mca_input()
        self.rules["VIC.VALIDATION.PS.MCA.OUTPUT"] = self.get_validation_rules_for_ps_mca_output()


    def get_rule(self, context, proxy, responses, rule_name, validation):
        modules = __import__("dcmRules")
        attributes = rule_name.split('.')
        for attribute in attributes:
            modules = getattr(modules, attribute)
        rule = modules(context, proxy, responses, validation)
        return rule

    def get_validation_rules_for_ps(self) -> []:
        return [
            "dna_mca_message.dna_mca_message.DNAMCAMessage",
            "sgv_monuments_found.sgv_monuments_found.SGVMONUMNENTSFOUND",
            "obsformatcheck.obsformatcheck.obsformatcheck",
            "lineobsused.lineobsused.lineobsused",
            "checkCentrePointInParcel.checkCentrePointInParcel.CheckCentrePointInParcel",
            "connectedLines.connectedLines.ConnectedLines"
        ]

    def get_proposed_rules_for_ps(self) -> []:
        return [
            "msgqueue.msgqueue.msgqueue",
            "helmert_transformation.helmert_transformation.HelmertTransformation",
            "ruleDCDB.ruleDCDB.RuleDCDB"
        ]

    def get_final_rules_for_ps(self) -> []:
        return [
            "ruleOne.ruleOne.RuleOne"
        ]

    def get_validation_rules_for_ps_mca_input(self):
        return [
            "dna_mca_input_writer.dna_mca_input_writer.DNAMCAINPUT"
        ]

    def get_validation_rules_for_ps_mca_output(self):
        return [
            "dna_mca_result_parser.dna_mca_result_parser.MCA_RESULT_PARSER"
        ]
