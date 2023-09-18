.class public final Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseNodeAdapter;
.source "TweetsRecycleAdapter.kt"

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
    value = "SMAP\nTweetsRecycleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TweetsRecycleAdapter.kt\ncom/iMe/feature/twitter/adapter/TweetsRecycleAdapter\n+ 2 AnyExt.kt\ncom/iMe/utils/extentions/common/AnyExtKt\n*L\n1#1,37:1\n10#2,2:38\n*S KotlinDebug\n*F\n+ 1 TweetsRecycleAdapter.kt\ncom/iMe/feature/twitter/adapter/TweetsRecycleAdapter\n*L\n35#1:38,2\n*E\n"
.end annotation


# instance fields
.field private final globalStateProvider:Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

.field private final tweetProvider:Lcom/iMe/ui/adapter/provider/TweetProvider;

.field private final tweetsDateProvider:Lcom/iMe/ui/adapter/provider/TweetDatesProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/adapter/provider/TweetProvider;Lcom/iMe/ui/adapter/provider/TweetDatesProvider;Lcom/iMe/ui/adapter/provider/GlobalStateProvider;)V
    .locals 4

    const-string v0, "tweetProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tweetsDateProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalStateProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 21
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    iput-object p1, p0, Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;->tweetProvider:Lcom/iMe/ui/adapter/provider/TweetProvider;

    .line 19
    iput-object p2, p0, Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;->tweetsDateProvider:Lcom/iMe/ui/adapter/provider/TweetDatesProvider;

    .line 20
    iput-object p3, p0, Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;->globalStateProvider:Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 24
    sget v2, Lorg/telegram/messenger/R$id;->image_share:I

    const/4 v3, 0x0

    aput v2, v0, v3

    sget v2, Lorg/telegram/messenger/R$id;->image_menu:I

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addChildClickViewIds([I)V

    .line 25
    invoke-static {p3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 26
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 27
    invoke-static {p2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method


# virtual methods
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

    .line 31
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 32
    instance-of p2, p1, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz p2, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->GLOBAL_STATE:I

    goto :goto_0

    .line 33
    :cond_0
    instance-of p2, p1, Lcom/iMe/model/twitter/TweetItem;

    if-eqz p2, :cond_1

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TWEET:I

    goto :goto_0

    .line 34
    :cond_1
    instance-of p1, p1, Lcom/iMe/model/twitter/TweetsDateItem;

    if-eqz p1, :cond_2

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TWEETS_DATE:I

    goto :goto_0

    .line 35
    :cond_2
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TWEET:I

    :goto_0
    return p1
.end method

.method public final getTweetProvider()Lcom/iMe/ui/adapter/provider/TweetProvider;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;->tweetProvider:Lcom/iMe/ui/adapter/provider/TweetProvider;

    return-object v0
.end method
