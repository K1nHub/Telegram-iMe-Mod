.class public final Lwallet/core/jni/proto/Cosmos$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$SigningInput;",
        "Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACCOUNT_NUMBER_FIELD_NUMBER:I = 0x2

.field public static final CHAIN_ID_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningInput;

.field public static final FEE_FIELD_NUMBER:I = 0x4

.field public static final MEMO_FIELD_NUMBER:I = 0x5

.field public static final MESSAGES_FIELD_NUMBER:I = 0x8

.field public static final MODE_FIELD_NUMBER:I = 0x9

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x7

.field public static final SEQUENCE_FIELD_NUMBER:I = 0x6

.field public static final SIGNING_MODE_FIELD_NUMBER:I = 0x1


# instance fields
.field private accountNumber_:J

.field private chainId_:Ljava/lang/String;

.field private fee_:Lwallet/core/jni/proto/Cosmos$Fee;

.field private memo_:Ljava/lang/String;

.field private messages_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Cosmos$Message;",
            ">;"
        }
    .end annotation
.end field

.field private mode_:I

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private sequence_:J

.field private signingMode_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20150
    new-instance v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;-><init>()V

    .line 20153
    sput-object v0, Lwallet/core/jni/proto/Cosmos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningInput;

    .line 20154
    const-class v1, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18792
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 18793
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->chainId_:Ljava/lang/String;

    .line 18794
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->memo_:Ljava/lang/String;

    .line 18795
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    .line 18796
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$36100()Lwallet/core/jni/proto/Cosmos$SigningInput;
    .locals 1

    .line 18787
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningInput;

    return-object v0
.end method

.method static synthetic access$36200(Lwallet/core/jni/proto/Cosmos$SigningInput;I)V
    .locals 0

    .line 18787
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->setSigningModeValue(I)V

    return-void
.end method

.method static synthetic access$36300(Lwallet/core/jni/proto/Cosmos$SigningInput;Lwallet/core/jni/proto/Cosmos$SigningMode;)V
    .locals 0

    .line 18787
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->setSigningMode(Lwallet/core/jni/proto/Cosmos$SigningMode;)V

    return-void
.end method

.method static synthetic access$36400(Lwallet/core/jni/proto/Cosmos$SigningInput;)V
    .locals 0

    .line 18787
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->clearSigningMode()V

    return-void
.end method

.method static synthetic access$36500(Lwallet/core/jni/proto/Cosmos$SigningInput;J)V
    .locals 0

    .line 18787
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cosmos$SigningInput;->setAccountNumber(J)V

    return-void
.end method

.method static synthetic access$36600(Lwallet/core/jni/proto/Cosmos$SigningInput;)V
    .locals 0

    .line 18787
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->clearAccountNumber()V

    return-void
.end method

