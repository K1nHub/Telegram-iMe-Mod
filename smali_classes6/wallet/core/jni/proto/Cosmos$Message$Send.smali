.class public final Lwallet/core/jni/proto/Cosmos$Message$Send;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$SendOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Send"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$Message$Send;",
        "Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$SendOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNTS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Send;

.field public static final FROM_ADDRESS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$Send;",
            ">;"
        }
    .end annotation
.end field

.field public static final TO_ADDRESS_FIELD_NUMBER:I = 0x2

.field public static final TYPE_PREFIX_FIELD_NUMBER:I = 0x4


# instance fields
.field private amounts_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Cosmos$Amount;",
            ">;"
        }
    .end annotation
.end field

.field private fromAddress_:Ljava/lang/String;

.field private toAddress_:Ljava/lang/String;

.field private typePrefix_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2958
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Message$Send;-><init>()V

    .line 2961
    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$Send;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Send;

    .line 2962
    const-class v1, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2309
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2310
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->fromAddress_:Ljava/lang/String;

    .line 2311
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->toAddress_:Ljava/lang/String;

    .line 2312
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2313
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->typePrefix_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2400()Lwallet/core/jni/proto/Cosmos$Message$Send;
    .locals 1

    .line 2304
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Send;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Send;

    return-object v0
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/Cosmos$Message$Send;Ljava/lang/String;)V
    .locals 0

    .line 2304
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Send;->setFromAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/Cosmos$Message$Send;)V
    .locals 0

    .line 2304
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->clearFromAddress()V

    return-void
.end method

.method static synthetic access$2700(Lwallet/core/jni/proto/Cosmos$Message$Send;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2304
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Send;->setFromAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/Cosmos$Message$Send;Ljava/lang/String;)V
    .locals 0

    .line 2304
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Send;->setToAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/Cosmos$Message$Send;)V
    .locals 0

    .line 2304
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->clearToAddress()V

    return-void
.end method

