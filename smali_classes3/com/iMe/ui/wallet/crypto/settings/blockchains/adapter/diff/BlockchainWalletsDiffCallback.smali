.class public final Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/diff/BlockchainWalletsDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "BlockchainWalletsDiffCallback.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    instance-of v0, p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 17
    :cond_0
    instance-of v0, p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 18
    :cond_1
    instance-of p1, p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$ResetAllWallets;

    if-eqz p1, :cond_2

    instance-of p1, p2, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$ResetAllWallets;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 7
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/diff/BlockchainWalletsDiffCallback;->areContentsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z
    .locals 3

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    instance-of v0, p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->getAddress()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 10
    :cond_0
    instance-of v0, p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object p1

    check-cast p2, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object p2

    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 11
    :cond_1
    instance-of p1, p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$ResetAllWallets;

    if-eqz p1, :cond_2

    instance-of p1, p2, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$ResetAllWallets;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 7
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/diff/BlockchainWalletsDiffCallback;->areItemsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z

    move-result p1

    return p1
.end method
