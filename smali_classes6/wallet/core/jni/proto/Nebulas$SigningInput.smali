.class public final Lwallet/core/jni/proto/Nebulas$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Nebulas.java"

# interfaces
.implements Lwallet/core/jni/proto/Nebulas$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nebulas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Nebulas$SigningInput;",
        "Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nebulas$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x7

.field public static final CHAIN_ID_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningInput;

.field public static final FROM_ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final GAS_LIMIT_FIELD_NUMBER:I = 0x5

.field public static final GAS_PRICE_FIELD_NUMBER:I = 0x4

.field public static final NONCE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nebulas$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x9

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0xa

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x8

.field public static final TO_ADDRESS_FIELD_NUMBER:I = 0x6


# instance fields
.field private amount_:Lcom/google/protobuf/ByteString;

.field private chainId_:Lcom/google/protobuf/ByteString;

.field private fromAddress_:Ljava/lang/String;

.field private gasLimit_:Lcom/google/protobuf/ByteString;

.field private gasPrice_:Lcom/google/protobuf/ByteString;

.field private nonce_:Lcom/google/protobuf/ByteString;

.field private payload_:Ljava/lang/String;

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private timestamp_:Lcom/google/protobuf/ByteString;

.field private toAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1294
    new-instance v0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;-><init>()V

    .line 1297
    sput-object v0, Lwallet/core/jni/proto/Nebulas$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningInput;

    .line 1298
    const-class v1, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 157
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 158
    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->fromAddress_:Ljava/lang/String;

    .line 159
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->chainId_:Lcom/google/protobuf/ByteString;

    .line 160
    iput-object v1, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->nonce_:Lcom/google/protobuf/ByteString;

    .line 161
    iput-object v1, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->gasPrice_:Lcom/google/protobuf/ByteString;

    .line 162
    iput-object v1, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->gasLimit_:Lcom/google/protobuf/ByteString;

    .line 163
    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->toAddress_:Ljava/lang/String;

    .line 164
    iput-object v1, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->amount_:Lcom/google/protobuf/ByteString;

    .line 165
    iput-object v1, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->timestamp_:Lcom/google/protobuf/ByteString;

    .line 166
    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->payload_:Ljava/lang/String;

    .line 167
    iput-object v1, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Nebulas$SigningInput;
    .locals 1

    .line 152
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningInput;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Nebulas$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->setFromAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/Nebulas$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->setGasLimit(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/Nebulas$SigningInput;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->clearGasLimit()V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/Nebulas$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->setToAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/Nebulas$SigningInput;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->clearToAddress()V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/Nebulas$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->setToAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/Nebulas$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->setAmount(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/Nebulas$SigningInput;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->clearAmount()V

    return-void
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/Nebulas$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->setTimestamp(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1800(Lwallet/core/jni/proto/Nebulas$SigningInput;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->clearTimestamp()V

    return-void
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/Nebulas$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->setPayload(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Nebulas$SigningInput;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->clearFromAddress()V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/Nebulas$SigningInput;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->clearPayload()V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/Nebulas$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->setPayloadBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/Nebulas$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/Nebulas$SigningInput;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Nebulas$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->setFromAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Nebulas$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->setChainId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/Nebulas$SigningInput;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->clearChainId()V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/Nebulas$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->setNonce(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Nebulas$SigningInput;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->clearNonce()V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/Nebulas$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;->setGasPrice(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Nebulas$SigningInput;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->clearGasPrice()V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 495
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Nebulas$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearChainId()V
    .locals 1

    .line 272
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Nebulas$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getChainId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->chainId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearFromAddress()V
    .locals 1

    .line 219
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Nebulas$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->fromAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearGasLimit()V
    .locals 1

    .line 389
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Nebulas$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getGasLimit()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->gasLimit_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearGasPrice()V
    .locals 1

    .line 350
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Nebulas$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getGasPrice()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->gasPrice_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearNonce()V
    .locals 1

    .line 311
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Nebulas$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getNonce()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->nonce_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearPayload()V
    .locals 1

    .line 587
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Nebulas$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getPayload()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->payload_:Ljava/lang/String;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 640
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Nebulas$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearTimestamp()V
    .locals 1

    .line 534
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Nebulas$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getTimestamp()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->timestamp_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearToAddress()V
    .locals 1

    .line 442
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Nebulas$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningInput;->getToAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Nebulas$SigningInput;
    .locals 1

    .line 1303
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningInput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1

    .line 718
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Nebulas$SigningInput;)Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 721
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nebulas$SigningInput;
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

    .line 695
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$SigningInput;
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

    .line 701
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$SigningInput;
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

    .line 659
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$SigningInput;
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

    .line 666
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Nebulas$SigningInput;
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

    .line 706
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$SigningInput;
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

    .line 713
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nebulas$SigningInput;
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

    .line 683
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$SigningInput;
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

    .line 690
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Nebulas$SigningInput;
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

    .line 646
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$SigningInput;
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

    .line 653
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Nebulas$SigningInput;
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

    .line 671
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$SigningInput;
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

    .line 678
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nebulas$SigningInput;",
            ">;"
        }
    .end annotation

    .line 1309
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningInput;

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

    .line 482
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 484
    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setChainId(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 259
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->chainId_:Lcom/google/protobuf/ByteString;

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

    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->fromAddress_:Ljava/lang/String;

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

    .line 231
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 232
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->fromAddress_:Ljava/lang/String;

    return-void
.end method

.method private setGasLimit(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 376
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->gasLimit_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setGasPrice(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 337
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->gasPrice_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setNonce(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 298
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->nonce_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setPayload(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 574
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 576
    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->payload_:Ljava/lang/String;

    return-void
.end method

.method private setPayloadBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 599
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 600
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->payload_:Ljava/lang/String;

    return-void
.end method

.method private setPrivateKey(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 627
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 629
    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setTimestamp(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 521
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 523
    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->timestamp_:Lcom/google/protobuf/ByteString;

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

    .line 429
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->toAddress_:Ljava/lang/String;

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

    .line 454
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 455
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->toAddress_:Ljava/lang/String;

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

    .line 1236
    sget-object p2, Lwallet/core/jni/proto/Nebulas$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1287
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1281
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1266
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Nebulas$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1268
    const-class p2, Lwallet/core/jni/proto/Nebulas$SigningInput;

    monitor-enter p2

    .line 1269
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Nebulas$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1271
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Nebulas$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1274
    sput-object p1, Lwallet/core/jni/proto/Nebulas$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 1276
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

    .line 1263
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Nebulas$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningInput;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "fromAddress_"

    aput-object v0, p1, p3

    const-string p3, "chainId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "nonce_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "gasPrice_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "gasLimit_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "toAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "timestamp_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "payload_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\n\u0000\u0000\u0001\n\n\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\n\u0004\n\u0005\n\u0006\u0208\u0007\n\u0008\n\t\u0208\n\n"

    .line 1259
    sget-object p3, Lwallet/core/jni/proto/Nebulas$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1241
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Nebulas$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Nebulas$1;)V

    return-object p1

    .line 1238
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Nebulas$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Nebulas$SigningInput;-><init>()V

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

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 471
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->amount_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getChainId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 248
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->chainId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->fromAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getFromAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 194
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->fromAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGasLimit()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 365
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->gasLimit_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getGasPrice()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 326
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->gasPrice_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNonce()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 287
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->nonce_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .line 549
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->payload_:Ljava/lang/String;

    return-object v0
.end method

.method public getPayloadBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 562
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->payload_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 616
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTimestamp()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 510
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->timestamp_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 404
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 417
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningInput;->toAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
