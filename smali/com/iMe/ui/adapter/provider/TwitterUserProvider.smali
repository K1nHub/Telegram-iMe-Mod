.class public final Lcom/iMe/ui/adapter/provider/TwitterUserProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "TwitterUserProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/twitter/TwitterUserItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemViewType:I

.field private final layoutId:I

.field private userCell:Lorg/telegram/ui/Cells/UserCell;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 16
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TWITTER_USER:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/TwitterUserProvider;->itemViewType:I

    .line 17
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_twitter_user:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/TwitterUserProvider;->layoutId:I

    return-void
.end method

.method public static final synthetic access$setUserCell$p(Lcom/iMe/ui/adapter/provider/TwitterUserProvider;Lorg/telegram/ui/Cells/UserCell;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/TwitterUserProvider;->userCell:Lorg/telegram/ui/Cells/UserCell;

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/twitter/TwitterUserItem;)V
    .locals 2

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget v0, Lorg/telegram/messenger/R$id;->frame_container:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 33
    new-instance v1, Lcom/iMe/ui/adapter/provider/TwitterUserProvider$convert$1;

    invoke-direct {v1, p2, p0}, Lcom/iMe/ui/adapter/provider/TwitterUserProvider$convert$1;-><init>(Lcom/iMe/model/twitter/TwitterUserItem;Lcom/iMe/ui/adapter/provider/TwitterUserProvider;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/twitter/TwitterUserItem;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/iMe/model/twitter/TwitterUserItem;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "payloads"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/iMe/ui/adapter/provider/TwitterUserProvider;->userCell:Lorg/telegram/ui/Cells/UserCell;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p2}, Lcom/iMe/model/twitter/TwitterUserItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TwitterUserItem;->getNickname()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 48
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/UserCell;->hideNameDrawable()V

    .line 49
    invoke-virtual {p2}, Lcom/iMe/model/twitter/TwitterUserItem;->getAvatarUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/UserCell;->setAvatar(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/iMe/model/twitter/TwitterUserItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/TwitterUserProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/twitter/TwitterUserItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/iMe/model/twitter/TwitterUserItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/adapter/provider/TwitterUserProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/twitter/TwitterUserItem;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/iMe/ui/adapter/provider/TwitterUserProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/iMe/ui/adapter/provider/TwitterUserProvider;->layoutId:I

    return v0
.end method

.method public final onViewRecycled()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/iMe/ui/adapter/provider/TwitterUserProvider;->userCell:Lorg/telegram/ui/Cells/UserCell;

    return-void
.end method
