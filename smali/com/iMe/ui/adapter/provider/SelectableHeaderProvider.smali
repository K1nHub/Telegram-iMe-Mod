.class public final Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "SelectableHeaderProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/wallet/home/SelectableHeaderItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemViewType:I

.field private final layoutId:I

.field private popupWindow:Landroidx/appcompat/widget/ListPopupWindow;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 22
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SELECTABLE_HEADER:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;->itemViewType:I

    .line 23
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_dashboard_header_with_icon:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;->layoutId:I

    return-void
.end method

.method public static final synthetic access$getPopupWindow$p(Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;)Landroidx/appcompat/widget/ListPopupWindow;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;->popupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$setPopupWindow$p(Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;Landroidx/appcompat/widget/ListPopupWindow;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;->popupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/SelectableHeaderItem;)V
    .locals 5

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget v0, Lorg/telegram/messenger/R$id;->text_wallet_header:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    .line 33
    invoke-static {v2, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v2

    .line 34
    iget-object v3, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/SelectableHeaderItem;->getTitleResId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 35
    sget v2, Lorg/telegram/messenger/R$id;->header_info_icon:I

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/SelectableHeaderItem;->getIcon()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 36
    invoke-static {v0, v2, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 37
    sget v1, Lorg/telegram/messenger/R$id;->linear_root:I

    new-instance v2, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1;-><init>(Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;Lcom/iMe/model/wallet/home/SelectableHeaderItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-static {v0, v1, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/SelectableHeaderItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/iMe/model/wallet/home/SelectableHeaderItem;",
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

    .line 57
    sget p3, Lorg/telegram/messenger/R$id;->text_wallet_header:I

    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/SelectableHeaderItem;->getTitleResId()I

    move-result p2

    invoke-interface {v0, p2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/iMe/model/wallet/home/SelectableHeaderItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/SelectableHeaderItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/iMe/model/wallet/home/SelectableHeaderItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/SelectableHeaderItem;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;->layoutId:I

    return v0
.end method
