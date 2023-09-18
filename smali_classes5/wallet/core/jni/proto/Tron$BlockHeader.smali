.class public final Lwallet/core/jni/proto/Tron$BlockHeader;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$BlockHeaderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlockHeader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tron$BlockHeader$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tron$BlockHeader;",
        "Lwallet/core/jni/proto/Tron$BlockHeader$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$BlockHeaderOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$BlockHeader;

.field public static final NUMBER_FIELD_NUMBER:I = 0x7

.field public static final PARENT_HASH_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$BlockHeader;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x1

.field public static final TX_TRIE_ROOT_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0xa

.field public static final WITNESS_ADDRESS_FIELD_NUMBER:I = 0x9


# instance fields
.field private number_:J

.field private parentHash_:Lcom/google/protobuf/ByteString;

.field private timestamp_:J

.field private txTrieRoot_:Lcom/google/protobuf/ByteString;

.field private version_:I

.field private witnessAddress_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10901
    new-instance v0, Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tron$BlockHeader;-><init>()V

    .line 10904
    sput-object v0, Lwallet/core/jni/proto/Tron$BlockHeader;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$BlockHeader;

    .line 10905
    const-class v1, Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 10337
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10338
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$BlockHeader;->txTrieRoot_:Lcom/google/protobuf/ByteString;

    .line 10339
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$BlockHeader;->parentHash_:Lcom/google/protobuf/ByteString;

    .line 10340
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$BlockHeader;->witnessAddress_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$17500()Lwallet/core/jni/proto/Tron$BlockHeader;
    .locals 1

    .line 10332
    sget-object v0, Lwallet/core/jni/proto/Tron$BlockHeader;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$BlockHeader;

    return-object v0
.end method

.method static synthetic access$17600(Lwallet/core/jni/proto/Tron$BlockHeader;J)V
    .locals 0

    .line 10332
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tron$BlockHeader;->setTimestamp(J)V

    return-void
.end method

.method static synthetic access$17700(Lwallet/core/jni/proto/Tron$BlockHeader;)V
    .locals 0

    .line 10332
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$BlockHeader;->clearTimestamp()V

    return-void
.end method

