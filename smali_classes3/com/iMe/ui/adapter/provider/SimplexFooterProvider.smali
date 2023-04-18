.class public final Lcom/iMe/ui/adapter/provider/SimplexFooterProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "SimplexFooterProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;",
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
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/SimplexFooterProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 19
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->FOOTER:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/SimplexFooterProvider;->itemViewType:I

    .line 20
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_crypto_buy_footer:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/SimplexFooterProvider;->layoutId:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;)V
    .locals 4

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget v0, Lorg/telegram/messenger/R$id;->text_title:I

    const-string v1, "chats_date"

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 27
    sget v1, Lorg/telegram/messenger/R$id;->text_powered_by:I

    const-string v2, "chats_attachMessage"

    invoke-static {p1, v1, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const-string v2, "windowBackgroundWhiteGrayText2"

    .line 28
    invoke-static {p1, v0, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedCompoundDrawablesColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 29
    iget-object v2, p0, Lcom/iMe/ui/adapter/provider/SimplexFooterProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;->getTitle()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 30
    invoke-virtual {p2}, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;->getDescription()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/SimplexFooterProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/iMe/ui/adapter/provider/SimplexFooterProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/iMe/ui/adapter/provider/SimplexFooterProvider;->layoutId:I

    return v0
.end method
