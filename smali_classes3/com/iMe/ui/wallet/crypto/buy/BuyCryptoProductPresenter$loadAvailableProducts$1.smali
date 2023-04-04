.class final Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BuyCryptoProductPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->loadAvailableProducts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/reactivex/disposables/Disposable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$1;->this$0:Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$1;->invoke(Lio/reactivex/disposables/Disposable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$1;->this$0:Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;->showRefreshLoading(Z)V

    return-void
.end method
