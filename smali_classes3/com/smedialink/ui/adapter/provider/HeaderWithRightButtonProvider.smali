.class public final Lcom/smedialink/ui/adapter/provider/HeaderWithRightButtonProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "HeaderWithRightButtonProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemViewType:I

.field private final layoutId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 18
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER_WITH_RIGHT_BUTTON:I

    iput v0, p0, Lcom/smedialink/ui/adapter/provider/HeaderWithRightButtonProvider;->itemViewType:I

    .line 19
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_header_with_right_button:I

    iput v0, p0, Lcom/smedialink/ui/adapter/provider/HeaderWithRightButtonProvider;->layoutId:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;)V
    .locals 4

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget v0, Lorg/telegram/messenger/R$id;->text_wallet_header:I

    const-string v1, "windowBackgroundWhiteGrayText2"

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 26
    invoke-static {p1, v2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 27
    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 28
    sget v0, Lorg/telegram/messenger/R$id;->image_header_right_button:I

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 29
    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;->getIconRes()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 30
    invoke-static {p1, v0}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setCircleRippleBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;",
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

    .line 34
    sget p3, Lorg/telegram/messenger/R$id;->text_wallet_header:I

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/adapter/provider/HeaderWithRightButtonProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/ui/adapter/provider/HeaderWithRightButtonProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/HeaderWithRightButtonProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/HeaderWithRightButtonProvider;->layoutId:I

    return v0
.end method
