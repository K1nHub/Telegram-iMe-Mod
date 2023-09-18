.class public final Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "CryptoBoxStatusInfoRecycleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 3

    const-string/jumbo v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_cryptobox_status:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget v0, Lorg/telegram/messenger/R$id;->text_description:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 24
    sget v2, Lorg/telegram/messenger/R$id;->view_divider:I

    invoke-static {p1, p0}, Lcom/iMe/utils/extentions/common/RecycleViewExtKt;->isLastItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v1, v2, p1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 27
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->getDescriptionResId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 25
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 29
    sget v0, Lorg/telegram/messenger/R$id;->image_check:I

    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter$convert$1;

    invoke-direct {v1, p0, p2}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter$convert$1;-><init>(Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;)V

    return-void
.end method
