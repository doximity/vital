# Makefile for doximity/vitalcss
# Commands:
#	set_index: Set index of static site to index.html
#	publish: Deploy workat static site

set_index:
	aws s3 website s3://dox-vitalcss --index-document index.html

publish:
	aws configure set preview.cloudfront true
	aws configure set preview.create-invalidation true
	aws s3 sync --acl public-read --delete build/ s3://dox-workat
	aws cloudfront create-invalidation --distribution-id ${WORKAT_DIST_ID} --paths /*
