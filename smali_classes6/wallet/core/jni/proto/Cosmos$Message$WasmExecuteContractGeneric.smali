.class public final Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGenericOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WasmExecuteContractGeneric"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGenericOrBuilder;"
    }
.end annotation


# static fields
.field public static final COINS_FIELD_NUMBER:I = 0x5

.field public static final CONTRACT_ADDRESS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

.field public static final EXECUTE_MSG_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;",
            ">;"
        }
    .end annotation
.end field

.field public static final SENDER_ADDRESS_FIELD_NUMBER:I = 0x1


# instance fields
.field private coins_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Cosmos$Amount;",
            ">;"
        }
    .end annotation
.end field

.field private contractAddress_:Ljava/lang/String;

.field private executeMsg_:Ljava/lang/String;

.field private senderAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12852
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;-><init>()V

    .line 12855
    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    .line 12856
    const-class v1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 11968
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 11969
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->senderAddress_:Ljava/lang/String;

    .line 11970
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->contractAddress_:Ljava/lang/String;

    .line 11971
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->executeMsg_:Ljava/lang/String;

    .line 11972
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$21600()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;
    .locals 1

    .line 11963
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    return-object v0
.end method

.method static synthetic access$21700(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;Ljava/lang/String;)V
    .locals 0

    .line 11963
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->setSenderAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21800(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;)V
    .locals 0

    .line 11963
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->clearSenderAddress()V

    return-void
.end method

.method static synthetic access$21900(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 11963
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->setSenderAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22000(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;Ljava/lang/String;)V
    .locals 0

    .line 11963
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->setContractAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22100(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;)V
    .locals 0

    .line 11963
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->clearContractAddress()V

    return-void
.end method

.method static synthetic access$22200(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 11963
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->setContractAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22300(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;Ljava/lang/String;)V
    .locals 0

    .line 11963
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->setExecuteMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22400(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;)V
    .locals 0

    .line 11963
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->clearExecuteMsg()V

    return-void
.end method

.method static synthetic access$22500(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 11963
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->setExecuteMsgBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22600(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;ILwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 11963
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->setCoins(ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$22700(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 11963
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->addCoins(Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$22800(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;ILwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 11963
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->addCoins(ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$22900(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;Ljava/lang/Iterable;)V
    .locals 0

    .line 11963
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->addAllCoins(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$23000(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;)V
    .locals 0

    .line 11963
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->clearCoins()V

    return-void
.end method

.method static synthetic access$23100(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;I)V
    .locals 0

    .line 11963
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->removeCoins(I)V

    return-void
.end method

.method private addAllCoins(Ljava/lang/Iterable;)V
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

    .line 12296
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->ensureCoinsIsMutable()V

    .line 12297
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addCoins(ILwallet/core/jni/proto/Cosmos$Amount;)V
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

    .line 12282
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12283
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->ensureCoinsIsMutable()V

    .line 12284
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addCoins(Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12268
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12269
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->ensureCoinsIsMutable()V

    .line 12270
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearCoins()V
    .locals 1

    .line 12309
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearContractAddress()V
    .locals 1

    .line 12091
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->contractAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearExecuteMsg()V
    .locals 1

    .line 12158
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->getExecuteMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->executeMsg_:Ljava/lang/String;

    return-void
.end method

.method private clearSenderAddress()V
    .locals 1

    .line 12024
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->getSenderAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->senderAddress_:Ljava/lang/String;

    return-void
.end method

.method private ensureCoinsIsMutable()V
    .locals 2

    .line 12238
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 12239
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12241
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;
    .locals 1

    .line 12861
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;
    .locals 1

    .line 12399
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 12402
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;
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

    .line 12376
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;
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

    .line 12382
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;
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

    .line 12340
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;
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

    .line 12347
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;
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

    .line 12387
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;
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

    .line 12394
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;
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

    .line 12364
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;
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

    .line 12371
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;
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

    .line 12327
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;
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

    .line 12334
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;
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

    .line 12352
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;
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

    .line 12359
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;",
            ">;"
        }
    .end annotation

    .line 12867
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeCoins(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 12320
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->ensureCoinsIsMutable()V

    .line 12321
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setCoins(ILwallet/core/jni/proto/Cosmos$Amount;)V
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

    .line 12255
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12256
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->ensureCoinsIsMutable()V

    .line 12257
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setContractAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12078
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12080
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->contractAddress_:Ljava/lang/String;

    return-void
.end method

.method private setContractAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12103
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 12104
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->contractAddress_:Ljava/lang/String;

    return-void
.end method

.method private setExecuteMsg(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12147
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->executeMsg_:Ljava/lang/String;

    return-void
.end method

.method private setExecuteMsgBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12170
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 12171
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->executeMsg_:Ljava/lang/String;

    return-void
.end method

.method private setSenderAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12011
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12013
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->senderAddress_:Ljava/lang/String;

    return-void
.end method

.method private setSenderAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12036
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 12037
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->senderAddress_:Ljava/lang/String;

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

    .line 12799
    sget-object p2, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 12845
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 12839
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 12824
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 12826
    const-class p2, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    monitor-enter p2

    .line 12827
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 12829
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 12832
    sput-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->PARSER:Lcom/google/protobuf/Parser;

    .line 12834
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

    .line 12821
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "senderAddress_"

    aput-object v0, p1, p3

    const-string p3, "contractAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "executeMsg_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "coins_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 12807
    const-class p3, Lwallet/core/jni/proto/Cosmos$Amount;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0005\u0004\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0005\u001b"

    .line 12817
    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12804
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 12801
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;-><init>()V

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

.method public getCoins(I)Lwallet/core/jni/proto/Cosmos$Amount;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 12223
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount;

    return-object p1
.end method

.method public getCoinsCount()I
    .locals 1

    .line 12211
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCoinsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cosmos$Amount;",
            ">;"
        }
    .end annotation

    .line 12187
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getCoinsOrBuilder(I)Lwallet/core/jni/proto/Cosmos$AmountOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 12235
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$AmountOrBuilder;

    return-object p1
.end method

.method public getCoinsOrBuilderList()Ljava/util/List;
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

    .line 12199
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getContractAddress()Ljava/lang/String;
    .locals 1

    .line 12053
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->contractAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getContractAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 12066
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->contractAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExecuteMsg()Ljava/lang/String;
    .locals 1

    .line 12120
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->executeMsg_:Ljava/lang/String;

    return-object v0
.end method

.method public getExecuteMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 12133
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->executeMsg_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSenderAddress()Ljava/lang/String;
    .locals 1

    .line 11986
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->senderAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11999
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->senderAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
