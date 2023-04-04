.class public Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$ResetLoadMoreCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CatalogCategoriesView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResetLoadMoreCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State;)V
    .locals 1

    .line 451
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "resetLoadMore"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;)V
    .locals 0

    .line 456
    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->resetLoadMore()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 449
    check-cast p1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$ResetLoadMoreCommand;->apply(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;)V

    return-void
.end method
