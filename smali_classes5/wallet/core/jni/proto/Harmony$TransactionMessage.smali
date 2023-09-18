.class public final Lwallet/core/jni/proto/Harmony$TransactionMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Harmony.java"

# interfaces
.implements Lwallet/core/jni/proto/Harmony$TransactionMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Harmony$TransactionMessage;",
        "Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Harmony$TransactionMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$TransactionMessage;

.field public static final FROM_SHARD_ID_FIELD_NUMBER:I = 0x7

.field public static final GAS_LIMIT_FIELD_NUMBER:I = 0x3

.field public static final GAS_PRICE_FIELD_NUMBER:I = 0x2

.field public static final NONCE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Harmony$TransactionMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x6

.field public static final TO_ADDRESS_FIELD_NUMBER:I = 0x4

.field public static final TO_SHARD_ID_FIELD_NUMBER:I = 0x8


# instance fields
.field private amount_:Lcom/google/protobuf/ByteString;

.field private fromShardId_:Lcom/google/protobuf/ByteString;

.field private gasLimit_:Lcom/google/protobuf/ByteString;

.field private gasPrice_:Lcom/google/protobuf/ByteString;

.field private nonce_:Lcom/google/protobuf/ByteString;

.field private payload_:Lcom/google/protobuf/ByteString;

.field private toAddress_:Ljava/lang/String;

