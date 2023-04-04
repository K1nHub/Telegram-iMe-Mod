.class public Lcom/iMe/ui/catalog/tabs/all/CatalogAllView$$State$OnNestedLoadMoreCompleteCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CatalogAllView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/catalog/tabs/all/CatalogAllView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnNestedLoadMoreCompleteCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;",
        ">;"
    }
.end annotation


# instance fields
.field public final categoryId:J


# direct methods
.method constructor <init>(Lcom/iMe/ui/catalog/tabs/all/CatalogAllView$$State;J)V
    .locals 1

    .line 361
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onNestedLoadMoreComplete"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 363
    iput-wide p2, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView$$State$OnNestedLoadMoreCompleteCommand;->categoryId:J

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;)V
    .locals 2

    .line 368
    iget-wide v0, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView$$State$OnNestedLoadMoreCompleteCommand;->categoryId:J

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;->onNestedLoadMoreComplete(J)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 357
    check-cast p1, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView$$State$OnNestedLoadMoreCompleteCommand;->apply(Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;)V

    return-void
.end method
