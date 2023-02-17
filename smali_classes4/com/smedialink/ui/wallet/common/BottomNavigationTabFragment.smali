.class public abstract Lcom/smedialink/ui/wallet/common/BottomNavigationTabFragment;
.super Lcom/smedialink/ui/base/WalletAuthFragment;
.source "BottomNavigationTabFragment.kt"


# instance fields
.field private bottomNavigationDelegate:Lcom/smedialink/ui/wallet/common/BottomNavigationDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;-><init>()V

    return-void
.end method

.method private final clearView()V
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->removeSelfFromParent(Landroid/view/View;)V

    :goto_0
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final getBottomNavigationDelegate()Lcom/smedialink/ui/wallet/common/BottomNavigationDelegate;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/ui/wallet/common/BottomNavigationTabFragment;->bottomNavigationDelegate:Lcom/smedialink/ui/wallet/common/BottomNavigationDelegate;

    return-object v0
.end method

.method public abstract handleBottomPadding(I)V
.end method

.method public onDestroyView()V
    .locals 0

    .line 23
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onDestroyView()V

    .line 24
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/common/BottomNavigationTabFragment;->clearView()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 18
    invoke-super {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->onResume()V

    .line 19
    iget-object v0, p0, Lcom/smedialink/ui/wallet/common/BottomNavigationTabFragment;->bottomNavigationDelegate:Lcom/smedialink/ui/wallet/common/BottomNavigationDelegate;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/smedialink/ui/wallet/common/BottomNavigationTabFragment$onResume$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/common/BottomNavigationTabFragment$onResume$1;-><init>(Lcom/smedialink/ui/wallet/common/BottomNavigationTabFragment;)V

    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/common/BottomNavigationDelegate;->getBottomNavigationPadding(Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method

.method public final setBottomNavigationDelegate(Lcom/smedialink/ui/wallet/common/BottomNavigationDelegate;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/smedialink/ui/wallet/common/BottomNavigationTabFragment;->bottomNavigationDelegate:Lcom/smedialink/ui/wallet/common/BottomNavigationDelegate;

    return-void
.end method

.method public shouldAskPinCode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
