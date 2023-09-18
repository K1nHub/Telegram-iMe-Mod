.class public final Lcom/iMe/ui/adapter/provider/FoundTokenProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "FoundTokenProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/wallet/home/FoundTokenItem;",
        ">;"
    }
.end annotation


# instance fields
.field private isLastItemDividerVisible:Z

.field private isTickerVisible:Z

.field private final itemViewType:I

.field private final layoutId:I

.field private final networkIconCornerSize$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/iMe/ui/adapter/provider/FoundTokenProvider;->isLastItemDividerVisible:Z

    .line 29
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TOKEN:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/FoundTokenProvider;->itemViewType:I

    .line 30
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_found_token:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/FoundTokenProvider;->layoutId:I

    .line 32
    new-instance v0, Lcom/iMe/ui/adapter/provider/FoundTokenProvider$networkIconCornerSize$2;

    invoke-direct {v0, p1}, Lcom/iMe/ui/adapter/provider/FoundTokenProvider$networkIconCornerSize$2;-><init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/FoundTokenProvider;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getNetworkIconCornerSize(Lcom/iMe/ui/adapter/provider/FoundTokenProvider;)F
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/iMe/ui/adapter/provider/FoundTokenProvider;->getNetworkIconCornerSize()F

    move-result p0

    return p0
.end method

.method private final getNetworkIconCornerSize()F
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/FoundTokenProvider;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/FoundTokenItem;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "helper"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "item"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget v3, Lorg/telegram/messenger/R$id;->constraint_root:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v3

    .line 38
    sget v5, Lorg/telegram/messenger/R$id;->text_name:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3, v5, v6}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v3

    .line 39
    sget v6, Lorg/telegram/messenger/R$id;->text_address:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v3, v6, v7}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v8

    .line 40
    sget v9, Lorg/telegram/messenger/R$id;->image_token_icon:I

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/wallet/home/FoundTokenItem;->getTokenLogoUrl()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xc

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->loadImage$default(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v15

    .line 41
    sget v3, Lorg/telegram/messenger/R$id;->image_network_icon:I

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/wallet/home/FoundTokenItem;->getNetworkLogoUrl()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xc

    const/16 v21, 0x0

    move/from16 v16, v3

    invoke-static/range {v15 .. v21}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->loadImage$default(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v7

    .line 42
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/wallet/home/FoundTokenItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v5

    .line 43
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/wallet/home/FoundTokenItem;->getAddress()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v7, v4, v8, v9}, Lcom/iMe/utils/extentions/common/StringExtKt;->shortened$default(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v5

    .line 44
    sget v7, Lorg/telegram/messenger/R$id;->text_ticker:I

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/wallet/home/FoundTokenItem;->getTicker()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v5

    .line 45
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/wallet/home/FoundTokenItem;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/2addr v9, v8

    invoke-static {v5, v6, v9}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v5

    .line 46
    iget-boolean v6, v0, Lcom/iMe/ui/adapter/provider/FoundTokenProvider;->isTickerVisible:Z

    invoke-static {v5, v7, v6}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v5

    .line 47
    sget v6, Lorg/telegram/messenger/R$id;->view_switch:I

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/wallet/home/FoundTokenItem;->isSwitchable()Z

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v5

    .line 49
    sget v7, Lorg/telegram/messenger/R$id;->divider_horizontal:I

    .line 50
    iget-boolean v9, v0, Lcom/iMe/ui/adapter/provider/FoundTokenProvider;->isLastItemDividerVisible:Z

    if-nez v9, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;->getAdapter()Lcom/chad/library/adapter/base/BaseNodeAdapter;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, v9}, Lcom/iMe/utils/extentions/common/RecycleViewExtKt;->isLastItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v4, v8

    .line 48
    :cond_1
    invoke-static {v5, v7, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 52
    new-instance v4, Lcom/iMe/ui/adapter/provider/FoundTokenProvider$convert$1;

    invoke-direct {v4, v2}, Lcom/iMe/ui/adapter/provider/FoundTokenProvider$convert$1;-><init>(Lcom/iMe/model/wallet/home/FoundTokenItem;)V

    invoke-static {v1, v6, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/iMe/ui/adapter/provider/FoundTokenProvider$convert$2;

    invoke-direct {v2, v0}, Lcom/iMe/ui/adapter/provider/FoundTokenProvider$convert$2;-><init>(Lcom/iMe/ui/adapter/provider/FoundTokenProvider;)V

    invoke-static {v1, v3, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/FoundTokenItem;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/iMe/model/wallet/home/FoundTokenItem;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "helper"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "item"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "payloads"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget v2, Lorg/telegram/messenger/R$id;->text_name:I

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/wallet/home/FoundTokenItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 73
    sget v2, Lorg/telegram/messenger/R$id;->text_ticker:I

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/wallet/home/FoundTokenItem;->getTicker()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v4

    .line 74
    sget v5, Lorg/telegram/messenger/R$id;->image_token_icon:I

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/wallet/home/FoundTokenItem;->getTokenLogoUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->loadImage$default(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v11

    .line 75
    sget v12, Lorg/telegram/messenger/R$id;->image_network_icon:I

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/wallet/home/FoundTokenItem;->getNetworkLogoUrl()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xc

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->loadImage$default(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 76
    sget v2, Lorg/telegram/messenger/R$id;->view_switch:I

    new-instance v3, Lcom/iMe/ui/adapter/provider/FoundTokenProvider$convert$3;

    invoke-direct {v3, v1}, Lcom/iMe/ui/adapter/provider/FoundTokenProvider$convert$3;-><init>(Lcom/iMe/model/wallet/home/FoundTokenItem;)V

    invoke-static {v0, v2, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Lcom/iMe/model/wallet/home/FoundTokenItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/FoundTokenProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/FoundTokenItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 22
    check-cast p2, Lcom/iMe/model/wallet/home/FoundTokenItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/adapter/provider/FoundTokenProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/FoundTokenItem;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/iMe/ui/adapter/provider/FoundTokenProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/iMe/ui/adapter/provider/FoundTokenProvider;->layoutId:I

    return v0
.end method

.method public final setLastItemDividerVisible(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/iMe/ui/adapter/provider/FoundTokenProvider;->isLastItemDividerVisible:Z

    return-void
.end method

.method public final setTickerVisible(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/iMe/ui/adapter/provider/FoundTokenProvider;->isTickerVisible:Z

    return-void
.end method
