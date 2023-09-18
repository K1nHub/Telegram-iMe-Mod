.class public final Lcom/iMe/ui/adapter/provider/CryptoBoxProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "CryptoBoxProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/cryptobox/CryptoBoxItem;",
        ">;"
    }
.end annotation


# instance fields
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

    .line 26
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->CRYPTOBOX:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxProvider;->itemViewType:I

    .line 27
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_cryptobox:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxProvider;->layoutId:I

    .line 29
    new-instance v0, Lcom/iMe/ui/adapter/provider/CryptoBoxProvider$networkIconCornerSize$2;

    invoke-direct {v0, p1}, Lcom/iMe/ui/adapter/provider/CryptoBoxProvider$networkIconCornerSize$2;-><init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxProvider;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getNetworkIconCornerSize(Lcom/iMe/ui/adapter/provider/CryptoBoxProvider;)F
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/iMe/ui/adapter/provider/CryptoBoxProvider;->getNetworkIconCornerSize()F

    move-result p0

    return p0
.end method

.method private final getNetworkIconCornerSize()F
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxProvider;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/cryptobox/CryptoBoxItem;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "helper"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "item"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget v2, Lorg/telegram/messenger/R$id;->constraint_root:I

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 38
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 39
    sget v5, Lorg/telegram/messenger/R$id;->text_name:I

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 40
    sget v7, Lorg/telegram/messenger/R$id;->text_description:I

    aput v7, v4, v3

    .line 37
    invoke-static {v0, v2, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 43
    sget v2, Lorg/telegram/messenger/R$id;->text_creation_time:I

    .line 44
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    .line 42
    invoke-static {v0, v2, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 46
    sget v4, Lorg/telegram/messenger/R$id;->text_status:I

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/cryptobox/CryptoBoxItem;->getStatusColorResId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v4, v8}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    new-array v8, v3, [I

    aput v5, v8, v6

    .line 47
    invoke-static {v0, v8}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v9

    .line 48
    sget v0, Lorg/telegram/messenger/R$id;->image_token_logo:I

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/cryptobox/CryptoBoxItem;->getTokenLogoUrl()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xc

    const/4 v15, 0x0

    move v10, v0

    invoke-static/range {v9 .. v15}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->loadImage$default(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v6

    .line 49
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/cryptobox/CryptoBoxItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v5

    .line 50
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/cryptobox/CryptoBoxItem;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v5

    .line 51
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/cryptobox/CryptoBoxItem;->getCreationTimeText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v2

    .line 52
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/cryptobox/CryptoBoxItem;->getStatusText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v2

    .line 53
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/cryptobox/CryptoBoxItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v3, v4

    invoke-static {v2, v7, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v2

    .line 54
    sget v3, Lorg/telegram/messenger/R$id;->image_logo:I

    new-instance v4, Lcom/iMe/ui/adapter/provider/CryptoBoxProvider$convert$1$1;

    invoke-direct {v4, v1}, Lcom/iMe/ui/adapter/provider/CryptoBoxProvider$convert$1$1;-><init>(Lcom/iMe/model/cryptobox/CryptoBoxItem;)V

    invoke-static {v2, v3, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 64
    new-instance v2, Lcom/iMe/ui/adapter/provider/CryptoBoxProvider$convert$1$2;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Lcom/iMe/ui/adapter/provider/CryptoBoxProvider$convert$1$2;-><init>(Lcom/iMe/ui/adapter/provider/CryptoBoxProvider;)V

    invoke-static {v1, v0, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/cryptobox/CryptoBoxItem;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/iMe/model/cryptobox/CryptoBoxItem;",
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

    .line 77
    sget p3, Lorg/telegram/messenger/R$id;->text_status:I

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iMe/model/cryptobox/CryptoBoxItem;->getStatusColorResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 78
    sget p1, Lorg/telegram/messenger/R$id;->image_logo:I

    invoke-virtual {p2}, Lcom/iMe/model/cryptobox/CryptoBoxItem;->getChatAvatarUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move v2, p1

    invoke-static/range {v1 .. v7}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->loadImage$default(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 79
    sget v1, Lorg/telegram/messenger/R$id;->text_name:I

    invoke-virtual {p2}, Lcom/iMe/model/cryptobox/CryptoBoxItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 80
    sget v1, Lorg/telegram/messenger/R$id;->text_description:I

    invoke-virtual {p2}, Lcom/iMe/model/cryptobox/CryptoBoxItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 81
    sget v1, Lorg/telegram/messenger/R$id;->text_creation_time:I

    invoke-virtual {p2}, Lcom/iMe/model/cryptobox/CryptoBoxItem;->getCreationTimeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 82
    invoke-virtual {p2}, Lcom/iMe/model/cryptobox/CryptoBoxItem;->getStatusText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p3

    .line 83
    new-instance v0, Lcom/iMe/ui/adapter/provider/CryptoBoxProvider$convert$2$1;

    invoke-direct {v0, p2}, Lcom/iMe/ui/adapter/provider/CryptoBoxProvider$convert$2$1;-><init>(Lcom/iMe/model/cryptobox/CryptoBoxItem;)V

    invoke-static {p3, p1, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Lcom/iMe/model/cryptobox/CryptoBoxItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/CryptoBoxProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/cryptobox/CryptoBoxItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 22
    check-cast p2, Lcom/iMe/model/cryptobox/CryptoBoxItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/adapter/provider/CryptoBoxProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/cryptobox/CryptoBoxItem;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxProvider;->layoutId:I

    return v0
.end method
