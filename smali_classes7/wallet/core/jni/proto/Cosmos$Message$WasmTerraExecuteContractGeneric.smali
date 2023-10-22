.class public final Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGenericOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WasmTerraExecuteContractGeneric"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGenericOrBuilder;"
    }
.end annotation


# static fields
.field public static final COINS_FIELD_NUMBER:I = 0x5

.field public static final CONTRACT_ADDRESS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

.field public static final EXECUTE_MSG_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;",
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

    .line 9970
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;-><init>()V

    .line 9973
    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    .line 9974
    const-class v1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 9086
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 9087
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->senderAddress_:Ljava/lang/String;

    .line 9088
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->contractAddress_:Ljava/lang/String;

    .line 9089
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->executeMsg_:Ljava/lang/String;

    .line 9090
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$16500()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;
    .locals 1

    .line 9081
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    return-object v0
.end method

.method static synthetic access$16600(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;Ljava/lang/String;)V
    .locals 0

    .line 9081
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->setSenderAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16700(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;)V
    .locals 0

    .line 9081
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->clearSenderAddress()V

    return-void
.end method

.method static synthetic access$16800(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 9081
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->setSenderAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$16900(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;Ljava/lang/String;)V
    .locals 0

    .line 9081
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->setContractAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17000(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;)V
    .locals 0

    .line 9081
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->clearContractAddress()V

    return-void
.end method

.method static synthetic access$17100(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 9081
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->setContractAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$17200(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;Ljava/lang/String;)V
    .locals 0

    .line 9081
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->setExecuteMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17300(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;)V
    .locals 0

    .line 9081
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->clearExecuteMsg()V

    return-void
.end method

.method static synthetic access$17400(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 9081
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->setExecuteMsgBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$17500(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;ILwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 9081
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->setCoins(ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$17600(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 9081
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->addCoins(Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$17700(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;ILwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 9081
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->addCoins(ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$17800(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;Ljava/lang/Iterable;)V
    .locals 0

    .line 9081
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->addAllCoins(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$17900(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;)V
    .locals 0

    .line 9081
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->clearCoins()V

    return-void
.end method

.method static synthetic access$18000(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;I)V
    .locals 0

    .line 9081
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->removeCoins(I)V

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

    .line 9414
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->ensureCoinsIsMutable()V

    .line 9415
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 9400
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9401
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->ensureCoinsIsMutable()V

    .line 9402
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 9386
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9387
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->ensureCoinsIsMutable()V

    .line 9388
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearCoins()V
    .locals 1

    .line 9427
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearContractAddress()V
    .locals 1

    .line 9209
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->contractAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearExecuteMsg()V
    .locals 1

    .line 9276
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->getExecuteMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->executeMsg_:Ljava/lang/String;

    return-void
.end method

.method private clearSenderAddress()V
    .locals 1

    .line 9142
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->getSenderAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->senderAddress_:Ljava/lang/String;

    return-void
.end method

.method private ensureCoinsIsMutable()V
    .locals 2

    .line 9356
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9357
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9359
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;
    .locals 1

    .line 9979
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;
    .locals 1

    .line 9517
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 9520
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;
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

    .line 9494
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;
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

    .line 9500
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;
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

    .line 9458
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;
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

    .line 9465
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;
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

    .line 9505
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;
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

    .line 9512
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;
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

    .line 9482
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;
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

    .line 9489
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;
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

    .line 9445
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;
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

    .line 9452
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;
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

    .line 9470
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;
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

    .line 9477
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;",
            ">;"
        }
    .end annotation

    .line 9985
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

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

    .line 9438
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->ensureCoinsIsMutable()V

    .line 9439
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 9373
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9374
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->ensureCoinsIsMutable()V

    .line 9375
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 9196
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9198
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->contractAddress_:Ljava/lang/String;

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

    .line 9221
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 9222
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->contractAddress_:Ljava/lang/String;

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

    .line 9263
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9265
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->executeMsg_:Ljava/lang/String;

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

    .line 9288
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 9289
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->executeMsg_:Ljava/lang/String;

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

    .line 9129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9131
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->senderAddress_:Ljava/lang/String;

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

    .line 9154
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 9155
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->senderAddress_:Ljava/lang/String;

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

    .line 9917
    sget-object p2, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 9963
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 9957
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 9942
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 9944
    const-class p2, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    monitor-enter p2

    .line 9945
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 9947
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 9950
    sput-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->PARSER:Lcom/google/protobuf/Parser;

    .line 9952
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

    .line 9939
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

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

    .line 9925
    const-class p3, Lwallet/core/jni/proto/Cosmos$Amount;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0005\u0004\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0005\u001b"

    .line 9935
    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9922
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 9919
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;-><init>()V

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

    .line 9341
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount;

    return-object p1
.end method

.method public getCoinsCount()I
    .locals 1

    .line 9329
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 9305
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 9353
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 9317
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getContractAddress()Ljava/lang/String;
    .locals 1

    .line 9171
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->contractAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getContractAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9184
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->contractAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExecuteMsg()Ljava/lang/String;
    .locals 1

    .line 9238
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->executeMsg_:Ljava/lang/String;

    return-object v0
.end method

.method public getExecuteMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9251
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->executeMsg_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSenderAddress()Ljava/lang/String;
    .locals 1

    .line 9104
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->senderAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9117
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->senderAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
