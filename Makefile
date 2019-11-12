# Tekton-Helm Makefile

pipelines:
	curl https://github.com/tektoncd/pipeline/tarball/master -s -L | tar xzf - --strip-components=1 -C templates/pipeline/
	rsync -avhHL templates/pipeline/config/ templates/pipeline/ --delete-after
triggers:
	curl https://github.com/tektoncd/triggers/tarball/master -s -L | tar xzf - --strip-components=1 -C templates/triggers/
	rsync -avhHL templates/triggers/config/ templates/triggers/ --delete-after
dashboard:
	curl https://github.com/tektoncd/dashboard/tarball/master -s -L | tar xzf - --strip-components=1 -C templates/dashboard/
	rsync -avhHL templates/dashboard/config/ templates/dashboard/ --delete-after
