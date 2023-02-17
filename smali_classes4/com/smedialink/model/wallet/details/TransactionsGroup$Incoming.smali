.class public final Lcom/smedialink/model/wallet/details/TransactionsGroup$Incoming;
.super Lcom/smedialink/model/wallet/details/TransactionsGroup;
.source "TransactionsGroup.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/details/TransactionsGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Incoming"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/model/wallet/details/TransactionsGroup$Incoming;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/model/wallet/details/TransactionsGroup$Incoming;

    invoke-direct {v0}, Lcom/smedialink/model/wallet/details/TransactionsGroup$Incoming;-><init>()V

    sput-object v0, Lcom/smedialink/model/wallet/details/TransactionsGroup$Incoming;->INSTANCE:Lcom/smedialink/model/wallet/details/TransactionsGroup$Incoming;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 24
    sget v0, Lorg/telegram/messenger/R$id;->wallet_token_details_transactions_incoming:I

    .line 25
    sget v1, Lorg/telegram/messenger/R$string;->wallet_token_details_transactions_incoming:I

    const/4 v2, 0x0

    .line 23
    invoke-direct {p0, v0, v1, v2}, Lcom/smedialink/model/wallet/details/TransactionsGroup;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public checkTransaction(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Z
    .locals 2

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v0

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->IN:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    if-ne v0, v1, :cond_1

    .line 30
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;

    if-nez v0, :cond_0

    .line 31
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Unsupported;

    if-nez v0, :cond_0

    .line 32
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    if-nez v0, :cond_0

    .line 33
    instance-of p1, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Refund;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
