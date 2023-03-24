.class public final Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSendOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WasmExecuteContractSend"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSendOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field public static final COIN_FIELD_NUMBER:I = 0x6

.field public static final CONTRACT_ADDRESS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

.field public static final MSG_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;",
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

    .line 11844
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;-><init>()V

    .line 11847
    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    .line 11848
    const-class v1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 10836
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 10837
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->senderAddress_:Ljava/lang/String;

    .line 10838
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->contractAddress_:Ljava/lang/String;

    .line 10839
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->amount_:Lcom/google/protobuf/ByteString;

    .line 10840
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->recipientContractAddress_:Ljava/lang/String;

    .line 10841
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->msg_:Ljava/lang/String;

    .line 10842
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$19500()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;
    .locals 1

    .line 10831
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    return-object v0
.end method

.method static synthetic access$19600(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Ljava/lang/String;)V
    .locals 0

    .line 10831
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->setSenderAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19700(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)V
    .locals 0

    .line 10831
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->clearSenderAddress()V

    return-void
.end method

.method static synthetic access$19800(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 10831
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->setSenderAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$19900(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Ljava/lang/String;)V
    .locals 0

    .line 10831
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->setContractAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20000(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)V
    .locals 0

    .line 10831
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->clearContractAddress()V

    return-void
.end method

.method static synthetic access$20100(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 10831
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->setContractAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$20200(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 10831
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->setAmount(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$20300(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)V
    .locals 0

    .line 10831
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->clearAmount()V

    return-void
.end method

.method static synthetic access$20400(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Ljava/lang/String;)V
    .locals 0

    .line 10831
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->setRecipientContractAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20500(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)V
    .locals 0

    .line 10831
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->clearRecipientContractAddress()V

    return-void
.end method

.method static synthetic access$20600(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 10831
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->setRecipientContractAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$20700(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Ljava/lang/String;)V
    .locals 0

    .line 10831
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->setMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20800(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)V
    .locals 0

    .line 10831
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->clearMsg()V

    return-void
.end method

.method static synthetic access$20900(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 10831
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->setMsgBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$21000(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;ILjava/lang/String;)V
    .locals 0

    .line 10831
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->setCoin(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$21100(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Ljava/lang/String;)V
    .locals 0

    .line 10831
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->addCoin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21200(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Ljava/lang/Iterable;)V
    .locals 0

    .line 10831
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->addAllCoin(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$21300(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)V
    .locals 0

    .line 10831
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->clearCoin()V

    return-void
.end method

.method static synthetic access$21400(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 10831
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->addCoinBytes(Lcom/google/protobuf/ByteString;)V

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

    .line 11231
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->ensureCoinIsMutable()V

    .line 11232
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 11217
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11218
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->ensureCoinIsMutable()V

    .line 11219
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 11255
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 11256
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->ensureCoinIsMutable()V

    .line 11257
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 11014
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearCoin()V
    .locals 1

    .line 11243
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearContractAddress()V
    .locals 1

    .line 10961
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->contractAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearMsg()V
    .locals 1

    .line 11114
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->msg_:Ljava/lang/String;

    return-void
.end method

.method private clearRecipientContractAddress()V
    .locals 1

    .line 11051
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getRecipientContractAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->recipientContractAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearSenderAddress()V
    .locals 1

    .line 10894
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getSenderAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->senderAddress_:Ljava/lang/String;

    return-void
.end method

.method private ensureCoinIsMutable()V
    .locals 2

    .line 11186
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 11187
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11189
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;
    .locals 1

    .line 11853
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;
    .locals 1

    .line 11335
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 11338
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;
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

    .line 11312
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;
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

    .line 11318
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;
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

    .line 11276
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;
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

    .line 11283
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;
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

    .line 11323
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;
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

    .line 11330
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;
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

    .line 11300
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;
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

    .line 11307
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;
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

    .line 11263
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;
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

    .line 11270
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;
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

    .line 11288
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;
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

    .line 11295
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;",
            ">;"
        }
    .end annotation

    .line 11859
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

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

    .line 11001
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11003
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->amount_:Lcom/google/protobuf/ByteString;

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

    .line 11203
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11204
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->ensureCoinIsMutable()V

    .line 11205
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 10948
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10950
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->contractAddress_:Ljava/lang/String;

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

    .line 10973
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 10974
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->contractAddress_:Ljava/lang/String;

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

    .line 11101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11103
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->msg_:Ljava/lang/String;

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

    .line 11126
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 11127
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->msg_:Ljava/lang/String;

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

    .line 11042
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11044
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->recipientContractAddress_:Ljava/lang/String;

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

    .line 11059
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 11060
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->recipientContractAddress_:Ljava/lang/String;

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

    .line 10881
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10883
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->senderAddress_:Ljava/lang/String;

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

    .line 10906
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 10907
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->senderAddress_:Ljava/lang/String;

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

    .line 11790
    sget-object p2, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 11837
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 11831
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11816
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 11818
    const-class p2, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    monitor-enter p2

    .line 11819
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 11821
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11824
    sput-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->PARSER:Lcom/google/protobuf/Parser;

    .line 11826
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

    .line 11813
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

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

    .line 11809
    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11795
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 11792
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;-><init>()V

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

    .line 10990
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->amount_:Lcom/google/protobuf/ByteString;

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

    .line 11168
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 11182
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 11183
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 11182
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getCoinCount()I
    .locals 1

    .line 11155
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 11143
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->coin_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getContractAddress()Ljava/lang/String;
    .locals 1

    .line 10923
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->contractAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getContractAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10936
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->contractAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 11076
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->msg_:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11089
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->msg_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientContractAddress()Ljava/lang/String;
    .locals 1

    .line 11025
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->recipientContractAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientContractAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11034
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->recipientContractAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSenderAddress()Ljava/lang/String;
    .locals 1

    .line 10856
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->senderAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10869
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->senderAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
