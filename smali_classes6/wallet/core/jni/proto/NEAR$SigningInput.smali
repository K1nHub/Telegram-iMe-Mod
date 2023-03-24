.class public final Lwallet/core/jni/proto/NEAR$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NEAR.java"

# interfaces
.implements Lwallet/core/jni/proto/NEAR$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/NEAR$SigningInput;",
        "Lwallet/core/jni/proto/NEAR$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEAR$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTIONS_FIELD_NUMBER:I = 0x5

.field public static final BLOCK_HASH_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningInput;

.field public static final NONCE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEAR$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x6

.field public static final RECEIVER_ID_FIELD_NUMBER:I = 0x3

.field public static final SIGNER_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private actions_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/NEAR$Action;",
            ">;"
        }
    .end annotation
.end field

.field private blockHash_:Lcom/google/protobuf/ByteString;

.field private nonce_:J

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private receiverId_:Ljava/lang/String;

.field private signerId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6726
    new-instance v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/NEAR$SigningInput;-><init>()V

    .line 6729
    sput-object v0, Lwallet/core/jni/proto/NEAR$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningInput;

    .line 6730
    const-class v1, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5762
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 5763
    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->signerId_:Ljava/lang/String;

    .line 5764
    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->receiverId_:Ljava/lang/String;

    .line 5765
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->blockHash_:Lcom/google/protobuf/ByteString;

    .line 5766
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5767
    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$10400()Lwallet/core/jni/proto/NEAR$SigningInput;
    .locals 1

    .line 5757
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningInput;

    return-object v0
.end method

