.class public final Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup$All;
.super Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup;
.source "BinanceTransactionsGroup.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "All"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup$All;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup$All;

    invoke-direct {v0}, Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup$All;-><init>()V

    sput-object v0, Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup$All;->INSTANCE:Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup$All;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 16
    sget v0, Lorg/telegram/messenger/R$id;->wallet_token_details_transactions_all:I

    .line 17
    sget v1, Lorg/telegram/messenger/R$string;->wallet_token_details_transactions_all:I

    const/4 v2, 0x0

    .line 15
    invoke-direct {p0, v0, v1, v2}, Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public checkTransaction(Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;)Z
    .locals 1

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
