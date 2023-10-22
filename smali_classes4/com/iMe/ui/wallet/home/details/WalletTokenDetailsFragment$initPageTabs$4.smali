.class final Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$initPageTabs$4;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletTokenDetailsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->initPageTabs()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$initPageTabs$4;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .locals 2

    .line 718
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$initPageTabs$4;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->access$getNavigationRouter(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.iMe.navigation.common.router.base.BaseNavigationRouter<com.iMe.ui.base.mvp.MvpFragment>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/navigation/common/router/base/BaseNavigationRouter;

    .line 719
    sget v1, Lorg/telegram/messenger/R$id;->wallet_token_details_transactions_all:I

    .line 718
    invoke-virtual {v0, v1}, Lcom/iMe/navigation/common/router/base/BaseNavigationRouter;->getViewByFragmentId(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 709
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$initPageTabs$4;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
