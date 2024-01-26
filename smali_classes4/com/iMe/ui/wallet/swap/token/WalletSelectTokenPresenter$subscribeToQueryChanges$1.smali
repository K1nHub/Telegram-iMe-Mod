.class final Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$subscribeToQueryChanges$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSelectTokenPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->subscribeToQueryChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$subscribeToQueryChanges$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 235
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$subscribeToQueryChanges$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 0

    .line 236
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$subscribeToQueryChanges$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    return-void
.end method
