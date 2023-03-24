.class public final Lwallet/core/jni/proto/NULS$TransactionCoinTo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NULS.java"

# interfaces
.implements Lwallet/core/jni/proto/NULS$TransactionCoinToOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NULS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionCoinTo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/NULS$TransactionCoinTo;",
        "Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NULS$TransactionCoinToOrBuilder;"
    }
.end annotation


# static fields
.field public static final ASSETS_CHAINID_FIELD_NUMBER:I = 0x2

.field public static final ASSETS_ID_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

.field public static final ID_AMOUNT_FIELD_NUMBER:I = 0x4

.field public static final LOCK_TIME_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NULS$TransactionCoinTo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TO_ADDRESS_FIELD_NUMBER:I = 0x1


# instance fields
.field private assetsChainid_:I

.field private assetsId_:I

.field private idAmount_:Lcom/google/protobuf/ByteString;

.field private lockTime_:I

.field private toAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1497
    new-instance v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-direct {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;-><init>()V

    .line 1500
    sput-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    .line 1501
    const-class v1, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 885
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 886
    iput-object v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->toAddress_:Ljava/lang/String;

    .line 887
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->idAmount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$1500()Lwallet/core/jni/proto/NULS$TransactionCoinTo;
    .locals 1

    .line 880
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    return-object v0
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/NULS$TransactionCoinTo;Ljava/lang/String;)V
    .locals 0

    .line 880
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->setToAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/NULS$TransactionCoinTo;)V
    .locals 0

    .line 880
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->clearToAddress()V

    return-void
.end method

.method static synthetic access$1800(Lwallet/core/jni/proto/NULS$TransactionCoinTo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 880
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->setToAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/NULS$TransactionCoinTo;I)V
    .locals 0

    .line 880
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->setAssetsChainid(I)V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/NULS$TransactionCoinTo;)V
    .locals 0

    .line 880
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->clearAssetsChainid()V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/NULS$TransactionCoinTo;I)V
    .locals 0

    .line 880
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->setAssetsId(I)V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/NULS$TransactionCoinTo;)V
    .locals 0

    .line 880
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->clearAssetsId()V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/NULS$TransactionCoinTo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 880
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->setIdAmount(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/NULS$TransactionCoinTo;)V
    .locals 0

    .line 880
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->clearIdAmount()V

    return-void
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/NULS$TransactionCoinTo;I)V
    .locals 0

    .line 880
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->setLockTime(I)V

    return-void
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/NULS$TransactionCoinTo;)V
    .locals 0

    .line 880
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->clearLockTime()V

    return-void
.end method

.method private clearAssetsChainid()V
    .locals 1

    const/4 v0, 0x0

    .line 991
    iput v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->assetsChainid_:I

    return-void
.end method

.method private clearAssetsId()V
    .locals 1

    const/4 v0, 0x0

    .line 1029
    iput v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->assetsId_:I

    return-void
.end method

.method private clearIdAmount()V
    .locals 1

    .line 1068
    invoke-static {}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->getDefaultInstance()Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->getIdAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->idAmount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearLockTime()V
    .locals 1

    const/4 v0, 0x0

    .line 1106
    iput v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->lockTime_:I

    return-void
.end method

.method private clearToAddress()V
    .locals 1

    .line 939
    invoke-static {}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->getDefaultInstance()Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->getToAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/NULS$TransactionCoinTo;
    .locals 1

    .line 1506
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;
    .locals 1

    .line 1184
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/NULS$TransactionCoinTo;)Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1187
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NULS$TransactionCoinTo;
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

    .line 1161
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$TransactionCoinTo;
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

    .line 1167
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NULS$TransactionCoinTo;
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

    .line 1125
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$TransactionCoinTo;
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

    .line 1132
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/NULS$TransactionCoinTo;
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

    .line 1172
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$TransactionCoinTo;
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

    .line 1179
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NULS$TransactionCoinTo;
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

    .line 1149
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$TransactionCoinTo;
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

    .line 1156
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/NULS$TransactionCoinTo;
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

    .line 1112
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$TransactionCoinTo;
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

    .line 1119
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/NULS$TransactionCoinTo;
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

    .line 1137
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$TransactionCoinTo;
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

    .line 1144
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NULS$TransactionCoinTo;",
            ">;"
        }
    .end annotation

    .line 1512
    sget-object v0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

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

    .line 980
    iput p1, p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->assetsChainid_:I

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

    .line 1018
    iput p1, p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->assetsId_:I

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

    .line 1055
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1057
    iput-object p1, p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->idAmount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setLockTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1095
    iput p1, p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->lockTime_:I

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

    .line 926
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 928
    iput-object p1, p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->toAddress_:Ljava/lang/String;

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

    .line 951
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 952
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->toAddress_:Ljava/lang/String;

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

    .line 1444
    sget-object p2, Lwallet/core/jni/proto/NULS$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1490
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1484
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1469
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1471
    const-class p2, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    monitor-enter p2

    .line 1472
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1474
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1477
    sput-object p1, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->PARSER:Lcom/google/protobuf/Parser;

    .line 1479
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

    .line 1466
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "toAddress_"

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

    const-string p3, "lockTime_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u000b\u0003\u000b\u0004\n\u0005\u000b"

    .line 1462
    sget-object p3, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1449
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;-><init>(Lwallet/core/jni/proto/NULS$1;)V

    return-object p1

    .line 1446
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-direct {p1}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;-><init>()V

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

.method public getAssetsChainid()I
    .locals 1

    .line 968
    iget v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->assetsChainid_:I

    return v0
.end method

.method public getAssetsId()I
    .locals 1

    .line 1006
    iget v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->assetsId_:I

    return v0
.end method

.method public getIdAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1044
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->idAmount_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLockTime()I
    .locals 1

    .line 1083
    iget v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->lockTime_:I

    return v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 901
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 914
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->toAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
