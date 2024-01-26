.class public final Lwallet/core/jni/proto/Stellar$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Stellar.java"

# interfaces
.implements Lwallet/core/jni/proto/Stellar$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Stellar$SigningInput$Builder;,
        Lwallet/core/jni/proto/Stellar$SigningInput$MemoTypeOneofCase;,
        Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Stellar$SigningInput;",
        "Lwallet/core/jni/proto/Stellar$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Stellar$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACCOUNT_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$SigningInput;

.field public static final FEE_FIELD_NUMBER:I = 0x1

.field public static final MEMO_HASH_FIELD_NUMBER:I = 0xc

.field public static final MEMO_ID_FIELD_NUMBER:I = 0xb

.field public static final MEMO_RETURN_HASH_FIELD_NUMBER:I = 0xd

.field public static final MEMO_TEXT_FIELD_NUMBER:I = 0xa

.field public static final MEMO_VOID_FIELD_NUMBER:I = 0x9

.field public static final OP_CHANGE_TRUST_FIELD_NUMBER:I = 0x8

.field public static final OP_CLAIM_CLAIMABLE_BALANCE_FIELD_NUMBER:I = 0xf

.field public static final OP_CREATE_ACCOUNT_FIELD_NUMBER:I = 0x6

.field public static final OP_CREATE_CLAIMABLE_BALANCE_FIELD_NUMBER:I = 0xe

.field public static final OP_PAYMENT_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Stellar$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PASSPHRASE_FIELD_NUMBER:I = 0x5

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x4

.field public static final SEQUENCE_FIELD_NUMBER:I = 0x2


# instance fields
.field private account_:Ljava/lang/String;

.field private fee_:I

.field private memoTypeOneofCase_:I

.field private memoTypeOneof_:Ljava/lang/Object;

.field private operationOneofCase_:I

.field private operationOneof_:Ljava/lang/Object;

