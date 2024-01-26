.class public final Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/WalletNetworksSettingsRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "WalletNetworksSettingsRecycleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/iMe/model/wallet/settings/NetworkSettingsItem;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 14
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_networks_settings:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/settings/NetworkSettingsItem;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget v0, Lorg/telegram/messenger/R$id;->view_network_cell:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 19
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedBackgroundColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 20
    new-instance v1, Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/WalletNetworksSettingsRecycleAdapter$convert$1;

    invoke-direct {v1, p2}, Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/WalletNetworksSettingsRecycleAdapter$convert$1;-><init>(Lcom/iMe/model/wallet/settings/NetworkSettingsItem;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/settings/NetworkSettingsItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/iMe/model/wallet/settings/NetworkSettingsItem;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget p3, Lorg/telegram/messenger/R$id;->view_network_cell:I

    new-instance v0, Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/WalletNetworksSettingsRecycleAdapter$convert$2;

    invoke-direct {v0, p2}, Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/WalletNetworksSettingsRecycleAdapter$convert$2;-><init>(Lcom/iMe/model/wallet/settings/NetworkSettingsItem;)V

    invoke-static {p1, p3, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/WalletNetworksSettingsRecycleAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/settings/NetworkSettingsItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/WalletNetworksSettingsRecycleAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/settings/NetworkSettingsItem;Ljava/util/List;)V

    return-void
.end method
