# PREFIX="prefix-"
# S3PATH="s3://bucket/path"
# USER=mysql user
# PASS=mysql password
# HOST=mysql host
# DB=mysql db
FILENAME="${PREFIX}$(date +"%Y%m%d_%H%M").sql.gz"
mysqldump -u ${USER} -p${PASS} -h ${HOST} ${DB} | gzip | aws s3 cp - "$S3PATH/$FILENAME"
