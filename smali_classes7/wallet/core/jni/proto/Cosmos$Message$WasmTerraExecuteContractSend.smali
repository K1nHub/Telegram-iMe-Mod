.class public final Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSendOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WasmTerraExecuteContractSend"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSendOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field public static final COIN_FIELD_NUMBER:I = 0x6

.field public static final CONTRACT_ADDRESS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

.field public static final MSG_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECIPIENT_CONTRACT_ADDRESS_FIELD_NUMBER:I = 0x4

.field public static final SENDER_ADDRESS_FIELD_NUMBER:I = 0x1


# instance fields
.field private amount_:Lcom/google/protobuf/ByteString;

.field private coin_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contractAddress_:Ljava/lang/String;

.field private msg_:Ljava/lang/String;

.field private recipientContractAddress_:Ljava/lang/String;

.field private senderAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8432
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;-><init>()V

    .line 8435
    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    .line 8436
    const-class v1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 7424
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 7425
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->senderAddress_:Ljava/lang/String;

    .line 7426
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->contractAddress_:Ljava/lang/String;

    .line 7427
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->amount_:Lcom/google/protobuf/ByteString;

    .line 7428
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->recipientContractAddress_:Ljava/lang/String;

    .line 7429
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->msg_:Ljava/lang/String;

    .line 7430
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$13200()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;
    .locals 1

    .line 7419
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    return-object v0
.end method

.method static synthetic access$13300(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Ljava/lang/String;)V
    .locals 0

    .line 7419
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->setSenderAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13400(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)V
    .locals 0

    .line 7419
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->clearSenderAddress()V

    return-void
.end method

.method static synthetic access$13500(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7419
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->setSenderAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$13600(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Ljava/lang/String;)V
    .locals 0

    .line 7419
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->setContractAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13700(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)V
    .locals 0

    .line 7419
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->clearContractAddress()V

    return-void
.end method

.method static synthetic access$13800(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7419
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->setContractAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$13900(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7419
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->setAmount(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$14000(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)V
    .locals 0

    .line 7419
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->clearAmount()V

    return-void
.end method

.method static synthetic access$14100(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Ljava/lang/String;)V
    .locals 0

    .line 7419
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->setRecipientContractAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14200(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)V
    .locals 0

    .line 7419
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->clearRecipientContractAddress()V

    return-void
.end method

.method static synthetic access$14300(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7419
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->setRecipientContractAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$14400(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Ljava/lang/String;)V
    .locals 0

    .line 7419
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->setMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14500(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)V
    .locals 0

    .line 7419
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->clearMsg()V

    return-void
.end method

.method static synthetic access$14600(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7419
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->setMsgBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$14700(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;ILjava/lang/String;)V
    .locals 0

    .line 7419
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->setCoin(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$14800(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Ljava/lang/String;)V
    .locals 0

    .line 7419
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->addCoin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14900(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Ljava/lang/Iterable;)V
    .locals 0

    .line 7419
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->addAllCoin(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$15000(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)V
    .locals 0

    .line 7419
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->clearCoin()V

    return-void
.end method

.method static synthetic access$15100(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7419
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->addCoinBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllCoin(Ljava/lang/Iterable;)V
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

    .line 7819
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->ensureCoinIsMutable()V

    .line 7820
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addCoin(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7805
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7806
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->ensureCoinIsMutable()V

    .line 7807
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addCoinBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7843
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7844
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->ensureCoinIsMutable()V

    .line 7845
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 7602
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearCoin()V
    .locals 1

    .line 7831
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearContractAddress()V
    .locals 1

    .line 7549
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->contractAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearMsg()V
    .locals 1

    .line 7702
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->msg_:Ljava/lang/String;

    return-void
.end method

.method private clearRecipientContractAddress()V
    .locals 1

    .line 7639
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getRecipientContractAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->recipientContractAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearSenderAddress()V
    .locals 1

    .line 7482
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getSenderAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->senderAddress_:Ljava/lang/String;

    return-void
.end method

.method private ensureCoinIsMutable()V
    .locals 2

    .line 7774
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7775
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7777
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;
    .locals 1

    .line 8441
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;
    .locals 1

    .line 7923
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 7926
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;
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

    .line 7900
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;
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

    .line 7906
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;
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

    .line 7864
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;
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

    .line 7871
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;
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

    .line 7911
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;
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

    .line 7918
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;
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

    .line 7888
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;
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

    .line 7895
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;
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

    .line 7851
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;
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

    .line 7858
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;
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

    .line 7876
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;
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

    .line 7883
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;",
            ">;"
        }
    .end annotation

    .line 8447
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAmount(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7589
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7591
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setCoin(ILjava/lang/String;)V
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

    .line 7791
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7792
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->ensureCoinIsMutable()V

    .line 7793
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 7536
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7538
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->contractAddress_:Ljava/lang/String;

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

    .line 7561
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7562
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->contractAddress_:Ljava/lang/String;

    return-void
.end method

.method private setMsg(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7689
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7691
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->msg_:Ljava/lang/String;

    return-void
.end method

.method private setMsgBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7714
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7715
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->msg_:Ljava/lang/String;

    return-void
.end method

.method private setRecipientContractAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7630
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7632
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->recipientContractAddress_:Ljava/lang/String;

    return-void
.end method

.method private setRecipientContractAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7647
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7648
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->recipientContractAddress_:Ljava/lang/String;

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

    .line 7469
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7471
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->senderAddress_:Ljava/lang/String;

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

    .line 7494
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7495
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->senderAddress_:Ljava/lang/String;

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

    .line 8378
    sget-object p2, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 8425
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 8419
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 8404
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 8406
    const-class p2, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    monitor-enter p2

    .line 8407
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 8409
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8412
    sput-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->PARSER:Lcom/google/protobuf/Parser;

    .line 8414
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

    .line 8401
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "senderAddress_"

    aput-object v0, p1, p3

    const-string p3, "contractAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "recipientContractAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "msg_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "coin_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\n\u0004\u0208\u0005\u0208\u0006\u021a"

    .line 8397
    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8383
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 8380
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;-><init>()V

    return-object p1

    nop

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

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7578
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->amount_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCoin(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7756
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCoinBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7770
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7771
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7770
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getCoinCount()I
    .locals 1

    .line 7743
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCoinList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7731
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getContractAddress()Ljava/lang/String;
    .locals 1

    .line 7511
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->contractAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getContractAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7524
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->contractAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 7664
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->msg_:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7677
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->msg_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientContractAddress()Ljava/lang/String;
    .locals 1

    .line 7613
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->recipientContractAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientContractAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7622
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->recipientContractAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSenderAddress()Ljava/lang/String;
    .locals 1

    .line 7444
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->senderAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7457
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->senderAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
