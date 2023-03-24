.class public final Lwallet/core/jni/proto/Ripple$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ripple.java"

# interfaces
.implements Lwallet/core/jni/proto/Ripple$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ripple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Ripple$SigningInput$Builder;,
        Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Ripple$SigningInput;",
        "Lwallet/core/jni/proto/Ripple$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ripple$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACCOUNT_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$SigningInput;

.field public static final FEE_FIELD_NUMBER:I = 0x1

.field public static final FLAGS_FIELD_NUMBER:I = 0x5

.field public static final LAST_LEDGER_SEQUENCE_FIELD_NUMBER:I = 0x3

.field public static final OP_NFTOKEN_ACCEPT_OFFER_FIELD_NUMBER:I = 0xb

.field public static final OP_NFTOKEN_BURN_FIELD_NUMBER:I = 0x9

.field public static final OP_NFTOKEN_CANCEL_OFFER_FIELD_NUMBER:I = 0xc

.field public static final OP_NFTOKEN_CREATE_OFFER_FIELD_NUMBER:I = 0xa

.field public static final OP_PAYMENT_FIELD_NUMBER:I = 0x8

.field public static final OP_TRUST_SET_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ripple$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x6

.field public static final SEQUENCE_FIELD_NUMBER:I = 0x2


# instance fields
.field private account_:Ljava/lang/String;

.field private fee_:J

.field private flags_:J

.field private lastLedgerSequence_:I

.field private operationOneofCase_:I

.field private operationOneof_:Ljava/lang/Object;

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private sequence_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4624
    new-instance v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;-><init>()V

    .line 4627
    sput-object v0, Lwallet/core/jni/proto/Ripple$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$SigningInput;

    .line 4628
    const-class v1, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3273
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 3277
    iput v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const-string v0, ""

    .line 3274
    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->account_:Ljava/lang/String;

    .line 3275
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$5000()Lwallet/core/jni/proto/Ripple$SigningInput;
    .locals 1

    .line 3268
    sget-object v0, Lwallet/core/jni/proto/Ripple$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$SigningInput;

    return-object v0
.end method

.method static synthetic access$5100(Lwallet/core/jni/proto/Ripple$SigningInput;)V
    .locals 0

    .line 3268
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$SigningInput;->clearOperationOneof()V

    return-void
.end method

.method static synthetic access$5200(Lwallet/core/jni/proto/Ripple$SigningInput;J)V
    .locals 0

    .line 3268
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Ripple$SigningInput;->setFee(J)V

    return-void
.end method

.method static synthetic access$5300(Lwallet/core/jni/proto/Ripple$SigningInput;)V
    .locals 0

    .line 3268
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$SigningInput;->clearFee()V

    return-void
.end method

.method static synthetic access$5400(Lwallet/core/jni/proto/Ripple$SigningInput;I)V
    .locals 0

    .line 3268
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->setSequence(I)V

    return-void
.end method

.method static synthetic access$5500(Lwallet/core/jni/proto/Ripple$SigningInput;)V
    .locals 0

    .line 3268
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$SigningInput;->clearSequence()V

    return-void
.end method

.method static synthetic access$5600(Lwallet/core/jni/proto/Ripple$SigningInput;I)V
    .locals 0

    .line 3268
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->setLastLedgerSequence(I)V

    return-void
.end method

.method static synthetic access$5700(Lwallet/core/jni/proto/Ripple$SigningInput;)V
    .locals 0

    .line 3268
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$SigningInput;->clearLastLedgerSequence()V

    return-void
.end method

.method static synthetic access$5800(Lwallet/core/jni/proto/Ripple$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 3268
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->setAccount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Lwallet/core/jni/proto/Ripple$SigningInput;)V
    .locals 0

    .line 3268
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$SigningInput;->clearAccount()V

    return-void
.end method

