.class final Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$showRefreshLoading$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BuyCryptoProductFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment;->showRefreshLoading(Z)V
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
.field final synthetic $show:Z

.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$showRefreshLoading$1;->this$0:Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment;

    iput-boolean p2, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$showRefreshLoading$1;->$show:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$showRefreshLoading$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$showRefreshLoading$1;->this$0:Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment;->access$getBinding(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment;)Lorg/telegram/messenger/databinding/ForkFragmentWalletCryptoBuyBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletCryptoBuyBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    iget-boolean v1, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$showRefreshLoading$1;->$show:Z

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
