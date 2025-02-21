library(moderate.mediation)

basicMediationCog = read.csv('C:\\Users\\XUQIN\\OneDrive - University of Pittsburgh\\E Drive\\New Career\\Advising Students\\Tong Ru\\basicMediationCog.csv')

parenting_cog = modmed(data = basicMediationCog, treatment = 'treatment_bs',
                       mediator = 'parenting_ev1', outcome = 'cog_ev2',
                       covariates.disc = c('sex_bs', 'premature_bs', 'birth_order_bs', 'anemia_bs', 'underweight_bs', 'age_mom_bs', 'edu_mom_dummy_bs', 
                                           'pri_caregiver_dummy_bs', 'pri_caregiver_edu_dummy_bs', 'parenting_bs'),
                       covariates.cont = c('child_age_bs', 'illdays_bs', 'numbooks_bs', 'Bayley_cog_rscore_bs_st'),
                       moderators.disc = NULL, moderators.cont = NULL,
                       m.model = list(intercept = NULL, treatment = NULL),
                       y.model = list(intercept = NULL, treatment = NULL, mediator = NULL, tm = NULL),
                       m.scale = 'binary', y.scale = 'continuous', seed = 1000)

modmed.sens(parenting_cog)