.field private toShardId_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2129
    new-instance v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-direct {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;-><init>()V

    .line 2132
    sput-object v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$TransactionMessage;

    .line 2133
    const-class v1, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1268
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1269
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->nonce_:Lcom/google/protobuf/ByteString;

    .line 1270
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->gasPrice_:Lcom/google/protobuf/ByteString;

    .line 1271
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->gasLimit_:Lcom/google/protobuf/ByteString;

    const-string v1, ""

    .line 1272
    iput-object v1, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->toAddress_:Ljava/lang/String;

    .line 1273
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->amount_:Lcom/google/protobuf/ByteString;

    .line 1274
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->payload_:Lcom/google/protobuf/ByteString;

    .line 1275
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->fromShardId_:Lcom/google/protobuf/ByteString;

    .line 1276
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->toShardId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$2300()Lwallet/core/jni/proto/Harmony$TransactionMessage;
    .locals 1

    .line 1263
    sget-object v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$TransactionMessage;

    return-object v0
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/Harmony$TransactionMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1263
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->setNonce(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/Harmony$TransactionMessage;)V
    .locals 0

    .line 1263
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->clearNonce()V

    return-void
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/Harmony$TransactionMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1263
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->setGasPrice(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2700(Lwallet/core/jni/proto/Harmony$TransactionMessage;)V
    .locals 0

    .line 1263
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->clearGasPrice()V

    return-void
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/Harmony$TransactionMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1263
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->setGasLimit(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/Harmony$TransactionMessage;)V
    .locals 0

    .line 1263
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->clearGasLimit()V

    return-void
.end method

.method static synthetic access$3000(Lwallet/core/jni/proto/Harmony$TransactionMessage;Ljava/lang/String;)V
    .locals 0

    .line 1263
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->setToAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lwallet/core/jni/proto/Harmony$TransactionMessage;)V
    .locals 0

    .line 1263
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->clearToAddress()V

    return-void
.end method

.method static synthetic access$3200(Lwallet/core/jni/proto/Harmony$TransactionMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1263
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->setToAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3300(Lwallet/core/jni/proto/Harmony$TransactionMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1263
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->setAmount(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3400(Lwallet/core/jni/proto/Harmony$TransactionMessage;)V
    .locals 0

    .line 1263
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->clearAmount()V

    return-void
.end method

.method static synthetic access$3500(Lwallet/core/jni/proto/Harmony$TransactionMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1263
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->setPayload(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3600(Lwallet/core/jni/proto/Harmony$TransactionMessage;)V
    .locals 0

    .line 1263
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->clearPayload()V

    return-void
.end method

.method static synthetic access$3700(Lwallet/core/jni/proto/Harmony$TransactionMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1263
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->setFromShardId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3800(Lwallet/core/jni/proto/Harmony$TransactionMessage;)V
    .locals 0

    .line 1263
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->clearFromShardId()V

    return-void
.end method

.method static synthetic access$3900(Lwallet/core/jni/proto/Harmony$TransactionMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1263
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->setToShardId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4000(Lwallet/core/jni/proto/Harmony$TransactionMessage;)V
    .locals 0

    .line 1263
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->clearToShardId()V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 1498
    invoke-static {}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$TransactionMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearFromShardId()V
    .locals 1

    .line 1576
    invoke-static {}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$TransactionMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getFromShardId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->fromShardId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearGasLimit()V
    .locals 1

    .line 1392
    invoke-static {}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$TransactionMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getGasLimit()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->gasLimit_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearGasPrice()V
    .locals 1

    .line 1353
    invoke-static {}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$TransactionMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getGasPrice()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->gasPrice_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearNonce()V
    .locals 1

    .line 1314
    invoke-static {}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$TransactionMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getNonce()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->nonce_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearPayload()V
    .locals 1

    .line 1537
    invoke-static {}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$TransactionMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearToAddress()V
    .locals 1

    .line 1445
    invoke-static {}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$TransactionMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getToAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearToShardId()V
    .locals 1

    .line 1615
    invoke-static {}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$TransactionMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getToShardId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->toShardId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Harmony$TransactionMessage;
    .locals 1

    .line 2138
    sget-object v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$TransactionMessage;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;
    .locals 1

    .line 1693
    sget-object v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Harmony$TransactionMessage;)Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1696
    sget-object v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Harmony$TransactionMessage;
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

    .line 1670
    sget-object v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$TransactionMessage;
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

    .line 1676
    sget-object v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$TransactionMessage;
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

    .line 1634
    sget-object v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$TransactionMessage;
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

    .line 1641
    sget-object v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Harmony$TransactionMessage;
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

    .line 1681
    sget-object v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$TransactionMessage;
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

    .line 1688
    sget-object v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Harmony$TransactionMessage;
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

    .line 1658
    sget-object v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$TransactionMessage;
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

    .line 1665
    sget-object v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Harmony$TransactionMessage;
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

    .line 1621
    sget-object v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$TransactionMessage;
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

    .line 1628
    sget-object v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Harmony$TransactionMessage;
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

    .line 1646
    sget-object v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$TransactionMessage;
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

    .line 1653
    sget-object v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Harmony$TransactionMessage;",
            ">;"
        }
    .end annotation

    .line 2144
    sget-object v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$TransactionMessage;

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

    .line 1485
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1487
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setFromShardId(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1563
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1565
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->fromShardId_:Lcom/google/protobuf/ByteString;

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

    .line 1379
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1381
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->gasLimit_:Lcom/google/protobuf/ByteString;

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

    .line 1340
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1342
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->gasPrice_:Lcom/google/protobuf/ByteString;

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

    .line 1301
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1303
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->nonce_:Lcom/google/protobuf/ByteString;

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

    .line 1524
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1526
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->payload_:Lcom/google/protobuf/ByteString;

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

    .line 1432
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1434
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->toAddress_:Ljava/lang/String;

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

    .line 1457
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1458
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method private setToShardId(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1602
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1604
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->toShardId_:Lcom/google/protobuf/ByteString;

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

    .line 2073
    sget-object p2, Lwallet/core/jni/proto/Harmony$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2122
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2116
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2101
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Harmony$TransactionMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2103
    const-class p2, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    monitor-enter p2

    .line 2104
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Harmony$TransactionMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2106
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Harmony$TransactionMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2109
    sput-object p1, Lwallet/core/jni/proto/Harmony$TransactionMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 2111
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

    .line 2098
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Harmony$TransactionMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$TransactionMessage;

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

    const-string p3, "fromShardId_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "toShardId_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0008\u0000\u0000\u0001\u0008\u0008\u0000\u0000\u0000\u0001\n\u0002\n\u0003\n\u0004\u0208\u0005\n\u0006\n\u0007\n\u0008\n"

    .line 2094
    sget-object p3, Lwallet/core/jni/proto/Harmony$TransactionMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2078
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;-><init>(Lwallet/core/jni/proto/Harmony$1;)V

    return-object p1

    .line 2075
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-direct {p1}, Lwallet/core/jni/proto/Harmony$TransactionMessage;-><init>()V

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

    .line 1474
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->amount_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFromShardId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1552
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->fromShardId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getGasLimit()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1368
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->gasLimit_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getGasPrice()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1329
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->gasPrice_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNonce()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1290
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->nonce_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1513
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->payload_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 1407
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1420
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->toAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToShardId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1591
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$TransactionMessage;->toShardId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
