.class final Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment$presenter$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletBinancePayHistoryFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment$presenter$2;->invoke()Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/koin/core/parameter/ParametersHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment$presenter$2$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment$presenter$2$1;->invoke()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/koin/core/parameter/ParametersHolder;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment$presenter$2$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment;

    invoke-static {v1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment;->access$getScreenType$p(Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment;)Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment$ScreenType;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment$presenter$2$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment;

    invoke-static {v1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment;->access$getTokenCode$p(Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/koin/core/parameter/ParametersHolderKt;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method
