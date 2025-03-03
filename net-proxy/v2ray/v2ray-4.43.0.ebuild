# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit systemd go-module

DESCRIPTION="A platform for building proxies to bypass network restrictions."
HOMEPAGE="https://github.com/v2fly/v2ray-core"

# sed -re 's/^(\S*) (\S*) (\S*)/"\1 \2"/g' go.sum
# echo "goproxy https://goproxy.cn/" >> /etc/portage/mirrors
EGO_SUM=(
	"cloud.google.com/go v0.26.0/go.mod"
	"cloud.google.com/go v0.31.0/go.mod"
	"cloud.google.com/go v0.34.0/go.mod"
	"cloud.google.com/go v0.37.0/go.mod"
	"cloud.google.com/go v0.38.0/go.mod"
	"cloud.google.com/go v0.44.1/go.mod"
	"cloud.google.com/go v0.44.2/go.mod"
	"cloud.google.com/go v0.45.1/go.mod"
	"cloud.google.com/go v0.46.3/go.mod"
	"cloud.google.com/go/bigquery v1.0.1/go.mod"
	"cloud.google.com/go/datastore v1.0.0/go.mod"
	"cloud.google.com/go/firestore v1.1.0/go.mod"
	"cloud.google.com/go/pubsub v1.0.1/go.mod"
	"cloud.google.com/go/storage v1.0.0/go.mod"
	"dmitri.shuralyov.com/app/changes v0.0.0-20180602232624-0a106ad413e3/go.mod"
	"dmitri.shuralyov.com/gpu/mtl v0.0.0-20190408044501-666a987793e9/go.mod"
	"dmitri.shuralyov.com/html/belt v0.0.0-20180602232347-f7d459c86be0/go.mod"
	"dmitri.shuralyov.com/service/change v0.0.0-20181023043359-a85b471d5412/go.mod"
	"dmitri.shuralyov.com/state v0.0.0-20180228185332-28bcc343414c/go.mod"
	"git.apache.org/thrift.git v0.0.0-20180902110319-2566ecd5d999/go.mod"
	"github.com/BurntSushi/toml v0.3.1/go.mod"
	"github.com/BurntSushi/xgb v0.0.0-20160522181843-27f122750802/go.mod"
	"github.com/OneOfOne/xxhash v1.2.2/go.mod"
	"github.com/alecthomas/template v0.0.0-20160405071501-a0175ee3bccc/go.mod"
	"github.com/alecthomas/units v0.0.0-20151022065526-2efee857e7cf/go.mod"
	"github.com/anmitsu/go-shlex v0.0.0-20161002113705-648efa622239/go.mod"
	"github.com/armon/circbuf v0.0.0-20150827004946-bbbad097214e/go.mod"
	"github.com/armon/go-metrics v0.0.0-20180917152333-f0300d1749da/go.mod"
	"github.com/armon/go-radix v0.0.0-20180808171621-7fddfc383310/go.mod"
	"github.com/beorn7/perks v0.0.0-20180321164747-3a771d992973/go.mod"
	"github.com/beorn7/perks v1.0.0/go.mod"
	"github.com/bgentry/speakeasy v0.1.0/go.mod"
	"github.com/bketelsen/crypt v0.0.3-0.20200106085610-5cbc8cc4026c/go.mod"
	"github.com/bradfitz/go-smtpd v0.0.0-20170404230938-deb6d6237625/go.mod"
	"github.com/buger/jsonparser v0.0.0-20181115193947-bf1c66bbce23/go.mod"
	"github.com/census-instrumentation/opencensus-proto v0.2.1/go.mod"
	"github.com/cespare/xxhash v1.1.0/go.mod"
	"github.com/cheekybits/genny v1.0.0"
	"github.com/cheekybits/genny v1.0.0/go.mod"
	"github.com/chzyer/logex v1.1.10/go.mod"
	"github.com/chzyer/readline v0.0.0-20180603132655-2972be24d48e/go.mod"
	"github.com/chzyer/test v0.0.0-20180213035817-a1ea475d72b1/go.mod"
	"github.com/client9/misspell v0.3.4/go.mod"
	"github.com/cncf/udpa/go v0.0.0-20201120205902-5459f2c99403/go.mod"
	"github.com/coreos/bbolt v1.3.2/go.mod"
	"github.com/coreos/etcd v3.3.13+incompatible/go.mod"
	"github.com/coreos/go-semver v0.3.0/go.mod"
	"github.com/coreos/go-systemd v0.0.0-20181012123002-c6f51f82210d/go.mod"
	"github.com/coreos/go-systemd v0.0.0-20190321100706-95778dfbb74e/go.mod"
	"github.com/coreos/pkg v0.0.0-20180928190104-399ea9e2e55f/go.mod"
	"github.com/cpuguy83/go-md2man/v2 v2.0.0/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/dgrijalva/jwt-go v3.2.0+incompatible/go.mod"
	"github.com/dgryski/go-metro v0.0.0-20200812162917-85c65e2d0165"
	"github.com/dgryski/go-metro v0.0.0-20200812162917-85c65e2d0165/go.mod"
	"github.com/dgryski/go-sip13 v0.0.0-20181026042036-e10d5fee7954/go.mod"
	"github.com/dustin/go-humanize v1.0.0/go.mod"
	"github.com/ebfe/bcrypt_pbkdf v0.0.0-20140212075826-3c8d2dcb253a"
	"github.com/ebfe/bcrypt_pbkdf v0.0.0-20140212075826-3c8d2dcb253a/go.mod"
	"github.com/envoyproxy/go-control-plane v0.9.0/go.mod"
	"github.com/envoyproxy/go-control-plane v0.9.1-0.20191026205805-5f8ba28d4473/go.mod"
	"github.com/envoyproxy/go-control-plane v0.9.9-0.20210217033140-668b12f5399d/go.mod"
	"github.com/envoyproxy/protoc-gen-validate v0.1.0/go.mod"
	"github.com/fatih/color v1.7.0/go.mod"
	"github.com/flynn/go-shlex v0.0.0-20150515145356-3f9db97f8568/go.mod"
	"github.com/francoispqt/gojay v1.2.13/go.mod"
	"github.com/fsnotify/fsnotify v1.4.7/go.mod"
	"github.com/fsnotify/fsnotify v1.4.9"
	"github.com/fsnotify/fsnotify v1.4.9/go.mod"
	"github.com/ghodss/yaml v1.0.0/go.mod"
	"github.com/gliderlabs/ssh v0.1.1/go.mod"
	"github.com/go-errors/errors v1.0.1/go.mod"
	"github.com/go-gl/glfw v0.0.0-20190409004039-e6da0acd62b1/go.mod"
	"github.com/go-kit/kit v0.8.0/go.mod"
	"github.com/go-logfmt/logfmt v0.3.0/go.mod"
	"github.com/go-logfmt/logfmt v0.4.0/go.mod"
	"github.com/go-stack/stack v1.8.0/go.mod"
	"github.com/go-task/slim-sprig v0.0.0-20210107165309-348f09dbbbc0/go.mod"
	"github.com/gogo/protobuf v1.1.1/go.mod"
	"github.com/gogo/protobuf v1.2.1/go.mod"
	"github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b/go.mod"
	"github.com/golang/groupcache v0.0.0-20190129154638-5b532d6fd5ef/go.mod"
	"github.com/golang/lint v0.0.0-20180702182130-06c8688daad7/go.mod"
	"github.com/golang/mock v1.1.1/go.mod"
	"github.com/golang/mock v1.2.0/go.mod"
	"github.com/golang/mock v1.3.1/go.mod"
	"github.com/golang/mock v1.4.4/go.mod"
	"github.com/golang/mock v1.6.0"
	"github.com/golang/mock v1.6.0/go.mod"
	"github.com/golang/protobuf v1.2.0/go.mod"
	"github.com/golang/protobuf v1.3.1/go.mod"
	"github.com/golang/protobuf v1.3.2/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.1/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.1.0.20200221234624-67d41d38c208/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.2/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.4.0.20200313231945-b860323f09d0/go.mod"
	"github.com/golang/protobuf v1.4.0/go.mod"
	"github.com/golang/protobuf v1.4.1/go.mod"
	"github.com/golang/protobuf v1.4.2/go.mod"
	"github.com/golang/protobuf v1.5.0/go.mod"
	"github.com/golang/protobuf v1.5.2"
	"github.com/golang/protobuf v1.5.2/go.mod"
	"github.com/google/btree v0.0.0-20180813153112-4030bb1f1f0c/go.mod"
	"github.com/google/btree v1.0.0/go.mod"
	"github.com/google/go-cmp v0.2.0/go.mod"
	"github.com/google/go-cmp v0.3.0/go.mod"
	"github.com/google/go-cmp v0.3.1/go.mod"
	"github.com/google/go-cmp v0.4.0/go.mod"
	"github.com/google/go-cmp v0.5.0/go.mod"
	"github.com/google/go-cmp v0.5.1/go.mod"
	"github.com/google/go-cmp v0.5.5/go.mod"
	"github.com/google/go-cmp v0.5.6"
	"github.com/google/go-cmp v0.5.6/go.mod"
	"github.com/google/go-github v17.0.0+incompatible/go.mod"
	"github.com/google/go-querystring v1.0.0/go.mod"
	"github.com/google/martian v2.1.0+incompatible/go.mod"
	"github.com/google/pprof v0.0.0-20181206194817-3ea8567a2e57/go.mod"
	"github.com/google/pprof v0.0.0-20190515194954-54271f7e092f/go.mod"
	"github.com/google/renameio v0.1.0/go.mod"
	"github.com/google/uuid v1.1.2/go.mod"
	"github.com/googleapis/gax-go v2.0.0+incompatible/go.mod"
	"github.com/googleapis/gax-go/v2 v2.0.3/go.mod"
	"github.com/googleapis/gax-go/v2 v2.0.4/go.mod"
	"github.com/googleapis/gax-go/v2 v2.0.5/go.mod"
	"github.com/gopherjs/gopherjs v0.0.0-20181017120253-0766667cb4d1/go.mod"
	"github.com/gopherjs/gopherjs v0.0.0-20210420193930-a4630ec28c79/go.mod"
	"github.com/gopherjs/websocket v0.0.0-20191103002815-9a42957e2b3a/go.mod"
	"github.com/gordonklaus/ineffassign v0.0.0-20200309095847-7953dde2c7bf/go.mod"
	"github.com/gorilla/websocket v1.4.2"
	"github.com/gorilla/websocket v1.4.2/go.mod"
	"github.com/gregjones/httpcache v0.0.0-20180305231024-9cad4c3443a7/go.mod"
	"github.com/grpc-ecosystem/go-grpc-middleware v1.0.0/go.mod"
	"github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0/go.mod"
	"github.com/grpc-ecosystem/grpc-gateway v1.5.0/go.mod"
	"github.com/grpc-ecosystem/grpc-gateway v1.9.0/go.mod"
	"github.com/h12w/go-socks5 v0.0.0-20200522160539-76189e178364"
	"github.com/h12w/go-socks5 v0.0.0-20200522160539-76189e178364/go.mod"
	"github.com/hashicorp/consul/api v1.1.0/go.mod"
	"github.com/hashicorp/consul/sdk v0.1.1/go.mod"
	"github.com/hashicorp/errwrap v1.0.0/go.mod"
	"github.com/hashicorp/go-cleanhttp v0.5.1/go.mod"
	"github.com/hashicorp/go-immutable-radix v1.0.0/go.mod"
	"github.com/hashicorp/go-msgpack v0.5.3/go.mod"
	"github.com/hashicorp/go-multierror v1.0.0/go.mod"
	"github.com/hashicorp/go-rootcerts v1.0.0/go.mod"
	"github.com/hashicorp/go-sockaddr v1.0.0/go.mod"
	"github.com/hashicorp/go-syslog v1.0.0/go.mod"
	"github.com/hashicorp/go-uuid v1.0.0/go.mod"
	"github.com/hashicorp/go-uuid v1.0.1/go.mod"
	"github.com/hashicorp/go.net v0.0.1/go.mod"
	"github.com/hashicorp/golang-lru v0.5.0/go.mod"
	"github.com/hashicorp/golang-lru v0.5.1/go.mod"
	"github.com/hashicorp/hcl v1.0.0/go.mod"
	"github.com/hashicorp/logutils v1.0.0/go.mod"
	"github.com/hashicorp/mdns v1.0.0/go.mod"
	"github.com/hashicorp/memberlist v0.1.3/go.mod"
	"github.com/hashicorp/serf v0.8.2/go.mod"
	"github.com/hpcloud/tail v1.0.0/go.mod"
	"github.com/inconshreveable/mousetrap v1.0.0/go.mod"
	"github.com/jellevandenhooff/dkim v0.0.0-20150330215556-f50fe3d243e1/go.mod"
	"github.com/jhump/protoreflect v1.8.2"
	"github.com/jhump/protoreflect v1.8.2/go.mod"
	"github.com/jhump/protoreflect v1.9.0"
	"github.com/jhump/protoreflect v1.9.0/go.mod"
	"github.com/jonboulle/clockwork v0.1.0/go.mod"
	"github.com/json-iterator/go v1.1.6/go.mod"
	"github.com/jstemmer/go-junit-report v0.0.0-20190106144839-af01ea7f8024/go.mod"
	"github.com/jtolds/gls v4.20.0+incompatible/go.mod"
	"github.com/julienschmidt/httprouter v1.2.0/go.mod"
	"github.com/kisielk/errcheck v1.1.0/go.mod"
	"github.com/kisielk/gotool v1.0.0/go.mod"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.1/go.mod"
	"github.com/kr/logfmt v0.0.0-20140226030751-b84e30acd515/go.mod"
	"github.com/kr/pretty v0.1.0"
	"github.com/kr/pretty v0.1.0/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/pty v1.1.3/go.mod"
	"github.com/kr/text v0.1.0"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/lucas-clemente/quic-go v0.23.0"
	"github.com/lucas-clemente/quic-go v0.23.0/go.mod"
	"github.com/lunixbochs/struc v0.0.0-20200707160740-784aaebc1d40"
	"github.com/lunixbochs/struc v0.0.0-20200707160740-784aaebc1d40/go.mod"
	"github.com/lunixbochs/vtclean v1.0.0/go.mod"
	"github.com/magiconair/properties v1.8.1/go.mod"
	"github.com/mailru/easyjson v0.0.0-20190312143242-1de009706dbe/go.mod"
	"github.com/marten-seemann/qpack v0.2.1/go.mod"
	"github.com/marten-seemann/qtls-go1-15 v0.1.4"
	"github.com/marten-seemann/qtls-go1-15 v0.1.4/go.mod"
	"github.com/marten-seemann/qtls-go1-16 v0.1.3"
	"github.com/marten-seemann/qtls-go1-16 v0.1.3/go.mod"
	"github.com/marten-seemann/qtls-go1-17 v0.1.0"
	"github.com/marten-seemann/qtls-go1-17 v0.1.0/go.mod"
	"github.com/mattn/go-colorable v0.0.9/go.mod"
	"github.com/mattn/go-isatty v0.0.3/go.mod"
	"github.com/matttproud/golang_protobuf_extensions v1.0.1/go.mod"
	"github.com/microcosm-cc/bluemonday v1.0.1/go.mod"
	"github.com/miekg/dns v1.0.14/go.mod"
	"github.com/miekg/dns v1.1.42"
	"github.com/miekg/dns v1.1.42/go.mod"
	"github.com/mitchellh/cli v1.0.0/go.mod"
	"github.com/mitchellh/go-homedir v1.0.0/go.mod"
	"github.com/mitchellh/go-homedir v1.1.0/go.mod"
	"github.com/mitchellh/go-testing-interface v1.0.0/go.mod"
	"github.com/mitchellh/gox v0.4.0/go.mod"
	"github.com/mitchellh/iochan v1.0.0/go.mod"
	"github.com/mitchellh/mapstructure v0.0.0-20160808181253-ca63d7c062ee/go.mod"
	"github.com/mitchellh/mapstructure v1.1.2/go.mod"
	"github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd/go.mod"
	"github.com/modern-go/reflect2 v1.0.1/go.mod"
	"github.com/mwitkow/go-conntrack v0.0.0-20161129095857-cc309e4a2223/go.mod"
	"github.com/neelance/astrewrite v0.0.0-20160511093645-99348263ae86/go.mod"
	"github.com/neelance/sourcemap v0.0.0-20151028013722-8c68805598ab/go.mod"
	"github.com/neelance/sourcemap v0.0.0-20200213170602-2833bce08e4c/go.mod"
	"github.com/nishanths/predeclared v0.0.0-20200524104333-86fad755b4d3/go.mod"
	"github.com/nxadm/tail v1.4.4"
	"github.com/nxadm/tail v1.4.4/go.mod"
	"github.com/oklog/ulid v1.3.1/go.mod"
	"github.com/onsi/ginkgo v1.6.0/go.mod"
	"github.com/onsi/ginkgo v1.12.1/go.mod"
	"github.com/onsi/ginkgo v1.14.0"
	"github.com/onsi/ginkgo v1.14.0/go.mod"
	"github.com/onsi/gomega v1.7.1/go.mod"
	"github.com/onsi/gomega v1.10.1"
	"github.com/onsi/gomega v1.10.1/go.mod"
	"github.com/openzipkin/zipkin-go v0.1.1/go.mod"
	"github.com/pascaldekloe/goe v0.0.0-20180627143212-57f6aae5913c/go.mod"
	"github.com/pelletier/go-toml v1.2.0/go.mod"
	"github.com/phayes/freeport v0.0.0-20180830031419-95f893ade6f2"
	"github.com/phayes/freeport v0.0.0-20180830031419-95f893ade6f2/go.mod"
	"github.com/pires/go-proxyproto v0.6.1"
	"github.com/pires/go-proxyproto v0.6.1/go.mod"
	"github.com/pkg/errors v0.8.0/go.mod"
	"github.com/pkg/errors v0.8.1/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/posener/complete v1.1.1/go.mod"
	"github.com/prometheus/client_golang v0.8.0/go.mod"
	"github.com/prometheus/client_golang v0.9.1/go.mod"
	"github.com/prometheus/client_golang v0.9.3/go.mod"
	"github.com/prometheus/client_model v0.0.0-20180712105110-5c3871d89910/go.mod"
	"github.com/prometheus/client_model v0.0.0-20190129233127-fd36f4220a90/go.mod"
	"github.com/prometheus/client_model v0.0.0-20190812154241-14fe0d1b01d4/go.mod"
	"github.com/prometheus/common v0.0.0-20180801064454-c7de2306084e/go.mod"
	"github.com/prometheus/common v0.0.0-20181113130724-41aa239b4cce/go.mod"
	"github.com/prometheus/common v0.4.0/go.mod"
	"github.com/prometheus/procfs v0.0.0-20180725123919-05ee40e3a273/go.mod"
	"github.com/prometheus/procfs v0.0.0-20181005140218-185b4288413d/go.mod"
	"github.com/prometheus/procfs v0.0.0-20190507164030-5867b95ac084/go.mod"
	"github.com/prometheus/tsdb v0.7.1/go.mod"
	"github.com/riobard/go-bloom v0.0.0-20200614022211-cdc8013cb5b3"
	"github.com/riobard/go-bloom v0.0.0-20200614022211-cdc8013cb5b3/go.mod"
	"github.com/rogpeppe/fastuuid v0.0.0-20150106093220-6724a57986af/go.mod"
	"github.com/rogpeppe/go-internal v1.3.0/go.mod"
	"github.com/russross/blackfriday v1.5.2/go.mod"
	"github.com/russross/blackfriday/v2 v2.0.1/go.mod"
	"github.com/ryanuber/columnize v0.0.0-20160712163229-9b3edd62028f/go.mod"
	"github.com/sean-/seed v0.0.0-20170313163322-e2103e2c3529/go.mod"
	"github.com/seiflotfy/cuckoofilter v0.0.0-20201222105146-bc6005554a0c"
	"github.com/seiflotfy/cuckoofilter v0.0.0-20201222105146-bc6005554a0c/go.mod"
	"github.com/sergi/go-diff v1.0.0/go.mod"
	"github.com/shurcooL/component v0.0.0-20170202220835-f88ec8f54cc4/go.mod"
	"github.com/shurcooL/events v0.0.0-20181021180414-410e4ca65f48/go.mod"
	"github.com/shurcooL/github_flavored_markdown v0.0.0-20181002035957-2122de532470/go.mod"
	"github.com/shurcooL/go v0.0.0-20180423040247-9e1955d9fb6e/go.mod"
	"github.com/shurcooL/go v0.0.0-20200502201357-93f07166e636/go.mod"
	"github.com/shurcooL/go-goon v0.0.0-20170922171312-37c2f522c041/go.mod"
	"github.com/shurcooL/gofontwoff v0.0.0-20180329035133-29b52fc0a18d/go.mod"
	"github.com/shurcooL/gopherjslib v0.0.0-20160914041154-feb6d3990c2c/go.mod"
	"github.com/shurcooL/highlight_diff v0.0.0-20170515013008-09bb4053de1b/go.mod"
	"github.com/shurcooL/highlight_go v0.0.0-20181028180052-98c3abbbae20/go.mod"
	"github.com/shurcooL/home v0.0.0-20181020052607-80b7ffcb30f9/go.mod"
	"github.com/shurcooL/htmlg v0.0.0-20170918183704-d01228ac9e50/go.mod"
	"github.com/shurcooL/httperror v0.0.0-20170206035902-86b7830d14cc/go.mod"
	"github.com/shurcooL/httpfs v0.0.0-20171119174359-809beceb2371/go.mod"
	"github.com/shurcooL/httpfs v0.0.0-20190707220628-8d4bc4ba7749/go.mod"
	"github.com/shurcooL/httpgzip v0.0.0-20180522190206-b1c53ac65af9/go.mod"
	"github.com/shurcooL/issues v0.0.0-20181008053335-6292fdc1e191/go.mod"
	"github.com/shurcooL/issuesapp v0.0.0-20180602232740-048589ce2241/go.mod"
	"github.com/shurcooL/notifications v0.0.0-20181007000457-627ab5aea122/go.mod"
	"github.com/shurcooL/octicon v0.0.0-20181028054416-fa4f57f9efb2/go.mod"
	"github.com/shurcooL/reactions v0.0.0-20181006231557-f2e0b4ca5b82/go.mod"
	"github.com/shurcooL/sanitized_anchor_name v0.0.0-20170918181015-86672fcb3f95/go.mod"
	"github.com/shurcooL/sanitized_anchor_name v1.0.0/go.mod"
	"github.com/shurcooL/users v0.0.0-20180125191416-49c67e49c537/go.mod"
	"github.com/shurcooL/webdavfs v0.0.0-20170829043945-18c3829fa133/go.mod"
	"github.com/sirupsen/logrus v1.2.0/go.mod"
	"github.com/smartystreets/assertions v0.0.0-20180927180507-b2de0cb4f26d/go.mod"
	"github.com/smartystreets/goconvey v1.6.4/go.mod"
	"github.com/soheilhy/cmux v0.1.4/go.mod"
	"github.com/sourcegraph/annotate v0.0.0-20160123013949-f4cad6c6324d/go.mod"
	"github.com/sourcegraph/syntaxhighlight v0.0.0-20170531221838-bd320f5d308e/go.mod"
	"github.com/spaolacci/murmur3 v0.0.0-20180118202830-f09979ecbc72/go.mod"
	"github.com/spf13/afero v1.1.2/go.mod"
	"github.com/spf13/cast v1.3.0/go.mod"
	"github.com/spf13/cobra v1.1.3/go.mod"
	"github.com/spf13/jwalterweatherman v1.0.0/go.mod"
	"github.com/spf13/pflag v1.0.3/go.mod"
	"github.com/spf13/pflag v1.0.5/go.mod"
	"github.com/spf13/viper v1.7.0/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/objx v0.1.1/go.mod"
	"github.com/stretchr/testify v1.2.2/go.mod"
	"github.com/stretchr/testify v1.3.0/go.mod"
	"github.com/stretchr/testify v1.5.1/go.mod"
	"github.com/stretchr/testify v1.6.1/go.mod"
	"github.com/stretchr/testify v1.7.0"
	"github.com/stretchr/testify v1.7.0/go.mod"
	"github.com/subosito/gotenv v1.2.0/go.mod"
	"github.com/tarm/serial v0.0.0-20180830185346-98f6abe2eb07/go.mod"
	"github.com/tmc/grpc-websocket-proxy v0.0.0-20190109142713-0ad062ec5ee5/go.mod"
	"github.com/v2fly/BrowserBridge v0.0.0-20210430233438-0570fc1d7d08"
	"github.com/v2fly/BrowserBridge v0.0.0-20210430233438-0570fc1d7d08/go.mod"
	"github.com/v2fly/VSign v0.0.0-20201108000810-e2adc24bf848"
	"github.com/v2fly/VSign v0.0.0-20201108000810-e2adc24bf848/go.mod"
	"github.com/v2fly/ss-bloomring v0.0.0-20210312155135-28617310f63e"
	"github.com/v2fly/ss-bloomring v0.0.0-20210312155135-28617310f63e/go.mod"
	"github.com/viant/assertly v0.4.8/go.mod"
	"github.com/viant/toolbox v0.24.0/go.mod"
	"github.com/xiang90/probing v0.0.0-20190116061207-43a291ad63a2/go.mod"
	"github.com/xtaci/smux v1.5.15"
	"github.com/xtaci/smux v1.5.15/go.mod"
	"github.com/yuin/goldmark v1.1.27/go.mod"
	"github.com/yuin/goldmark v1.1.32/go.mod"
	"github.com/yuin/goldmark v1.2.1/go.mod"
	"github.com/yuin/goldmark v1.3.5/go.mod"
	"go.etcd.io/bbolt v1.3.2/go.mod"
	"go.opencensus.io v0.18.0/go.mod"
	"go.opencensus.io v0.21.0/go.mod"
	"go.opencensus.io v0.22.0/go.mod"
	"go.starlark.net v0.0.0-20210901212718-87f333178d59"
	"go.starlark.net v0.0.0-20210901212718-87f333178d59/go.mod"
	"go.uber.org/atomic v1.4.0/go.mod"
	"go.uber.org/multierr v1.1.0/go.mod"
	"go.uber.org/zap v1.10.0/go.mod"
	"go4.org v0.0.0-20180809161055-417644f6feb5/go.mod"
	"go4.org/intern v0.0.0-20210108033219-3eb7198706b2"
	"go4.org/intern v0.0.0-20210108033219-3eb7198706b2/go.mod"
	"go4.org/unsafe/assume-no-moving-gc v0.0.0-20201222180813-1025295fd063"
	"go4.org/unsafe/assume-no-moving-gc v0.0.0-20201222180813-1025295fd063/go.mod"
	"golang.org/x/build v0.0.0-20190111050920-041ab4dc3f9d/go.mod"
	"golang.org/x/crypto v0.0.0-20180904163835-0709b304e793/go.mod"
	"golang.org/x/crypto v0.0.0-20181029021203-45a5f77698d3/go.mod"
	"golang.org/x/crypto v0.0.0-20181030102418-4d3f4d9ffa16/go.mod"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
	"golang.org/x/crypto v0.0.0-20190313024323-a1f597ede03a/go.mod"
	"golang.org/x/crypto v0.0.0-20190510104115-cbcb75029529/go.mod"
	"golang.org/x/crypto v0.0.0-20190605123033-f99c8df09eb5/go.mod"
	"golang.org/x/crypto v0.0.0-20191011191535-87dc89f01550/go.mod"
	"golang.org/x/crypto v0.0.0-20200221231518-2aa609cf4a9d/go.mod"
	"golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9/go.mod"
	"golang.org/x/crypto v0.0.0-20210322153248-0c34fe9e7dc2/go.mod"
	"golang.org/x/crypto v0.0.0-20210513164829-c07d793c2f9a"
	"golang.org/x/crypto v0.0.0-20210513164829-c07d793c2f9a/go.mod"
	"golang.org/x/crypto v0.0.0-20210817164053-32db794688a5"
	"golang.org/x/crypto v0.0.0-20210817164053-32db794688a5/go.mod"
	"golang.org/x/exp v0.0.0-20190121172915-509febef88a4/go.mod"
	"golang.org/x/exp v0.0.0-20190306152737-a1d7652674e8/go.mod"
	"golang.org/x/exp v0.0.0-20190510132918-efd6b22b2522/go.mod"
	"golang.org/x/exp v0.0.0-20190829153037-c13cbed26979/go.mod"
	"golang.org/x/exp v0.0.0-20191030013958-a1ab85dbe136/go.mod"
	"golang.org/x/image v0.0.0-20190227222117-0694c2d4d067/go.mod"
	"golang.org/x/image v0.0.0-20190802002840-cff245a6509b/go.mod"
	"golang.org/x/lint v0.0.0-20180702182130-06c8688daad7/go.mod"
	"golang.org/x/lint v0.0.0-20181026193005-c67002cb31c3/go.mod"
	"golang.org/x/lint v0.0.0-20190227174305-5b3e6a55c961/go.mod"
	"golang.org/x/lint v0.0.0-20190301231843-5614ed5bae6f/go.mod"
	"golang.org/x/lint v0.0.0-20190313153728-d0100b6bd8b3/go.mod"
	"golang.org/x/lint v0.0.0-20190409202823-959b441ac422/go.mod"
	"golang.org/x/lint v0.0.0-20190909230951-414d861bb4ac/go.mod"
	"golang.org/x/lint v0.0.0-20190930215403-16217165b5de/go.mod"
	"golang.org/x/mobile v0.0.0-20190312151609-d3739f865fa6/go.mod"
	"golang.org/x/mobile v0.0.0-20190719004257-d2bd2a29d028/go.mod"
	"golang.org/x/mod v0.0.0-20190513183733-4bf6d317e70e/go.mod"
	"golang.org/x/mod v0.1.0/go.mod"
	"golang.org/x/mod v0.2.0/go.mod"
	"golang.org/x/mod v0.3.0/go.mod"
	"golang.org/x/mod v0.4.2/go.mod"
	"golang.org/x/net v0.0.0-20180724234803-3673e40ba225/go.mod"
	"golang.org/x/net v0.0.0-20180826012351-8a410e7b638d/go.mod"
	"golang.org/x/net v0.0.0-20180906233101-161cd47e91fd/go.mod"
	"golang.org/x/net v0.0.0-20181023162649-9b4f9f5ad519/go.mod"
	"golang.org/x/net v0.0.0-20181029044818-c44066c5c816/go.mod"
	"golang.org/x/net v0.0.0-20181106065722-10aee1819953/go.mod"
	"golang.org/x/net v0.0.0-20181114220301-adae6a3d119a/go.mod"
	"golang.org/x/net v0.0.0-20181201002055-351d144fa1fc/go.mod"
	"golang.org/x/net v0.0.0-20181220203305-927f97764cc3/go.mod"
	"golang.org/x/net v0.0.0-20190108225652-1e06a53dbb7e/go.mod"
	"golang.org/x/net v0.0.0-20190213061140-3a22650c66bd/go.mod"
	"golang.org/x/net v0.0.0-20190311183353-d8887717615a/go.mod"
	"golang.org/x/net v0.0.0-20190313220215-9f648a60d977/go.mod"
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
	"golang.org/x/net v0.0.0-20190501004415-9ce7a6920f09/go.mod"
	"golang.org/x/net v0.0.0-20190503192946-f4e77d36d62c/go.mod"
	"golang.org/x/net v0.0.0-20190603091049-60506f45cf65/go.mod"
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859/go.mod"
	"golang.org/x/net v0.0.0-20200226121028-0de0cce0169b/go.mod"
	"golang.org/x/net v0.0.0-20200520004742-59133d7f0dd7/go.mod"
	"golang.org/x/net v0.0.0-20200625001655-4c5254603344/go.mod"
	"golang.org/x/net v0.0.0-20200707034311-ab3426394381/go.mod"
	"golang.org/x/net v0.0.0-20201021035429-f5854403a974/go.mod"
	"golang.org/x/net v0.0.0-20210226172049-e18ecbb05110/go.mod"
	"golang.org/x/net v0.0.0-20210405180319-a5a99cb37ef4/go.mod"
	"golang.org/x/net v0.0.0-20210614182718-04defd469f4e"
	"golang.org/x/net v0.0.0-20210614182718-04defd469f4e/go.mod"
	"golang.org/x/net v0.0.0-20210903162142-ad29c8ab022f"
	"golang.org/x/net v0.0.0-20210903162142-ad29c8ab022f/go.mod"
	"golang.org/x/oauth2 v0.0.0-20180821212333-d2e6202438be/go.mod"
	"golang.org/x/oauth2 v0.0.0-20181017192945-9dcd33a902f4/go.mod"
	"golang.org/x/oauth2 v0.0.0-20181203162652-d668ce993890/go.mod"
	"golang.org/x/oauth2 v0.0.0-20190226205417-e64efc72b421/go.mod"
	"golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45/go.mod"
	"golang.org/x/perf v0.0.0-20180704124530-6e6d33e29852/go.mod"
	"golang.org/x/sync v0.0.0-20180314180146-1d60e4601c6f/go.mod"
	"golang.org/x/sync v0.0.0-20181108010431-42b317875d0f/go.mod"
	"golang.org/x/sync v0.0.0-20181221193216-37e7f081c4d4/go.mod"
	"golang.org/x/sync v0.0.0-20190227155943-e225da77a7e6/go.mod"
	"golang.org/x/sync v0.0.0-20190423024810-112230192c58/go.mod"
	"golang.org/x/sync v0.0.0-20190911185100-cd5d95a43a6e/go.mod"
	"golang.org/x/sync v0.0.0-20200625203802-6e8e738ad208/go.mod"
	"golang.org/x/sync v0.0.0-20201020160332-67f06af15bc9/go.mod"
	"golang.org/x/sync v0.0.0-20210220032951-036812b2e83c"
	"golang.org/x/sync v0.0.0-20210220032951-036812b2e83c/go.mod"
	"golang.org/x/sys v0.0.0-20180823144017-11551d06cbcc/go.mod"
	"golang.org/x/sys v0.0.0-20180830151530-49385e6e1522/go.mod"
	"golang.org/x/sys v0.0.0-20180905080454-ebe1bf3edb33/go.mod"
	"golang.org/x/sys v0.0.0-20180909124046-d0be0721c37e/go.mod"
	"golang.org/x/sys v0.0.0-20181026203630-95b1ffbd15a5/go.mod"
	"golang.org/x/sys v0.0.0-20181029174526-d69651ed3497/go.mod"
	"golang.org/x/sys v0.0.0-20181107165924-66b7b1311ac8/go.mod"
	"golang.org/x/sys v0.0.0-20181116152217-5ac8a444bdc5/go.mod"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
	"golang.org/x/sys v0.0.0-20190312061237-fead79001313/go.mod"
	"golang.org/x/sys v0.0.0-20190316082340-a2f829d7f35f/go.mod"
	"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod"
	"golang.org/x/sys v0.0.0-20190502145724-3ef323f4f1fd/go.mod"
	"golang.org/x/sys v0.0.0-20190507160741-ecd444e8653b/go.mod"
	"golang.org/x/sys v0.0.0-20190606165138-5da285871e9c/go.mod"
	"golang.org/x/sys v0.0.0-20190624142023-c5567b49c5d0/go.mod"
	"golang.org/x/sys v0.0.0-20190904154756-749cb33beabd/go.mod"
	"golang.org/x/sys v0.0.0-20191005200804-aed5e4c7ecf9/go.mod"
	"golang.org/x/sys v0.0.0-20191120155948-bd437916bb0e/go.mod"
	"golang.org/x/sys v0.0.0-20200223170610-d5e6a3e2c0ae/go.mod"
	"golang.org/x/sys v0.0.0-20200323222414-85ca7c5b95cd/go.mod"
	"golang.org/x/sys v0.0.0-20200519105757-fe76b779f299/go.mod"
	"golang.org/x/sys v0.0.0-20200930185726-fdedc70b468f/go.mod"
	"golang.org/x/sys v0.0.0-20201119102817-f84b799fce68/go.mod"
	"golang.org/x/sys v0.0.0-20210119212857-b64e53b001e4/go.mod"
	"golang.org/x/sys v0.0.0-20210303074136-134d130e1a04/go.mod"
	"golang.org/x/sys v0.0.0-20210330210617-4fbd30eecc44/go.mod"
	"golang.org/x/sys v0.0.0-20210403161142-5e06dd20ab57/go.mod"
	"golang.org/x/sys v0.0.0-20210423082822-04245dca01da/go.mod"
	"golang.org/x/sys v0.0.0-20210510120138-977fb7262007/go.mod"
	"golang.org/x/sys v0.0.0-20210611083646-a4fc73990273"
	"golang.org/x/sys v0.0.0-20210611083646-a4fc73990273/go.mod"
	"golang.org/x/sys v0.0.0-20210903071746-97244b99971b"
	"golang.org/x/sys v0.0.0-20210903071746-97244b99971b/go.mod"
	"golang.org/x/term v0.0.0-20201126162022-7de9c90e9dd1/go.mod"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/text v0.3.1-0.20180807135948-17ff2d5776d2/go.mod"
	"golang.org/x/text v0.3.2/go.mod"
	"golang.org/x/text v0.3.3/go.mod"
	"golang.org/x/text v0.3.6"
	"golang.org/x/text v0.3.6/go.mod"
	"golang.org/x/time v0.0.0-20180412165947-fbb02b2291d2/go.mod"
	"golang.org/x/time v0.0.0-20181108054448-85acf8d2951c/go.mod"
	"golang.org/x/time v0.0.0-20190308202827-9d24e82272b4/go.mod"
	"golang.org/x/tools v0.0.0-20180221164845-07fd8470d635/go.mod"
	"golang.org/x/tools v0.0.0-20180828015842-6cd1fcedba52/go.mod"
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
	"golang.org/x/tools v0.0.0-20181030000716-a0a13e073c7b/go.mod"
	"golang.org/x/tools v0.0.0-20190114222345-bf090417da8b/go.mod"
	"golang.org/x/tools v0.0.0-20190226205152-f727befe758c/go.mod"
	"golang.org/x/tools v0.0.0-20190311212946-11955173bddd/go.mod"
	"golang.org/x/tools v0.0.0-20190312151545-0bb0c0a6e846/go.mod"
	"golang.org/x/tools v0.0.0-20190312170243-e65039ee4138/go.mod"
	"golang.org/x/tools v0.0.0-20190328211700-ab21143f2384/go.mod"
	"golang.org/x/tools v0.0.0-20190425150028-36563e24a262/go.mod"
	"golang.org/x/tools v0.0.0-20190506145303-2d16b83fe98c/go.mod"
	"golang.org/x/tools v0.0.0-20190524140312-2c0ae7006135/go.mod"
	"golang.org/x/tools v0.0.0-20190606124116-d0a3d012864b/go.mod"
	"golang.org/x/tools v0.0.0-20190621195816-6e04913cbbac/go.mod"
	"golang.org/x/tools v0.0.0-20190628153133-6cdbf07be9d0/go.mod"
	"golang.org/x/tools v0.0.0-20190816200558-6889da9d5479/go.mod"
	"golang.org/x/tools v0.0.0-20190911174233-4f2ddba30aff/go.mod"
	"golang.org/x/tools v0.0.0-20191012152004-8de300cfc20a/go.mod"
	"golang.org/x/tools v0.0.0-20191112195655-aa38f8e97acc/go.mod"
	"golang.org/x/tools v0.0.0-20191119224855-298f0cb1881e/go.mod"
	"golang.org/x/tools v0.0.0-20191130070609-6e064ea0cf2d/go.mod"
	"golang.org/x/tools v0.0.0-20200522201501-cb1345f3a375/go.mod"
	"golang.org/x/tools v0.0.0-20200717024301-6ddee64345a6/go.mod"
	"golang.org/x/tools v0.1.0/go.mod"
	"golang.org/x/tools v0.1.1/go.mod"
	"golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7/go.mod"
	"golang.org/x/xerrors v0.0.0-20191011141410-1b5146add898/go.mod"
	"golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543/go.mod"
	"golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1"
	"golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1/go.mod"
	"google.golang.org/api v0.0.0-20180910000450-7ca32eb868bf/go.mod"
	"google.golang.org/api v0.0.0-20181030000543-1d582fd0359e/go.mod"
	"google.golang.org/api v0.1.0/go.mod"
	"google.golang.org/api v0.4.0/go.mod"
	"google.golang.org/api v0.7.0/go.mod"
	"google.golang.org/api v0.8.0/go.mod"
	"google.golang.org/api v0.9.0/go.mod"
	"google.golang.org/api v0.13.0/go.mod"
	"google.golang.org/appengine v1.1.0/go.mod"
	"google.golang.org/appengine v1.2.0/go.mod"
	"google.golang.org/appengine v1.3.0/go.mod"
	"google.golang.org/appengine v1.4.0/go.mod"
	"google.golang.org/appengine v1.5.0/go.mod"
	"google.golang.org/appengine v1.6.1/go.mod"
	"google.golang.org/genproto v0.0.0-20180817151627-c66870c02cf8/go.mod"
	"google.golang.org/genproto v0.0.0-20180831171423-11092d34479b/go.mod"
	"google.golang.org/genproto v0.0.0-20181029155118-b69ba1387ce2/go.mod"
	"google.golang.org/genproto v0.0.0-20181202183823-bd91e49a0898/go.mod"
	"google.golang.org/genproto v0.0.0-20190306203927-b5d61aea6440/go.mod"
	"google.golang.org/genproto v0.0.0-20190307195333-5fe7a883aa19/go.mod"
	"google.golang.org/genproto v0.0.0-20190418145605-e7d98fc518a7/go.mod"
	"google.golang.org/genproto v0.0.0-20190425155659-357c62f0e4bb/go.mod"
	"google.golang.org/genproto v0.0.0-20190502173448-54afdca5d873/go.mod"
	"google.golang.org/genproto v0.0.0-20190801165951-fa694d86fc64/go.mod"
	"google.golang.org/genproto v0.0.0-20190819201941-24fa4b261c55/go.mod"
	"google.golang.org/genproto v0.0.0-20190911173649-1774047e7e51/go.mod"
	"google.golang.org/genproto v0.0.0-20191108220845-16a3f7862a1a/go.mod"
	"google.golang.org/genproto v0.0.0-20200526211855-cb27e3aa2013"
	"google.golang.org/genproto v0.0.0-20200526211855-cb27e3aa2013/go.mod"
	"google.golang.org/grpc v1.14.0/go.mod"
	"google.golang.org/grpc v1.16.0/go.mod"
	"google.golang.org/grpc v1.17.0/go.mod"
	"google.golang.org/grpc v1.19.0/go.mod"
	"google.golang.org/grpc v1.20.1/go.mod"
	"google.golang.org/grpc v1.21.1/go.mod"
	"google.golang.org/grpc v1.23.0/go.mod"
	"google.golang.org/grpc v1.25.1/go.mod"
	"google.golang.org/grpc v1.27.0/go.mod"
	"google.golang.org/grpc v1.38.0"
	"google.golang.org/grpc v1.38.0/go.mod"
	"google.golang.org/grpc v1.41.0"
	"google.golang.org/grpc v1.41.0/go.mod"
	"google.golang.org/protobuf v0.0.0-20200109180630-ec00e32a8dfd/go.mod"
	"google.golang.org/protobuf v0.0.0-20200221191635-4d8936d0db64/go.mod"
	"google.golang.org/protobuf v0.0.0-20200228230310-ab0ca4ff8a60/go.mod"
	"google.golang.org/protobuf v1.20.1-0.20200309200217-e05f789c0967/go.mod"
	"google.golang.org/protobuf v1.21.0/go.mod"
	"google.golang.org/protobuf v1.22.0/go.mod"
	"google.golang.org/protobuf v1.23.0/go.mod"
	"google.golang.org/protobuf v1.23.1-0.20200526195155-81db48ad09cc/go.mod"
	"google.golang.org/protobuf v1.25.0/go.mod"
	"google.golang.org/protobuf v1.25.1-0.20200805231151-a709e31e5d12/go.mod"
	"google.golang.org/protobuf v1.26.0-rc.1/go.mod"
	"google.golang.org/protobuf v1.26.0"
	"google.golang.org/protobuf v1.26.0/go.mod"
	"google.golang.org/protobuf v1.27.1"
	"google.golang.org/protobuf v1.27.1/go.mod"
	"gopkg.in/alecthomas/kingpin.v2 v2.2.6/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127"
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127/go.mod"
	"gopkg.in/errgo.v2 v2.1.0/go.mod"
	"gopkg.in/fsnotify.v1 v1.4.7/go.mod"
	"gopkg.in/inf.v0 v0.9.1/go.mod"
	"gopkg.in/ini.v1 v1.51.0/go.mod"
	"gopkg.in/resty.v1 v1.12.0/go.mod"
	"gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7"
	"gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7/go.mod"
	"gopkg.in/yaml.v2 v2.0.0-20170812160011-eb3733d160e7/go.mod"
	"gopkg.in/yaml.v2 v2.2.1/go.mod"
	"gopkg.in/yaml.v2 v2.2.2/go.mod"
	"gopkg.in/yaml.v2 v2.2.4/go.mod"
	"gopkg.in/yaml.v2 v2.3.0/go.mod"
	"gopkg.in/yaml.v2 v2.4.0"
	"gopkg.in/yaml.v2 v2.4.0/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20200605160147-a5ece683394c"
	"gopkg.in/yaml.v3 v3.0.0-20200605160147-a5ece683394c/go.mod"
	"grpc.go4.org v0.0.0-20170609214715-11d0a25b4919/go.mod"
	"h12.io/socks v1.0.2"
	"h12.io/socks v1.0.2/go.mod"
	"honnef.co/go/tools v0.0.0-20180728063816-88497007e858/go.mod"
	"honnef.co/go/tools v0.0.0-20190102054323-c2f93a96b099/go.mod"
	"honnef.co/go/tools v0.0.0-20190106161140-3f1c8253044a/go.mod"
	"honnef.co/go/tools v0.0.0-20190418001031-e561f6794a2a/go.mod"
	"honnef.co/go/tools v0.0.0-20190523083050-ea95bdfd59fc/go.mod"
	"honnef.co/go/tools v0.0.1-2019.2.3/go.mod"
	"honnef.co/go/tools v0.0.1-2020.1.4/go.mod"
	"inet.af/netaddr v0.0.0-20210903134321-85fa6c94624e"
	"inet.af/netaddr v0.0.0-20210903134321-85fa6c94624e/go.mod"
	"rsc.io/binaryregexp v0.2.0/go.mod"
	"sourcegraph.com/sourcegraph/go-diff v0.5.0/go.mod"
	"sourcegraph.com/sqs/pbtypes v0.0.0-20180604144634-d3ebe8f20ae4/go.mod"
)
go-module_set_globals