.method static synthetic access$36700(Lwallet/core/jni/proto/Cosmos$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 18787
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->setChainId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$36800(Lwallet/core/jni/proto/Cosmos$SigningInput;)V
    .locals 0

    .line 18787
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->clearChainId()V

    return-void
.end method

.method static synthetic access$36900(Lwallet/core/jni/proto/Cosmos$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 18787
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->setChainIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$37000(Lwallet/core/jni/proto/Cosmos$SigningInput;Lwallet/core/jni/proto/Cosmos$Fee;)V
    .locals 0

    .line 18787
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->setFee(Lwallet/core/jni/proto/Cosmos$Fee;)V

    return-void
.end method

.method static synthetic access$37100(Lwallet/core/jni/proto/Cosmos$SigningInput;Lwallet/core/jni/proto/Cosmos$Fee;)V
    .locals 0

    .line 18787
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->mergeFee(Lwallet/core/jni/proto/Cosmos$Fee;)V

    return-void
.end method

.method static synthetic access$37200(Lwallet/core/jni/proto/Cosmos$SigningInput;)V
    .locals 0

    .line 18787
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->clearFee()V

    return-void
.end method

.method static synthetic access$37300(Lwallet/core/jni/proto/Cosmos$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 18787
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->setMemo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$37400(Lwallet/core/jni/proto/Cosmos$SigningInput;)V
    .locals 0

    .line 18787
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->clearMemo()V

    return-void
.end method

.method static synthetic access$37500(Lwallet/core/jni/proto/Cosmos$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 18787
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->setMemoBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$37600(Lwallet/core/jni/proto/Cosmos$SigningInput;J)V
    .locals 0

    .line 18787
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cosmos$SigningInput;->setSequence(J)V

    return-void
.end method

.method static synthetic access$37700(Lwallet/core/jni/proto/Cosmos$SigningInput;)V
    .locals 0

    .line 18787
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->clearSequence()V

    return-void
.end method

.method static synthetic access$37800(Lwallet/core/jni/proto/Cosmos$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 18787
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$37900(Lwallet/core/jni/proto/Cosmos$SigningInput;)V
    .locals 0

    .line 18787
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$38000(Lwallet/core/jni/proto/Cosmos$SigningInput;ILwallet/core/jni/proto/Cosmos$Message;)V
    .locals 0

    .line 18787
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cosmos$SigningInput;->setMessages(ILwallet/core/jni/proto/Cosmos$Message;)V

    return-void
.end method

.method static synthetic access$38100(Lwallet/core/jni/proto/Cosmos$SigningInput;Lwallet/core/jni/proto/Cosmos$Message;)V
    .locals 0

    .line 18787
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->addMessages(Lwallet/core/jni/proto/Cosmos$Message;)V

    return-void
.end method

.method static synthetic access$38200(Lwallet/core/jni/proto/Cosmos$SigningInput;ILwallet/core/jni/proto/Cosmos$Message;)V
    .locals 0

    .line 18787
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cosmos$SigningInput;->addMessages(ILwallet/core/jni/proto/Cosmos$Message;)V

    return-void
.end method

.method static synthetic access$38300(Lwallet/core/jni/proto/Cosmos$SigningInput;Ljava/lang/Iterable;)V
    .locals 0

    .line 18787
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->addAllMessages(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$38400(Lwallet/core/jni/proto/Cosmos$SigningInput;)V
    .locals 0

    .line 18787
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->clearMessages()V

    return-void
.end method

.method static synthetic access$38500(Lwallet/core/jni/proto/Cosmos$SigningInput;I)V
    .locals 0

    .line 18787
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$38600(Lwallet/core/jni/proto/Cosmos$SigningInput;I)V
    .locals 0

    .line 18787
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->setModeValue(I)V

    return-void
.end method

.method static synthetic access$38700(Lwallet/core/jni/proto/Cosmos$SigningInput;Lwallet/core/jni/proto/Cosmos$BroadcastMode;)V
    .locals 0

    .line 18787
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->setMode(Lwallet/core/jni/proto/Cosmos$BroadcastMode;)V

    return-void
.end method

.method static synthetic access$38800(Lwallet/core/jni/proto/Cosmos$SigningInput;)V
    .locals 0

    .line 18787
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->clearMode()V

    return-void
.end method

.method private addAllMessages(Ljava/lang/Iterable;)V
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
            "Lwallet/core/jni/proto/Cosmos$Message;",
            ">;)V"
        }
    .end annotation

    .line 19287
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->ensureMessagesIsMutable()V

    .line 19288
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addMessages(ILwallet/core/jni/proto/Cosmos$Message;)V
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

    .line 19274
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19275
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->ensureMessagesIsMutable()V

    .line 19276
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addMessages(Lwallet/core/jni/proto/Cosmos$Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19261
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19262
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->ensureMessagesIsMutable()V

    .line 19263
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAccountNumber()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 18895
    iput-wide v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->accountNumber_:J

    return-void
.end method

.method private clearChainId()V
    .locals 1

    .line 18948
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->getChainId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->chainId_:Ljava/lang/String;

    return-void
.end method

.method private clearFee()V
    .locals 1

    const/4 v0, 0x0

    .line 19027
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->fee_:Lwallet/core/jni/proto/Cosmos$Fee;

    return-void
.end method

.method private clearMemo()V
    .locals 1

    .line 19081
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->getMemo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->memo_:Ljava/lang/String;

    return-void
.end method

.method private clearMessages()V
    .locals 1

    .line 19299
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearMode()V
    .locals 1

    const/4 v0, 0x0

    .line 19372
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->mode_:I

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 19172
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSequence()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 19133
    iput-wide v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->sequence_:J

    return-void
.end method

.method private clearSigningMode()V
    .locals 1

    const/4 v0, 0x0

    .line 18857
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->signingMode_:I

    return-void
.end method

.method private ensureMessagesIsMutable()V
    .locals 2

    .line 19233
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 19234
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 19236
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$SigningInput;
    .locals 1

    .line 20159
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningInput;

    return-object v0
.end method

.method private mergeFee(Lwallet/core/jni/proto/Cosmos$Fee;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19010
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19011
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->fee_:Lwallet/core/jni/proto/Cosmos$Fee;

    if-eqz v0, :cond_0

    .line 19012
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Fee;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Fee;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 19013
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->fee_:Lwallet/core/jni/proto/Cosmos$Fee;

    .line 19014
    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Fee;->newBuilder(Lwallet/core/jni/proto/Cosmos$Fee;)Lwallet/core/jni/proto/Cosmos$Fee$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Fee$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Fee;

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->fee_:Lwallet/core/jni/proto/Cosmos$Fee;

    goto :goto_0

    .line 19016
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->fee_:Lwallet/core/jni/proto/Cosmos$Fee;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1

    .line 19450
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$SigningInput;)Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 19453
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$SigningInput;
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

    .line 19427
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$SigningInput;
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

    .line 19433
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$SigningInput;
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

    .line 19391
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$SigningInput;
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

    .line 19398
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$SigningInput;
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

    .line 19438
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$SigningInput;
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

    .line 19445
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$SigningInput;
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

    .line 19415
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$SigningInput;
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

    .line 19422
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$SigningInput;
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

    .line 19378
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$SigningInput;
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

    .line 19385
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$SigningInput;
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

    .line 19403
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$SigningInput;
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

    .line 19410
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$SigningInput;",
            ">;"
        }
    .end annotation

    .line 20165
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeMessages(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 19309
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->ensureMessagesIsMutable()V

    .line 19310
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAccountNumber(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18884
    iput-wide p1, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->accountNumber_:J

    return-void
.end method

.method private setChainId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18935
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18937
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->chainId_:Ljava/lang/String;

    return-void
.end method

.method private setChainIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18960
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 18961
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->chainId_:Ljava/lang/String;

    return-void
.end method

.method private setFee(Lwallet/core/jni/proto/Cosmos$Fee;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18997
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18998
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->fee_:Lwallet/core/jni/proto/Cosmos$Fee;

    return-void
.end method

.method private setMemo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19068
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19070
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->memo_:Ljava/lang/String;

    return-void
.end method

.method private setMemoBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19093
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 19094
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->memo_:Ljava/lang/String;

    return-void
.end method

.method private setMessages(ILwallet/core/jni/proto/Cosmos$Message;)V
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

    .line 19249
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19250
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->ensureMessagesIsMutable()V

    .line 19251
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setMode(Lwallet/core/jni/proto/Cosmos$BroadcastMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19360
    invoke-virtual {p1}, Lwallet/core/jni/proto/Cosmos$BroadcastMode;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->mode_:I

    return-void
.end method

.method private setModeValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19349
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->mode_:I

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

    .line 19159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19161
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setSequence(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19122
    iput-wide p1, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->sequence_:J

    return-void
.end method

.method private setSigningMode(Lwallet/core/jni/proto/Cosmos$SigningMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18845
    invoke-virtual {p1}, Lwallet/core/jni/proto/Cosmos$SigningMode;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->signingMode_:I

    return-void
.end method

.method private setSigningModeValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18834
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->signingMode_:I

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

    .line 20092
    sget-object p2, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 20143
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 20137
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 20122
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 20124
    const-class p2, Lwallet/core/jni/proto/Cosmos$SigningInput;

    monitor-enter p2

    .line 20125
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 20127
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 20130
    sput-object p1, Lwallet/core/jni/proto/Cosmos$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 20132
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

    .line 20119
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningInput;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "signingMode_"

    aput-object v0, p1, p3

    const-string p3, "accountNumber_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "chainId_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "fee_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "memo_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "sequence_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "messages_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    .line 20100
    const-class p3, Lwallet/core/jni/proto/Cosmos$Message;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "mode_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\t\u0000\u0000\u0001\t\t\u0000\u0001\u0000\u0001\u000c\u0002\u0003\u0003\u0208\u0004\t\u0005\u0208\u0006\u0003\u0007\n\u0008\u001b\t\u000c"

    .line 20115
    sget-object p3, Lwallet/core/jni/proto/Cosmos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 20097
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 20094
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;-><init>()V

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

.method public getAccountNumber()J
    .locals 2

    .line 18872
    iget-wide v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->accountNumber_:J

    return-wide v0
.end method

.method public getChainId()Ljava/lang/String;
    .locals 1

    .line 18910
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->chainId_:Ljava/lang/String;

    return-object v0
.end method

.method public getChainIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 18923
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->chainId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFee()Lwallet/core/jni/proto/Cosmos$Fee;
    .locals 1

    .line 18987
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->fee_:Lwallet/core/jni/proto/Cosmos$Fee;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Fee;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Fee;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 19043
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->memo_:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 19056
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->memo_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(I)Lwallet/core/jni/proto/Cosmos$Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 19219
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message;

    return-object p1
.end method

.method public getMessagesCount()I
    .locals 1

    .line 19208
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMessagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cosmos$Message;",
            ">;"
        }
    .end annotation

    .line 19186
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMessagesOrBuilder(I)Lwallet/core/jni/proto/Cosmos$MessageOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 19230
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$MessageOrBuilder;

    return-object p1
.end method

.method public getMessagesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Cosmos$MessageOrBuilder;",
            ">;"
        }
    .end annotation

    .line 19197
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMode()Lwallet/core/jni/proto/Cosmos$BroadcastMode;
    .locals 1

    .line 19337
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->mode_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$BroadcastMode;->forNumber(I)Lwallet/core/jni/proto/Cosmos$BroadcastMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 19338
    sget-object v0, Lwallet/core/jni/proto/Cosmos$BroadcastMode;->UNRECOGNIZED:Lwallet/core/jni/proto/Cosmos$BroadcastMode;

    :cond_0
    return-object v0
.end method

.method public getModeValue()I
    .locals 1

    .line 19325
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->mode_:I

    return v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 19148
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSequence()J
    .locals 2

    .line 19110
    iget-wide v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->sequence_:J

    return-wide v0
.end method

.method public getSigningMode()Lwallet/core/jni/proto/Cosmos$SigningMode;
    .locals 1

    .line 18822
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->signingMode_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$SigningMode;->forNumber(I)Lwallet/core/jni/proto/Cosmos$SigningMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 18823
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningMode;->UNRECOGNIZED:Lwallet/core/jni/proto/Cosmos$SigningMode;

    :cond_0
    return-object v0
.end method

.method public getSigningModeValue()I
    .locals 1

    .line 18810
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->signingMode_:I

    return v0
.end method

.method public hasFee()Z
    .locals 1

    .line 18976
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningInput;->fee_:Lwallet/core/jni/proto/Cosmos$Fee;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
