.class public final Lcom/iMe/feature/twitter/adapter/diff/TweetsDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "TweetsDiffCallback.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    instance-of v0, p1, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 22
    :cond_0
    instance-of v0, p1, Lcom/iMe/model/twitter/TweetItem;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/iMe/model/twitter/TweetItem;

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 23
    :cond_1
    instance-of v0, p1, Lcom/iMe/model/twitter/TweetsDateItem;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/iMe/model/twitter/TweetsDateItem;

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 9
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/feature/twitter/adapter/diff/TweetsDiffCallback;->areContentsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z
    .locals 4

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    instance-of v0, p1, Lcom/iMe/model/common/GlobalStateItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/iMe/model/common/GlobalStateItem;

    invoke-virtual {p1}, Lcom/iMe/model/common/GlobalStateItem;->getState()Lcom/iMe/model/state/GlobalState;

    move-result-object p1

    check-cast p2, Lcom/iMe/model/common/GlobalStateItem;

    invoke-virtual {p2}, Lcom/iMe/model/common/GlobalStateItem;->getState()Lcom/iMe/model/state/GlobalState;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 15
    :cond_0
    instance-of v0, p1, Lcom/iMe/model/twitter/TweetItem;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/iMe/model/twitter/TweetItem;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/iMe/model/twitter/TweetItem;

    invoke-virtual {p1}, Lcom/iMe/model/twitter/TweetItem;->getId()J

    move-result-wide v2

    check-cast p2, Lcom/iMe/model/twitter/TweetItem;

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getId()J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 16
    :cond_1
    instance-of v0, p1, Lcom/iMe/model/twitter/TweetsDateItem;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/iMe/model/twitter/TweetsDateItem;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/iMe/model/twitter/TweetsDateItem;

    invoke-virtual {p1}, Lcom/iMe/model/twitter/TweetsDateItem;->getDate()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/iMe/model/twitter/TweetsDateItem;

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetsDateItem;->getDate()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 9
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/feature/twitter/adapter/diff/TweetsDiffCallback;->areItemsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z

    move-result p1

    return p1
.end method

.method public getChangePayload(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Ljava/lang/Object;
    .locals 2

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    instance-of v0, p1, Lcom/iMe/model/twitter/TweetItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/iMe/model/twitter/TweetItem;

    if-eqz v0, :cond_0

    .line 29
    check-cast p1, Lcom/iMe/model/twitter/TweetItem;

    invoke-virtual {p1}, Lcom/iMe/model/twitter/TweetItem;->isLiked()Z

    move-result p1

    check-cast p2, Lcom/iMe/model/twitter/TweetItem;

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->isLiked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    :goto_0
    move-object v1, p2

    goto :goto_1

    .line 32
    :cond_0
    instance-of v0, p1, Lcom/iMe/model/twitter/TweetsDateItem;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/iMe/model/twitter/TweetsDateItem;

    if-eqz v0, :cond_1

    .line 33
    check-cast p1, Lcom/iMe/model/twitter/TweetsDateItem;

    invoke-virtual {p1}, Lcom/iMe/model/twitter/TweetsDateItem;->getDate()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/iMe/model/twitter/TweetsDateItem;

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetsDateItem;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method public bridge synthetic getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/feature/twitter/adapter/diff/TweetsDiffCallback;->getChangePayload(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
