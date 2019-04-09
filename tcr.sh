RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

TEST="bundle exec rspec"
COMMIT="git add . && git commit -am 'TCR STEP'"
REVERT='git reset --hard HEAD~1 && echo -e "${RED} [TCR] REVERTED"'

(eval $TEST) && (eval $COMMIT) || (eval $REVERT)
