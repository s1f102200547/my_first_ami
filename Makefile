PORT ?= 8080

serve:
	@echo "http://localhost:$(PORT)/my_first_ami.html"
	@python3 -m http.server $(PORT)

.PHONY: serve
