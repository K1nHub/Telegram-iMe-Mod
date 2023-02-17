.class public final Lcom/smedialink/ui/wallet/crypto/settings/adapter/WalletAccountSettingsRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "WalletAccountSettingsRecycleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;",
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

    .line 13
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_account_settings:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/settings/adapter/WalletAccountSettingsRecycleAdapter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget v0, Lorg/telegram/messenger/R$id;->linear_root:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    const-string v2, "windowBackgroundWhite"

    .line 20
    invoke-static {v1, v0, v2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedBackgroundColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 21
    sget v1, Lorg/telegram/messenger/R$id;->text_setting_description:I

    const-string v2, "windowBackgroundWhiteGrayText2"

    invoke-static {v0, v1, v2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 22
    sget v2, Lorg/telegram/messenger/R$id;->text_setting_title:I

    const-string v3, "windowBackgroundWhiteBlackText"

    invoke-static {v0, v2, v3}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 23
    sget v3, Lorg/telegram/messenger/R$id;->image_icon:I

    const-string v4, "windowBackgroundWhiteGrayIcon"

    invoke-static {v0, v3, v4}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 24
    invoke-virtual {p2}, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;->getIcon()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 25
    sget v3, Lorg/telegram/messenger/R$id;->view_divider:I

    invoke-static {p1, p0}, Lcom/smedialink/utils/extentions/common/RecycleViewExtKt;->isLastItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, v3, p1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/settings/adapter/WalletAccountSettingsRecycleAdapter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;->getTitle()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/settings/adapter/WalletAccountSettingsRecycleAdapter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;->getDescription()I

    move-result p2

    invoke-interface {v0, p2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/wallet/crypto/settings/adapter/WalletAccountSettingsRecycleAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;)V

    return-void
.end method
