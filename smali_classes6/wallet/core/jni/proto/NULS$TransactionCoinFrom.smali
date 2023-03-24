.class public final Lwallet/core/jni/proto/NULS$TransactionCoinFrom;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NULS.java"

# interfaces
.implements Lwallet/core/jni/proto/NULS$TransactionCoinFromOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NULS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionCoinFrom"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/NULS$TransactionCoinFrom;",
        "Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NULS$TransactionCoinFromOrBuilder;"
    }
.end annotation


# static fields
.field public static final ASSETS_CHAINID_FIELD_NUMBER:I = 0x2

.field public static final ASSETS_ID_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

.field public static final FROM_ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final ID_AMOUNT_FIELD_NUMBER:I = 0x4

.field public static final LOCKED_FIELD_NUMBER:I = 0x6

.field public static final NONCE_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NULS$TransactionCoinFrom;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private assetsChainid_:I

.field private assetsId_:I

.field private fromAddress_:Ljava/lang/String;

.field private idAmount_:Lcom/google/protobuf/ByteString;

.field private locked_:I

.field private nonce_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 790
    new-instance v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-direct {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;-><init>()V

    .line 793
    sput-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    .line 794
    const-class v1, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 98
    iput-object v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->fromAddress_:Ljava/lang/String;

    .line 99
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->idAmount_:Lcom/google/protobuf/ByteString;

    .line 100
    iput-object v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->nonce_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/NULS$TransactionCoinFrom;
    .locals 1

    .line 92
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->setFromAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->setNonce(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->clearNonce()V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;I)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->setLocked(I)V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->clearLocked()V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->clearFromAddress()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->setFromAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;I)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->setAssetsChainid(I)V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->clearAssetsChainid()V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;I)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->setAssetsId(I)V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->clearAssetsId()V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->setIdAmount(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->clearIdAmount()V

    return-void
.end method

.method private clearAssetsChainid()V
    .locals 1

    const/4 v0, 0x0

    .line 204
    iput v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->assetsChainid_:I

    return-void
.end method

.method private clearAssetsId()V
    .locals 1

    const/4 v0, 0x0

    .line 242
    iput v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->assetsId_:I

    return-void
.end method

.method private clearFromAddress()V
    .locals 1

    .line 152
    invoke-static {}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->getDefaultInstance()Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->fromAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearIdAmount()V
    .locals 1

    .line 281
    invoke-static {}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->getDefaultInstance()Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->getIdAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->idAmount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearLocked()V
    .locals 1

    const/4 v0, 0x0

    .line 358
    iput v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->locked_:I

    return-void
.end method

.method private clearNonce()V
    .locals 1

    .line 320
    invoke-static {}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->getDefaultInstance()Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->getNonce()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->nonce_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/NULS$TransactionCoinFrom;
    .locals 1

    .line 799
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;
    .locals 1

    .line 436
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 439
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NULS$TransactionCoinFrom;
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

    .line 413
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$TransactionCoinFrom;
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

    .line 419
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NULS$TransactionCoinFrom;
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

    .line 377
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$TransactionCoinFrom;
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

    .line 384
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/NULS$TransactionCoinFrom;
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

    .line 424
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$TransactionCoinFrom;
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

    .line 431
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NULS$TransactionCoinFrom;
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

    .line 401
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$TransactionCoinFrom;
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

    .line 408
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/NULS$TransactionCoinFrom;
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

    .line 364
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$TransactionCoinFrom;
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

    .line 371
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/NULS$TransactionCoinFrom;
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

    .line 389
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$TransactionCoinFrom;
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

    .line 396
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NULS$TransactionCoinFrom;",
            ">;"
        }
    .end annotation

    .line 805
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAssetsChainid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 193
    iput p1, p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->assetsChainid_:I

    return-void
.end method

.method private setAssetsId(I)V
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
    iput p1, p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->assetsId_:I

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

    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    iput-object p1, p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->fromAddress_:Ljava/lang/String;

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

    .line 164
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 165
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->fromAddress_:Ljava/lang/String;

    return-void
.end method

.method private setIdAmount(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 268
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    iput-object p1, p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->idAmount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setLocked(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 347
    iput p1, p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->locked_:I

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

    .line 307
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    iput-object p1, p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->nonce_:Lcom/google/protobuf/ByteString;

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

    .line 736
    sget-object p2, Lwallet/core/jni/proto/NULS$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 783
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 777
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 762
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 764
    const-class p2, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    monitor-enter p2

    .line 765
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 767
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 770
    sput-object p1, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->PARSER:Lcom/google/protobuf/Parser;

    .line 772
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

    .line 759
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "fromAddress_"

    aput-object v0, p1, p3

    const-string p3, "assetsChainid_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "assetsId_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "idAmount_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "nonce_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "locked_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0208\u0002\u000b\u0003\u000b\u0004\n\u0005\n\u0006\u000b"

    .line 755
    sget-object p3, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 741
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;-><init>(Lwallet/core/jni/proto/NULS$1;)V

    return-object p1

    .line 738
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-direct {p1}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;-><init>()V

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

.method public getAssetsChainid()I
    .locals 1

    .line 181
    iget v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->assetsChainid_:I

    return v0
.end method

.method public getAssetsId()I
    .locals 1

    .line 219
    iget v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->assetsId_:I

    return v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->fromAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getFromAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 127
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->fromAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIdAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 257
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->idAmount_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLocked()I
    .locals 1

    .line 335
    iget v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->locked_:I

    return v0
.end method

.method public getNonce()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 296
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->nonce_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
