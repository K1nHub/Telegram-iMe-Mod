.class public final Lwallet/core/jni/proto/Aion$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Aion.java"

# interfaces
.implements Lwallet/core/jni/proto/Aion$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Aion$SigningInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Aion$SigningInput;",
        "Lwallet/core/jni/proto/Aion$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aion$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aion$SigningInput;

.field public static final GAS_LIMIT_FIELD_NUMBER:I = 0x3

.field public static final GAS_PRICE_FIELD_NUMBER:I = 0x2

.field public static final NONCE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Aion$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x6

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x7

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x8

.field public static final TO_ADDRESS_FIELD_NUMBER:I = 0x4


# instance fields
.field private amount_:Lcom/google/protobuf/ByteString;

.field private gasLimit_:Lcom/google/protobuf/ByteString;

.field private gasPrice_:Lcom/google/protobuf/ByteString;

.field private nonce_:Lcom/google/protobuf/ByteString;

.field private payload_:Lcom/google/protobuf/ByteString;

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private timestamp_:J

.field private toAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 976
    new-instance v0, Lwallet/core/jni/proto/Aion$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Aion$SigningInput;-><init>()V

    .line 979
    sput-object v0, Lwallet/core/jni/proto/Aion$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aion$SigningInput;

    .line 980
    const-class v1, Lwallet/core/jni/proto/Aion$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 117
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 118
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Aion$SigningInput;->nonce_:Lcom/google/protobuf/ByteString;

    .line 119
    iput-object v0, p0, Lwallet/core/jni/proto/Aion$SigningInput;->gasPrice_:Lcom/google/protobuf/ByteString;

    .line 120
    iput-object v0, p0, Lwallet/core/jni/proto/Aion$SigningInput;->gasLimit_:Lcom/google/protobuf/ByteString;

    const-string v1, ""

    .line 121
    iput-object v1, p0, Lwallet/core/jni/proto/Aion$SigningInput;->toAddress_:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lwallet/core/jni/proto/Aion$SigningInput;->amount_:Lcom/google/protobuf/ByteString;

    .line 123
    iput-object v0, p0, Lwallet/core/jni/proto/Aion$SigningInput;->payload_:Lcom/google/protobuf/ByteString;

    .line 124
    iput-object v0, p0, Lwallet/core/jni/proto/Aion$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Aion$SigningInput;
    .locals 1

    .line 112
    sget-object v0, Lwallet/core/jni/proto/Aion$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aion$SigningInput;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Aion$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aion$SigningInput;->setNonce(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/Aion$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aion$SigningInput;->setAmount(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/Aion$SigningInput;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lwallet/core/jni/proto/Aion$SigningInput;->clearAmount()V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/Aion$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aion$SigningInput;->setPayload(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/Aion$SigningInput;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lwallet/core/jni/proto/Aion$SigningInput;->clearPayload()V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/Aion$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aion$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/Aion$SigningInput;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lwallet/core/jni/proto/Aion$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/Aion$SigningInput;J)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Aion$SigningInput;->setTimestamp(J)V

    return-void
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/Aion$SigningInput;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lwallet/core/jni/proto/Aion$SigningInput;->clearTimestamp()V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Aion$SigningInput;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lwallet/core/jni/proto/Aion$SigningInput;->clearNonce()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Aion$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aion$SigningInput;->setGasPrice(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Aion$SigningInput;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lwallet/core/jni/proto/Aion$SigningInput;->clearGasPrice()V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/Aion$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aion$SigningInput;->setGasLimit(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/Aion$SigningInput;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lwallet/core/jni/proto/Aion$SigningInput;->clearGasLimit()V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Aion$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aion$SigningInput;->setToAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/Aion$SigningInput;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lwallet/core/jni/proto/Aion$SigningInput;->clearToAddress()V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Aion$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aion$SigningInput;->setToAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 346
    invoke-static {}, Lwallet/core/jni/proto/Aion$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Aion$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aion$SigningInput;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aion$SigningInput;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearGasLimit()V
    .locals 1

    .line 240
    invoke-static {}, Lwallet/core/jni/proto/Aion$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Aion$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aion$SigningInput;->getGasLimit()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aion$SigningInput;->gasLimit_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearGasPrice()V
    .locals 1

    .line 201
    invoke-static {}, Lwallet/core/jni/proto/Aion$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Aion$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aion$SigningInput;->getGasPrice()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aion$SigningInput;->gasPrice_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearNonce()V
    .locals 1

    .line 162
    invoke-static {}, Lwallet/core/jni/proto/Aion$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Aion$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aion$SigningInput;->getNonce()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aion$SigningInput;->nonce_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearPayload()V
    .locals 1

    .line 385
    invoke-static {}, Lwallet/core/jni/proto/Aion$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Aion$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aion$SigningInput;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aion$SigningInput;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 424
    invoke-static {}, Lwallet/core/jni/proto/Aion$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Aion$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aion$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aion$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearTimestamp()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 462
    iput-wide v0, p0, Lwallet/core/jni/proto/Aion$SigningInput;->timestamp_:J

    return-void
.end method

.method private clearToAddress()V
    .locals 1

    .line 293
    invoke-static {}, Lwallet/core/jni/proto/Aion$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Aion$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aion$SigningInput;->getToAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aion$SigningInput;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Aion$SigningInput;
    .locals 1

    .line 985
    sget-object v0, Lwallet/core/jni/proto/Aion$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aion$SigningInput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Aion$SigningInput$Builder;
    .locals 1

    .line 540
    sget-object v0, Lwallet/core/jni/proto/Aion$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aion$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Aion$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Aion$SigningInput;)Lwallet/core/jni/proto/Aion$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 543
    sget-object v0, Lwallet/core/jni/proto/Aion$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aion$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aion$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Aion$SigningInput;
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

    .line 517
    sget-object v0, Lwallet/core/jni/proto/Aion$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aion$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aion$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aion$SigningInput;
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

    .line 523
    sget-object v0, Lwallet/core/jni/proto/Aion$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aion$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aion$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aion$SigningInput;
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

    .line 481
    sget-object v0, Lwallet/core/jni/proto/Aion$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aion$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aion$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aion$SigningInput;
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

    .line 488
    sget-object v0, Lwallet/core/jni/proto/Aion$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aion$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aion$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Aion$SigningInput;
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

    .line 528
    sget-object v0, Lwallet/core/jni/proto/Aion$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aion$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aion$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aion$SigningInput;
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

    .line 535
    sget-object v0, Lwallet/core/jni/proto/Aion$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aion$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aion$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Aion$SigningInput;
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

    .line 505
    sget-object v0, Lwallet/core/jni/proto/Aion$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aion$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aion$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aion$SigningInput;
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

    .line 512
    sget-object v0, Lwallet/core/jni/proto/Aion$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aion$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aion$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Aion$SigningInput;
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

    .line 468
    sget-object v0, Lwallet/core/jni/proto/Aion$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aion$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aion$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aion$SigningInput;
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

    .line 475
    sget-object v0, Lwallet/core/jni/proto/Aion$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aion$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aion$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Aion$SigningInput;
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

    .line 493
    sget-object v0, Lwallet/core/jni/proto/Aion$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aion$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aion$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aion$SigningInput;
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

    .line 500
    sget-object v0, Lwallet/core/jni/proto/Aion$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aion$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aion$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Aion$SigningInput;",
            ">;"
        }
    .end annotation

    .line 991
    sget-object v0, Lwallet/core/jni/proto/Aion$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aion$SigningInput;

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

    .line 333
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    iput-object p1, p0, Lwallet/core/jni/proto/Aion$SigningInput;->amount_:Lcom/google/protobuf/ByteString;

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

    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    iput-object p1, p0, Lwallet/core/jni/proto/Aion$SigningInput;->gasLimit_:Lcom/google/protobuf/ByteString;

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

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    iput-object p1, p0, Lwallet/core/jni/proto/Aion$SigningInput;->gasPrice_:Lcom/google/protobuf/ByteString;

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

    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    iput-object p1, p0, Lwallet/core/jni/proto/Aion$SigningInput;->nonce_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setPayload(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 372
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    iput-object p1, p0, Lwallet/core/jni/proto/Aion$SigningInput;->payload_:Lcom/google/protobuf/ByteString;

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

    .line 411
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 413
    iput-object p1, p0, Lwallet/core/jni/proto/Aion$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setTimestamp(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 451
    iput-wide p1, p0, Lwallet/core/jni/proto/Aion$SigningInput;->timestamp_:J

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

    .line 280
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    iput-object p1, p0, Lwallet/core/jni/proto/Aion$SigningInput;->toAddress_:Ljava/lang/String;

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

    .line 305
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 306
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aion$SigningInput;->toAddress_:Ljava/lang/String;

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

    .line 920
    sget-object p2, Lwallet/core/jni/proto/Aion$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 969
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 963
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 948
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Aion$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 950
    const-class p2, Lwallet/core/jni/proto/Aion$SigningInput;

    monitor-enter p2

    .line 951
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Aion$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 953
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Aion$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aion$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 956
    sput-object p1, Lwallet/core/jni/proto/Aion$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 958
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

    .line 945
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Aion$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aion$SigningInput;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "nonce_"

    aput-object v0, p1, p3

    const-string p3, "gasPrice_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "gasLimit_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "toAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "payload_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "timestamp_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0008\u0000\u0000\u0001\u0008\u0008\u0000\u0000\u0000\u0001\n\u0002\n\u0003\n\u0004\u0208\u0005\n\u0006\n\u0007\n\u0008\u0003"

    .line 941
    sget-object p3, Lwallet/core/jni/proto/Aion$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aion$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 925
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Aion$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Aion$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Aion$1;)V

    return-object p1

    .line 922
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Aion$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Aion$SigningInput;-><init>()V

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

    .line 322
    iget-object v0, p0, Lwallet/core/jni/proto/Aion$SigningInput;->amount_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getGasLimit()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 216
    iget-object v0, p0, Lwallet/core/jni/proto/Aion$SigningInput;->gasLimit_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getGasPrice()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 177
    iget-object v0, p0, Lwallet/core/jni/proto/Aion$SigningInput;->gasPrice_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNonce()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 138
    iget-object v0, p0, Lwallet/core/jni/proto/Aion$SigningInput;->nonce_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 361
    iget-object v0, p0, Lwallet/core/jni/proto/Aion$SigningInput;->payload_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 400
    iget-object v0, p0, Lwallet/core/jni/proto/Aion$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 439
    iget-wide v0, p0, Lwallet/core/jni/proto/Aion$SigningInput;->timestamp_:J

    return-wide v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lwallet/core/jni/proto/Aion$SigningInput;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 268
    iget-object v0, p0, Lwallet/core/jni/proto/Aion$SigningInput;->toAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