.method static synthetic access$10500(Lwallet/core/jni/proto/NEAR$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 5757
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$SigningInput;->setSignerId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10600(Lwallet/core/jni/proto/NEAR$SigningInput;)V
    .locals 0

    .line 5757
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$SigningInput;->clearSignerId()V

    return-void
.end method

.method static synthetic access$10700(Lwallet/core/jni/proto/NEAR$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5757
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$SigningInput;->setSignerIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10800(Lwallet/core/jni/proto/NEAR$SigningInput;J)V
    .locals 0

    .line 5757
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/NEAR$SigningInput;->setNonce(J)V

    return-void
.end method

.method static synthetic access$10900(Lwallet/core/jni/proto/NEAR$SigningInput;)V
    .locals 0

    .line 5757
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$SigningInput;->clearNonce()V

    return-void
.end method

.method static synthetic access$11000(Lwallet/core/jni/proto/NEAR$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 5757
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$SigningInput;->setReceiverId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11100(Lwallet/core/jni/proto/NEAR$SigningInput;)V
    .locals 0

    .line 5757
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$SigningInput;->clearReceiverId()V

    return-void
.end method

.method static synthetic access$11200(Lwallet/core/jni/proto/NEAR$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5757
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$SigningInput;->setReceiverIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11300(Lwallet/core/jni/proto/NEAR$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5757
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$SigningInput;->setBlockHash(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11400(Lwallet/core/jni/proto/NEAR$SigningInput;)V
    .locals 0

    .line 5757
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$SigningInput;->clearBlockHash()V

    return-void
.end method

.method static synthetic access$11500(Lwallet/core/jni/proto/NEAR$SigningInput;ILwallet/core/jni/proto/NEAR$Action;)V
    .locals 0

    .line 5757
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/NEAR$SigningInput;->setActions(ILwallet/core/jni/proto/NEAR$Action;)V

    return-void
.end method

.method static synthetic access$11600(Lwallet/core/jni/proto/NEAR$SigningInput;Lwallet/core/jni/proto/NEAR$Action;)V
    .locals 0

    .line 5757
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$SigningInput;->addActions(Lwallet/core/jni/proto/NEAR$Action;)V

    return-void
.end method

.method static synthetic access$11700(Lwallet/core/jni/proto/NEAR$SigningInput;ILwallet/core/jni/proto/NEAR$Action;)V
    .locals 0

    .line 5757
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/NEAR$SigningInput;->addActions(ILwallet/core/jni/proto/NEAR$Action;)V

    return-void
.end method

.method static synthetic access$11800(Lwallet/core/jni/proto/NEAR$SigningInput;Ljava/lang/Iterable;)V
    .locals 0

    .line 5757
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$SigningInput;->addAllActions(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$11900(Lwallet/core/jni/proto/NEAR$SigningInput;)V
    .locals 0

    .line 5757
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$SigningInput;->clearActions()V

    return-void
.end method

.method static synthetic access$12000(Lwallet/core/jni/proto/NEAR$SigningInput;I)V
    .locals 0

    .line 5757
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$SigningInput;->removeActions(I)V

    return-void
.end method

.method static synthetic access$12100(Lwallet/core/jni/proto/NEAR$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5757
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12200(Lwallet/core/jni/proto/NEAR$SigningInput;)V
    .locals 0

    .line 5757
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method private addActions(ILwallet/core/jni/proto/NEAR$Action;)V
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

    .line 6079
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6080
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$SigningInput;->ensureActionsIsMutable()V

    .line 6081
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addActions(Lwallet/core/jni/proto/NEAR$Action;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6066
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6067
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$SigningInput;->ensureActionsIsMutable()V

    .line 6068
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAllActions(Ljava/lang/Iterable;)V
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
            "+",
            "Lwallet/core/jni/proto/NEAR$Action;",
            ">;)V"
        }
    .end annotation

    .line 6092
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$SigningInput;->ensureActionsIsMutable()V

    .line 6093
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private clearActions()V
    .locals 1

    .line 6104
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearBlockHash()V
    .locals 1

    .line 5977
    invoke-static {}, Lwallet/core/jni/proto/NEAR$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$SigningInput;->getBlockHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->blockHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearNonce()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5871
    iput-wide v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->nonce_:J

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 6154
    invoke-static {}, Lwallet/core/jni/proto/NEAR$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearReceiverId()V
    .locals 1

    .line 5924
    invoke-static {}, Lwallet/core/jni/proto/NEAR$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$SigningInput;->getReceiverId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->receiverId_:Ljava/lang/String;

    return-void
.end method

.method private clearSignerId()V
    .locals 1

    .line 5819
    invoke-static {}, Lwallet/core/jni/proto/NEAR$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$SigningInput;->getSignerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->signerId_:Ljava/lang/String;

    return-void
.end method

.method private ensureActionsIsMutable()V
    .locals 2

    .line 6038
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6039
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6041
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/NEAR$SigningInput;
    .locals 1

    .line 6735
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningInput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
    .locals 1

    .line 6232
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/NEAR$SigningInput;)Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 6235
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEAR$SigningInput;
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

    .line 6209
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$SigningInput;
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

    .line 6215
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$SigningInput;
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

    .line 6173
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$SigningInput;
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

    .line 6180
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/NEAR$SigningInput;
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

    .line 6220
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$SigningInput;
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

    .line 6227
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEAR$SigningInput;
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

    .line 6197
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$SigningInput;
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

    .line 6204
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/NEAR$SigningInput;
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

    .line 6160
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$SigningInput;
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

    .line 6167
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/NEAR$SigningInput;
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

    .line 6185
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$SigningInput;
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

    .line 6192
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEAR$SigningInput;",
            ">;"
        }
    .end annotation

    .line 6741
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeActions(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 6114
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$SigningInput;->ensureActionsIsMutable()V

    .line 6115
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setActions(ILwallet/core/jni/proto/NEAR$Action;)V
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

    .line 6054
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6055
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$SigningInput;->ensureActionsIsMutable()V

    .line 6056
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setBlockHash(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5964
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5966
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->blockHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setNonce(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5860
    iput-wide p1, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->nonce_:J

    return-void
.end method

.method private setPrivateKey(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6143
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setReceiverId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5911
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5913
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->receiverId_:Ljava/lang/String;

    return-void
.end method

.method private setReceiverIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5936
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5937
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->receiverId_:Ljava/lang/String;

    return-void
.end method

.method private setSignerId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5806
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5808
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->signerId_:Ljava/lang/String;

    return-void
.end method

.method private setSignerIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5831
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5832
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->signerId_:Ljava/lang/String;

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

    .line 6671
    sget-object p2, Lwallet/core/jni/proto/NEAR$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6719
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 6713
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 6698
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/NEAR$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 6700
    const-class p2, Lwallet/core/jni/proto/NEAR$SigningInput;

    monitor-enter p2

    .line 6701
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/NEAR$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 6703
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/NEAR$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6706
    sput-object p1, Lwallet/core/jni/proto/NEAR$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 6708
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

    .line 6695
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/NEAR$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningInput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "signerId_"

    aput-object v0, p1, p3

    const-string p3, "nonce_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "receiverId_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "blockHash_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "actions_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 6679
    const-class p3, Lwallet/core/jni/proto/NEAR$Action;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u0208\u0002\u0003\u0003\u0208\u0004\n\u0005\u001b\u0006\n"

    .line 6691
    sget-object p3, Lwallet/core/jni/proto/NEAR$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6676
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/NEAR$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/NEAR$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/NEAR$1;)V

    return-object p1

    .line 6673
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/NEAR$SigningInput;-><init>()V

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

.method public getActions(I)Lwallet/core/jni/proto/NEAR$Action;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 6024
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$Action;

    return-object p1
.end method

.method public getActionsCount()I
    .locals 1

    .line 6013
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getActionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/NEAR$Action;",
            ">;"
        }
    .end annotation

    .line 5991
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getActionsOrBuilder(I)Lwallet/core/jni/proto/NEAR$ActionOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 6035
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$ActionOrBuilder;

    return-object p1
.end method

.method public getActionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/NEAR$ActionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6002
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getBlockHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5953
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->blockHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNonce()J
    .locals 2

    .line 5848
    iget-wide v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->nonce_:J

    return-wide v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6130
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getReceiverId()Ljava/lang/String;
    .locals 1

    .line 5886
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->receiverId_:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5899
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->receiverId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignerId()Ljava/lang/String;
    .locals 1

    .line 5781
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->signerId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSignerIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5794
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningInput;->signerId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
