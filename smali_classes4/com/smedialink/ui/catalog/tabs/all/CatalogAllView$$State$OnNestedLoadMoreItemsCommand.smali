.class public Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OnNestedLoadMoreItemsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CatalogAllView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnNestedLoadMoreItemsCommand"
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

.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/model/catalog/CampaignItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State;JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/smedialink/model/catalog/CampaignItem;",
            ">;)V"
        }
    .end annotation

    .line 345
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onNestedLoadMoreItems"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 347
    iput-wide p2, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OnNestedLoadMoreItemsCommand;->categoryId:J

    .line 348
    iput-object p4, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OnNestedLoadMoreItemsCommand;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;)V
    .locals 3

    .line 353
    iget-wide v0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OnNestedLoadMoreItemsCommand;->categoryId:J

    iget-object v2, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OnNestedLoadMoreItemsCommand;->items:Ljava/util/List;

    invoke-interface {p1, v0, v1, v2}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;->onNestedLoadMoreItems(JLjava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 339
    check-cast p1, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OnNestedLoadMoreItemsCommand;->apply(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;)V

    return-void
.end method
