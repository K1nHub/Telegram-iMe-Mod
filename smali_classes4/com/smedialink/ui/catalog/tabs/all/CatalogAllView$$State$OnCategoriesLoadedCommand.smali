.class public Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OnCategoriesLoadedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CatalogAllView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnCategoriesLoadedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;",
        ">;"
    }
.end annotation


# instance fields
.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 328
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onCategoriesLoaded"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 330
    iput-object p2, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OnCategoriesLoadedCommand;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OnCategoriesLoadedCommand;->items:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;->onCategoriesLoaded(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 324
    check-cast p1, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OnCategoriesLoadedCommand;->apply(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;)V

    return-void
.end method
