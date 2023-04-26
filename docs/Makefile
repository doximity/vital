# Makefile for doximity/vitalcss
# Commands:
#	set_index: Set index of static site to index.html
#	publish: Deploy vitalcss static site

set_index:
	aws s3 website s3://dox-vitalcss --index-document index.html

build:
	bundle exec middleman build

publish:
	aws configure set preview.cloudfront true
	aws configure set preview.create-invalidation true
	aws s3 sync --acl public-read --delete build/ s3://vitalcss
	aws cloudfront create-invalidation --distribution-id ${VITALCSS_DIST_ID} --paths "/*"
