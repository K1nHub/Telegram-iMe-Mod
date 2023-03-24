.class public final Lwallet/core/jni/proto/Solana$DeactivateStake;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Solana.java"

# interfaces
.implements Lwallet/core/jni/proto/Solana$DeactivateStakeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeactivateStake"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Solana$DeactivateStake$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Solana$DeactivateStake;",
        "Lwallet/core/jni/proto/Solana$DeactivateStake$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Solana$DeactivateStakeOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateStake;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Solana$DeactivateStake;",
            ">;"
        }
    .end annotation
.end field

.field public static final STAKE_ACCOUNT_FIELD_NUMBER:I = 0x1


# instance fields
.field private stakeAccount_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1836
    new-instance v0, Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-direct {v0}, Lwallet/core/jni/proto/Solana$DeactivateStake;-><init>()V

    .line 1839
    sput-object v0, Lwallet/core/jni/proto/Solana$DeactivateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateStake;

    .line 1840
    const-class v1, Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1543
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 1544
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$DeactivateStake;->stakeAccount_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2500()Lwallet/core/jni/proto/Solana$DeactivateStake;
    .locals 1

    .line 1538
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateStake;

    return-object v0
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/Solana$DeactivateStake;Ljava/lang/String;)V
    .locals 0

    .line 1538
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$DeactivateStake;->setStakeAccount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lwallet/core/jni/proto/Solana$DeactivateStake;)V
    .locals 0

    .line 1538
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$DeactivateStake;->clearStakeAccount()V

    return-void
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/Solana$DeactivateStake;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1538
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$DeactivateStake;->setStakeAccountBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearStakeAccount()V
    .locals 1

    .line 1596
    invoke-static {}, Lwallet/core/jni/proto/Solana$DeactivateStake;->getDefaultInstance()Lwallet/core/jni/proto/Solana$DeactivateStake;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$DeactivateStake;->getStakeAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$DeactivateStake;->stakeAccount_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Solana$DeactivateStake;
    .locals 1

    .line 1845
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateStake;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Solana$DeactivateStake$Builder;
    .locals 1

    .line 1688
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Solana$DeactivateStake$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Solana$DeactivateStake;)Lwallet/core/jni/proto/Solana$DeactivateStake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1691
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateStake$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Solana$DeactivateStake;
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

    .line 1665
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateStake;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$DeactivateStake;
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

    .line 1671
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateStake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$DeactivateStake;
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

    .line 1629
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateStake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$DeactivateStake;
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

    .line 1636
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateStake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Solana$DeactivateStake;
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

    .line 1676
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateStake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$DeactivateStake;
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

    .line 1683
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateStake;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Solana$DeactivateStake;
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

    .line 1653
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateStake;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$DeactivateStake;
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

    .line 1660
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateStake;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Solana$DeactivateStake;
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

    .line 1616
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateStake;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$DeactivateStake;
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

    .line 1623
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateStake;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Solana$DeactivateStake;
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

    .line 1641
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateStake;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$DeactivateStake;
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

    .line 1648
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateStake;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Solana$DeactivateStake;",
            ">;"
        }
    .end annotation

    .line 1851
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setStakeAccount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1583
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1585
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$DeactivateStake;->stakeAccount_:Ljava/lang/String;

    return-void
.end method

.method private setStakeAccountBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1608
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1609
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$DeactivateStake;->stakeAccount_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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

    .line 1788
    sget-object p2, Lwallet/core/jni/proto/Solana$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1829
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1823
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1808
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Solana$DeactivateStake;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1810
    const-class p2, Lwallet/core/jni/proto/Solana$DeactivateStake;

    monitor-enter p2

    .line 1811
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Solana$DeactivateStake;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1813
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Solana$DeactivateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1816
    sput-object p1, Lwallet/core/jni/proto/Solana$DeactivateStake;->PARSER:Lcom/google/protobuf/Parser;

    .line 1818
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

    .line 1805
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Solana$DeactivateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateStake;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "stakeAccount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0208"

    .line 1801
    sget-object p3, Lwallet/core/jni/proto/Solana$DeactivateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1793
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Solana$DeactivateStake$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Solana$DeactivateStake$Builder;-><init>(Lwallet/core/jni/proto/Solana$1;)V

    return-object p1

    .line 1790
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-direct {p1}, Lwallet/core/jni/proto/Solana$DeactivateStake;-><init>()V

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

.method public getStakeAccount()Ljava/lang/String;
    .locals 1

    .line 1558
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$DeactivateStake;->stakeAccount_:Ljava/lang/String;

    return-object v0
.end method

.method public getStakeAccountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1571
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$DeactivateStake;->stakeAccount_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
