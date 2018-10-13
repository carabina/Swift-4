
#
## Bloombox: Swift API Client
#

SCHEMA ?= Schema/
SCHEMA_BRANCH ?= master
SWIFT_GRPC ?= SwiftGRPC

SWIFT_PROTOC_OPTIONS ?= --swift_opt=FileNaming=PathToUnderscores --swift_opt=Visibility=Public --swiftgrpc_opt=Visibility=Public

all: build test
	@echo "Swift API client ready."

clean:
	@echo "Cleaning Swift client for Bloombox..."
	@rm -frv .build $(SCHEMA)/languages

build: dependencies
	@echo "Building Swift client for Bloombox..."
	@swift build

dependencies: swift-grpc

test:
	@#echo "Running tests..."
	@#swift test

submodules: $(SWIFT_PROTOBUF) $(SWIFT_GRPC)
	@git submodule update --init --remote SwiftGRPC

schema: $(SCHEMA) $(SCHEMA)/languages/swift

$(SCHEMA):
	@echo "Initializing Schema..."
	@git submodule add --force --name schema git@github.com:bloombox/Schema.git $(SCHEMA)
	@git submodule update --init --remote schema

$(SCHEMA)languages/swift: $(SCHEMA)
	@echo "Building schema..."
	@$(MAKE) -C Schema LANGUAGES="swift swiftgrpc" PROTO_FLAGS="--plugin=$(PWD)/SwiftGRPC/protoc-gen-swift --plugin=$(PWD)/SwiftGRPC/protoc-gen-swiftgrpc --swiftgrpc_out=languages/swiftgrpc" SERVICES=yes TABLES=no INCLUDE_DESCRIPTOR=yes

sync-schema: $(SCHEMA)languages/swift
	@echo "Syncing Swift schemas..."
	@rm -fr Sources/Schema/*.pb.swift
	@rm -fr Sources/Schema/*.grpc.swift
	@cp -fr $(SCHEMA)languages/swift/*.swift Sources/Schema/
	@cp -fr $(SCHEMA)languages/swift/*/*/*.swift Sources/Schema/
	@cp -fr $(SCHEMA)languages/swiftgrpc/*/*/*.swift Sources/Schema/
	@rm -f Sources/Schema/*v1beta2*
	@rm -f Sources/Schema/*.server.pb.swift
	@rm -f Sources/Schema/bq*

swift-grpc: $(SWIFT_GRPC)/.build
	@echo "Cleaning SwiftGRPC."
	@rm -f $(SWIFT_GRPC)/Package.resolved

$(SWIFT_GRPC)/.build:
	@echo "Building SwiftGRPC..."
	@$(MAKE) -C $(SWIFT_GRPC)

$(SWIFT_GRPC):
	@echo "Initializing SwiftGRPC..."
	@git submodule add --force --name SwiftGRPC git@github.com:grpc/grpc-swift.git $(SWIFT_GRPC)

