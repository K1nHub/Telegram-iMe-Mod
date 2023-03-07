.class public Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OnNestedLoadMoreErrorCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CatalogAllView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnNestedLoadMoreErrorCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;",
        ">;"
    }
.end annotation


# instance fields
.field public final categoryId:J


# direct methods
.method constructor <init>(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State;J)V
    .locals 1

    .line 376
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onNestedLoadMoreError"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 378
    iput-wide p2, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OnNestedLoadMoreErrorCommand;->categoryId:J

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;)V
    .locals 2

    .line 383
    iget-wide v0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OnNestedLoadMoreErrorCommand;->categoryId:J

    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;->onNestedLoadMoreError(J)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 372
    check-cast p1, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OnNestedLoadMoreErrorCommand;->apply(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;)V

    return-void
.end method
