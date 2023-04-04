.class public final Lcom/iMe/model/wallet/details/TransactionsGroup$Outgoing;
.super Lcom/iMe/model/wallet/details/TransactionsGroup;
.source "TransactionsGroup.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/details/TransactionsGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Outgoing"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/details/TransactionsGroup$Outgoing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/details/TransactionsGroup$Outgoing;

    invoke-direct {v0}, Lcom/iMe/model/wallet/details/TransactionsGroup$Outgoing;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/details/TransactionsGroup$Outgoing;->INSTANCE:Lcom/iMe/model/wallet/details/TransactionsGroup$Outgoing;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 37
    sget v0, Lorg/telegram/messenger/R$id;->wallet_token_details_transactions_outgoing:I

    .line 38
    sget v1, Lorg/telegram/messenger/R$string;->wallet_token_details_transactions_outgoing:I

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/model/wallet/details/TransactionsGroup;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public checkTransaction(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)Z
    .locals 2

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->OUT:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    if-ne v0, v1, :cond_1

    .line 43
    instance-of v0, p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Transfer;

    if-nez v0, :cond_0

    .line 44
    instance-of v0, p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Unsupported;

    if-nez v0, :cond_0

    .line 45
    instance-of v0, p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    if-nez v0, :cond_0

    .line 46
    instance-of p1, p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Refund;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
