.class public final Lwallet/core/jni/proto/Ethereum$Transaction;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ethereum.java"

# interfaces
.implements Lwallet/core/jni/proto/Ethereum$TransactionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ethereum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transaction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Ethereum$Transaction$Builder;,
        Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;,
        Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;,
        Lwallet/core/jni/proto/Ethereum$Transaction$ContractGenericOrBuilder;,
        Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;,
        Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155TransferOrBuilder;,
        Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;,
        Lwallet/core/jni/proto/Ethereum$Transaction$ERC721TransferOrBuilder;,
        Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;,
        Lwallet/core/jni/proto/Ethereum$Transaction$ERC20ApproveOrBuilder;,
        Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;,
        Lwallet/core/jni/proto/Ethereum$Transaction$ERC20TransferOrBuilder;,
        Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;,
        Lwallet/core/jni/proto/Ethereum$Transaction$TransferOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Ethereum$Transaction;",
        "Lwallet/core/jni/proto/Ethereum$Transaction$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ethereum$TransactionOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONTRACT_GENERIC_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction;

.field public static final ERC1155_TRANSFER_FIELD_NUMBER:I = 0x5

.field public static final ERC20_APPROVE_FIELD_NUMBER:I = 0x3

.field public static final ERC20_TRANSFER_FIELD_NUMBER:I = 0x2

.field public static final ERC721_TRANSFER_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ethereum$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSFER_FIELD_NUMBER:I = 0x1


# instance fields
.field private transactionOneofCase_:I

.field private transactionOneof_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4010
    new-instance v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-direct {v0}, Lwallet/core/jni/proto/Ethereum$Transaction;-><init>()V

    .line 4013
    sput-object v0, Lwallet/core/jni/proto/Ethereum$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction;

    .line 4014
    const-class v1, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 221
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 3197
    iput v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    return-void
.end method

.method static synthetic access$5000()Lwallet/core/jni/proto/Ethereum$Transaction;
    .locals 1

    .line 216
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction;

    return-object v0
.end method

