.class public final Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ethereum.java"

# interfaces
.implements Lwallet/core/jni/proto/Ethereum$Transaction$ERC721TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ethereum$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ERC721Transfer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;",
        "Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ethereum$Transaction$ERC721TransferOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

.field public static final FROM_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOKEN_ID_FIELD_NUMBER:I = 0x3

.field public static final TO_FIELD_NUMBER:I = 0x2


# instance fields
.field private from_:Ljava/lang/String;

.field private to_:Ljava/lang/String;

.field private tokenId_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2054
    new-instance v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-direct {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;-><init>()V

    .line 2057
    sput-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    .line 2058
    const-class v1, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1541
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 1542
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->from_:Ljava/lang/String;

    .line 1543
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->to_:Ljava/lang/String;

    .line 1544
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->tokenId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$2000()Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;
    .locals 1

    .line 1536
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    return-object v0
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;Ljava/lang/String;)V
    .locals 0

    .line 1536
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->setFrom(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;)V
    .locals 0

    .line 1536
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->clearFrom()V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1536
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->setFromBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;Ljava/lang/String;)V
    .locals 0

    .line 1536
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->setTo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;)V
    .locals 0

    .line 1536
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->clearTo()V

    return-void
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1536
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->setToBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2700(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1536
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->setTokenId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;)V
    .locals 0

    .line 1536
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->clearTokenId()V

    return-void
.end method

.method private clearFrom()V
    .locals 1

    .line 1596
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->getFrom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->from_:Ljava/lang/String;

    return-void
.end method

.method private clearTo()V
    .locals 1

    .line 1663
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->getTo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->to_:Ljava/lang/String;

    return-void
.end method

.method private clearTokenId()V
    .locals 1

    .line 1716
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->getTokenId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->tokenId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;
    .locals 1

    .line 2063
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer$Builder;
    .locals 1

    .line 1794
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1797
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;
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

    .line 1771
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;
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

    .line 1777
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;
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

    .line 1735
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;
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

    .line 1742
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;
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

    .line 1782
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;
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

    .line 1789
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;
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

    .line 1759
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;
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

    .line 1766
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;
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

    .line 1722
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;
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

    .line 1729
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;
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

    .line 1747
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;
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

    .line 1754
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;",
            ">;"
        }
    .end annotation

    .line 2069
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setFrom(Ljava/lang/String;)V
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
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->from_:Ljava/lang/String;

    return-void
.end method

.method private setFromBytes(Lcom/google/protobuf/ByteString;)V
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

    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->from_:Ljava/lang/String;

    return-void
.end method

.method private setTo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1650
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1652
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->to_:Ljava/lang/String;

    return-void
.end method

.method private setToBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1675
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1676
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->to_:Ljava/lang/String;

    return-void
.end method

.method private setTokenId(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1703
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1705
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->tokenId_:Lcom/google/protobuf/ByteString;

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

    .line 2003
    sget-object p2, Lwallet/core/jni/proto/Ethereum$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2047
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2041
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2026
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2028
    const-class p2, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    monitor-enter p2

    .line 2029
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2031
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2034
    sput-object p1, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->PARSER:Lcom/google/protobuf/Parser;

    .line 2036
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

    .line 2023
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "from_"

    aput-object v0, p1, p3

    const-string p3, "to_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "tokenId_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\n"

    .line 2019
    sget-object p3, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2008
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer$Builder;-><init>(Lwallet/core/jni/proto/Ethereum$1;)V

    return-object p1

    .line 2005
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-direct {p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;-><init>()V

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

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 1558
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->from_:Ljava/lang/String;

    return-object v0
.end method

.method public getFromBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1571
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->from_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 1625
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->to_:Ljava/lang/String;

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1638
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->to_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1692
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->tokenId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
