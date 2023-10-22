.class public final Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MultiversX.java"

# interfaces
.implements Lwallet/core/jni/proto/MultiversX$ESDTNFTTransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/MultiversX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ESDTNFTTransfer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;",
        "Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/MultiversX$ESDTNFTTransferOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACCOUNTS_FIELD_NUMBER:I = 0x1

.field public static final AMOUNT_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOKEN_COLLECTION_FIELD_NUMBER:I = 0x2

.field public static final TOKEN_NONCE_FIELD_NUMBER:I = 0x3


# instance fields
.field private accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

.field private amount_:Ljava/lang/String;

.field private tokenCollection_:Ljava/lang/String;

.field private tokenNonce_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2771
    new-instance v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-direct {v0}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;-><init>()V

    .line 2774
    sput-object v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    .line 2775
    const-class v1, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2122
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2123
    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->tokenCollection_:Ljava/lang/String;

    .line 2124
    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->amount_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3400()Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;
    .locals 1

    .line 2117
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    return-object v0
.end method

.method static synthetic access$3500(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;Lwallet/core/jni/proto/MultiversX$Accounts;)V
    .locals 0

    .line 2117
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->setAccounts(Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-void
.end method

.method static synthetic access$3600(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;Lwallet/core/jni/proto/MultiversX$Accounts;)V
    .locals 0

    .line 2117
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->mergeAccounts(Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-void
.end method

.method static synthetic access$3700(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;)V
    .locals 0

    .line 2117
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->clearAccounts()V

    return-void
.end method

.method static synthetic access$3800(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;Ljava/lang/String;)V
    .locals 0

    .line 2117
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->setTokenCollection(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;)V
    .locals 0

    .line 2117
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->clearTokenCollection()V

    return-void
.end method

.method static synthetic access$4000(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2117
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->setTokenCollectionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4100(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;J)V
    .locals 0

    .line 2117
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->setTokenNonce(J)V

    return-void
.end method

.method static synthetic access$4200(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;)V
    .locals 0

    .line 2117
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->clearTokenNonce()V

    return-void
.end method

.method static synthetic access$4300(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;Ljava/lang/String;)V
    .locals 0

    .line 2117
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->setAmount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;)V
    .locals 0

    .line 2117
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->clearAmount()V

    return-void
.end method

.method static synthetic access$4500(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2117
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->setAmountBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAccounts()V
    .locals 1

    const/4 v0, 0x0

    .line 2188
    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 2347
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->getAmount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->amount_:Ljava/lang/String;

    return-void
.end method

.method private clearTokenCollection()V
    .locals 1

    .line 2242
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->getTokenCollection()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->tokenCollection_:Ljava/lang/String;

    return-void
.end method

.method private clearTokenNonce()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2294
    iput-wide v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->tokenNonce_:J

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;
    .locals 1

    .line 2780
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    return-object v0
.end method

.method private mergeAccounts(Lwallet/core/jni/proto/MultiversX$Accounts;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2172
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    if-eqz v0, :cond_0

    .line 2173
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$Accounts;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$Accounts;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2174
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    .line 2175
    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$Accounts;->newBuilder(Lwallet/core/jni/proto/MultiversX$Accounts;)Lwallet/core/jni/proto/MultiversX$Accounts$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/MultiversX$Accounts$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/MultiversX$Accounts;

    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    goto :goto_0

    .line 2177
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;
    .locals 1

    .line 2439
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;)Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2442
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;
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

    .line 2416
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;
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

    .line 2422
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;
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

    .line 2380
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;
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

    .line 2387
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;
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

    .line 2427
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;
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

    .line 2434
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;
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

    .line 2404
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;
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

    .line 2411
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;
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

    .line 2367
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;
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

    .line 2374
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;
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

    .line 2392
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;
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

    .line 2399
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;",
            ">;"
        }
    .end annotation

    .line 2786
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAccounts(Lwallet/core/jni/proto/MultiversX$Accounts;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2158
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2159
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    return-void
.end method

.method private setAmount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2334
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2336
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->amount_:Ljava/lang/String;

    return-void
.end method

.method private setAmountBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2359
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2360
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->amount_:Ljava/lang/String;

    return-void
.end method

.method private setTokenCollection(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2229
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2231
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->tokenCollection_:Ljava/lang/String;

    return-void
.end method

.method private setTokenCollectionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2254
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2255
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->tokenCollection_:Ljava/lang/String;

    return-void
.end method

.method private setTokenNonce(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2283
    iput-wide p1, p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->tokenNonce_:J

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

    .line 2719
    sget-object p2, Lwallet/core/jni/proto/MultiversX$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2764
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2758
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2743
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2745
    const-class p2, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    monitor-enter p2

    .line 2746
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2748
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2751
    sput-object p1, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->PARSER:Lcom/google/protobuf/Parser;

    .line 2753
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

    .line 2740
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "accounts_"

    aput-object v0, p1, p3

    const-string p3, "tokenCollection_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "tokenNonce_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\u0208\u0003\u0003\u0004\u0208"

    .line 2736
    sget-object p3, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2724
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;-><init>(Lwallet/core/jni/proto/MultiversX$1;)V

    return-object p1

    .line 2721
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-direct {p1}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;-><init>()V

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

.method public getAccounts()Lwallet/core/jni/proto/MultiversX$Accounts;
    .locals 1

    .line 2148
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/MultiversX$Accounts;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$Accounts;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 2309
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->amount_:Ljava/lang/String;

    return-object v0
.end method

.method public getAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2322
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->amount_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenCollection()Ljava/lang/String;
    .locals 1

    .line 2204
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->tokenCollection_:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenCollectionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2217
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->tokenCollection_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenNonce()J
    .locals 2

    .line 2271
    iget-wide v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->tokenNonce_:J

    return-wide v0
.end method

.method public hasAccounts()Z
    .locals 1

    .line 2137
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
