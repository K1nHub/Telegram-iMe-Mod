.class final Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment$setupListeners$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletBinancePayHistoryFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment$setupListeners$1$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment$setupListeners$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment$setupListeners$1$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment;->access$getPresenter(Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment;)Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryPresenter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryPresenter;->loadTransactions$default(Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryPresenter;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
