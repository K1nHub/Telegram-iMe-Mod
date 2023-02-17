.class public final Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup$Incoming;
.super Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup;
.source "BinanceTransactionsGroup.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Incoming"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup$Incoming;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup$Incoming;

    invoke-direct {v0}, Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup$Incoming;-><init>()V

    sput-object v0, Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup$Incoming;->INSTANCE:Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup$Incoming;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 25
    sget v0, Lorg/telegram/messenger/R$id;->wallet_token_details_transactions_incoming:I

    .line 26
    sget v1, Lorg/telegram/messenger/R$string;->wallet_token_details_transactions_incoming:I

    const/4 v2, 0x0

    .line 24
    invoke-direct {p0, v0, v1, v2}, Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public checkTransaction(Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;)Z
    .locals 1

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->getDirection()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object p1

    sget-object v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;->IN:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
