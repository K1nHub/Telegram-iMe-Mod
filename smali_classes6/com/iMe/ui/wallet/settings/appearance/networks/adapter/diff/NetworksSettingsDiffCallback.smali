.class public final Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/diff/NetworksSettingsDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "NetworksSettingsDiffCallback.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/iMe/model/wallet/settings/NetworkSettingsItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/iMe/model/wallet/settings/NetworkSettingsItem;Lcom/iMe/model/wallet/settings/NetworkSettingsItem;)Z
    .locals 1

    const-string/jumbo v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;->isEnabled()Z

    move-result p1

    invoke-virtual {p2}, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;->isEnabled()Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 6
    check-cast p1, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;

    check-cast p2, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/diff/NetworksSettingsDiffCallback;->areContentsTheSame(Lcom/iMe/model/wallet/settings/NetworkSettingsItem;Lcom/iMe/model/wallet/settings/NetworkSettingsItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/iMe/model/wallet/settings/NetworkSettingsItem;Lcom/iMe/model/wallet/settings/NetworkSettingsItem;)Z
    .locals 1

    const-string/jumbo v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;->getNetworkItem()Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;->getNetworkItem()Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 6
    check-cast p1, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;

    check-cast p2, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/diff/NetworksSettingsDiffCallback;->areItemsTheSame(Lcom/iMe/model/wallet/settings/NetworkSettingsItem;Lcom/iMe/model/wallet/settings/NetworkSettingsItem;)Z

    move-result p1

    return p1
.end method

.method public getChangePayload(Lcom/iMe/model/wallet/settings/NetworkSettingsItem;Lcom/iMe/model/wallet/settings/NetworkSettingsItem;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;->isEnabled()Z

    move-result p1

    invoke-virtual {p2}, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;->isEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public bridge synthetic getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;

    check-cast p2, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/diff/NetworksSettingsDiffCallback;->getChangePayload(Lcom/iMe/model/wallet/settings/NetworkSettingsItem;Lcom/iMe/model/wallet/settings/NetworkSettingsItem;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
