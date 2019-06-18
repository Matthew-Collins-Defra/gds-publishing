#! /usr/bin/env sh

(
    mkdir -p ./gds-services
    cd ./gds-services

    #git clone https://github.com/alphagov/govuk-puppet.git
    #git clone https://github.com/alphagov/govuk-aws-data.git
    #git clone https://github.com/alphagov/govuk-dns-config.git
    git clone https://github.com/alphagov/asset-manager.git
    git clone https://github.com/alphagov/cache-clearing-service.git
    git clone https://github.com/alphagov/calculators.git
    git clone https://github.com/alphagov/calendars.git
    git clone https://github.com/alphagov/collections.git
    git clone https://github.com/alphagov/collections-publisher.git
    git clone https://github.com/alphagov/contacts-admin.git
    git clone https://github.com/alphagov/content-data-admin.git
    git clone https://github.com/alphagov/content-publisher.git
    git clone https://github.com/alphagov/content-store.git
    git clone https://github.com/alphagov/content-tagger.git
    git clone https://github.com/alphagov/email-alert-api.git
    git clone https://github.com/alphagov/email-alert-frontend.git
    git clone https://github.com/alphagov/email-alert-service.git
    git clone https://github.com/alphagov/fabric-scripts.git
    git clone https://github.com/alphagov/feedback.git
    git clone https://github.com/alphagov/finder-frontend.git
    git clone https://github.com/alphagov/frontend.git
    git clone https://github.com/alphagov/gds-api-adapters.git
    git clone https://github.com/alphagov/government-frontend.git
    git clone https://github.com/alphagov/govuk-aws.git
    git clone https://github.com/alphagov/govuk-content-schema-test-helpers.git
    git clone https://github.com/alphagov/govuk-content-schemas.git
    git clone https://github.com/alphagov/govuk-dns.git
    git clone https://github.com/alphagov/govuk-guix.git
    git clone https://github.com/alphagov/hmrc-manuals-api.git
    git clone https://github.com/alphagov/imminence.git
    git clone https://github.com/alphagov/info-frontend.git
    git clone https://github.com/alphagov/licence-finder.git
    git clone https://github.com/alphagov/link-checker-api.git
    git clone https://github.com/alphagov/local-links-manager.git
    git clone https://github.com/alphagov/manuals-frontend.git
    git clone https://github.com/alphagov/manuals-publisher.git
    git clone https://github.com/alphagov/mapit.git
    git clone https://github.com/alphagov/maslow.git
    git clone https://github.com/alphagov/publisher.git
    git clone https://github.com/alphagov/publishing-api.git
    git clone https://github.com/alphagov/router.git
    git clone https://github.com/alphagov/router-api.git
    git clone https://github.com/alphagov/search-api.git
    git clone https://github.com/alphagov/service-manual-frontend.git
    git clone https://github.com/alphagov/service-manual-publisher.git
    git clone https://github.com/alphagov/signon.git
    git clone https://github.com/alphagov/slimmer.git
    git clone https://github.com/alphagov/smart-answers.git
    git clone https://github.com/alphagov/specialist-publisher.git
    git clone https://github.com/alphagov/static.git
    git clone https://github.com/alphagov/support.git
    git clone https://github.com/alphagov/support-api.git
    git clone https://github.com/alphagov/travel-advice-publisher.git
    git clone https://github.com/alphagov/whitehall.git
)

docker-compose build