.field private passphrase_:Ljava/lang/String;

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private sequence_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6588
    new-instance v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;-><init>()V

    .line 6591
    sput-object v0, Lwallet/core/jni/proto/Stellar$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$SigningInput;

    .line 6592
    const-class v1, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 4800
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 4805
    iput v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    .line 4854
    iput v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const-string v0, ""

    .line 4801
    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->account_:Ljava/lang/String;

    .line 4802
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    .line 4803
    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->passphrase_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10000(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->mergeOpClaimClaimableBalance(Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;)V

    return-void
.end method

.method static synthetic access$10100(Lwallet/core/jni/proto/Stellar$SigningInput;)V
    .locals 0

    .line 4795
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$SigningInput;->clearOpClaimClaimableBalance()V

    return-void
.end method

.method static synthetic access$10200(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoVoid;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->setMemoVoid(Lwallet/core/jni/proto/Stellar$MemoVoid;)V

    return-void
.end method

.method static synthetic access$10300(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoVoid;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->mergeMemoVoid(Lwallet/core/jni/proto/Stellar$MemoVoid;)V

    return-void
.end method

.method static synthetic access$10400(Lwallet/core/jni/proto/Stellar$SigningInput;)V
    .locals 0

    .line 4795
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$SigningInput;->clearMemoVoid()V

    return-void
.end method

.method static synthetic access$10500(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoText;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->setMemoText(Lwallet/core/jni/proto/Stellar$MemoText;)V

    return-void
.end method

.method static synthetic access$10600(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoText;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->mergeMemoText(Lwallet/core/jni/proto/Stellar$MemoText;)V

    return-void
.end method

.method static synthetic access$10700(Lwallet/core/jni/proto/Stellar$SigningInput;)V
    .locals 0

    .line 4795
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$SigningInput;->clearMemoText()V

    return-void
.end method

.method static synthetic access$10800(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoId;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->setMemoId(Lwallet/core/jni/proto/Stellar$MemoId;)V

    return-void
.end method

.method static synthetic access$10900(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoId;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->mergeMemoId(Lwallet/core/jni/proto/Stellar$MemoId;)V

    return-void
.end method

.method static synthetic access$11000(Lwallet/core/jni/proto/Stellar$SigningInput;)V
    .locals 0

    .line 4795
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$SigningInput;->clearMemoId()V

    return-void
.end method

.method static synthetic access$11100(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoHash;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->setMemoHash(Lwallet/core/jni/proto/Stellar$MemoHash;)V

    return-void
.end method

.method static synthetic access$11200(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoHash;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->mergeMemoHash(Lwallet/core/jni/proto/Stellar$MemoHash;)V

    return-void
.end method

.method static synthetic access$11300(Lwallet/core/jni/proto/Stellar$SigningInput;)V
    .locals 0

    .line 4795
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$SigningInput;->clearMemoHash()V

    return-void
.end method

.method static synthetic access$11400(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoHash;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->setMemoReturnHash(Lwallet/core/jni/proto/Stellar$MemoHash;)V

    return-void
.end method

.method static synthetic access$11500(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoHash;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->mergeMemoReturnHash(Lwallet/core/jni/proto/Stellar$MemoHash;)V

    return-void
.end method

.method static synthetic access$11600(Lwallet/core/jni/proto/Stellar$SigningInput;)V
    .locals 0

    .line 4795
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$SigningInput;->clearMemoReturnHash()V

    return-void
.end method

.method static synthetic access$7200()Lwallet/core/jni/proto/Stellar$SigningInput;
    .locals 1

    .line 4795
    sget-object v0, Lwallet/core/jni/proto/Stellar$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$SigningInput;

    return-object v0
.end method

.method static synthetic access$7300(Lwallet/core/jni/proto/Stellar$SigningInput;)V
    .locals 0

    .line 4795
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$SigningInput;->clearOperationOneof()V

    return-void
.end method

.method static synthetic access$7400(Lwallet/core/jni/proto/Stellar$SigningInput;)V
    .locals 0

    .line 4795
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$SigningInput;->clearMemoTypeOneof()V

    return-void
.end method

.method static synthetic access$7500(Lwallet/core/jni/proto/Stellar$SigningInput;I)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->setFee(I)V

    return-void
.end method

.method static synthetic access$7600(Lwallet/core/jni/proto/Stellar$SigningInput;)V
    .locals 0

    .line 4795
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$SigningInput;->clearFee()V

    return-void
.end method

.method static synthetic access$7700(Lwallet/core/jni/proto/Stellar$SigningInput;J)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Stellar$SigningInput;->setSequence(J)V

    return-void
.end method

.method static synthetic access$7800(Lwallet/core/jni/proto/Stellar$SigningInput;)V
    .locals 0

    .line 4795
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$SigningInput;->clearSequence()V

    return-void
.end method

.method static synthetic access$7900(Lwallet/core/jni/proto/Stellar$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->setAccount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8000(Lwallet/core/jni/proto/Stellar$SigningInput;)V
    .locals 0

    .line 4795
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$SigningInput;->clearAccount()V

    return-void
.end method

.method static synthetic access$8100(Lwallet/core/jni/proto/Stellar$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->setAccountBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8200(Lwallet/core/jni/proto/Stellar$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8300(Lwallet/core/jni/proto/Stellar$SigningInput;)V
    .locals 0

    .line 4795
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$8400(Lwallet/core/jni/proto/Stellar$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->setPassphrase(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8500(Lwallet/core/jni/proto/Stellar$SigningInput;)V
    .locals 0

    .line 4795
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$SigningInput;->clearPassphrase()V

    return-void
.end method

.method static synthetic access$8600(Lwallet/core/jni/proto/Stellar$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->setPassphraseBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8700(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationCreateAccount;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->setOpCreateAccount(Lwallet/core/jni/proto/Stellar$OperationCreateAccount;)V

    return-void
.end method

.method static synthetic access$8800(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationCreateAccount;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->mergeOpCreateAccount(Lwallet/core/jni/proto/Stellar$OperationCreateAccount;)V

    return-void
.end method

.method static synthetic access$8900(Lwallet/core/jni/proto/Stellar$SigningInput;)V
    .locals 0

    .line 4795
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$SigningInput;->clearOpCreateAccount()V

    return-void
.end method

.method static synthetic access$9000(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationPayment;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->setOpPayment(Lwallet/core/jni/proto/Stellar$OperationPayment;)V

    return-void
.end method

.method static synthetic access$9100(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationPayment;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->mergeOpPayment(Lwallet/core/jni/proto/Stellar$OperationPayment;)V

    return-void
.end method

.method static synthetic access$9200(Lwallet/core/jni/proto/Stellar$SigningInput;)V
    .locals 0

    .line 4795
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$SigningInput;->clearOpPayment()V

    return-void
.end method

.method static synthetic access$9300(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationChangeTrust;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->setOpChangeTrust(Lwallet/core/jni/proto/Stellar$OperationChangeTrust;)V

    return-void
.end method

.method static synthetic access$9400(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationChangeTrust;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->mergeOpChangeTrust(Lwallet/core/jni/proto/Stellar$OperationChangeTrust;)V

    return-void
.end method

.method static synthetic access$9500(Lwallet/core/jni/proto/Stellar$SigningInput;)V
    .locals 0

    .line 4795
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$SigningInput;->clearOpChangeTrust()V

    return-void
.end method

.method static synthetic access$9600(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->setOpCreateClaimableBalance(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;)V

    return-void
.end method

.method static synthetic access$9700(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->mergeOpCreateClaimableBalance(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;)V

    return-void
.end method

.method static synthetic access$9800(Lwallet/core/jni/proto/Stellar$SigningInput;)V
    .locals 0

    .line 4795
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$SigningInput;->clearOpCreateClaimableBalance()V

    return-void
.end method

.method static synthetic access$9900(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;)V
    .locals 0

    .line 4795
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->setOpClaimClaimableBalance(Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;)V

    return-void
.end method

.method private clearAccount()V
    .locals 1

    .line 5029
    invoke-static {}, Lwallet/core/jni/proto/Stellar$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->account_:Ljava/lang/String;

    return-void
.end method

.method private clearFee()V
    .locals 1

    const/4 v0, 0x0

    .line 4938
    iput v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->fee_:I

    return-void
.end method

.method private clearMemoHash()V
    .locals 2

    .line 5596
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5597
    iput v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/4 v0, 0x0

    .line 5598
    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMemoId()V
    .locals 2

    .line 5546
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5547
    iput v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/4 v0, 0x0

    .line 5548
    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMemoReturnHash()V
    .locals 2

    .line 5646
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5647
    iput v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/4 v0, 0x0

    .line 5648
    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMemoText()V
    .locals 2

    .line 5496
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5497
    iput v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/4 v0, 0x0

    .line 5498
    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMemoTypeOneof()V
    .locals 1

    const/4 v0, 0x0

    .line 4899
    iput v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/4 v0, 0x0

    .line 4900
    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    return-void
.end method

.method private clearMemoVoid()V
    .locals 2

    .line 5446
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5447
    iput v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/4 v0, 0x0

    .line 5448
    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOpChangeTrust()V
    .locals 2

    .line 5296
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5297
    iput v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/4 v0, 0x0

    .line 5298
    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOpClaimClaimableBalance()V
    .locals 2

    .line 5396
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5397
    iput v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/4 v0, 0x0

    .line 5398
    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOpCreateAccount()V
    .locals 2

    .line 5196
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5197
    iput v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/4 v0, 0x0

    .line 5198
    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOpCreateClaimableBalance()V
    .locals 2

    .line 5346
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5347
    iput v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/4 v0, 0x0

    .line 5348
    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOpPayment()V
    .locals 2

    .line 5246
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5247
    iput v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/4 v0, 0x0

    .line 5248
    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOperationOneof()V
    .locals 1

    const/4 v0, 0x0

    .line 4850
    iput v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/4 v0, 0x0

    .line 4851
    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    return-void
.end method

.method private clearPassphrase()V
    .locals 1

    .line 5135
    invoke-static {}, Lwallet/core/jni/proto/Stellar$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->passphrase_:Ljava/lang/String;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 5082
    invoke-static {}, Lwallet/core/jni/proto/Stellar$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSequence()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4976
    iput-wide v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->sequence_:J

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Stellar$SigningInput;
    .locals 1

    .line 6597
    sget-object v0, Lwallet/core/jni/proto/Stellar$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$SigningInput;

    return-object v0
.end method

.method private mergeMemoHash(Lwallet/core/jni/proto/Stellar$MemoHash;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5582
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5583
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    .line 5584
    invoke-static {}, Lwallet/core/jni/proto/Stellar$MemoHash;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$MemoHash;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5585
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$MemoHash;->newBuilder(Lwallet/core/jni/proto/Stellar$MemoHash;)Lwallet/core/jni/proto/Stellar$MemoHash$Builder;

    move-result-object v0

    .line 5586
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$MemoHash$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 5588
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    .line 5590
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    return-void
.end method

.method private mergeMemoId(Lwallet/core/jni/proto/Stellar$MemoId;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5532
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5533
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    .line 5534
    invoke-static {}, Lwallet/core/jni/proto/Stellar$MemoId;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$MemoId;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5535
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$MemoId;->newBuilder(Lwallet/core/jni/proto/Stellar$MemoId;)Lwallet/core/jni/proto/Stellar$MemoId$Builder;

    move-result-object v0

    .line 5536
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$MemoId$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 5538
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    .line 5540
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    return-void
.end method

.method private mergeMemoReturnHash(Lwallet/core/jni/proto/Stellar$MemoHash;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5632
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5633
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    .line 5634
    invoke-static {}, Lwallet/core/jni/proto/Stellar$MemoHash;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$MemoHash;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5635
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$MemoHash;->newBuilder(Lwallet/core/jni/proto/Stellar$MemoHash;)Lwallet/core/jni/proto/Stellar$MemoHash$Builder;

    move-result-object v0

    .line 5636
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$MemoHash$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 5638
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    .line 5640
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    return-void
.end method

.method private mergeMemoText(Lwallet/core/jni/proto/Stellar$MemoText;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5482
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5483
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    .line 5484
    invoke-static {}, Lwallet/core/jni/proto/Stellar$MemoText;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$MemoText;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5485
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoText;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$MemoText;->newBuilder(Lwallet/core/jni/proto/Stellar$MemoText;)Lwallet/core/jni/proto/Stellar$MemoText$Builder;

    move-result-object v0

    .line 5486
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$MemoText$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 5488
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    .line 5490
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    return-void
.end method

.method private mergeMemoVoid(Lwallet/core/jni/proto/Stellar$MemoVoid;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5432
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5433
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    .line 5434
    invoke-static {}, Lwallet/core/jni/proto/Stellar$MemoVoid;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$MemoVoid;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5435
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoVoid;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$MemoVoid;->newBuilder(Lwallet/core/jni/proto/Stellar$MemoVoid;)Lwallet/core/jni/proto/Stellar$MemoVoid$Builder;

    move-result-object v0

    .line 5436
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$MemoVoid$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 5438
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    .line 5440
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    return-void
.end method

.method private mergeOpChangeTrust(Lwallet/core/jni/proto/Stellar$OperationChangeTrust;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5282
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5283
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 5284
    invoke-static {}, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5285
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->newBuilder(Lwallet/core/jni/proto/Stellar$OperationChangeTrust;)Lwallet/core/jni/proto/Stellar$OperationChangeTrust$Builder;

    move-result-object v0

    .line 5286
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$OperationChangeTrust$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 5288
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 5290
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private mergeOpClaimClaimableBalance(Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5382
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5383
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 5384
    invoke-static {}, Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5385
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;->newBuilder(Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;)Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance$Builder;

    move-result-object v0

    .line 5386
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 5388
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 5390
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private mergeOpCreateAccount(Lwallet/core/jni/proto/Stellar$OperationCreateAccount;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5183
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 5184
    invoke-static {}, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$OperationCreateAccount;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5185
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;->newBuilder(Lwallet/core/jni/proto/Stellar$OperationCreateAccount;)Lwallet/core/jni/proto/Stellar$OperationCreateAccount$Builder;

    move-result-object v0

    .line 5186
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$OperationCreateAccount$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 5188
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 5190
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private mergeOpCreateClaimableBalance(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5332
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5333
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 5334
    invoke-static {}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5335
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->newBuilder(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;

    move-result-object v0

    .line 5336
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 5338
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 5340
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private mergeOpPayment(Lwallet/core/jni/proto/Stellar$OperationPayment;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5232
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5233
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 5234
    invoke-static {}, Lwallet/core/jni/proto/Stellar$OperationPayment;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$OperationPayment;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5235
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$OperationPayment;->newBuilder(Lwallet/core/jni/proto/Stellar$OperationPayment;)Lwallet/core/jni/proto/Stellar$OperationPayment$Builder;

    move-result-object v0

    .line 5236
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$OperationPayment$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 5238
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 5240
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1

    .line 5727
    sget-object v0, Lwallet/core/jni/proto/Stellar$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Stellar$SigningInput;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 5730
    sget-object v0, Lwallet/core/jni/proto/Stellar$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Stellar$SigningInput;
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

    .line 5704
    sget-object v0, Lwallet/core/jni/proto/Stellar$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$SigningInput;
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

    .line 5710
    sget-object v0, Lwallet/core/jni/proto/Stellar$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Stellar$SigningInput;
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

    .line 5668
    sget-object v0, Lwallet/core/jni/proto/Stellar$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$SigningInput;
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

    .line 5675
    sget-object v0, Lwallet/core/jni/proto/Stellar$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Stellar$SigningInput;
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

    .line 5715
    sget-object v0, Lwallet/core/jni/proto/Stellar$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$SigningInput;
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

    .line 5722
    sget-object v0, Lwallet/core/jni/proto/Stellar$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Stellar$SigningInput;
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

    .line 5692
    sget-object v0, Lwallet/core/jni/proto/Stellar$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$SigningInput;
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

    .line 5699
    sget-object v0, Lwallet/core/jni/proto/Stellar$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Stellar$SigningInput;
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

    .line 5655
    sget-object v0, Lwallet/core/jni/proto/Stellar$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$SigningInput;
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

    .line 5662
    sget-object v0, Lwallet/core/jni/proto/Stellar$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Stellar$SigningInput;
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

    .line 5680
    sget-object v0, Lwallet/core/jni/proto/Stellar$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$SigningInput;
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

    .line 5687
    sget-object v0, Lwallet/core/jni/proto/Stellar$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Stellar$SigningInput;",
            ">;"
        }
    .end annotation

    .line 6603
    sget-object v0, Lwallet/core/jni/proto/Stellar$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAccount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5016
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5018
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->account_:Ljava/lang/String;

    return-void
.end method

.method private setAccountBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5041
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5042
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->account_:Ljava/lang/String;

    return-void
.end method

.method private setFee(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4927
    iput p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->fee_:I

    return-void
.end method

.method private setMemoHash(Lwallet/core/jni/proto/Stellar$MemoHash;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5574
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5575
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    const/16 p1, 0xc

    .line 5576
    iput p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    return-void
.end method

.method private setMemoId(Lwallet/core/jni/proto/Stellar$MemoId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5524
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5525
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    const/16 p1, 0xb

    .line 5526
    iput p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    return-void
.end method

.method private setMemoReturnHash(Lwallet/core/jni/proto/Stellar$MemoHash;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5624
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5625
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    const/16 p1, 0xd

    .line 5626
    iput p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    return-void
.end method

.method private setMemoText(Lwallet/core/jni/proto/Stellar$MemoText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5474
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5475
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    const/16 p1, 0xa

    .line 5476
    iput p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    return-void
.end method

.method private setMemoVoid(Lwallet/core/jni/proto/Stellar$MemoVoid;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5424
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5425
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    const/16 p1, 0x9

    .line 5426
    iput p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    return-void
.end method

.method private setOpChangeTrust(Lwallet/core/jni/proto/Stellar$OperationChangeTrust;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5274
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5275
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 5276
    iput p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private setOpClaimClaimableBalance(Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5374
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5375
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    const/16 p1, 0xf

    .line 5376
    iput p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private setOpCreateAccount(Lwallet/core/jni/proto/Stellar$OperationCreateAccount;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5175
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 5176
    iput p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private setOpCreateClaimableBalance(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5324
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5325
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    const/16 p1, 0xe

    .line 5326
    iput p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private setOpPayment(Lwallet/core/jni/proto/Stellar$OperationPayment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5224
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5225
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 5226
    iput p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private setPassphrase(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5124
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->passphrase_:Ljava/lang/String;

    return-void
.end method

.method private setPassphraseBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5147
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5148
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->passphrase_:Ljava/lang/String;

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

    .line 5069
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5071
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

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

    .line 4965
    iput-wide p1, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->sequence_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    .line 6520
    const-class p2, Lwallet/core/jni/proto/Stellar$MemoHash;

    sget-object p3, Lwallet/core/jni/proto/Stellar$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6581
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v0

    .line 6575
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 6560
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Stellar$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 6562
    const-class p2, Lwallet/core/jni/proto/Stellar$SigningInput;

    monitor-enter p2

    .line 6563
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Stellar$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 6565
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Stellar$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6568
    sput-object p1, Lwallet/core/jni/proto/Stellar$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 6570
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

    .line 6557
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Stellar$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$SigningInput;

    return-object p1

    :pswitch_4
    const/16 p1, 0x13

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "operationOneof_"

    aput-object v1, p1, v0

    const-string v0, "operationOneofCase_"

    aput-object v0, p1, p3

    const/4 p3, 0x2

    const-string v0, "memoTypeOneof_"

    aput-object v0, p1, p3

    const/4 p3, 0x3

    const-string v0, "memoTypeOneofCase_"

    aput-object v0, p1, p3

    const/4 p3, 0x4

    const-string v0, "fee_"

    aput-object v0, p1, p3

    const/4 p3, 0x5

    const-string v0, "sequence_"

    aput-object v0, p1, p3

    const/4 p3, 0x6

    const-string v0, "account_"

    aput-object v0, p1, p3

    const/4 p3, 0x7

    const-string v0, "privateKey_"

    aput-object v0, p1, p3

    const/16 p3, 0x8

    const-string v0, "passphrase_"

    aput-object v0, p1, p3

    const/16 p3, 0x9

    .line 6528
    const-class v0, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;

    aput-object v0, p1, p3

    const/16 p3, 0xa

    const-class v0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    aput-object v0, p1, p3

    const/16 p3, 0xb

    const-class v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    aput-object v0, p1, p3

    const/16 p3, 0xc

    const-class v0, Lwallet/core/jni/proto/Stellar$MemoVoid;

    aput-object v0, p1, p3

    const/16 p3, 0xd

    const-class v0, Lwallet/core/jni/proto/Stellar$MemoText;

    aput-object v0, p1, p3

    const/16 p3, 0xe

    const-class v0, Lwallet/core/jni/proto/Stellar$MemoId;

    aput-object v0, p1, p3

    const/16 p3, 0xf

    aput-object p2, p1, p3

    const/16 p3, 0x10

    aput-object p2, p1, p3

    const/16 p2, 0x11

    const-class p3, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-class p3, Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u000f\u0002\u0000\u0001\u000f\u000f\u0000\u0000\u0000\u0001\u0004\u0002\u0002\u0003\u0208\u0004\n\u0005\u0208\u0006<\u0000\u0007<\u0000\u0008<\u0000\t<\u0001\n<\u0001\u000b<\u0001\u000c<\u0001\r<\u0001\u000e<\u0000\u000f<\u0000"

    .line 6553
    sget-object p3, Lwallet/core/jni/proto/Stellar$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6525
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Stellar$SigningInput$Builder;

    invoke-direct {p1, v0}, Lwallet/core/jni/proto/Stellar$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Stellar$1;)V

    return-object p1

    .line 6522
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Stellar$SigningInput;-><init>()V

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

.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 4991
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->account_:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5004
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->account_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFee()I
    .locals 1

    .line 4915
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->fee_:I

    return v0
.end method

.method public getMemoHash()Lwallet/core/jni/proto/Stellar$MemoHash;
    .locals 2

    .line 5565
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 5566
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoHash;

    return-object v0

    .line 5568
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Stellar$MemoHash;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$MemoHash;

    move-result-object v0

    return-object v0
.end method

.method public getMemoId()Lwallet/core/jni/proto/Stellar$MemoId;
    .locals 2

    .line 5515
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 5516
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoId;

    return-object v0

    .line 5518
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Stellar$MemoId;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$MemoId;

    move-result-object v0

    return-object v0
.end method

.method public getMemoReturnHash()Lwallet/core/jni/proto/Stellar$MemoHash;
    .locals 2

    .line 5615
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 5616
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoHash;

    return-object v0

    .line 5618
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Stellar$MemoHash;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$MemoHash;

    move-result-object v0

    return-object v0
.end method

.method public getMemoText()Lwallet/core/jni/proto/Stellar$MemoText;
    .locals 2

    .line 5465
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 5466
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoText;

    return-object v0

    .line 5468
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Stellar$MemoText;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$MemoText;

    move-result-object v0

    return-object v0
.end method

.method public getMemoTypeOneofCase()Lwallet/core/jni/proto/Stellar$SigningInput$MemoTypeOneofCase;
    .locals 1

    .line 4894
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$SigningInput$MemoTypeOneofCase;->forNumber(I)Lwallet/core/jni/proto/Stellar$SigningInput$MemoTypeOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getMemoVoid()Lwallet/core/jni/proto/Stellar$MemoVoid;
    .locals 2

    .line 5415
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 5416
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoVoid;

    return-object v0

    .line 5418
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Stellar$MemoVoid;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$MemoVoid;

    move-result-object v0

    return-object v0
.end method

.method public getOpChangeTrust()Lwallet/core/jni/proto/Stellar$OperationChangeTrust;
    .locals 2

    .line 5265
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 5266
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    return-object v0

    .line 5268
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    move-result-object v0

    return-object v0
.end method

.method public getOpClaimClaimableBalance()Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;
    .locals 2

    .line 5365
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 5366
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;

    return-object v0

    .line 5368
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;

    move-result-object v0

    return-object v0
.end method

.method public getOpCreateAccount()Lwallet/core/jni/proto/Stellar$OperationCreateAccount;
    .locals 2

    .line 5165
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 5166
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;

    return-object v0

    .line 5168
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$OperationCreateAccount;

    move-result-object v0

    return-object v0
.end method

.method public getOpCreateClaimableBalance()Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;
    .locals 2

    .line 5315
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 5316
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    return-object v0

    .line 5318
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    move-result-object v0

    return-object v0
.end method

.method public getOpPayment()Lwallet/core/jni/proto/Stellar$OperationPayment;
    .locals 2

    .line 5215
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 5216
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    return-object v0

    .line 5218
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Stellar$OperationPayment;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$OperationPayment;

    move-result-object v0

    return-object v0
.end method

.method public getOperationOneofCase()Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;
    .locals 1

    .line 4845
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;->forNumber(I)Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getPassphrase()Ljava/lang/String;
    .locals 1

    .line 5097
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->passphrase_:Ljava/lang/String;

    return-object v0
.end method

.method public getPassphraseBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5110
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->passphrase_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5058
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSequence()J
    .locals 2

    .line 4953
    iget-wide v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->sequence_:J

    return-wide v0
.end method

.method public hasMemoHash()Z
    .locals 2

    .line 5558
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMemoId()Z
    .locals 2

    .line 5508
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMemoReturnHash()Z
    .locals 2

    .line 5608
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMemoText()Z
    .locals 2

    .line 5458
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMemoVoid()Z
    .locals 2

    .line 5408
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->memoTypeOneofCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOpChangeTrust()Z
    .locals 2

    .line 5258
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOpClaimClaimableBalance()Z
    .locals 2

    .line 5358
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOpCreateAccount()Z
    .locals 2

    .line 5158
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOpCreateClaimableBalance()Z
    .locals 2

    .line 5308
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOpPayment()Z
    .locals 2

    .line 5208
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
