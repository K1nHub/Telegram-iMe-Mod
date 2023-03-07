.class public final Lcom/smedialink/ui/catalog/tabs/CatalogPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "CatalogPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/catalog/tabs/CatalogView;",
        ">;"
    }
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public final selectTab(I)V
    .locals 1

    .line 16
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/catalog/tabs/CatalogView;

    invoke-interface {v0, p1}, Lcom/smedialink/ui/catalog/tabs/CatalogView;->onTabSelected(I)V

    return-void
.end method

.method public final setupNavigationRouter()V
    .locals 1

    .line 12
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/catalog/tabs/CatalogView;

    invoke-interface {v0}, Lcom/smedialink/ui/catalog/tabs/CatalogView;->onSetupNavigationRouter()V

    return-void
.end method
