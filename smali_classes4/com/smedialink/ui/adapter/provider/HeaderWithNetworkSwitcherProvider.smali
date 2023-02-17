.class public final Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "HeaderWithNetworkSwitcherProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemViewType:I

.field private final layoutId:I

.field private onNetworkViewLayoutAction:Lorg/fork/utils/Callbacks$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 24
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER_WITH_NETWORK_SWITCHER:I

    iput v0, p0, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;->itemViewType:I

    .line 25
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_dashboard_header_with_network_switcher:I

    iput v0, p0, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;->layoutId:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;)V
    .locals 3

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget v0, Lorg/telegram/messenger/R$id;->text_wallet_header:I

    const-string v1, "windowBackgroundWhiteGrayText2"

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 32
    invoke-static {p1, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 33
    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 34
    sget v0, Lorg/telegram/messenger/R$id;->frame_network_type:I

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;->isNetworkSwitcherVisible()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 35
    invoke-static {p1, v0}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setCircleRippleBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 36
    sget v0, Lorg/telegram/messenger/R$id;->view_network_type:I

    new-instance v1, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1;

    invoke-direct {v1, p2, p0}, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1;-><init>(Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;)V

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;",
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

    .line 44
    sget p3, Lorg/telegram/messenger/R$id;->text_wallet_header:I

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 45
    sget p3, Lorg/telegram/messenger/R$id;->frame_network_type:I

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;->isNetworkSwitcherVisible()Z

    move-result v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 46
    sget p3, Lorg/telegram/messenger/R$id;->view_network_type:I

    new-instance v0, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$2;

    invoke-direct {v0, p2}, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$2;-><init>(Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;)V

    invoke-static {p1, p3, v0}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;->layoutId:I

    return v0
.end method

.method public final getOnNetworkViewLayoutAction()Lorg/fork/utils/Callbacks$Callback;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;->onNetworkViewLayoutAction:Lorg/fork/utils/Callbacks$Callback;

    return-object v0
.end method

.method public final setOnNetworkViewLayoutAction(Lorg/fork/utils/Callbacks$Callback;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;->onNetworkViewLayoutAction:Lorg/fork/utils/Callbacks$Callback;

    return-void
.end method
