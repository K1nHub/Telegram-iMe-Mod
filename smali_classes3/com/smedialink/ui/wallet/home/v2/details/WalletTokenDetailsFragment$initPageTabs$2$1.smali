.class final Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$initPageTabs$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletTokenDetailsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->initPageTabs()Ljava/util/List;
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
.field final synthetic $group:Lcom/smedialink/model/wallet/details/TransactionsGroup;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;Lcom/smedialink/model/wallet/details/TransactionsGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$initPageTabs$2$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$initPageTabs$2$1;->$group:Lcom/smedialink/model/wallet/details/TransactionsGroup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$initPageTabs$2$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->access$getNavigationRouter(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)Lcom/smedialink/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.smedialink.navigation.common.router.base.BaseNavigationRouter<com.smedialink.ui.base.mvp.MvpFragment>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$initPageTabs$2$1;->$group:Lcom/smedialink/model/wallet/details/TransactionsGroup;

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/details/TransactionsGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->getViewByFragmentId(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 448
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$initPageTabs$2$1;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