SRC_URI="https://github.com/v2fly/v2ray-core/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="+tool"

BDEPEND="
	>=dev-lang/go-1.16:=
	<dev-lang/go-1.18:*
"
DEPEND=""
RDEPEND="
	!net-proxy/v2ray-bin
	dev-libs/v2ray-geoip-bin
	|| (
		dev-libs/v2ray-domain-list-community-bin
		dev-libs/v2ray-domain-list-community
	)
"

S="${WORKDIR%/}/${PN}-core-${PV}"
pkg_pretend() {
	if [[ -z "${REPLACING_VERSIONS}" ]]; then
		cngoproxyset=0
		if [[ -e "${ROOT}"/etc/portage/mirrors ]]; then
			grep '^\s*goproxy\s' "${ROOT}"/etc/portage/mirrors >/dev/null 2>&1
			if [[ $? -eq 0 ]]; then
				cngoproxyset=1
			fi
		fi
		if [[ ${cngoproxyset} -eq 0 ]]; then
			ewarn "You may need to set a goproxy for fetching go modules:"
			ewarn "  echo -e '\\\\ngoproxy https://goproxy.cn/' >> /etc/portage/mirrors"
			ewarn "Can safely ignore this warning if emerge succeeded."
		fi
	fi
}

src_prepare() {
	sed -i 's|/usr/local/bin|/usr/bin|;s|/usr/local/etc|/etc|' release/config/systemd/system/*.service || die
	sed -i '/^User=/s/nobody/v2ray/;/^User=/aDynamicUser=true' release/config/systemd/system/*.service || die
	eapply_user
}

src_compile() {
	go build -v -work -o "bin/v2ray" -trimpath -ldflags "-s -w" ./main || die
	if use tool; then
		go build -v -work -o "bin/v2ctl" -trimpath -ldflags "-s -w" -tags confonly ./infra/control/main || die
	fi
}

src_install() {
	dobin bin/v2ray
	if use tool; then
		dobin bin/v2ctl
	fi

	insinto /etc/v2ray
	doins release/config/*.json

	newinitd "${FILESDIR}/v2ray.initd" v2ray
	systemd_newunit release/config/systemd/system/v2ray.service v2ray.service
	systemd_newunit release/config/systemd/system/v2ray@.service v2ray@.service
}