.method static synthetic access$17800(Lwallet/core/jni/proto/Tron$BlockHeader;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 10332
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$BlockHeader;->setTxTrieRoot(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$17900(Lwallet/core/jni/proto/Tron$BlockHeader;)V
    .locals 0

    .line 10332
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$BlockHeader;->clearTxTrieRoot()V

    return-void
.end method

.method static synthetic access$18000(Lwallet/core/jni/proto/Tron$BlockHeader;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 10332
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$BlockHeader;->setParentHash(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$18100(Lwallet/core/jni/proto/Tron$BlockHeader;)V
    .locals 0

    .line 10332
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$BlockHeader;->clearParentHash()V

    return-void
.end method

.method static synthetic access$18200(Lwallet/core/jni/proto/Tron$BlockHeader;J)V
    .locals 0

    .line 10332
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tron$BlockHeader;->setNumber(J)V

    return-void
.end method

.method static synthetic access$18300(Lwallet/core/jni/proto/Tron$BlockHeader;)V
    .locals 0

    .line 10332
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$BlockHeader;->clearNumber()V

    return-void
.end method

.method static synthetic access$18400(Lwallet/core/jni/proto/Tron$BlockHeader;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 10332
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$BlockHeader;->setWitnessAddress(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$18500(Lwallet/core/jni/proto/Tron$BlockHeader;)V
    .locals 0

    .line 10332
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$BlockHeader;->clearWitnessAddress()V

    return-void
.end method

.method static synthetic access$18600(Lwallet/core/jni/proto/Tron$BlockHeader;I)V
    .locals 0

    .line 10332
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$BlockHeader;->setVersion(I)V

    return-void
.end method

.method static synthetic access$18700(Lwallet/core/jni/proto/Tron$BlockHeader;)V
    .locals 0

    .line 10332
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$BlockHeader;->clearVersion()V

    return-void
.end method

.method private clearNumber()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 10481
    iput-wide v0, p0, Lwallet/core/jni/proto/Tron$BlockHeader;->number_:J

    return-void
.end method

.method private clearParentHash()V
    .locals 1

    .line 10455
    invoke-static {}, Lwallet/core/jni/proto/Tron$BlockHeader;->getDefaultInstance()Lwallet/core/jni/proto/Tron$BlockHeader;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$BlockHeader;->getParentHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$BlockHeader;->parentHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearTimestamp()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 10377
    iput-wide v0, p0, Lwallet/core/jni/proto/Tron$BlockHeader;->timestamp_:J

    return-void
.end method

.method private clearTxTrieRoot()V
    .locals 1

    .line 10416
    invoke-static {}, Lwallet/core/jni/proto/Tron$BlockHeader;->getDefaultInstance()Lwallet/core/jni/proto/Tron$BlockHeader;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$BlockHeader;->getTxTrieRoot()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$BlockHeader;->txTrieRoot_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 10534
    iput v0, p0, Lwallet/core/jni/proto/Tron$BlockHeader;->version_:I

    return-void
.end method

.method private clearWitnessAddress()V
    .locals 1

    .line 10508
    invoke-static {}, Lwallet/core/jni/proto/Tron$BlockHeader;->getDefaultInstance()Lwallet/core/jni/proto/Tron$BlockHeader;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$BlockHeader;->getWitnessAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$BlockHeader;->witnessAddress_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tron$BlockHeader;
    .locals 1

    .line 10910
    sget-object v0, Lwallet/core/jni/proto/Tron$BlockHeader;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$BlockHeader;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tron$BlockHeader$Builder;
    .locals 1

    .line 10612
    sget-object v0, Lwallet/core/jni/proto/Tron$BlockHeader;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tron$BlockHeader$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tron$BlockHeader;)Lwallet/core/jni/proto/Tron$BlockHeader$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 10615
    sget-object v0, Lwallet/core/jni/proto/Tron$BlockHeader;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$BlockHeader$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$BlockHeader;
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

    .line 10589
    sget-object v0, Lwallet/core/jni/proto/Tron$BlockHeader;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$BlockHeader;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$BlockHeader;
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

    .line 10595
    sget-object v0, Lwallet/core/jni/proto/Tron$BlockHeader;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$BlockHeader;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$BlockHeader;
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

    .line 10553
    sget-object v0, Lwallet/core/jni/proto/Tron$BlockHeader;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$BlockHeader;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$BlockHeader;
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

    .line 10560
    sget-object v0, Lwallet/core/jni/proto/Tron$BlockHeader;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$BlockHeader;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tron$BlockHeader;
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

    .line 10600
    sget-object v0, Lwallet/core/jni/proto/Tron$BlockHeader;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$BlockHeader;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$BlockHeader;
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

    .line 10607
    sget-object v0, Lwallet/core/jni/proto/Tron$BlockHeader;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$BlockHeader;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$BlockHeader;
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

    .line 10577
    sget-object v0, Lwallet/core/jni/proto/Tron$BlockHeader;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$BlockHeader;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$BlockHeader;
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

    .line 10584
    sget-object v0, Lwallet/core/jni/proto/Tron$BlockHeader;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$BlockHeader;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tron$BlockHeader;
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

    .line 10540
    sget-object v0, Lwallet/core/jni/proto/Tron$BlockHeader;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$BlockHeader;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$BlockHeader;
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

    .line 10547
    sget-object v0, Lwallet/core/jni/proto/Tron$BlockHeader;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$BlockHeader;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tron$BlockHeader;
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

    .line 10565
    sget-object v0, Lwallet/core/jni/proto/Tron$BlockHeader;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$BlockHeader;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$BlockHeader;
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

    .line 10572
    sget-object v0, Lwallet/core/jni/proto/Tron$BlockHeader;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$BlockHeader;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$BlockHeader;",
            ">;"
        }
    .end annotation

    .line 10916
    sget-object v0, Lwallet/core/jni/proto/Tron$BlockHeader;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setNumber(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10474
    iput-wide p1, p0, Lwallet/core/jni/proto/Tron$BlockHeader;->number_:J

    return-void
.end method

.method private setParentHash(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10442
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10444
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$BlockHeader;->parentHash_:Lcom/google/protobuf/ByteString;

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

    .line 10366
    iput-wide p1, p0, Lwallet/core/jni/proto/Tron$BlockHeader;->timestamp_:J

    return-void
.end method

.method private setTxTrieRoot(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10403
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10405
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$BlockHeader;->txTrieRoot_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setVersion(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10527
    iput p1, p0, Lwallet/core/jni/proto/Tron$BlockHeader;->version_:I

    return-void
.end method

.method private setWitnessAddress(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10499
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10501
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$BlockHeader;->witnessAddress_:Lcom/google/protobuf/ByteString;

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

    .line 10847
    sget-object p2, Lwallet/core/jni/proto/Tron$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 10894
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 10888
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 10873
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tron$BlockHeader;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 10875
    const-class p2, Lwallet/core/jni/proto/Tron$BlockHeader;

    monitor-enter p2

    .line 10876
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tron$BlockHeader;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 10878
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tron$BlockHeader;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 10881
    sput-object p1, Lwallet/core/jni/proto/Tron$BlockHeader;->PARSER:Lcom/google/protobuf/Parser;

    .line 10883
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

    .line 10870
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tron$BlockHeader;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$BlockHeader;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "timestamp_"

    aput-object v0, p1, p3

    const-string p3, "txTrieRoot_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "parentHash_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "number_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "witnessAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "version_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0000\u0000\u0001\n\u0006\u0000\u0000\u0000\u0001\u0002\u0002\n\u0003\n\u0007\u0002\t\n\n\u0004"

    .line 10866
    sget-object p3, Lwallet/core/jni/proto/Tron$BlockHeader;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10852
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tron$BlockHeader$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tron$BlockHeader$Builder;-><init>(Lwallet/core/jni/proto/Tron$1;)V

    return-object p1

    .line 10849
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tron$BlockHeader;-><init>()V

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

.method public getNumber()J
    .locals 2

    .line 10466
    iget-wide v0, p0, Lwallet/core/jni/proto/Tron$BlockHeader;->number_:J

    return-wide v0
.end method

.method public getParentHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10431
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$BlockHeader;->parentHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 10354
    iget-wide v0, p0, Lwallet/core/jni/proto/Tron$BlockHeader;->timestamp_:J

    return-wide v0
.end method

.method public getTxTrieRoot()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10392
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$BlockHeader;->txTrieRoot_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 10519
    iget v0, p0, Lwallet/core/jni/proto/Tron$BlockHeader;->version_:I

    return v0
.end method

.method public getWitnessAddress()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10492
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$BlockHeader;->witnessAddress_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
