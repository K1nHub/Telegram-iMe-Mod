.class public final Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "CatalogUserChannelsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView;",
        ">;"
    }
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/catalog/ChatType;)V
    .locals 1

    const-string v0, "chatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    return-void
.end method

.method private final showItems()V
    .locals 5

    .line 33
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 35
    new-instance v2, Lcom/iMe/model/catalog/CreateCampaignItem;

    .line 36
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_add_account_40:I

    .line 37
    sget v4, Lorg/telegram/messenger/R$string;->catalog_user_channels_create:I

    .line 35
    invoke-direct {v2, v3, v4}, Lcom/iMe/model/catalog/CreateCampaignItem;-><init>(II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 34
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView;->showItems(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final onAddChannelClick()V
    .locals 1

    .line 17
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView;

    invoke-interface {v0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView;->openAddChannelScreen()V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsPresenter;->showItems()V

    return-void
.end method
