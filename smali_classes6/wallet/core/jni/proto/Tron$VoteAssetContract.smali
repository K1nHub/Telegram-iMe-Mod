.class public final Lwallet/core/jni/proto/Tron$VoteAssetContract;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$VoteAssetContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoteAssetContract"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tron$VoteAssetContract;",
        "Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$VoteAssetContractOrBuilder;"
    }
.end annotation


# static fields
.field public static final COUNT_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteAssetContract;

.field public static final OWNER_ADDRESS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$VoteAssetContract;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORT_FIELD_NUMBER:I = 0x3

.field public static final VOTE_ADDRESS_FIELD_NUMBER:I = 0x2


# instance fields
.field private count_:I

.field private ownerAddress_:Ljava/lang/String;

.field private support_:Z

.field private voteAddress_:Lcom/google/protobuf/Internal$ProtobufList;
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

    .line 7876
    new-instance v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tron$VoteAssetContract;-><init>()V

    .line 7879
    sput-object v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteAssetContract;

    .line 7880
    const-class v1, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 7213
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 7214
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->ownerAddress_:Ljava/lang/String;

    .line 7215
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->voteAddress_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$12000()Lwallet/core/jni/proto/Tron$VoteAssetContract;
    .locals 1

    .line 7208
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteAssetContract;

    return-object v0
.end method

.method static synthetic access$12100(Lwallet/core/jni/proto/Tron$VoteAssetContract;Ljava/lang/String;)V
    .locals 0

    .line 7208
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->setOwnerAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12200(Lwallet/core/jni/proto/Tron$VoteAssetContract;)V
    .locals 0

    .line 7208
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->clearOwnerAddress()V

    return-void
.end method

.method static synthetic access$12300(Lwallet/core/jni/proto/Tron$VoteAssetContract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7208
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12400(Lwallet/core/jni/proto/Tron$VoteAssetContract;ILjava/lang/String;)V
    .locals 0

    .line 7208
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->setVoteAddress(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$12500(Lwallet/core/jni/proto/Tron$VoteAssetContract;Ljava/lang/String;)V
    .locals 0

    .line 7208
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->addVoteAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12600(Lwallet/core/jni/proto/Tron$VoteAssetContract;Ljava/lang/Iterable;)V
    .locals 0

    .line 7208
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->addAllVoteAddress(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$12700(Lwallet/core/jni/proto/Tron$VoteAssetContract;)V
    .locals 0

    .line 7208
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->clearVoteAddress()V

    return-void
.end method

.method static synthetic access$12800(Lwallet/core/jni/proto/Tron$VoteAssetContract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7208
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->addVoteAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12900(Lwallet/core/jni/proto/Tron$VoteAssetContract;Z)V
    .locals 0

    .line 7208
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->setSupport(Z)V

    return-void
.end method

.method static synthetic access$13000(Lwallet/core/jni/proto/Tron$VoteAssetContract;)V
    .locals 0

    .line 7208
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->clearSupport()V

    return-void
.end method

.method static synthetic access$13100(Lwallet/core/jni/proto/Tron$VoteAssetContract;I)V
    .locals 0

    .line 7208
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->setCount(I)V

    return-void
.end method

.method static synthetic access$13200(Lwallet/core/jni/proto/Tron$VoteAssetContract;)V
    .locals 0

    .line 7208
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->clearCount()V

    return-void
.end method

.method private addAllVoteAddress(Ljava/lang/Iterable;)V
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

    .line 7384
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->ensureVoteAddressIsMutable()V

    .line 7385
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->voteAddress_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addVoteAddress(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7370
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7371
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->ensureVoteAddressIsMutable()V

    .line 7372
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->voteAddress_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addVoteAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7408
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7409
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->ensureVoteAddressIsMutable()V

    .line 7410
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->voteAddress_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearCount()V
    .locals 1

    const/4 v0, 0x0

    .line 7462
    iput v0, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->count_:I

    return-void
.end method

.method private clearOwnerAddress()V
    .locals 1

    .line 7267
    invoke-static {}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$VoteAssetContract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearSupport()V
    .locals 1

    const/4 v0, 0x0

    .line 7436
    iput-boolean v0, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->support_:Z

    return-void
.end method

.method private clearVoteAddress()V
    .locals 1

    .line 7396
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->voteAddress_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureVoteAddressIsMutable()V
    .locals 2

    .line 7339
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->voteAddress_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7340
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7342
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->voteAddress_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tron$VoteAssetContract;
    .locals 1

    .line 7885
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteAssetContract;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;
    .locals 1

    .line 7540
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tron$VoteAssetContract;)Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 7543
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$VoteAssetContract;
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

    .line 7517
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$VoteAssetContract;
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

    .line 7523
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$VoteAssetContract;
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

    .line 7481
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$VoteAssetContract;
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

    .line 7488
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tron$VoteAssetContract;
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

    .line 7528
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$VoteAssetContract;
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

    .line 7535
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$VoteAssetContract;
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

    .line 7505
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$VoteAssetContract;
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

    .line 7512
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tron$VoteAssetContract;
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

    .line 7468
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$VoteAssetContract;
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

    .line 7475
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tron$VoteAssetContract;
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

    .line 7493
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$VoteAssetContract;
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

    .line 7500
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$VoteAssetContract;",
            ">;"
        }
    .end annotation

    .line 7891
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7455
    iput p1, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->count_:I

    return-void
.end method

.method private setOwnerAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7254
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7256
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method private setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7279
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7280
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method private setSupport(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7429
    iput-boolean p1, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->support_:Z

    return-void
.end method

.method private setVoteAddress(ILjava/lang/String;)V
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

    .line 7356
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7357
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->ensureVoteAddressIsMutable()V

    .line 7358
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->voteAddress_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

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

    .line 7824
    sget-object p2, Lwallet/core/jni/proto/Tron$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7869
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 7863
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 7848
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tron$VoteAssetContract;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 7850
    const-class p2, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    monitor-enter p2

    .line 7851
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tron$VoteAssetContract;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7853
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tron$VoteAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7856
    sput-object p1, Lwallet/core/jni/proto/Tron$VoteAssetContract;->PARSER:Lcom/google/protobuf/Parser;

    .line 7858
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

    .line 7845
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tron$VoteAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteAssetContract;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "ownerAddress_"

    aput-object v0, p1, p3

    const-string p3, "voteAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "support_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "count_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0005\u0004\u0000\u0001\u0000\u0001\u0208\u0002\u021a\u0003\u0007\u0005\u0004"

    .line 7841
    sget-object p3, Lwallet/core/jni/proto/Tron$VoteAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7829
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;-><init>(Lwallet/core/jni/proto/Tron$1;)V

    return-object p1

    .line 7826
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tron$VoteAssetContract;-><init>()V

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

.method public getCount()I
    .locals 1

    .line 7447
    iget v0, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->count_:I

    return v0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 7229
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->ownerAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7242
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->ownerAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSupport()Z
    .locals 1

    .line 7421
    iget-boolean v0, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->support_:Z

    return v0
.end method

.method public getVoteAddress(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7321
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->voteAddress_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getVoteAddressBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7335
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->voteAddress_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7336
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7335
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getVoteAddressCount()I
    .locals 1

    .line 7308
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->voteAddress_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getVoteAddressList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7296
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteAssetContract;->voteAddress_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
