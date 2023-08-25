.class public final Lcom/iMe/ui/adapter/provider/CryptoBoxesChatProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "CryptoBoxesChatProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/cryptobox/CryptoBoxesChatItem;",
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

    .line 17
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxesChatProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 19
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->CRYPTOBOXES_CHAT:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxesChatProvider;->itemViewType:I

    .line 20
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_cryptoboxes_chat:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxesChatProvider;->layoutId:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/cryptobox/CryptoBoxesChatItem;)V
    .locals 3

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget v0, Lorg/telegram/messenger/R$id;->text_description:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 25
    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxesChatProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->cryptoboxes_chat_filter_description:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 26
    sget v0, Lorg/telegram/messenger/R$id;->input_chat:I

    new-instance v1, Lcom/iMe/ui/adapter/provider/CryptoBoxesChatProvider$convert$1;

    invoke-direct {v1, p2}, Lcom/iMe/ui/adapter/provider/CryptoBoxesChatProvider$convert$1;-><init>(Lcom/iMe/model/cryptobox/CryptoBoxesChatItem;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/iMe/model/cryptobox/CryptoBoxesChatItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/CryptoBoxesChatProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/cryptobox/CryptoBoxesChatItem;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxesChatProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxesChatProvider;->layoutId:I

    return v0
.end method
