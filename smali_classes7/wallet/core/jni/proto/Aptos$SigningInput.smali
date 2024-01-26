.class public final Lwallet/core/jni/proto/Aptos$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Aptos.java"

# interfaces
.implements Lwallet/core/jni/proto/Aptos$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Aptos$SigningInput$Builder;,
        Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Aptos$SigningInput;",
        "Lwallet/core/jni/proto/Aptos$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aptos$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final ANY_ENCODED_FIELD_NUMBER:I = 0x8

.field public static final CHAIN_ID_FIELD_NUMBER:I = 0x6

.field public static final CREATE_ACCOUNT_FIELD_NUMBER:I = 0xb

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningInput;

.field public static final EXPIRATION_TIMESTAMP_SECS_FIELD_NUMBER:I = 0x5

.field public static final GAS_UNIT_PRICE_FIELD_NUMBER:I = 0x4

.field public static final MAX_GAS_AMOUNT_FIELD_NUMBER:I = 0x3

.field public static final NFT_MESSAGE_FIELD_NUMBER:I = 0xc

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Aptos$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x7

.field public static final REGISTER_TOKEN_FIELD_NUMBER:I = 0xd

.field public static final SENDER_FIELD_NUMBER:I = 0x1

.field public static final SEQUENCE_NUMBER_FIELD_NUMBER:I = 0x2

.field public static final TOKEN_TRANSFER_FIELD_NUMBER:I = 0xa

.field public static final TRANSFER_FIELD_NUMBER:I = 0x9


# instance fields
.field private anyEncoded_:Ljava/lang/String;

.field private chainId_:I

.field private expirationTimestampSecs_:J

.field private gasUnitPrice_:J

.field private maxGasAmount_:J

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private sender_:Ljava/lang/String;

.field private sequenceNumber_:J

.field private transactionPayloadCase_:I

.field private transactionPayload_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7443
    new-instance v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;-><init>()V

    .line 7446
    sput-object v0, Lwallet/core/jni/proto/Aptos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningInput;

    .line 7447
    const-class v1, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5976
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 5981
    iput v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const-string v0, ""

    .line 5977
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->sender_:Ljava/lang/String;

    .line 5978
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    .line 5979
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->anyEncoded_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10000()Lwallet/core/jni/proto/Aptos$SigningInput;
    .locals 1

    .line 5971
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningInput;

    return-object v0
.end method

.method static synthetic access$10100(Lwallet/core/jni/proto/Aptos$SigningInput;)V
    .locals 0

    .line 5971
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$SigningInput;->clearTransactionPayload()V

    return-void
.end method

