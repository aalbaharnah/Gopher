include GOPATH/src/github.com/aalbaharnah/Gopher

TARG=Gopher

GOFILES=\
	gopher.go
package: _obj/$(TARG).a

_obj/$(TARG).a: _go_.$O
	@mkdir -p _obj/$(dir)
	rm -f _obj/$(TARG).a
	gopack grc $@ _go_.$O

install:
  - go get github.com/taotetek/gogopher

serve:
	gopher.go

compile:
	go build gopher.go
