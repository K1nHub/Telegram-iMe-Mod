.class public final Lwallet/core/jni/proto/Harmony$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Harmony.java"

# interfaces
.implements Lwallet/core/jni/proto/Harmony$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Harmony$SigningInput$Builder;,
        Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Harmony$SigningInput;",
        "Lwallet/core/jni/proto/Harmony$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Harmony$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final CHAIN_ID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningInput;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Harmony$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x2

.field public static final STAKING_MESSAGE_FIELD_NUMBER:I = 0x4

.field public static final TRANSACTION_MESSAGE_FIELD_NUMBER:I = 0x3


# instance fields
.field private chainId_:Lcom/google/protobuf/ByteString;

.field private messageOneofCase_:I

.field private messageOneof_:Ljava/lang/Object;

.field private privateKey_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 644
    new-instance v0, Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Harmony$SigningInput;-><init>()V

    .line 647
    sput-object v0, Lwallet/core/jni/proto/Harmony$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningInput;

    .line 648
    const-class v1, Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneofCase_:I

    .line 72
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->chainId_:Lcom/google/protobuf/ByteString;

    .line 73
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Harmony$SigningInput;
    .locals 1

    .line 66
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningInput;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Harmony$SigningInput;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$SigningInput;->clearMessageOneof()V

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/Harmony$SigningInput;Lwallet/core/jni/proto/Harmony$StakingMessage;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$SigningInput;->mergeStakingMessage(Lwallet/core/jni/proto/Harmony$StakingMessage;)V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/Harmony$SigningInput;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$SigningInput;->clearStakingMessage()V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Harmony$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$SigningInput;->setChainId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Harmony$SigningInput;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$SigningInput;->clearChainId()V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Harmony$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/Harmony$SigningInput;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/Harmony$SigningInput;Lwallet/core/jni/proto/Harmony$TransactionMessage;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$SigningInput;->setTransactionMessage(Lwallet/core/jni/proto/Harmony$TransactionMessage;)V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Harmony$SigningInput;Lwallet/core/jni/proto/Harmony$TransactionMessage;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$SigningInput;->mergeTransactionMessage(Lwallet/core/jni/proto/Harmony$TransactionMessage;)V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/Harmony$SigningInput;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$SigningInput;->clearTransactionMessage()V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Harmony$SigningInput;Lwallet/core/jni/proto/Harmony$StakingMessage;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$SigningInput;->setStakingMessage(Lwallet/core/jni/proto/Harmony$StakingMessage;)V

    return-void
.end method

.method private clearChainId()V
    .locals 1

    .line 154
    invoke-static {}, Lwallet/core/jni/proto/Harmony$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$SigningInput;->getChainId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->chainId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearMessageOneof()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneof_:Ljava/lang/Object;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 193
    invoke-static {}, Lwallet/core/jni/proto/Harmony$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearStakingMessage()V
    .locals 2

    .line 290
    iget v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 291
    iput v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTransactionMessage()V
    .locals 2

    .line 240
    iget v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 241
    iput v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Harmony$SigningInput;
    .locals 1

    .line 653
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningInput;

    return-object v0
.end method

.method private mergeStakingMessage(Lwallet/core/jni/proto/Harmony$StakingMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 276
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    iget v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 278
    invoke-static {}, Lwallet/core/jni/proto/Harmony$StakingMessage;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$StakingMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 279
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->newBuilder(Lwallet/core/jni/proto/Harmony$StakingMessage;)Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;

    move-result-object v0

    .line 280
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 282
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 284
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method private mergeTransactionMessage(Lwallet/core/jni/proto/Harmony$TransactionMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 226
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    iget v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 228
    invoke-static {}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$TransactionMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 229
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->newBuilder(Lwallet/core/jni/proto/Harmony$TransactionMessage;)Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;

    move-result-object v0

    .line 230
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 232
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 234
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Harmony$SigningInput$Builder;
    .locals 1

    .line 371
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Harmony$SigningInput;)Lwallet/core/jni/proto/Harmony$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 374
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Harmony$SigningInput;
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

    .line 348
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$SigningInput;
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

    .line 354
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$SigningInput;
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

    .line 312
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$SigningInput;
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

    .line 319
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Harmony$SigningInput;
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

    .line 359
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$SigningInput;
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

    .line 366
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Harmony$SigningInput;
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

    .line 336
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$SigningInput;
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

    .line 343
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Harmony$SigningInput;
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

    .line 299
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$SigningInput;
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

    .line 306
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Harmony$SigningInput;
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

    .line 324
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$SigningInput;
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

    .line 331
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Harmony$SigningInput;",
            ">;"
        }
    .end annotation

    .line 659
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setChainId(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->chainId_:Lcom/google/protobuf/ByteString;

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

    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setStakingMessage(Lwallet/core/jni/proto/Harmony$StakingMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 268
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 270
    iput p1, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method private setTransactionMessage(Lwallet/core/jni/proto/Harmony$TransactionMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 218
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 220
    iput p1, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneofCase_:I

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

    .line 590
    sget-object p2, Lwallet/core/jni/proto/Harmony$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 637
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 631
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 616
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Harmony$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 618
    const-class p2, Lwallet/core/jni/proto/Harmony$SigningInput;

    monitor-enter p2

    .line 619
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Harmony$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 621
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Harmony$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 624
    sput-object p1, Lwallet/core/jni/proto/Harmony$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 626
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

    .line 613
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Harmony$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningInput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "messageOneof_"

    aput-object v0, p1, p3

    const-string p3, "messageOneofCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "chainId_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 598
    const-class p3, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lwallet/core/jni/proto/Harmony$StakingMessage;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\n\u0002\n\u0003<\u0000\u0004<\u0000"

    .line 609
    sget-object p3, Lwallet/core/jni/proto/Harmony$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 595
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Harmony$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Harmony$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Harmony$1;)V

    return-object p1

    .line 592
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Harmony$SigningInput;-><init>()V

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

.method public getChainId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 130
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->chainId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMessageOneofCase()Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;
    .locals 1

    .line 109
    iget v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneofCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;->forNumber(I)Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 169
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStakingMessage()Lwallet/core/jni/proto/Harmony$StakingMessage;
    .locals 2

    .line 259
    iget v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 260
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    return-object v0

    .line 262
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Harmony$StakingMessage;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$StakingMessage;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionMessage()Lwallet/core/jni/proto/Harmony$TransactionMessage;
    .locals 2

    .line 209
    iget v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    return-object v0

    .line 212
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Harmony$TransactionMessage;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$TransactionMessage;

    move-result-object v0

    return-object v0
.end method

.method public hasStakingMessage()Z
    .locals 2

    .line 252
    iget v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransactionMessage()Z
    .locals 2

    .line 202
    iget v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