.method static synthetic access$6000(Lwallet/core/jni/proto/Ripple$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3268
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->setAccountBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6100(Lwallet/core/jni/proto/Ripple$SigningInput;J)V
    .locals 0

    .line 3268
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Ripple$SigningInput;->setFlags(J)V

    return-void
.end method

.method static synthetic access$6200(Lwallet/core/jni/proto/Ripple$SigningInput;)V
    .locals 0

    .line 3268
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$SigningInput;->clearFlags()V

    return-void
.end method

.method static synthetic access$6300(Lwallet/core/jni/proto/Ripple$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3268
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6400(Lwallet/core/jni/proto/Ripple$SigningInput;)V
    .locals 0

    .line 3268
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$6500(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationTrustSet;)V
    .locals 0

    .line 3268
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->setOpTrustSet(Lwallet/core/jni/proto/Ripple$OperationTrustSet;)V

    return-void
.end method

.method static synthetic access$6600(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationTrustSet;)V
    .locals 0

    .line 3268
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->mergeOpTrustSet(Lwallet/core/jni/proto/Ripple$OperationTrustSet;)V

    return-void
.end method

.method static synthetic access$6700(Lwallet/core/jni/proto/Ripple$SigningInput;)V
    .locals 0

    .line 3268
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$SigningInput;->clearOpTrustSet()V

    return-void
.end method

.method static synthetic access$6800(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationPayment;)V
    .locals 0

    .line 3268
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->setOpPayment(Lwallet/core/jni/proto/Ripple$OperationPayment;)V

    return-void
.end method

.method static synthetic access$6900(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationPayment;)V
    .locals 0

    .line 3268
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->mergeOpPayment(Lwallet/core/jni/proto/Ripple$OperationPayment;)V

    return-void
.end method

.method static synthetic access$7000(Lwallet/core/jni/proto/Ripple$SigningInput;)V
    .locals 0

    .line 3268
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$SigningInput;->clearOpPayment()V

    return-void
.end method

.method static synthetic access$7100(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;)V
    .locals 0

    .line 3268
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->setOpNftokenBurn(Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;)V

    return-void
.end method

.method static synthetic access$7200(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;)V
    .locals 0

    .line 3268
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->mergeOpNftokenBurn(Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;)V

    return-void
.end method

.method static synthetic access$7300(Lwallet/core/jni/proto/Ripple$SigningInput;)V
    .locals 0

    .line 3268
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$SigningInput;->clearOpNftokenBurn()V

    return-void
.end method

.method static synthetic access$7400(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;)V
    .locals 0

    .line 3268
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->setOpNftokenCreateOffer(Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;)V

    return-void
.end method

.method static synthetic access$7500(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;)V
    .locals 0

    .line 3268
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->mergeOpNftokenCreateOffer(Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;)V

    return-void
.end method

.method static synthetic access$7600(Lwallet/core/jni/proto/Ripple$SigningInput;)V
    .locals 0

    .line 3268
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$SigningInput;->clearOpNftokenCreateOffer()V

    return-void
.end method

.method static synthetic access$7700(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;)V
    .locals 0

    .line 3268
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->setOpNftokenAcceptOffer(Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;)V

    return-void
.end method

.method static synthetic access$7800(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;)V
    .locals 0

    .line 3268
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->mergeOpNftokenAcceptOffer(Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;)V

    return-void
.end method

.method static synthetic access$7900(Lwallet/core/jni/proto/Ripple$SigningInput;)V
    .locals 0

    .line 3268
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$SigningInput;->clearOpNftokenAcceptOffer()V

    return-void
.end method

.method static synthetic access$8000(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;)V
    .locals 0

    .line 3268
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->setOpNftokenCancelOffer(Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;)V

    return-void
.end method

.method static synthetic access$8100(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;)V
    .locals 0

    .line 3268
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->mergeOpNftokenCancelOffer(Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;)V

    return-void
.end method

.method static synthetic access$8200(Lwallet/core/jni/proto/Ripple$SigningInput;)V
    .locals 0

    .line 3268
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$SigningInput;->clearOpNftokenCancelOffer()V

    return-void
.end method

.method private clearAccount()V
    .locals 1

    .line 3492
    invoke-static {}, Lwallet/core/jni/proto/Ripple$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->account_:Ljava/lang/String;

    return-void
.end method

.method private clearFee()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3363
    iput-wide v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->fee_:J

    return-void
.end method

.method private clearFlags()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3544
    iput-wide v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->flags_:J

    return-void
.end method

.method private clearLastLedgerSequence()V
    .locals 1

    const/4 v0, 0x0

    .line 3439
    iput v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->lastLedgerSequence_:I

    return-void
.end method

.method private clearOpNftokenAcceptOffer()V
    .locals 2

    .line 3830
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3831
    iput v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/4 v0, 0x0

    .line 3832
    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOpNftokenBurn()V
    .locals 2

    .line 3730
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3731
    iput v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/4 v0, 0x0

    .line 3732
    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOpNftokenCancelOffer()V
    .locals 2

    .line 3880
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3881
    iput v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/4 v0, 0x0

    .line 3882
    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOpNftokenCreateOffer()V
    .locals 2

    .line 3780
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3781
    iput v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/4 v0, 0x0

    .line 3782
    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOpPayment()V
    .locals 2

    .line 3680
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3681
    iput v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/4 v0, 0x0

    .line 3682
    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOpTrustSet()V
    .locals 2

    .line 3630
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3631
    iput v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/4 v0, 0x0

    .line 3632
    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOperationOneof()V
    .locals 1

    const/4 v0, 0x0

    .line 3324
    iput v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/4 v0, 0x0

    .line 3325
    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 3583
    invoke-static {}, Lwallet/core/jni/proto/Ripple$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSequence()V
    .locals 1

    const/4 v0, 0x0

    .line 3401
    iput v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->sequence_:I

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Ripple$SigningInput;
    .locals 1

    .line 4633
    sget-object v0, Lwallet/core/jni/proto/Ripple$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$SigningInput;

    return-object v0
.end method

.method private mergeOpNftokenAcceptOffer(Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3816
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3817
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 3818
    invoke-static {}, Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3819
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;->newBuilder(Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;)Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer$Builder;

    move-result-object v0

    .line 3820
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 3822
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 3824
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private mergeOpNftokenBurn(Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3716
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3717
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 3718
    invoke-static {}, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3719
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->newBuilder(Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;)Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn$Builder;

    move-result-object v0

    .line 3720
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 3722
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 3724
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private mergeOpNftokenCancelOffer(Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3866
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3867
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 3868
    invoke-static {}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3869
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->newBuilder(Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer$Builder;

    move-result-object v0

    .line 3870
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 3872
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 3874
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private mergeOpNftokenCreateOffer(Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3766
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3767
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 3768
    invoke-static {}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3769
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->newBuilder(Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer$Builder;

    move-result-object v0

    .line 3770
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 3772
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 3774
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private mergeOpPayment(Lwallet/core/jni/proto/Ripple$OperationPayment;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3666
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3667
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 3668
    invoke-static {}, Lwallet/core/jni/proto/Ripple$OperationPayment;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$OperationPayment;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3669
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$OperationPayment;->newBuilder(Lwallet/core/jni/proto/Ripple$OperationPayment;)Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;

    move-result-object v0

    .line 3670
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 3672
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 3674
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private mergeOpTrustSet(Lwallet/core/jni/proto/Ripple$OperationTrustSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3616
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3617
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 3618
    invoke-static {}, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3619
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->newBuilder(Lwallet/core/jni/proto/Ripple$OperationTrustSet;)Lwallet/core/jni/proto/Ripple$OperationTrustSet$Builder;

    move-result-object v0

    .line 3620
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ripple$OperationTrustSet$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 3622
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 3624
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1

    .line 3961
    sget-object v0, Lwallet/core/jni/proto/Ripple$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Ripple$SigningInput;)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3964
    sget-object v0, Lwallet/core/jni/proto/Ripple$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ripple$SigningInput;
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

    .line 3938
    sget-object v0, Lwallet/core/jni/proto/Ripple$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$SigningInput;
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

    .line 3944
    sget-object v0, Lwallet/core/jni/proto/Ripple$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ripple$SigningInput;
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

    .line 3902
    sget-object v0, Lwallet/core/jni/proto/Ripple$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$SigningInput;
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

    .line 3909
    sget-object v0, Lwallet/core/jni/proto/Ripple$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Ripple$SigningInput;
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

    .line 3949
    sget-object v0, Lwallet/core/jni/proto/Ripple$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$SigningInput;
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

    .line 3956
    sget-object v0, Lwallet/core/jni/proto/Ripple$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ripple$SigningInput;
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

    .line 3926
    sget-object v0, Lwallet/core/jni/proto/Ripple$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$SigningInput;
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

    .line 3933
    sget-object v0, Lwallet/core/jni/proto/Ripple$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Ripple$SigningInput;
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

    .line 3889
    sget-object v0, Lwallet/core/jni/proto/Ripple$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$SigningInput;
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

    .line 3896
    sget-object v0, Lwallet/core/jni/proto/Ripple$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Ripple$SigningInput;
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

    .line 3914
    sget-object v0, Lwallet/core/jni/proto/Ripple$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$SigningInput;
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

    .line 3921
    sget-object v0, Lwallet/core/jni/proto/Ripple$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ripple$SigningInput;",
            ">;"
        }
    .end annotation

    .line 4639
    sget-object v0, Lwallet/core/jni/proto/Ripple$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$SigningInput;

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

    .line 3479
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3481
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->account_:Ljava/lang/String;

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

    .line 3504
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3505
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->account_:Ljava/lang/String;

    return-void
.end method

.method private setFee(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3352
    iput-wide p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->fee_:J

    return-void
.end method

.method private setFlags(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3533
    iput-wide p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->flags_:J

    return-void
.end method

.method private setLastLedgerSequence(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3428
    iput p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->lastLedgerSequence_:I

    return-void
.end method

.method private setOpNftokenAcceptOffer(Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3808
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3809
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    const/16 p1, 0xb

    .line 3810
    iput p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private setOpNftokenBurn(Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3708
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3709
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    const/16 p1, 0x9

    .line 3710
    iput p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private setOpNftokenCancelOffer(Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3858
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3859
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    const/16 p1, 0xc

    .line 3860
    iput p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private setOpNftokenCreateOffer(Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3758
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3759
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    const/16 p1, 0xa

    .line 3760
    iput p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private setOpPayment(Lwallet/core/jni/proto/Ripple$OperationPayment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3658
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3659
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 3660
    iput p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private setOpTrustSet(Lwallet/core/jni/proto/Ripple$OperationTrustSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3608
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3609
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 3610
    iput p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

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

    .line 3570
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3572
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setSequence(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3390
    iput p1, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->sequence_:I

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

    .line 4561
    sget-object p2, Lwallet/core/jni/proto/Ripple$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4617
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4611
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4596
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Ripple$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4598
    const-class p2, Lwallet/core/jni/proto/Ripple$SigningInput;

    monitor-enter p2

    .line 4599
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Ripple$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4601
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Ripple$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4604
    sput-object p1, Lwallet/core/jni/proto/Ripple$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 4606
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

    .line 4593
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Ripple$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$SigningInput;

    return-object p1

    :pswitch_4
    const/16 p1, 0xe

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "operationOneof_"

    aput-object v0, p1, p3

    const-string p3, "operationOneofCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "fee_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "sequence_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "lastLedgerSequence_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "account_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "flags_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    .line 4569
    const-class p3, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lwallet/core/jni/proto/Ripple$OperationPayment;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-class p3, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-class p3, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-class p3, Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-class p3, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u000c\u0001\u0000\u0001\u000c\u000c\u0000\u0000\u0000\u0001\u0002\u0002\u0004\u0003\u0004\u0004\u0208\u0005\u0002\u0006\n\u0007<\u0000\u0008<\u0000\t<\u0000\n<\u0000\u000b<\u0000\u000c<\u0000"

    .line 4589
    sget-object p3, Lwallet/core/jni/proto/Ripple$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4566
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Ripple$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Ripple$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Ripple$1;)V

    return-object p1

    .line 4563
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Ripple$SigningInput;-><init>()V

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

    .line 3454
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->account_:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3467
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->account_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFee()J
    .locals 2

    .line 3340
    iget-wide v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->fee_:J

    return-wide v0
.end method

.method public getFlags()J
    .locals 2

    .line 3521
    iget-wide v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->flags_:J

    return-wide v0
.end method

.method public getLastLedgerSequence()I
    .locals 1

    .line 3416
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->lastLedgerSequence_:I

    return v0
.end method

.method public getOpNftokenAcceptOffer()Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;
    .locals 2

    .line 3799
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 3800
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;

    return-object v0

    .line 3802
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;

    move-result-object v0

    return-object v0
.end method

.method public getOpNftokenBurn()Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;
    .locals 2

    .line 3699
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 3700
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    return-object v0

    .line 3702
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    move-result-object v0

    return-object v0
.end method

.method public getOpNftokenCancelOffer()Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;
    .locals 2

    .line 3849
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 3850
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    return-object v0

    .line 3852
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    move-result-object v0

    return-object v0
.end method

.method public getOpNftokenCreateOffer()Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;
    .locals 2

    .line 3749
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 3750
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    return-object v0

    .line 3752
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    move-result-object v0

    return-object v0
.end method

.method public getOpPayment()Lwallet/core/jni/proto/Ripple$OperationPayment;
    .locals 2

    .line 3649
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 3650
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    return-object v0

    .line 3652
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Ripple$OperationPayment;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$OperationPayment;

    move-result-object v0

    return-object v0
.end method

.method public getOpTrustSet()Lwallet/core/jni/proto/Ripple$OperationTrustSet;
    .locals 2

    .line 3599
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 3600
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    return-object v0

    .line 3602
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    move-result-object v0

    return-object v0
.end method

.method public getOperationOneofCase()Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;
    .locals 1

    .line 3319
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;->forNumber(I)Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3559
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .line 3378
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->sequence_:I

    return v0
.end method

.method public hasOpNftokenAcceptOffer()Z
    .locals 2

    .line 3792
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOpNftokenBurn()Z
    .locals 2

    .line 3692
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOpNftokenCancelOffer()Z
    .locals 2

    .line 3842
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOpNftokenCreateOffer()Z
    .locals 2

    .line 3742
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/16 v1, 0xa

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

    .line 3642
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOpTrustSet()Z
    .locals 2

    .line 3592
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
