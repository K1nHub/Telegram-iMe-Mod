.class public final Lwallet/core/jni/proto/Solana$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Solana.java"

# interfaces
.implements Lwallet/core/jni/proto/Solana$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Solana$SigningInput$Builder;,
        Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Solana$SigningInput;",
        "Lwallet/core/jni/proto/Solana$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Solana$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final CREATE_AND_TRANSFER_TOKEN_TRANSACTION_FIELD_NUMBER:I = 0xc

.field public static final CREATE_TOKEN_ACCOUNT_TRANSACTION_FIELD_NUMBER:I = 0xa

.field public static final DEACTIVATE_ALL_STAKE_TRANSACTION_FIELD_NUMBER:I = 0x7

.field public static final DEACTIVATE_STAKE_TRANSACTION_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningInput;

.field public static final DELEGATE_STAKE_TRANSACTION_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Solana$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x1

.field public static final RECENT_BLOCKHASH_FIELD_NUMBER:I = 0x2

.field public static final TOKEN_TRANSFER_TRANSACTION_FIELD_NUMBER:I = 0xb

.field public static final TRANSFER_TRANSACTION_FIELD_NUMBER:I = 0x4

.field public static final V0_MSG_FIELD_NUMBER:I = 0x3

.field public static final WITHDRAW_ALL_TRANSACTION_FIELD_NUMBER:I = 0x9

.field public static final WITHDRAW_TRANSACTION_FIELD_NUMBER:I = 0x8


# instance fields
.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private recentBlockhash_:Ljava/lang/String;

.field private transactionTypeCase_:I

.field private transactionType_:Ljava/lang/Object;

.field private v0Msg_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8595
    new-instance v0, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Solana$SigningInput;-><init>()V

    .line 8598
    sput-object v0, Lwallet/core/jni/proto/Solana$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningInput;

    .line 8599
    const-class v1, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 7202
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 7206
    iput v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    .line 7203
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 7204
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->recentBlockhash_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11900()Lwallet/core/jni/proto/Solana$SigningInput;
    .locals 1

    .line 7197
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningInput;

    return-object v0
.end method

.method static synthetic access$12000(Lwallet/core/jni/proto/Solana$SigningInput;)V
    .locals 0

    .line 7197
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$SigningInput;->clearTransactionType()V

    return-void
.end method

