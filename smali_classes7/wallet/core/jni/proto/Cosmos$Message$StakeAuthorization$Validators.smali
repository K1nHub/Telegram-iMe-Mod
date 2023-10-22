.class public final Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$ValidatorsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Validators"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;",
        "Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$ValidatorsOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14130
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;-><init>()V

    .line 14133
    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    .line 14134
    const-class v1, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 13788
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13789
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->address_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$24700()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;
    .locals 1

    .line 13783
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    return-object v0
.end method

.method static synthetic access$24800(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;ILjava/lang/String;)V
    .locals 0

    .line 13783
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->setAddress(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$24900(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;Ljava/lang/String;)V
    .locals 0

    .line 13783
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->addAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25000(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;Ljava/lang/Iterable;)V
    .locals 0

    .line 13783
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->addAllAddress(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$25100(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)V
    .locals 0

    .line 13783
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->clearAddress()V

    return-void
.end method

.method static synthetic access$25200(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13783
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->addAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAddress(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13853
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13854
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->ensureAddressIsMutable()V

    .line 13855
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->address_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13879
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 13880
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->ensureAddressIsMutable()V

    .line 13881
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->address_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAllAddress(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 13863
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->ensureAddressIsMutable()V

    .line 13864
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->address_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private clearAddress()V
    .locals 1

    .line 13871
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->address_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureAddressIsMutable()V
    .locals 2

    .line 13830
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->address_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 13831
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13833
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->address_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;
    .locals 1

    .line 14139
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators$Builder;
    .locals 1

    .line 13959
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 13962
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13936
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13942
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13900
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13907
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13947
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13954
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13924
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13931
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13887
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13894
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13912
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13919
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;",
            ">;"
        }
    .end annotation

    .line 14145
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAddress(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 13843
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13844
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->ensureAddressIsMutable()V

    .line 13845
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->address_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 14082
    sget-object p2, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 14123
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 14117
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14102
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 14104
    const-class p2, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    monitor-enter p2

    .line 14105
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 14107
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 14110
    sput-object p1, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->PARSER:Lcom/google/protobuf/Parser;

    .line 14112
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 14099
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "address_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u021a"

    .line 14095
    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14087
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 14084
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAddress(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 13816
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->address_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAddressBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 13826
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->address_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 13827
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 13826
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAddressCount()I
    .locals 1

    .line 13807
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->address_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAddressList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13799
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->address_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
