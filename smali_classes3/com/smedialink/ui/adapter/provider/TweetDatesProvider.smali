.class public final Lcom/smedialink/ui/adapter/provider/TweetDatesProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "TweetDatesProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/smedialink/model/twitter/TweetsDateItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemViewType:I

.field private final layoutId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 20
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TWEETS_DATE:I

    iput v0, p0, Lcom/smedialink/ui/adapter/provider/TweetDatesProvider;->itemViewType:I

    .line 21
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_date:I

    iput v0, p0, Lcom/smedialink/ui/adapter/provider/TweetDatesProvider;->layoutId:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/twitter/TweetsDateItem;)V
    .locals 3

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget v0, Lorg/telegram/messenger/R$id;->text_date:I

    const-string v1, "chat_serviceText"

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 28
    invoke-static {p1, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 29
    invoke-virtual {p2}, Lcom/smedialink/model/twitter/TweetsDateItem;->getDate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 30
    sget-object p2, Lcom/smedialink/ui/adapter/provider/TweetDatesProvider$convert$1;->INSTANCE:Lcom/smedialink/ui/adapter/provider/TweetDatesProvider$convert$1;

    invoke-static {p1, v0, p2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/twitter/TweetsDateItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/smedialink/model/twitter/TweetsDateItem;",
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

    .line 41
    sget p3, Lorg/telegram/messenger/R$id;->text_date:I

    invoke-virtual {p2}, Lcom/smedialink/model/twitter/TweetsDateItem;->getDate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/smedialink/model/twitter/TweetsDateItem;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/adapter/provider/TweetDatesProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/twitter/TweetsDateItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/smedialink/model/twitter/TweetsDateItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/ui/adapter/provider/TweetDatesProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/twitter/TweetsDateItem;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/TweetDatesProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/TweetDatesProvider;->layoutId:I

    return v0
.end method
