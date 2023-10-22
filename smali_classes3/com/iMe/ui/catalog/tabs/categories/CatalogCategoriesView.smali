.class public interface abstract Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;
.super Ljava/lang/Object;
.source "CatalogCategoriesView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;
.implements Lcom/iMe/ui/custom/state/GlobalStateView;
.implements Lcom/iMe/ui/base/mvp/LoadMoreView;
.implements Lcom/iMe/ui/base/mvp/SwipeRefreshView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iMe/ui/base/mvp/base/BaseView;",
        "Lcom/iMe/ui/custom/state/GlobalStateView;",
        "Lcom/iMe/ui/base/mvp/LoadMoreView<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;",
        "Lcom/iMe/ui/base/mvp/SwipeRefreshView;"
    }
.end annotation

.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract openCampaignDetailsScreen(Lcom/iMe/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/catalog/ChatType;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method

.method public abstract renderNodes(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation
.end method
