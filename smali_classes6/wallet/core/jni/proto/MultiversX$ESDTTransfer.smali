.class public final Lwallet/core/jni/proto/MultiversX$ESDTTransfer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MultiversX.java"

# interfaces
.implements Lwallet/core/jni/proto/MultiversX$ESDTTransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/MultiversX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ESDTTransfer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/MultiversX$ESDTTransfer;",
        "Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/MultiversX$ESDTTransferOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACCOUNTS_FIELD_NUMBER:I = 0x1

.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/MultiversX$ESDTTransfer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOKEN_IDENTIFIER_FIELD_NUMBER:I = 0x2


# instance fields
.field private accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

.field private amount_:Ljava/lang/String;

.field private tokenIdentifier_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2018
    new-instance v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-direct {v0}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;-><init>()V

    .line 2021
    sput-object v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    .line 2022
    const-class v1, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1448
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 1449
    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->tokenIdentifier_:Ljava/lang/String;

    .line 1450
    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->amount_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2300()Lwallet/core/jni/proto/MultiversX$ESDTTransfer;
    .locals 1

    .line 1443
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    return-object v0
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;Lwallet/core/jni/proto/MultiversX$Accounts;)V
    .locals 0

    .line 1443
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->setAccounts(Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-void
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;Lwallet/core/jni/proto/MultiversX$Accounts;)V
    .locals 0

    .line 1443
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->mergeAccounts(Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-void
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;)V
    .locals 0

    .line 1443
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->clearAccounts()V

    return-void
.end method

.method static synthetic access$2700(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;Ljava/lang/String;)V
    .locals 0

    .line 1443
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->setTokenIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;)V
    .locals 0

    .line 1443
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->clearTokenIdentifier()V

    return-void
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1443
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->setTokenIdentifierBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;Ljava/lang/String;)V
    .locals 0

    .line 1443
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->setAmount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;)V
    .locals 0

    .line 1443
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->clearAmount()V

    return-void
.end method

.method static synthetic access$3200(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1443
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->setAmountBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAccounts()V
    .locals 1

    const/4 v0, 0x0

    .line 1514
    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 1635
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->getAmount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->amount_:Ljava/lang/String;

    return-void
.end method

.method private clearTokenIdentifier()V
    .locals 1

    .line 1568
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->getTokenIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->tokenIdentifier_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/MultiversX$ESDTTransfer;
    .locals 1

    .line 2027
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

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

    .line 1497
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1498
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    if-eqz v0, :cond_0

    .line 1499
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$Accounts;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$Accounts;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1500
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    .line 1501
    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$Accounts;->newBuilder(Lwallet/core/jni/proto/MultiversX$Accounts;)Lwallet/core/jni/proto/MultiversX$Accounts$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/MultiversX$Accounts$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/MultiversX$Accounts;

    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    goto :goto_0

    .line 1503
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;
    .locals 1

    .line 1727
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;)Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1730
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/MultiversX$ESDTTransfer;
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

    .line 1704
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$ESDTTransfer;
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

    .line 1710
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/MultiversX$ESDTTransfer;
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

    .line 1668
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$ESDTTransfer;
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

    .line 1675
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/MultiversX$ESDTTransfer;
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

    .line 1715
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$ESDTTransfer;
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

    .line 1722
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/MultiversX$ESDTTransfer;
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

    .line 1692
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$ESDTTransfer;
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

    .line 1699
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/MultiversX$ESDTTransfer;
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

    .line 1655
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$ESDTTransfer;
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

    .line 1662
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/MultiversX$ESDTTransfer;
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

    .line 1680
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$ESDTTransfer;
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

    .line 1687
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/MultiversX$ESDTTransfer;",
            ">;"
        }
    .end annotation

    .line 2033
    sget-object v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

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

    .line 1484
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1485
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

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

    .line 1622
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1624
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->amount_:Ljava/lang/String;

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

    .line 1647
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1648
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->amount_:Ljava/lang/String;

    return-void
.end method

.method private setTokenIdentifier(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1555
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1557
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->tokenIdentifier_:Ljava/lang/String;

    return-void
.end method

.method private setTokenIdentifierBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1580
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1581
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->tokenIdentifier_:Ljava/lang/String;

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

    .line 1967
    sget-object p2, Lwallet/core/jni/proto/MultiversX$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2011
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2005
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1990
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1992
    const-class p2, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    monitor-enter p2

    .line 1993
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1995
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1998
    sput-object p1, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->PARSER:Lcom/google/protobuf/Parser;

    .line 2000
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

    .line 1987
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "accounts_"

    aput-object v0, p1, p3

    const-string p3, "tokenIdentifier_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\u0208\u0003\u0208"

    .line 1983
    sget-object p3, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1972
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;-><init>(Lwallet/core/jni/proto/MultiversX$1;)V

    return-object p1

    .line 1969
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-direct {p1}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;-><init>()V

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

.method public getAccounts()Lwallet/core/jni/proto/MultiversX$Accounts;
    .locals 1

    .line 1474
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/MultiversX$Accounts;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$Accounts;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 1597
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->amount_:Ljava/lang/String;

    return-object v0
.end method

.method public getAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1610
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->amount_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenIdentifier()Ljava/lang/String;
    .locals 1

    .line 1530
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->tokenIdentifier_:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenIdentifierBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1543
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->tokenIdentifier_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAccounts()Z
    .locals 1

    .line 1463
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
