.class public final Lcom/iMe/ui/adapter/provider/AddTokensProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "AddTokensProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/wallet/home/CryptoAddTokensItem;",
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

    .line 19
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/AddTokensProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 22
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->ADD_TOKENS:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/AddTokensProvider;->itemViewType:I

    .line 23
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_crypto_add_tokens:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/AddTokensProvider;->layoutId:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/CryptoAddTokensItem;)V
    .locals 2

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget p2, Lorg/telegram/messenger/R$id;->frame_container:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 30
    sget p2, Lorg/telegram/messenger/R$id;->text_add_tokens:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {p1, p2, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/AddTokensProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_home_crypto_add_tokens:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 35
    sget-object v0, Lcom/iMe/ui/adapter/provider/AddTokensProvider$convert$1;->INSTANCE:Lcom/iMe/ui/adapter/provider/AddTokensProvider$convert$1;

    invoke-static {p1, p2, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/iMe/model/wallet/home/CryptoAddTokensItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/AddTokensProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/CryptoAddTokensItem;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/iMe/ui/adapter/provider/AddTokensProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/iMe/ui/adapter/provider/AddTokensProvider;->layoutId:I

    return v0
.end method
