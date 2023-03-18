.class public final Lcom/smedialink/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseNodeAdapter;
.source "TwitterUsersRecycleAdapter.kt"

# interfaces
.implements Lcom/chad/library/adapter/base/module/LoadMoreModule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseNodeAdapter<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTwitterUsersRecycleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TwitterUsersRecycleAdapter.kt\ncom/smedialink/ui/twitter/search/adapter/TwitterUsersRecycleAdapter\n+ 2 AnyExt.kt\ncom/smedialink/utils/extentions/common/AnyExtKt\n*L\n1#1,49:1\n10#2,2:50\n*S KotlinDebug\n*F\n+ 1 TwitterUsersRecycleAdapter.kt\ncom/smedialink/ui/twitter/search/adapter/TwitterUsersRecycleAdapter\n*L\n36#1:50,2\n*E\n"
.end annotation


# instance fields
.field private final globalStateProvider:Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;

.field private final twitterInviteProvider:Lcom/smedialink/ui/adapter/provider/TwitterInviteProvider;

.field private final twitterUserProvider:Lcom/smedialink/ui/adapter/provider/TwitterUserProvider;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;Lcom/smedialink/ui/adapter/provider/TwitterInviteProvider;Lcom/smedialink/ui/adapter/provider/TwitterUserProvider;)V
    .locals 2

    const-string v0, "globalStateProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "twitterInviteProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "twitterUserProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 21
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    iput-object p1, p0, Lcom/smedialink/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;->globalStateProvider:Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;

    .line 19
    iput-object p2, p0, Lcom/smedialink/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;->twitterInviteProvider:Lcom/smedialink/ui/adapter/provider/TwitterInviteProvider;

    .line 20
    iput-object p3, p0, Lcom/smedialink/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;->twitterUserProvider:Lcom/smedialink/ui/adapter/provider/TwitterUserProvider;

    .line 24
    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 25
    invoke-static {p2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 26
    invoke-static {p3}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method


# virtual methods
.method public final getGlobalStateProvider()Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/smedialink/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;->globalStateProvider:Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;

    return-object v0
.end method

.method protected getItemType(Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;I)I"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 33
    instance-of p2, p1, Lcom/smedialink/model/common/GlobalStateItem;

    if-eqz p2, :cond_0

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->GLOBAL_STATE:I

    goto :goto_0

    .line 34
    :cond_0
    instance-of p2, p1, Lcom/smedialink/model/twitter/TwitterUserItem;

    if-eqz p2, :cond_1

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TWITTER_USER:I

    goto :goto_0

    .line 35
    :cond_1
    instance-of p1, p1, Lcom/smedialink/model/twitter/TwitterInviteItem;

    if-eqz p1, :cond_2

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TWITTER_INVITE:I

    goto :goto_0

    .line 36
    :cond_2
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TWITTER_USER:I

    :goto_0
    return p1
.end method

.method public final getTwitterInviteProvider()Lcom/smedialink/ui/adapter/provider/TwitterInviteProvider;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/smedialink/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;->twitterInviteProvider:Lcom/smedialink/ui/adapter/provider/TwitterInviteProvider;

    return-object v0
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;->onViewRecycled(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 41
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    .line 42
    iget-object v0, p0, Lcom/smedialink/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;->twitterUserProvider:Lcom/smedialink/ui/adapter/provider/TwitterUserProvider;

    invoke-virtual {v0}, Lcom/smedialink/ui/adapter/provider/TwitterUserProvider;->getItemViewType()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/smedialink/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;->twitterUserProvider:Lcom/smedialink/ui/adapter/provider/TwitterUserProvider;

    invoke-virtual {p1}, Lcom/smedialink/ui/adapter/provider/TwitterUserProvider;->onViewRecycled()V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;->twitterInviteProvider:Lcom/smedialink/ui/adapter/provider/TwitterInviteProvider;

    invoke-virtual {v0}, Lcom/smedialink/ui/adapter/provider/TwitterInviteProvider;->getItemViewType()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/smedialink/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;->twitterInviteProvider:Lcom/smedialink/ui/adapter/provider/TwitterInviteProvider;

    invoke-virtual {p1}, Lcom/smedialink/ui/adapter/provider/TwitterInviteProvider;->onViewRecycled()V

    :cond_1
    :goto_0
    return-void
.end method