.method static synthetic access$3000(Lwallet/core/jni/proto/Cosmos$Message$Send;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2304
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Send;->setToAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3100(Lwallet/core/jni/proto/Cosmos$Message$Send;ILwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 2304
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$Send;->setAmounts(ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$3200(Lwallet/core/jni/proto/Cosmos$Message$Send;Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 2304
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Send;->addAmounts(Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$3300(Lwallet/core/jni/proto/Cosmos$Message$Send;ILwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 2304
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$Send;->addAmounts(ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$3400(Lwallet/core/jni/proto/Cosmos$Message$Send;Ljava/lang/Iterable;)V
    .locals 0

    .line 2304
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Send;->addAllAmounts(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$3500(Lwallet/core/jni/proto/Cosmos$Message$Send;)V
    .locals 0

    .line 2304
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->clearAmounts()V

    return-void
.end method

.method static synthetic access$3600(Lwallet/core/jni/proto/Cosmos$Message$Send;I)V
    .locals 0

    .line 2304
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Send;->removeAmounts(I)V

    return-void
.end method

.method static synthetic access$3700(Lwallet/core/jni/proto/Cosmos$Message$Send;Ljava/lang/String;)V
    .locals 0

    .line 2304
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Send;->setTypePrefix(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lwallet/core/jni/proto/Cosmos$Message$Send;)V
    .locals 0

    .line 2304
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->clearTypePrefix()V

    return-void
.end method

.method static synthetic access$3900(Lwallet/core/jni/proto/Cosmos$Message$Send;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2304
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Send;->setTypePrefixBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllAmounts(Ljava/lang/Iterable;)V
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
            "+",
            "Lwallet/core/jni/proto/Cosmos$Amount;",
            ">;)V"
        }
    .end annotation

    .line 2485
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->ensureAmountsIsMutable()V

    .line 2486
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAmounts(ILwallet/core/jni/proto/Cosmos$Amount;)V
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

    .line 2476
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2477
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->ensureAmountsIsMutable()V

    .line 2478
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addAmounts(Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2467
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2468
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->ensureAmountsIsMutable()V

    .line 2469
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAmounts()V
    .locals 1

    .line 2493
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearFromAddress()V
    .locals 1

    .line 2349
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Send;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Send;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->fromAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearToAddress()V
    .locals 1

    .line 2396
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Send;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Send;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->getToAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearTypePrefix()V
    .locals 1

    .line 2537
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Send;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Send;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->getTypePrefix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->typePrefix_:Ljava/lang/String;

    return-void
.end method

.method private ensureAmountsIsMutable()V
    .locals 2

    .line 2447
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2448
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2450
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Send;
    .locals 1

    .line 2967
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Send;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Send;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;
    .locals 1

    .line 2625
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Send;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$Message$Send;)Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2628
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Send;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$Send;
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

    .line 2602
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Send;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Send;
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

    .line 2608
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Send;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$Send;
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

    .line 2566
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Send;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Send;
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

    .line 2573
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Send;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$Message$Send;
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

    .line 2613
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Send;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Send;
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

    .line 2620
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Send;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$Send;
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

    .line 2590
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Send;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Send;
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

    .line 2597
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Send;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$Message$Send;
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

    .line 2553
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Send;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Send;
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

    .line 2560
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Send;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$Message$Send;
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

    .line 2578
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Send;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Send;
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

    .line 2585
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Send;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$Send;",
            ">;"
        }
    .end annotation

    .line 2973
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Send;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeAmounts(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2499
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->ensureAmountsIsMutable()V

    .line 2500
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAmounts(ILwallet/core/jni/proto/Cosmos$Amount;)V
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

    .line 2459
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2460
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->ensureAmountsIsMutable()V

    .line 2461
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setFromAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2340
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2342
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->fromAddress_:Ljava/lang/String;

    return-void
.end method

.method private setFromAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2357
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2358
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->fromAddress_:Ljava/lang/String;

    return-void
.end method

.method private setToAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2387
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2389
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method private setToAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2404
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2405
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method private setTypePrefix(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2528
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2530
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->typePrefix_:Ljava/lang/String;

    return-void
.end method

.method private setTypePrefixBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2545
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2546
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->typePrefix_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    .line 2905
    sget-object p2, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2951
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2945
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2930
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$Send;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2932
    const-class p2, Lwallet/core/jni/proto/Cosmos$Message$Send;

    monitor-enter p2

    .line 2933
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$Send;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2935
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$Send;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2938
    sput-object p1, Lwallet/core/jni/proto/Cosmos$Message$Send;->PARSER:Lcom/google/protobuf/Parser;

    .line 2940
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

    .line 2927
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$Send;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Send;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "fromAddress_"

    aput-object v0, p1, p3

    const-string p3, "toAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "amounts_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 2913
    const-class p3, Lwallet/core/jni/proto/Cosmos$Amount;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "typePrefix_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u001b\u0004\u0208"

    .line 2923
    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$Send;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2910
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 2907
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$Message$Send;-><init>()V

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

.method public getAmounts(I)Lwallet/core/jni/proto/Cosmos$Amount;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2437
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount;

    return-object p1
.end method

.method public getAmountsCount()I
    .locals 1

    .line 2430
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAmountsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cosmos$Amount;",
            ">;"
        }
    .end annotation

    .line 2416
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAmountsOrBuilder(I)Lwallet/core/jni/proto/Cosmos$AmountOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2444
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$AmountOrBuilder;

    return-object p1
.end method

.method public getAmountsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Cosmos$AmountOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2423
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .line 2323
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->fromAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getFromAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2332
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->fromAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 2370
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2379
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->toAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTypePrefix()Ljava/lang/String;
    .locals 1

    .line 2511
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->typePrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getTypePrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2520
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Send;->typePrefix_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
