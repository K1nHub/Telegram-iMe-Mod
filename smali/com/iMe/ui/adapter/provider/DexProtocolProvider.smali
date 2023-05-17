.class public final Lcom/iMe/ui/adapter/provider/DexProtocolProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "DexProtocolProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/wallet/swap/DexProtocolItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemViewType:I

.field private final layoutId:I

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/DexProtocolProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 19
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SWAP_PROTOCOL:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/DexProtocolProvider;->itemViewType:I

    .line 20
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_card_icon_title_subtitle:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/DexProtocolProvider;->layoutId:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/swap/DexProtocolItem;)V
    .locals 6

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget v0, Lorg/telegram/messenger/R$id;->card_root:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedCardBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 27
    sget v1, Lorg/telegram/messenger/R$id;->text_title:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelText:I

    invoke-static {p1, v1, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 28
    sget v2, Lorg/telegram/messenger/R$id;->text_subtitle:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {p1, v2, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 29
    sget v3, Lorg/telegram/messenger/R$id;->image_icon:I

    invoke-virtual {p2}, Lcom/iMe/model/wallet/swap/DexProtocolItem;->getInfo()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;->getLogo()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    .line 30
    invoke-static {p1, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 31
    iget-object v3, p0, Lcom/iMe/ui/adapter/provider/DexProtocolProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/swap/DexProtocolItem;->getInfo()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;->getName()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 32
    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/DexProtocolProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/swap/DexProtocolItem;->getInfo()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;->getDescription()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 33
    sget v1, Lorg/telegram/messenger/R$id;->frame_root:I

    invoke-virtual {p2}, Lcom/iMe/model/wallet/swap/DexProtocolItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v2, 0x3e99999a    # 0.3f

    :goto_0
    invoke-static {p1, v1, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setAlpha(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IF)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 34
    invoke-virtual {p2}, Lcom/iMe/model/wallet/swap/DexProtocolItem;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-static {p1, v0, p2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILandroid/graphics/drawable/Drawable;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/iMe/model/wallet/swap/DexProtocolItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/DexProtocolProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/swap/DexProtocolItem;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/iMe/ui/adapter/provider/DexProtocolProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/iMe/ui/adapter/provider/DexProtocolProvider;->layoutId:I

    return v0
.end method
