.class public interface abstract Lcom/smedialink/ui/catalog/tabs/user_channels/CatalogUserChannelsView;
.super Ljava/lang/Object;
.source "CatalogUserChannelsView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;
.implements Lcom/smedialink/ui/custom/state/GlobalStateView;
.implements Lcom/smedialink/ui/base/mvp/LoadMoreView;
.implements Lcom/smedialink/ui/base/mvp/SwipeRefreshView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/smedialink/ui/base/mvp/base/BaseView;",
        "Lcom/smedialink/ui/custom/state/GlobalStateView;",
        "Lcom/smedialink/ui/base/mvp/LoadMoreView<",
        "Lcom/smedialink/model/catalog/CampaignItem;",
        ">;",
        "Lcom/smedialink/ui/base/mvp/SwipeRefreshView;"
    }
.end annotation

.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract openAddChannelScreen()V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method

.method public abstract showItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation
.end method
