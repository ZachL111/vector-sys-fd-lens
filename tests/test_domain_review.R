source("R/domain_review.R")

item <- list(signal=79, slack=42, drag=25, confidence=87)
stopifnot(domain_review_score(item) == 212)
stopifnot(domain_review_lane(item) == "ship")