.method static synthetic access$12100(Lwallet/core/jni/proto/Solana$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7197
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12200(Lwallet/core/jni/proto/Solana$SigningInput;)V
    .locals 0

    .line 7197
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$12300(Lwallet/core/jni/proto/Solana$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 7197
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->setRecentBlockhash(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12400(Lwallet/core/jni/proto/Solana$SigningInput;)V
    .locals 0

    .line 7197
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$SigningInput;->clearRecentBlockhash()V

    return-void
.end method

.method static synthetic access$12500(Lwallet/core/jni/proto/Solana$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7197
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->setRecentBlockhashBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12600(Lwallet/core/jni/proto/Solana$SigningInput;Z)V
    .locals 0

    .line 7197
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->setV0Msg(Z)V

    return-void
.end method

.method static synthetic access$12700(Lwallet/core/jni/proto/Solana$SigningInput;)V
    .locals 0

    .line 7197
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$SigningInput;->clearV0Msg()V

    return-void
.end method

.method static synthetic access$12800(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$Transfer;)V
    .locals 0

    .line 7197
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->setTransferTransaction(Lwallet/core/jni/proto/Solana$Transfer;)V

    return-void
.end method

.method static synthetic access$12900(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$Transfer;)V
    .locals 0

    .line 7197
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->mergeTransferTransaction(Lwallet/core/jni/proto/Solana$Transfer;)V

    return-void
.end method

.method static synthetic access$13000(Lwallet/core/jni/proto/Solana$SigningInput;)V
    .locals 0

    .line 7197
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$SigningInput;->clearTransferTransaction()V

    return-void
.end method

.method static synthetic access$13100(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$DelegateStake;)V
    .locals 0

    .line 7197
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->setDelegateStakeTransaction(Lwallet/core/jni/proto/Solana$DelegateStake;)V

    return-void
.end method

.method static synthetic access$13200(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$DelegateStake;)V
    .locals 0

    .line 7197
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->mergeDelegateStakeTransaction(Lwallet/core/jni/proto/Solana$DelegateStake;)V

    return-void
.end method

.method static synthetic access$13300(Lwallet/core/jni/proto/Solana$SigningInput;)V
    .locals 0

    .line 7197
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$SigningInput;->clearDelegateStakeTransaction()V

    return-void
.end method

.method static synthetic access$13400(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$DeactivateStake;)V
    .locals 0

    .line 7197
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->setDeactivateStakeTransaction(Lwallet/core/jni/proto/Solana$DeactivateStake;)V

    return-void
.end method

.method static synthetic access$13500(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$DeactivateStake;)V
    .locals 0

    .line 7197
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->mergeDeactivateStakeTransaction(Lwallet/core/jni/proto/Solana$DeactivateStake;)V

    return-void
.end method

.method static synthetic access$13600(Lwallet/core/jni/proto/Solana$SigningInput;)V
    .locals 0

    .line 7197
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$SigningInput;->clearDeactivateStakeTransaction()V

    return-void
.end method

.method static synthetic access$13700(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$DeactivateAllStake;)V
    .locals 0

    .line 7197
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->setDeactivateAllStakeTransaction(Lwallet/core/jni/proto/Solana$DeactivateAllStake;)V

    return-void
.end method

.method static synthetic access$13800(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$DeactivateAllStake;)V
    .locals 0

    .line 7197
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->mergeDeactivateAllStakeTransaction(Lwallet/core/jni/proto/Solana$DeactivateAllStake;)V

    return-void
.end method

.method static synthetic access$13900(Lwallet/core/jni/proto/Solana$SigningInput;)V
    .locals 0

    .line 7197
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$SigningInput;->clearDeactivateAllStakeTransaction()V

    return-void
.end method

.method static synthetic access$14000(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$WithdrawStake;)V
    .locals 0

    .line 7197
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->setWithdrawTransaction(Lwallet/core/jni/proto/Solana$WithdrawStake;)V

    return-void
.end method

.method static synthetic access$14100(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$WithdrawStake;)V
    .locals 0

    .line 7197
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->mergeWithdrawTransaction(Lwallet/core/jni/proto/Solana$WithdrawStake;)V

    return-void
.end method

.method static synthetic access$14200(Lwallet/core/jni/proto/Solana$SigningInput;)V
    .locals 0

    .line 7197
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$SigningInput;->clearWithdrawTransaction()V

    return-void
.end method

.method static synthetic access$14300(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$WithdrawAllStake;)V
    .locals 0

    .line 7197
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->setWithdrawAllTransaction(Lwallet/core/jni/proto/Solana$WithdrawAllStake;)V

    return-void
.end method

.method static synthetic access$14400(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$WithdrawAllStake;)V
    .locals 0

    .line 7197
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->mergeWithdrawAllTransaction(Lwallet/core/jni/proto/Solana$WithdrawAllStake;)V

    return-void
.end method

.method static synthetic access$14500(Lwallet/core/jni/proto/Solana$SigningInput;)V
    .locals 0

    .line 7197
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$SigningInput;->clearWithdrawAllTransaction()V

    return-void
.end method

.method static synthetic access$14600(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$CreateTokenAccount;)V
    .locals 0

    .line 7197
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->setCreateTokenAccountTransaction(Lwallet/core/jni/proto/Solana$CreateTokenAccount;)V

    return-void
.end method

.method static synthetic access$14700(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$CreateTokenAccount;)V
    .locals 0

    .line 7197
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->mergeCreateTokenAccountTransaction(Lwallet/core/jni/proto/Solana$CreateTokenAccount;)V

    return-void
.end method

.method static synthetic access$14800(Lwallet/core/jni/proto/Solana$SigningInput;)V
    .locals 0

    .line 7197
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$SigningInput;->clearCreateTokenAccountTransaction()V

    return-void
.end method

.method static synthetic access$14900(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$TokenTransfer;)V
    .locals 0

    .line 7197
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->setTokenTransferTransaction(Lwallet/core/jni/proto/Solana$TokenTransfer;)V

    return-void
.end method

.method static synthetic access$15000(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$TokenTransfer;)V
    .locals 0

    .line 7197
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->mergeTokenTransferTransaction(Lwallet/core/jni/proto/Solana$TokenTransfer;)V

    return-void
.end method

.method static synthetic access$15100(Lwallet/core/jni/proto/Solana$SigningInput;)V
    .locals 0

    .line 7197
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$SigningInput;->clearTokenTransferTransaction()V

    return-void
.end method

.method static synthetic access$15200(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V
    .locals 0

    .line 7197
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->setCreateAndTransferTokenTransaction(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V

    return-void
.end method

.method static synthetic access$15300(Lwallet/core/jni/proto/Solana$SigningInput;Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V
    .locals 0

    .line 7197
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningInput;->mergeCreateAndTransferTokenTransaction(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V

    return-void
.end method

.method static synthetic access$15400(Lwallet/core/jni/proto/Solana$SigningInput;)V
    .locals 0

    .line 7197
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$SigningInput;->clearCreateAndTransferTokenTransaction()V

    return-void
.end method

.method private clearCreateAndTransferTokenTransaction()V
    .locals 2

    .line 7839
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7840
    iput v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v0, 0x0

    .line 7841
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearCreateTokenAccountTransaction()V
    .locals 2

    .line 7739
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7740
    iput v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v0, 0x0

    .line 7741
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearDeactivateAllStakeTransaction()V
    .locals 2

    .line 7589
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7590
    iput v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v0, 0x0

    .line 7591
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearDeactivateStakeTransaction()V
    .locals 2

    .line 7539
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7540
    iput v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v0, 0x0

    .line 7541
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearDelegateStakeTransaction()V
    .locals 2

    .line 7489
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7490
    iput v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v0, 0x0

    .line 7491
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 7299
    invoke-static {}, Lwallet/core/jni/proto/Solana$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Solana$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearRecentBlockhash()V
    .locals 1

    .line 7352
    invoke-static {}, Lwallet/core/jni/proto/Solana$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Solana$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningInput;->getRecentBlockhash()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->recentBlockhash_:Ljava/lang/String;

    return-void
.end method

.method private clearTokenTransferTransaction()V
    .locals 2

    .line 7789
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7790
    iput v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v0, 0x0

    .line 7791
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTransactionType()V
    .locals 1

    const/4 v0, 0x0

    .line 7259
    iput v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v0, 0x0

    .line 7260
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    return-void
.end method

.method private clearTransferTransaction()V
    .locals 2

    .line 7439
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7440
    iput v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v0, 0x0

    .line 7441
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearV0Msg()V
    .locals 1

    const/4 v0, 0x0

    .line 7392
    iput-boolean v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->v0Msg_:Z

    return-void
.end method

.method private clearWithdrawAllTransaction()V
    .locals 2

    .line 7689
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7690
    iput v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v0, 0x0

    .line 7691
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearWithdrawTransaction()V
    .locals 2

    .line 7639
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7640
    iput v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v0, 0x0

    .line 7641
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Solana$SigningInput;
    .locals 1

    .line 8604
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningInput;

    return-object v0
.end method

.method private mergeCreateAndTransferTokenTransaction(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7825
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7826
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    .line 7827
    invoke-static {}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getDefaultInstance()Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7828
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->newBuilder(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;

    move-result-object v0

    .line 7829
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    goto :goto_0

    .line 7831
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    .line 7833
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    return-void
.end method

.method private mergeCreateTokenAccountTransaction(Lwallet/core/jni/proto/Solana$CreateTokenAccount;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7725
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7726
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    .line 7727
    invoke-static {}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->getDefaultInstance()Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7728
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->newBuilder(Lwallet/core/jni/proto/Solana$CreateTokenAccount;)Lwallet/core/jni/proto/Solana$CreateTokenAccount$Builder;

    move-result-object v0

    .line 7729
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Solana$CreateTokenAccount$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    goto :goto_0

    .line 7731
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    .line 7733
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    return-void
.end method

.method private mergeDeactivateAllStakeTransaction(Lwallet/core/jni/proto/Solana$DeactivateAllStake;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7575
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7576
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    .line 7577
    invoke-static {}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->getDefaultInstance()Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7578
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->newBuilder(Lwallet/core/jni/proto/Solana$DeactivateAllStake;)Lwallet/core/jni/proto/Solana$DeactivateAllStake$Builder;

    move-result-object v0

    .line 7579
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Solana$DeactivateAllStake$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    goto :goto_0

    .line 7581
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    .line 7583
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    return-void
.end method

.method private mergeDeactivateStakeTransaction(Lwallet/core/jni/proto/Solana$DeactivateStake;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7525
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7526
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    .line 7527
    invoke-static {}, Lwallet/core/jni/proto/Solana$DeactivateStake;->getDefaultInstance()Lwallet/core/jni/proto/Solana$DeactivateStake;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7528
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$DeactivateStake;->newBuilder(Lwallet/core/jni/proto/Solana$DeactivateStake;)Lwallet/core/jni/proto/Solana$DeactivateStake$Builder;

    move-result-object v0

    .line 7529
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Solana$DeactivateStake$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    goto :goto_0

    .line 7531
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    .line 7533
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    return-void
.end method

.method private mergeDelegateStakeTransaction(Lwallet/core/jni/proto/Solana$DelegateStake;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7475
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7476
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    .line 7477
    invoke-static {}, Lwallet/core/jni/proto/Solana$DelegateStake;->getDefaultInstance()Lwallet/core/jni/proto/Solana$DelegateStake;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7478
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$DelegateStake;->newBuilder(Lwallet/core/jni/proto/Solana$DelegateStake;)Lwallet/core/jni/proto/Solana$DelegateStake$Builder;

    move-result-object v0

    .line 7479
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Solana$DelegateStake$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    goto :goto_0

    .line 7481
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    .line 7483
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    return-void
.end method

.method private mergeTokenTransferTransaction(Lwallet/core/jni/proto/Solana$TokenTransfer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7775
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7776
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    .line 7777
    invoke-static {}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Solana$TokenTransfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7778
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->newBuilder(Lwallet/core/jni/proto/Solana$TokenTransfer;)Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;

    move-result-object v0

    .line 7779
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    goto :goto_0

    .line 7781
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    .line 7783
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    return-void
.end method

.method private mergeTransferTransaction(Lwallet/core/jni/proto/Solana$Transfer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7425
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7426
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    .line 7427
    invoke-static {}, Lwallet/core/jni/proto/Solana$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Solana$Transfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7428
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$Transfer;->newBuilder(Lwallet/core/jni/proto/Solana$Transfer;)Lwallet/core/jni/proto/Solana$Transfer$Builder;

    move-result-object v0

    .line 7429
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Solana$Transfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    goto :goto_0

    .line 7431
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    .line 7433
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    return-void
.end method

.method private mergeWithdrawAllTransaction(Lwallet/core/jni/proto/Solana$WithdrawAllStake;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7675
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7676
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    .line 7677
    invoke-static {}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->getDefaultInstance()Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7678
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->newBuilder(Lwallet/core/jni/proto/Solana$WithdrawAllStake;)Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;

    move-result-object v0

    .line 7679
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    goto :goto_0

    .line 7681
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    .line 7683
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    return-void
.end method

.method private mergeWithdrawTransaction(Lwallet/core/jni/proto/Solana$WithdrawStake;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7625
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7626
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    .line 7627
    invoke-static {}, Lwallet/core/jni/proto/Solana$WithdrawStake;->getDefaultInstance()Lwallet/core/jni/proto/Solana$WithdrawStake;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7628
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawStake;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$WithdrawStake;->newBuilder(Lwallet/core/jni/proto/Solana$WithdrawStake;)Lwallet/core/jni/proto/Solana$WithdrawStake$Builder;

    move-result-object v0

    .line 7629
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Solana$WithdrawStake$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    goto :goto_0

    .line 7631
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    .line 7633
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1

    .line 7920
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Solana$SigningInput;)Lwallet/core/jni/proto/Solana$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 7923
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Solana$SigningInput;
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

    .line 7897
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$SigningInput;
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

    .line 7903
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$SigningInput;
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

    .line 7861
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$SigningInput;
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

    .line 7868
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Solana$SigningInput;
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

    .line 7908
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$SigningInput;
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

    .line 7915
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Solana$SigningInput;
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

    .line 7885
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$SigningInput;
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

    .line 7892
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Solana$SigningInput;
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

    .line 7848
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$SigningInput;
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

    .line 7855
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Solana$SigningInput;
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

    .line 7873
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$SigningInput;
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

    .line 7880
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Solana$SigningInput;",
            ">;"
        }
    .end annotation

    .line 8610
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCreateAndTransferTokenTransaction(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7817
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7818
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    const/16 p1, 0xc

    .line 7819
    iput p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    return-void
.end method

.method private setCreateTokenAccountTransaction(Lwallet/core/jni/proto/Solana$CreateTokenAccount;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7717
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7718
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    const/16 p1, 0xa

    .line 7719
    iput p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    return-void
.end method

.method private setDeactivateAllStakeTransaction(Lwallet/core/jni/proto/Solana$DeactivateAllStake;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7567
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7568
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 7569
    iput p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    return-void
.end method

.method private setDeactivateStakeTransaction(Lwallet/core/jni/proto/Solana$DeactivateStake;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7517
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7518
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 7519
    iput p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    return-void
.end method

.method private setDelegateStakeTransaction(Lwallet/core/jni/proto/Solana$DelegateStake;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7467
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7468
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 7469
    iput p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

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

    .line 7286
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7288
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setRecentBlockhash(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7339
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7341
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->recentBlockhash_:Ljava/lang/String;

    return-void
.end method

.method private setRecentBlockhashBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7364
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7365
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->recentBlockhash_:Ljava/lang/String;

    return-void
.end method

.method private setTokenTransferTransaction(Lwallet/core/jni/proto/Solana$TokenTransfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7767
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7768
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    const/16 p1, 0xb

    .line 7769
    iput p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    return-void
.end method

.method private setTransferTransaction(Lwallet/core/jni/proto/Solana$Transfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7417
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7418
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 7419
    iput p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    return-void
.end method

.method private setV0Msg(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7385
    iput-boolean p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->v0Msg_:Z

    return-void
.end method

.method private setWithdrawAllTransaction(Lwallet/core/jni/proto/Solana$WithdrawAllStake;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7667
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7668
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    const/16 p1, 0x9

    .line 7669
    iput p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    return-void
.end method

.method private setWithdrawTransaction(Lwallet/core/jni/proto/Solana$WithdrawStake;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7617
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7618
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 7619
    iput p1, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

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

    .line 8532
    sget-object p2, Lwallet/core/jni/proto/Solana$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 8588
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 8582
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 8567
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Solana$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 8569
    const-class p2, Lwallet/core/jni/proto/Solana$SigningInput;

    monitor-enter p2

    .line 8570
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Solana$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 8572
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Solana$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8575
    sput-object p1, Lwallet/core/jni/proto/Solana$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 8577
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

    .line 8564
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Solana$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningInput;

    return-object p1

    :pswitch_4
    const/16 p1, 0xe

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "transactionType_"

    aput-object v0, p1, p3

    const-string p3, "transactionTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "recentBlockhash_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "v0Msg_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 8540
    const-class p3, Lwallet/core/jni/proto/Solana$Transfer;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lwallet/core/jni/proto/Solana$DelegateStake;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lwallet/core/jni/proto/Solana$DeactivateStake;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lwallet/core/jni/proto/Solana$WithdrawStake;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-class p3, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-class p3, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-class p3, Lwallet/core/jni/proto/Solana$TokenTransfer;

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-class p3, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u000c\u0001\u0000\u0001\u000c\u000c\u0000\u0000\u0000\u0001\n\u0002\u0208\u0003\u0007\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\u0008<\u0000\t<\u0000\n<\u0000\u000b<\u0000\u000c<\u0000"

    .line 8560
    sget-object p3, Lwallet/core/jni/proto/Solana$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8537
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Solana$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Solana$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Solana$1;)V

    return-object p1

    .line 8534
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Solana$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Solana$SigningInput;-><init>()V

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

.method public getCreateAndTransferTokenTransaction()Lwallet/core/jni/proto/Solana$CreateAndTransferToken;
    .locals 2

    .line 7808
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 7809
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    return-object v0

    .line 7811
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getDefaultInstance()Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    move-result-object v0

    return-object v0
.end method

.method public getCreateTokenAccountTransaction()Lwallet/core/jni/proto/Solana$CreateTokenAccount;
    .locals 2

    .line 7708
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 7709
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    return-object v0

    .line 7711
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->getDefaultInstance()Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    move-result-object v0

    return-object v0
.end method

.method public getDeactivateAllStakeTransaction()Lwallet/core/jni/proto/Solana$DeactivateAllStake;
    .locals 2

    .line 7558
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 7559
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    return-object v0

    .line 7561
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->getDefaultInstance()Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    move-result-object v0

    return-object v0
.end method

.method public getDeactivateStakeTransaction()Lwallet/core/jni/proto/Solana$DeactivateStake;
    .locals 2

    .line 7508
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 7509
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Solana$DeactivateStake;

    return-object v0

    .line 7511
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Solana$DeactivateStake;->getDefaultInstance()Lwallet/core/jni/proto/Solana$DeactivateStake;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateStakeTransaction()Lwallet/core/jni/proto/Solana$DelegateStake;
    .locals 2

    .line 7458
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 7459
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Solana$DelegateStake;

    return-object v0

    .line 7461
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Solana$DelegateStake;->getDefaultInstance()Lwallet/core/jni/proto/Solana$DelegateStake;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7275
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRecentBlockhash()Ljava/lang/String;
    .locals 1

    .line 7314
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->recentBlockhash_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentBlockhashBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7327
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->recentBlockhash_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenTransferTransaction()Lwallet/core/jni/proto/Solana$TokenTransfer;
    .locals 2

    .line 7758
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 7759
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    return-object v0

    .line 7761
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Solana$TokenTransfer;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionTypeCase()Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;
    .locals 1

    .line 7254
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->forNumber(I)Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getTransferTransaction()Lwallet/core/jni/proto/Solana$Transfer;
    .locals 2

    .line 7408
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 7409
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    return-object v0

    .line 7411
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Solana$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Solana$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public getV0Msg()Z
    .locals 1

    .line 7377
    iget-boolean v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->v0Msg_:Z

    return v0
.end method

.method public getWithdrawAllTransaction()Lwallet/core/jni/proto/Solana$WithdrawAllStake;
    .locals 2

    .line 7658
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 7659
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    return-object v0

    .line 7661
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->getDefaultInstance()Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    move-result-object v0

    return-object v0
.end method

.method public getWithdrawTransaction()Lwallet/core/jni/proto/Solana$WithdrawStake;
    .locals 2

    .line 7608
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 7609
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionType_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawStake;

    return-object v0

    .line 7611
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Solana$WithdrawStake;->getDefaultInstance()Lwallet/core/jni/proto/Solana$WithdrawStake;

    move-result-object v0

    return-object v0
.end method

.method public hasCreateAndTransferTokenTransaction()Z
    .locals 2

    .line 7801
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCreateTokenAccountTransaction()Z
    .locals 2

    .line 7701
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeactivateAllStakeTransaction()Z
    .locals 2

    .line 7551
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeactivateStakeTransaction()Z
    .locals 2

    .line 7501
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDelegateStakeTransaction()Z
    .locals 2

    .line 7451
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTokenTransferTransaction()Z
    .locals 2

    .line 7751
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransferTransaction()Z
    .locals 2

    .line 7401
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWithdrawAllTransaction()Z
    .locals 2

    .line 7651
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWithdrawTransaction()Z
    .locals 2

    .line 7601
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput;->transactionTypeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
