.class public final Lwallet/core/jni/proto/Solana$DeactivateAllStake;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Solana.java"

# interfaces
.implements Lwallet/core/jni/proto/Solana$DeactivateAllStakeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeactivateAllStake"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Solana$DeactivateAllStake$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Solana$DeactivateAllStake;",
        "Lwallet/core/jni/proto/Solana$DeactivateAllStake$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Solana$DeactivateAllStakeOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateAllStake;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Solana$DeactivateAllStake;",
            ">;"
        }
    .end annotation
.end field

.field public static final STAKE_ACCOUNTS_FIELD_NUMBER:I = 0x1


# instance fields
.field private stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2326
    new-instance v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-direct {v0}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;-><init>()V

    .line 2329
    sput-object v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    .line 2330
    const-class v1, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1912
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1913
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$3000()Lwallet/core/jni/proto/Solana$DeactivateAllStake;
    .locals 1

    .line 1907
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    return-object v0
.end method

.method static synthetic access$3100(Lwallet/core/jni/proto/Solana$DeactivateAllStake;ILjava/lang/String;)V
    .locals 0

    .line 1907
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->setStakeAccounts(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lwallet/core/jni/proto/Solana$DeactivateAllStake;Ljava/lang/String;)V
    .locals 0

    .line 1907
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->addStakeAccounts(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lwallet/core/jni/proto/Solana$DeactivateAllStake;Ljava/lang/Iterable;)V
    .locals 0

    .line 1907
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->addAllStakeAccounts(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$3400(Lwallet/core/jni/proto/Solana$DeactivateAllStake;)V
    .locals 0

    .line 1907
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->clearStakeAccounts()V

    return-void
.end method

.method static synthetic access$3500(Lwallet/core/jni/proto/Solana$DeactivateAllStake;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1907
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->addStakeAccountsBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllStakeAccounts(Ljava/lang/Iterable;)V
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

    .line 2015
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->ensureStakeAccountsIsMutable()V

    .line 2016
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addStakeAccounts(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2001
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2002
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->ensureStakeAccountsIsMutable()V

    .line 2003
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addStakeAccountsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2039
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2040
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->ensureStakeAccountsIsMutable()V

    .line 2041
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearStakeAccounts()V
    .locals 1

    .line 2027
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureStakeAccountsIsMutable()V
    .locals 2

    .line 1970
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1971
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1973
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Solana$DeactivateAllStake;
    .locals 1

    .line 2335
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Solana$DeactivateAllStake$Builder;
    .locals 1

    .line 2119
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Solana$DeactivateAllStake;)Lwallet/core/jni/proto/Solana$DeactivateAllStake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2122
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Solana$DeactivateAllStake;
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

    .line 2096
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$DeactivateAllStake;
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

    .line 2102
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$DeactivateAllStake;
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

    .line 2060
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$DeactivateAllStake;
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

    .line 2067
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Solana$DeactivateAllStake;
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

    .line 2107
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$DeactivateAllStake;
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

    .line 2114
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Solana$DeactivateAllStake;
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

    .line 2084
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$DeactivateAllStake;
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

    .line 2091
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Solana$DeactivateAllStake;
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

    .line 2047
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$DeactivateAllStake;
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

    .line 2054
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Solana$DeactivateAllStake;
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

    .line 2072
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$DeactivateAllStake;
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

    .line 2079
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Solana$DeactivateAllStake;",
            ">;"
        }
    .end annotation

    .line 2341
    sget-object v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setStakeAccounts(ILjava/lang/String;)V
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

    .line 1987
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1988
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->ensureStakeAccountsIsMutable()V

    .line 1989
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

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

    .line 2278
    sget-object p2, Lwallet/core/jni/proto/Solana$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2319
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2313
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2298
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2300
    const-class p2, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    monitor-enter p2

    .line 2301
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2303
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2306
    sput-object p1, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->PARSER:Lcom/google/protobuf/Parser;

    .line 2308
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

    .line 2295
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "stakeAccounts_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u021a"

    .line 2291
    sget-object p3, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2283
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Solana$DeactivateAllStake$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Solana$DeactivateAllStake$Builder;-><init>(Lwallet/core/jni/proto/Solana$1;)V

    return-object p1

    .line 2280
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-direct {p1}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;-><init>()V

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

.method public getStakeAccounts(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1952
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStakeAccountsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1966
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1967
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1966
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getStakeAccountsCount()I
    .locals 1

    .line 1939
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStakeAccountsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1927
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