.method static synthetic access$5100(Lwallet/core/jni/proto/Ethereum$Transaction;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$Transaction;->clearTransactionOneof()V

    return-void
.end method

.method static synthetic access$5200(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->setTransfer(Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;)V

    return-void
.end method

.method static synthetic access$5300(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->mergeTransfer(Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;)V

    return-void
.end method

.method static synthetic access$5400(Lwallet/core/jni/proto/Ethereum$Transaction;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$Transaction;->clearTransfer()V

    return-void
.end method

.method static synthetic access$5500(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->setErc20Transfer(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;)V

    return-void
.end method

.method static synthetic access$5600(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->mergeErc20Transfer(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;)V

    return-void
.end method

.method static synthetic access$5700(Lwallet/core/jni/proto/Ethereum$Transaction;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$Transaction;->clearErc20Transfer()V

    return-void
.end method

.method static synthetic access$5800(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->setErc20Approve(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;)V

    return-void
.end method

.method static synthetic access$5900(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->mergeErc20Approve(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;)V

    return-void
.end method

.method static synthetic access$6000(Lwallet/core/jni/proto/Ethereum$Transaction;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$Transaction;->clearErc20Approve()V

    return-void
.end method

.method static synthetic access$6100(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->setErc721Transfer(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;)V

    return-void
.end method

.method static synthetic access$6200(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->mergeErc721Transfer(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;)V

    return-void
.end method

.method static synthetic access$6300(Lwallet/core/jni/proto/Ethereum$Transaction;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$Transaction;->clearErc721Transfer()V

    return-void
.end method

.method static synthetic access$6400(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->setErc1155Transfer(Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;)V

    return-void
.end method

.method static synthetic access$6500(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->mergeErc1155Transfer(Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;)V

    return-void
.end method

.method static synthetic access$6600(Lwallet/core/jni/proto/Ethereum$Transaction;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$Transaction;->clearErc1155Transfer()V

    return-void
.end method

.method static synthetic access$6700(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->setContractGeneric(Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;)V

    return-void
.end method

.method static synthetic access$6800(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->mergeContractGeneric(Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;)V

    return-void
.end method

.method static synthetic access$6900(Lwallet/core/jni/proto/Ethereum$Transaction;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$Transaction;->clearContractGeneric()V

    return-void
.end method

.method private clearContractGeneric()V
    .locals 2

    .line 3542
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3543
    iput v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v0, 0x0

    .line 3544
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearErc1155Transfer()V
    .locals 2

    .line 3492
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3493
    iput v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v0, 0x0

    .line 3494
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearErc20Approve()V
    .locals 2

    .line 3392
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3393
    iput v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v0, 0x0

    .line 3394
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearErc20Transfer()V
    .locals 2

    .line 3342
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3343
    iput v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v0, 0x0

    .line 3344
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearErc721Transfer()V
    .locals 2

    .line 3442
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3443
    iput v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v0, 0x0

    .line 3444
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTransactionOneof()V
    .locals 1

    const/4 v0, 0x0

    .line 3244
    iput v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v0, 0x0

    .line 3245
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    return-void
.end method

.method private clearTransfer()V
    .locals 2

    .line 3292
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3293
    iput v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v0, 0x0

    .line 3294
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction;
    .locals 1

    .line 4019
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction;

    return-object v0
.end method

.method private mergeContractGeneric(Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3528
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3529
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    .line 3530
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3531
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;->newBuilder(Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;)Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;

    move-result-object v0

    .line 3532
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 3534
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    .line 3536
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    return-void
.end method

.method private mergeErc1155Transfer(Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3478
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3479
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    .line 3480
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3481
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;->newBuilder(Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer$Builder;

    move-result-object v0

    .line 3482
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 3484
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    .line 3486
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    return-void
.end method

.method private mergeErc20Approve(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3378
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3379
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    .line 3380
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3381
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;->newBuilder(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve$Builder;

    move-result-object v0

    .line 3382
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 3384
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    .line 3386
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    return-void
.end method

.method private mergeErc20Transfer(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3328
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3329
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    .line 3330
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3331
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->newBuilder(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;

    move-result-object v0

    .line 3332
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 3334
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    .line 3336
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    return-void
.end method

.method private mergeErc721Transfer(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3428
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3429
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    .line 3430
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3431
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->newBuilder(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer$Builder;

    move-result-object v0

    .line 3432
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 3434
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    .line 3436
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    return-void
.end method

.method private mergeTransfer(Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3278
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3279
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    .line 3280
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3281
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->newBuilder(Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;)Lwallet/core/jni/proto/Ethereum$Transaction$Transfer$Builder;

    move-result-object v0

    .line 3282
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 3284
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    .line 3286
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1

    .line 3623
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Ethereum$Transaction;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3626
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ethereum$Transaction;
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

    .line 3600
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction;
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

    .line 3606
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction;
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

    .line 3564
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction;
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

    .line 3571
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Ethereum$Transaction;
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

    .line 3611
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction;
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

    .line 3618
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ethereum$Transaction;
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

    .line 3588
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction;
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

    .line 3595
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Ethereum$Transaction;
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

    .line 3551
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction;
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

    .line 3558
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Ethereum$Transaction;
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

    .line 3576
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction;
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

    .line 3583
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ethereum$Transaction;",
            ">;"
        }
    .end annotation

    .line 4025
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setContractGeneric(Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3520
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3521
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 3522
    iput p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    return-void
.end method

.method private setErc1155Transfer(Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3470
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3471
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 3472
    iput p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    return-void
.end method

.method private setErc20Approve(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3370
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3371
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 3372
    iput p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    return-void
.end method

.method private setErc20Transfer(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3320
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3321
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 3322
    iput p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    return-void
.end method

.method private setErc721Transfer(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3420
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3421
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 3422
    iput p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    return-void
.end method

.method private setTransfer(Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3270
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3271
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3272
    iput p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

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

    .line 3954
    sget-object p2, Lwallet/core/jni/proto/Ethereum$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4003
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3997
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3982
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Ethereum$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3984
    const-class p2, Lwallet/core/jni/proto/Ethereum$Transaction;

    monitor-enter p2

    .line 3985
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Ethereum$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3987
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Ethereum$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3990
    sput-object p1, Lwallet/core/jni/proto/Ethereum$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    .line 3992
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

    .line 3979
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Ethereum$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "transactionOneof_"

    aput-object v0, p1, p3

    const-string p3, "transactionOneofCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 3962
    const-class p3, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0001\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000"

    .line 3975
    sget-object p3, Lwallet/core/jni/proto/Ethereum$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3959
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Ethereum$Transaction$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Ethereum$Transaction$Builder;-><init>(Lwallet/core/jni/proto/Ethereum$1;)V

    return-object p1

    .line 3956
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-direct {p1}, Lwallet/core/jni/proto/Ethereum$Transaction;-><init>()V

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

.method public getContractGeneric()Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;
    .locals 2

    .line 3511
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 3512
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;

    return-object v0

    .line 3514
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;

    move-result-object v0

    return-object v0
.end method

.method public getErc1155Transfer()Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;
    .locals 2

    .line 3461
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 3462
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    return-object v0

    .line 3464
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    move-result-object v0

    return-object v0
.end method

.method public getErc20Approve()Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;
    .locals 2

    .line 3361
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3362
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;

    return-object v0

    .line 3364
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;

    move-result-object v0

    return-object v0
.end method

.method public getErc20Transfer()Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;
    .locals 2

    .line 3311
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3312
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    return-object v0

    .line 3314
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    move-result-object v0

    return-object v0
.end method

.method public getErc721Transfer()Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;
    .locals 2

    .line 3411
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3412
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    return-object v0

    .line 3414
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionOneofCase()Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;
    .locals 1

    .line 3239
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;->forNumber(I)Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;
    .locals 2

    .line 3261
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3262
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    return-object v0

    .line 3264
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public hasContractGeneric()Z
    .locals 2

    .line 3504
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasErc1155Transfer()Z
    .locals 2

    .line 3454
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasErc20Approve()Z
    .locals 2

    .line 3354
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasErc20Transfer()Z
    .locals 2

    .line 3304
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasErc721Transfer()Z
    .locals 2

    .line 3404
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x4

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

    .line 3254
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction;->transactionOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
