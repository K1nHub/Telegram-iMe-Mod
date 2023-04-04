.class public Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$RenderNodesCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CatalogCategoriesView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderNodesCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 264
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "renderNodes"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 266
    iput-object p2, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$RenderNodesCommand;->nodes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$RenderNodesCommand;->nodes:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;->renderNodes(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 260
    check-cast p1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$RenderNodesCommand;->apply(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;)V

    return-void
.end method
