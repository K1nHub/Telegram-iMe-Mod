.class public final Lcom/smedialink/ui/wallet/transaction/details/adapter/WalletActionAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "WalletActionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/smedialink/model/wallet/ActionItem;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)V
    .locals 3

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_action:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    iput-object p1, p0, Lcom/smedialink/ui/wallet/transaction/details/adapter/WalletActionAdapter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/ActionItem;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget v0, Lorg/telegram/messenger/R$id;->linear_root:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const-string v1, "windowBackgroundWhite"

    .line 23
    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedBackgroundColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 24
    sget v0, Lorg/telegram/messenger/R$id;->image_action:I

    const-string v1, "dialogIcon"

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 25
    sget v1, Lorg/telegram/messenger/R$id;->text_action:I

    const-string v2, "dialogTextBlack"

    invoke-static {p1, v1, v2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 26
    invoke-interface {p2}, Lcom/smedialink/model/wallet/ActionItem;->getIcon()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/adapter/WalletActionAdapter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-interface {p2, v0}, Lcom/smedialink/model/wallet/ActionItem;->getTitle(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/smedialink/model/wallet/ActionItem;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/wallet/transaction/details/adapter/WalletActionAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/ActionItem;)V

    return-void
.end method