.method static synthetic access$10200(Lwallet/core/jni/proto/Aptos$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 5971
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->setSender(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10300(Lwallet/core/jni/proto/Aptos$SigningInput;)V
    .locals 0

    .line 5971
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$SigningInput;->clearSender()V

    return-void
.end method

.method static synthetic access$10400(Lwallet/core/jni/proto/Aptos$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5971
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->setSenderBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10500(Lwallet/core/jni/proto/Aptos$SigningInput;J)V
    .locals 0

    .line 5971
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Aptos$SigningInput;->setSequenceNumber(J)V

    return-void
.end method

.method static synthetic access$10600(Lwallet/core/jni/proto/Aptos$SigningInput;)V
    .locals 0

    .line 5971
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$SigningInput;->clearSequenceNumber()V

    return-void
.end method

.method static synthetic access$10700(Lwallet/core/jni/proto/Aptos$SigningInput;J)V
    .locals 0

    .line 5971
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Aptos$SigningInput;->setMaxGasAmount(J)V

    return-void
.end method

.method static synthetic access$10800(Lwallet/core/jni/proto/Aptos$SigningInput;)V
    .locals 0

    .line 5971
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$SigningInput;->clearMaxGasAmount()V

    return-void
.end method

.method static synthetic access$10900(Lwallet/core/jni/proto/Aptos$SigningInput;J)V
    .locals 0

    .line 5971
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Aptos$SigningInput;->setGasUnitPrice(J)V

    return-void
.end method

.method static synthetic access$11000(Lwallet/core/jni/proto/Aptos$SigningInput;)V
    .locals 0

    .line 5971
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$SigningInput;->clearGasUnitPrice()V

    return-void
.end method

.method static synthetic access$11100(Lwallet/core/jni/proto/Aptos$SigningInput;J)V
    .locals 0

    .line 5971
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Aptos$SigningInput;->setExpirationTimestampSecs(J)V

    return-void
.end method

.method static synthetic access$11200(Lwallet/core/jni/proto/Aptos$SigningInput;)V
    .locals 0

    .line 5971
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$SigningInput;->clearExpirationTimestampSecs()V

    return-void
.end method

.method static synthetic access$11300(Lwallet/core/jni/proto/Aptos$SigningInput;I)V
    .locals 0

    .line 5971
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->setChainId(I)V

    return-void
.end method

.method static synthetic access$11400(Lwallet/core/jni/proto/Aptos$SigningInput;)V
    .locals 0

    .line 5971
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$SigningInput;->clearChainId()V

    return-void
.end method

.method static synthetic access$11500(Lwallet/core/jni/proto/Aptos$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5971
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11600(Lwallet/core/jni/proto/Aptos$SigningInput;)V
    .locals 0

    .line 5971
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$11700(Lwallet/core/jni/proto/Aptos$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 5971
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->setAnyEncoded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11800(Lwallet/core/jni/proto/Aptos$SigningInput;)V
    .locals 0

    .line 5971
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$SigningInput;->clearAnyEncoded()V

    return-void
.end method

.method static synthetic access$11900(Lwallet/core/jni/proto/Aptos$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5971
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->setAnyEncodedBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12000(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$TransferMessage;)V
    .locals 0

    .line 5971
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->setTransfer(Lwallet/core/jni/proto/Aptos$TransferMessage;)V

    return-void
.end method

.method static synthetic access$12100(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$TransferMessage;)V
    .locals 0

    .line 5971
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->mergeTransfer(Lwallet/core/jni/proto/Aptos$TransferMessage;)V

    return-void
.end method

.method static synthetic access$12200(Lwallet/core/jni/proto/Aptos$SigningInput;)V
    .locals 0

    .line 5971
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$SigningInput;->clearTransfer()V

    return-void
.end method

.method static synthetic access$12300(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$TokenTransferMessage;)V
    .locals 0

    .line 5971
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->setTokenTransfer(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;)V

    return-void
.end method

.method static synthetic access$12400(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$TokenTransferMessage;)V
    .locals 0

    .line 5971
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->mergeTokenTransfer(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;)V

    return-void
.end method

.method static synthetic access$12500(Lwallet/core/jni/proto/Aptos$SigningInput;)V
    .locals 0

    .line 5971
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$SigningInput;->clearTokenTransfer()V

    return-void
.end method

.method static synthetic access$12600(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$CreateAccountMessage;)V
    .locals 0

    .line 5971
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->setCreateAccount(Lwallet/core/jni/proto/Aptos$CreateAccountMessage;)V

    return-void
.end method

.method static synthetic access$12700(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$CreateAccountMessage;)V
    .locals 0

    .line 5971
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->mergeCreateAccount(Lwallet/core/jni/proto/Aptos$CreateAccountMessage;)V

    return-void
.end method

.method static synthetic access$12800(Lwallet/core/jni/proto/Aptos$SigningInput;)V
    .locals 0

    .line 5971
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$SigningInput;->clearCreateAccount()V

    return-void
.end method

.method static synthetic access$12900(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$NftMessage;)V
    .locals 0

    .line 5971
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->setNftMessage(Lwallet/core/jni/proto/Aptos$NftMessage;)V

    return-void
.end method

.method static synthetic access$13000(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$NftMessage;)V
    .locals 0

    .line 5971
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->mergeNftMessage(Lwallet/core/jni/proto/Aptos$NftMessage;)V

    return-void
.end method

.method static synthetic access$13100(Lwallet/core/jni/proto/Aptos$SigningInput;)V
    .locals 0

    .line 5971
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$SigningInput;->clearNftMessage()V

    return-void
.end method

.method static synthetic access$13200(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;)V
    .locals 0

    .line 5971
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->setRegisterToken(Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;)V

    return-void
.end method

.method static synthetic access$13300(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;)V
    .locals 0

    .line 5971
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->mergeRegisterToken(Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;)V

    return-void
.end method

.method static synthetic access$13400(Lwallet/core/jni/proto/Aptos$SigningInput;)V
    .locals 0

    .line 5971
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$SigningInput;->clearRegisterToken()V

    return-void
.end method

.method private clearAnyEncoded()V
    .locals 1

    .line 6376
    invoke-static {}, Lwallet/core/jni/proto/Aptos$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->getAnyEncoded()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->anyEncoded_:Ljava/lang/String;

    return-void
.end method

.method private clearChainId()V
    .locals 1

    const/4 v0, 0x0

    .line 6284
    iput v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->chainId_:I

    return-void
.end method

.method private clearCreateAccount()V
    .locals 2

    .line 6537
    iget v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 6538
    iput v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/4 v0, 0x0

    .line 6539
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearExpirationTimestampSecs()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 6246
    iput-wide v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->expirationTimestampSecs_:J

    return-void
.end method

.method private clearGasUnitPrice()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 6208
    iput-wide v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->gasUnitPrice_:J

    return-void
.end method

.method private clearMaxGasAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 6170
    iput-wide v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->maxGasAmount_:J

    return-void
.end method

.method private clearNftMessage()V
    .locals 2

    .line 6587
    iget v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 6588
    iput v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/4 v0, 0x0

    .line 6589
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 6323
    invoke-static {}, Lwallet/core/jni/proto/Aptos$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearRegisterToken()V
    .locals 2

    .line 6637
    iget v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 6638
    iput v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/4 v0, 0x0

    .line 6639
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearSender()V
    .locals 1

    .line 6080
    invoke-static {}, Lwallet/core/jni/proto/Aptos$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->getSender()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->sender_:Ljava/lang/String;

    return-void
.end method

.method private clearSequenceNumber()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 6132
    iput-wide v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->sequenceNumber_:J

    return-void
.end method

.method private clearTokenTransfer()V
    .locals 2

    .line 6487
    iget v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 6488
    iput v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/4 v0, 0x0

    .line 6489
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTransactionPayload()V
    .locals 1

    const/4 v0, 0x0

    .line 6026
    iput v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/4 v0, 0x0

    .line 6027
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    return-void
.end method

.method private clearTransfer()V
    .locals 2

    .line 6437
    iget v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 6438
    iput v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/4 v0, 0x0

    .line 6439
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Aptos$SigningInput;
    .locals 1

    .line 7452
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningInput;

    return-object v0
.end method

.method private mergeCreateAccount(Lwallet/core/jni/proto/Aptos$CreateAccountMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6523
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6524
    iget v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    .line 6525
    invoke-static {}, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 6526
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->newBuilder(Lwallet/core/jni/proto/Aptos$CreateAccountMessage;)Lwallet/core/jni/proto/Aptos$CreateAccountMessage$Builder;

    move-result-object v0

    .line 6527
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$CreateAccountMessage$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    goto :goto_0

    .line 6529
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    .line 6531
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    return-void
.end method

.method private mergeNftMessage(Lwallet/core/jni/proto/Aptos$NftMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6573
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6574
    iget v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    .line 6575
    invoke-static {}, Lwallet/core/jni/proto/Aptos$NftMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$NftMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 6576
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$NftMessage;->newBuilder(Lwallet/core/jni/proto/Aptos$NftMessage;)Lwallet/core/jni/proto/Aptos$NftMessage$Builder;

    move-result-object v0

    .line 6577
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$NftMessage$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    goto :goto_0

    .line 6579
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    .line 6581
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    return-void
.end method

.method private mergeRegisterToken(Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6623
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6624
    iget v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    .line 6625
    invoke-static {}, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 6626
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->newBuilder(Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;)Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage$Builder;

    move-result-object v0

    .line 6627
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    goto :goto_0

    .line 6629
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    .line 6631
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    return-void
.end method

.method private mergeTokenTransfer(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6473
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6474
    iget v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    .line 6475
    invoke-static {}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 6476
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->newBuilder(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;)Lwallet/core/jni/proto/Aptos$TokenTransferMessage$Builder;

    move-result-object v0

    .line 6477
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$TokenTransferMessage$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    goto :goto_0

    .line 6479
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    .line 6481
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    return-void
.end method

.method private mergeTransfer(Lwallet/core/jni/proto/Aptos$TransferMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6423
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6424
    iget v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    .line 6425
    invoke-static {}, Lwallet/core/jni/proto/Aptos$TransferMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$TransferMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 6426
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$TransferMessage;->newBuilder(Lwallet/core/jni/proto/Aptos$TransferMessage;)Lwallet/core/jni/proto/Aptos$TransferMessage$Builder;

    move-result-object v0

    .line 6427
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$TransferMessage$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    goto :goto_0

    .line 6429
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    .line 6431
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1

    .line 6718
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Aptos$SigningInput;)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 6721
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Aptos$SigningInput;
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

    .line 6695
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$SigningInput;
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

    .line 6701
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$SigningInput;
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

    .line 6659
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$SigningInput;
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

    .line 6666
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Aptos$SigningInput;
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

    .line 6706
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$SigningInput;
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

    .line 6713
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Aptos$SigningInput;
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

    .line 6683
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$SigningInput;
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

    .line 6690
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Aptos$SigningInput;
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

    .line 6646
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$SigningInput;
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

    .line 6653
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Aptos$SigningInput;
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

    .line 6671
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$SigningInput;
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

    .line 6678
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Aptos$SigningInput;",
            ">;"
        }
    .end annotation

    .line 7458
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAnyEncoded(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6363
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6365
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->anyEncoded_:Ljava/lang/String;

    return-void
.end method

.method private setAnyEncodedBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6388
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 6389
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->anyEncoded_:Ljava/lang/String;

    return-void
.end method

.method private setChainId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6273
    iput p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->chainId_:I

    return-void
.end method

.method private setCreateAccount(Lwallet/core/jni/proto/Aptos$CreateAccountMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6515
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6516
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    const/16 p1, 0xb

    .line 6517
    iput p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    return-void
.end method

.method private setExpirationTimestampSecs(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6235
    iput-wide p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->expirationTimestampSecs_:J

    return-void
.end method

.method private setGasUnitPrice(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6197
    iput-wide p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->gasUnitPrice_:J

    return-void
.end method

.method private setMaxGasAmount(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6159
    iput-wide p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->maxGasAmount_:J

    return-void
.end method

.method private setNftMessage(Lwallet/core/jni/proto/Aptos$NftMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6565
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6566
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    const/16 p1, 0xc

    .line 6567
    iput p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

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

    .line 6310
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6312
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setRegisterToken(Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6615
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6616
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    const/16 p1, 0xd

    .line 6617
    iput p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    return-void
.end method

.method private setSender(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6067
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6069
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->sender_:Ljava/lang/String;

    return-void
.end method

.method private setSenderBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6092
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 6093
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->sender_:Ljava/lang/String;

    return-void
.end method

.method private setSequenceNumber(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6121
    iput-wide p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->sequenceNumber_:J

    return-void
.end method

.method private setTokenTransfer(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6465
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6466
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    const/16 p1, 0xa

    .line 6467
    iput p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    return-void
.end method

.method private setTransfer(Lwallet/core/jni/proto/Aptos$TransferMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6415
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6416
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    const/16 p1, 0x9

    .line 6417
    iput p1, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

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

    .line 7379
    sget-object p2, Lwallet/core/jni/proto/Aptos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7436
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 7430
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 7415
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Aptos$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 7417
    const-class p2, Lwallet/core/jni/proto/Aptos$SigningInput;

    monitor-enter p2

    .line 7418
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Aptos$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7420
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Aptos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7423
    sput-object p1, Lwallet/core/jni/proto/Aptos$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 7425
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

    .line 7412
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Aptos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningInput;

    return-object p1

    :pswitch_4
    const/16 p1, 0xf

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "transactionPayload_"

    aput-object v0, p1, p3

    const-string p3, "transactionPayloadCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "sender_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "sequenceNumber_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "maxGasAmount_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "gasUnitPrice_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "expirationTimestampSecs_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "chainId_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "anyEncoded_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    .line 7387
    const-class p3, Lwallet/core/jni/proto/Aptos$TransferMessage;

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-class p3, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-class p3, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-class p3, Lwallet/core/jni/proto/Aptos$NftMessage;

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-class p3, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    aput-object p3, p1, p2

    const-string p2, "\u0000\r\u0001\u0000\u0001\r\r\u0000\u0000\u0000\u0001\u0208\u0002\u0002\u0003\u0003\u0004\u0003\u0005\u0003\u0006\u000b\u0007\n\u0008\u0208\t<\u0000\n<\u0000\u000b<\u0000\u000c<\u0000\r<\u0000"

    .line 7408
    sget-object p3, Lwallet/core/jni/proto/Aptos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7384
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Aptos$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Aptos$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Aptos$1;)V

    return-object p1

    .line 7381
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Aptos$SigningInput;-><init>()V

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

.method public getAnyEncoded()Ljava/lang/String;
    .locals 1

    .line 6338
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->anyEncoded_:Ljava/lang/String;

    return-object v0
.end method

.method public getAnyEncodedBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6351
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->anyEncoded_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getChainId()I
    .locals 1

    .line 6261
    iget v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->chainId_:I

    return v0
.end method

.method public getCreateAccount()Lwallet/core/jni/proto/Aptos$CreateAccountMessage;
    .locals 2

    .line 6506
    iget v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 6507
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    return-object v0

    .line 6509
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationTimestampSecs()J
    .locals 2

    .line 6223
    iget-wide v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->expirationTimestampSecs_:J

    return-wide v0
.end method

.method public getGasUnitPrice()J
    .locals 2

    .line 6185
    iget-wide v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->gasUnitPrice_:J

    return-wide v0
.end method

.method public getMaxGasAmount()J
    .locals 2

    .line 6147
    iget-wide v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->maxGasAmount_:J

    return-wide v0
.end method

.method public getNftMessage()Lwallet/core/jni/proto/Aptos$NftMessage;
    .locals 2

    .line 6556
    iget v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 6557
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Aptos$NftMessage;

    return-object v0

    .line 6559
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Aptos$NftMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$NftMessage;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6299
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRegisterToken()Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;
    .locals 2

    .line 6606
    iget v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 6607
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    return-object v0

    .line 6609
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    move-result-object v0

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .line 6042
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->sender_:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6055
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->sender_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSequenceNumber()J
    .locals 2

    .line 6109
    iget-wide v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->sequenceNumber_:J

    return-wide v0
.end method

.method public getTokenTransfer()Lwallet/core/jni/proto/Aptos$TokenTransferMessage;
    .locals 2

    .line 6456
    iget v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 6457
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    return-object v0

    .line 6459
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionPayloadCase()Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;
    .locals 1

    .line 6021
    iget v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;->forNumber(I)Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    move-result-object v0

    return-object v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/Aptos$TransferMessage;
    .locals 2

    .line 6406
    iget v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 6407
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TransferMessage;

    return-object v0

    .line 6409
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Aptos$TransferMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$TransferMessage;

    move-result-object v0

    return-object v0
.end method

.method public hasCreateAccount()Z
    .locals 2

    .line 6499
    iget v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNftMessage()Z
    .locals 2

    .line 6549
    iget v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRegisterToken()Z
    .locals 2

    .line 6599
    iget v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTokenTransfer()Z
    .locals 2

    .line 6449
    iget v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransfer()Z
    .locals 2

    .line 6399
    iget v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput;->transactionPayloadCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
