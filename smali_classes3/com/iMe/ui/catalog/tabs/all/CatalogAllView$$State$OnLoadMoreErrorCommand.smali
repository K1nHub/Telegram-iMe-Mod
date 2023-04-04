.class public Lcom/iMe/ui/catalog/tabs/all/CatalogAllView$$State$OnLoadMoreErrorCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CatalogAllView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/catalog/tabs/all/CatalogAllView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnLoadMoreErrorCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/catalog/tabs/all/CatalogAllView$$State;)V
    .locals 1

    .line 567
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onLoadMoreError"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;)V
    .locals 0

    .line 572
    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreError()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 565
    check-cast p1, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView$$State$OnLoadMoreErrorCommand;->apply(Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;)V

    return-void
.end method
