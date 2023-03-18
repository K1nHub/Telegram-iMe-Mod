.class public abstract Lcom/smedialink/ui/catalog/tabs/CatalogTabFragment;
.super Lcom/smedialink/ui/base/mvp/MvpFragment;
.source "CatalogTabFragment.kt"


# instance fields
.field private bottomNavigationDelegate:Lcom/smedialink/ui/wallet/common/BottomNavigationDelegate;

.field private isCreated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract handleBottomPadding(I)V
.end method

.method public final isCreated()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/smedialink/ui/catalog/tabs/CatalogTabFragment;->isCreated:Z

    return v0
.end method

.method public onResume()V
    .locals 2

    .line 24
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onResume()V

    .line 25
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/CatalogTabFragment;->bottomNavigationDelegate:Lcom/smedialink/ui/wallet/common/BottomNavigationDelegate;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/smedialink/ui/catalog/tabs/CatalogTabFragment$onResume$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/catalog/tabs/CatalogTabFragment$onResume$1;-><init>(Lcom/smedialink/ui/catalog/tabs/CatalogTabFragment;)V

    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/common/BottomNavigationDelegate;->getBottomNavigationPadding(Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public abstract onSelectedLanguageChanged()V
.end method

.method public onViewCreated()V
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onViewCreated()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/smedialink/ui/catalog/tabs/CatalogTabFragment;->isCreated:Z

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method

.method public final setBottomNavigationDelegate(Lcom/smedialink/ui/wallet/common/BottomNavigationDelegate;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/smedialink/ui/catalog/tabs/CatalogTabFragment;->bottomNavigationDelegate:Lcom/smedialink/ui/wallet/common/BottomNavigationDelegate;

    return-void
.end method
