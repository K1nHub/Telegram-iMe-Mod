.class public final Lcom/iMe/ui/adapter/provider/TweetProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "TweetProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/twitter/TweetItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemViewType:I

.field private final layoutId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 16
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TWEET:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/TweetProvider;->itemViewType:I

    .line 17
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_tweet:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/TweetProvider;->layoutId:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/twitter/TweetItem;)V
    .locals 13

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget v0, Lorg/telegram/messenger/R$id;->view_tweet:I

    const-string v1, "windowBackgroundWhite"

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedBackgroundColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 25
    sget v2, Lorg/telegram/messenger/R$id;->text_name:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v4, Lorg/telegram/messenger/R$id;->text_post:I

    const/4 v5, 0x1

    aput v4, v1, v5

    const-string v6, "windowBackgroundWhiteBlackText"

    invoke-static {p1, v6, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    new-array v1, v0, [I

    .line 26
    sget v6, Lorg/telegram/messenger/R$id;->text_nickname:I

    aput v6, v1, v3

    sget v7, Lorg/telegram/messenger/R$id;->text_time:I

    aput v7, v1, v5

    const-string v8, "windowBackgroundWhiteGrayText"

    invoke-static {p1, v8, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v1, 0x3

    new-array v8, v1, [I

    .line 27
    sget v9, Lorg/telegram/messenger/R$id;->text_comments_count:I

    aput v9, v8, v3

    sget v10, Lorg/telegram/messenger/R$id;->text_retweets_count:I

    aput v10, v8, v5

    sget v11, Lorg/telegram/messenger/R$id;->text_likes_count:I

    aput v11, v8, v0

    const-string v12, "windowBackgroundWhiteGrayText2"

    invoke-static {p1, v12, v8}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    new-array v1, v1, [I

    .line 28
    sget v8, Lorg/telegram/messenger/R$id;->image_comments:I

    aput v8, v1, v3

    sget v8, Lorg/telegram/messenger/R$id;->image_retweets:I

    aput v8, v1, v5

    sget v8, Lorg/telegram/messenger/R$id;->image_share:I

    aput v8, v1, v0

    invoke-static {p1, v12, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 29
    sget v0, Lorg/telegram/messenger/R$id;->image_like:I

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->isLiked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_heart_filled_20:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_heart_20:I

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 31
    invoke-static {p1, v8}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setAutoSizedCircleRippleBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 32
    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->isLiked()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v12, "windowBackgroundWhiteRedText5"

    :cond_1
    invoke-static {p1, v0, v12}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    new-array v0, v5, [I

    aput v2, v0, v3

    .line 33
    invoke-static {p1, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 34
    sget v0, Lorg/telegram/messenger/R$id;->image_avatar:I

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_logo_avatar:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v0, v1, v3, v5}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->loadImage(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;Ljava/lang/Integer;Z)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 35
    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getAuthorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 36
    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getAuthorNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 37
    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getText()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 38
    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getCommentsCountText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 39
    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getRetweetsCountText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v10, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 40
    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getLikesCountText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v11, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 41
    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getDate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v7, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 42
    sget-object p2, Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$1;->INSTANCE:Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$1;

    invoke-static {p1, v4, p2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/twitter/TweetItem;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/iMe/model/twitter/TweetItem;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget p3, Lorg/telegram/messenger/R$id;->image_like:I

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->isLiked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_heart_filled_20:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_heart_20:I

    :goto_0
    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 53
    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->isLiked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "windowBackgroundWhiteRedText5"

    goto :goto_1

    :cond_1
    const-string v0, "windowBackgroundWhiteGrayText2"

    :goto_1
    invoke-static {p1, p3, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 54
    sget p3, Lorg/telegram/messenger/R$id;->image_avatar:I

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_logo_avatar:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, p3, v0, v1, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->loadImage(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;Ljava/lang/Integer;Z)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 55
    sget p3, Lorg/telegram/messenger/R$id;->text_name:I

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getAuthorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 56
    sget p3, Lorg/telegram/messenger/R$id;->text_nickname:I

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getAuthorNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 57
    sget p3, Lorg/telegram/messenger/R$id;->text_post:I

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getText()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 58
    sget p3, Lorg/telegram/messenger/R$id;->text_comments_count:I

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getCommentsCountText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 59
    sget p3, Lorg/telegram/messenger/R$id;->text_retweets_count:I

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getRetweetsCountText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 60
    sget p3, Lorg/telegram/messenger/R$id;->text_likes_count:I

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getLikesCountText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 61
    sget p3, Lorg/telegram/messenger/R$id;->text_time:I

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getDate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/iMe/model/twitter/TweetItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/TweetProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/twitter/TweetItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/iMe/model/twitter/TweetItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/adapter/provider/TweetProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/twitter/TweetItem;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/iMe/ui/adapter/provider/TweetProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/iMe/ui/adapter/provider/TweetProvider;->layoutId:I

    return v0
.end method

.method public onViewAttachedToWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->onViewAttachedToWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 67
    sget v0, Lorg/telegram/messenger/R$id;->text_post:I

    sget-object v1, Lcom/iMe/ui/adapter/provider/TweetProvider$onViewAttachedToWindow$1;->INSTANCE:Lcom/iMe/ui/adapter/provider/TweetProvider$onViewAttachedToWindow$1;

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method
