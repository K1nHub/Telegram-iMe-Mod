.class public final Lcom/iMe/ui/wallet/home/adapter/diff/BalanceDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "BalanceDiffCallback.kt"


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

    .line 18
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z
    .locals 1

    const-string/jumbo v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    instance-of v0, p1, Lcom/iMe/model/wallet/home/AccountItem;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/iMe/model/wallet/home/AccountItem;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto/16 :goto_0

    .line 44
    :cond_0
    instance-of v0, p1, Lcom/iMe/model/wallet/home/HeaderItem;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/iMe/model/wallet/home/HeaderItem;

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto/16 :goto_0

    .line 45
    :cond_1
    instance-of v0, p1, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto/16 :goto_0

    .line 46
    :cond_2
    instance-of v0, p1, Lcom/iMe/model/wallet/home/SelectableHeaderItem;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/iMe/model/wallet/home/SelectableHeaderItem;

    if-eqz v0, :cond_3

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto/16 :goto_0

    .line 47
    :cond_3
    instance-of v0, p1, Lcom/iMe/model/wallet/home/TotalBalanceItem;

    if-eqz v0, :cond_4

    instance-of v0, p2, Lcom/iMe/model/wallet/home/TotalBalanceItem;

    if-eqz v0, :cond_4

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 48
    :cond_4
    instance-of v0, p1, Lcom/iMe/model/wallet/home/ServicesBasicItem;

    if-eqz v0, :cond_5

    instance-of v0, p2, Lcom/iMe/model/wallet/home/ServicesBasicItem;

    if-eqz v0, :cond_5

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 49
    :cond_5
    instance-of v0, p1, Lcom/iMe/model/wallet/home/CryptoAddTokensItem;

    if-eqz v0, :cond_6

    instance-of v0, p2, Lcom/iMe/model/wallet/home/CryptoAddTokensItem;

    if-eqz v0, :cond_6

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 50
    :cond_6
    instance-of v0, p1, Lcom/iMe/model/wallet/home/BannerItem;

    if-eqz v0, :cond_7

    instance-of v0, p2, Lcom/iMe/model/wallet/home/BannerItem;

    if-eqz v0, :cond_7

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 51
    :cond_7
    instance-of v0, p1, Lcom/iMe/model/wallet/home/CryptoAccountItem;

    if-eqz v0, :cond_8

    instance-of v0, p2, Lcom/iMe/model/wallet/home/CryptoAccountItem;

    if-eqz v0, :cond_8

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 52
    :cond_8
    instance-of v0, p1, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz v0, :cond_9

    instance-of v0, p2, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz v0, :cond_9

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 53
    :cond_9
    instance-of v0, p1, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    if-eqz v0, :cond_a

    instance-of v0, p2, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    if-eqz v0, :cond_a

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 54
    :cond_a
    instance-of v0, p1, Lcom/iMe/model/wallet/home/nft/NftTokenItem;

    if-eqz v0, :cond_b

    instance-of v0, p2, Lcom/iMe/model/wallet/home/nft/NftTokenItem;

    if-eqz v0, :cond_b

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_b
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 18
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/home/adapter/diff/BalanceDiffCallback;->areContentsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z
    .locals 5

    const-string/jumbo v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    instance-of v0, p1, Lcom/iMe/model/wallet/home/AccountItem;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/iMe/model/wallet/home/AccountItem;

    if-eqz v0, :cond_0

    .line 23
    check-cast p1, Lcom/iMe/model/wallet/home/AccountItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/AccountItem;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Lcom/iMe/model/wallet/home/AccountItem;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/AccountItem;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 24
    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/AccountItem;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/AccountItem;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    :goto_0
    move v1, v2

    goto/16 :goto_1

    .line 27
    :cond_0
    instance-of v0, p1, Lcom/iMe/model/wallet/home/HeaderItem;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/iMe/model/wallet/home/HeaderItem;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/iMe/model/wallet/home/HeaderItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/HeaderItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/iMe/model/wallet/home/HeaderItem;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/HeaderItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_1

    .line 28
    :cond_1
    instance-of v0, p1, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->getTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_1

    .line 29
    :cond_2
    instance-of v0, p1, Lcom/iMe/model/wallet/home/SelectableHeaderItem;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/iMe/model/wallet/home/SelectableHeaderItem;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/iMe/model/wallet/home/SelectableHeaderItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/SelectableHeaderItem;->getId()I

    move-result p1

    check-cast p2, Lcom/iMe/model/wallet/home/SelectableHeaderItem;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/SelectableHeaderItem;->getId()I

    move-result p2

    if-ne p1, p2, :cond_c

    goto :goto_0

    .line 30
    :cond_3
    instance-of v0, p1, Lcom/iMe/model/wallet/home/TotalBalanceItem;

    if-eqz v0, :cond_4

    instance-of v0, p2, Lcom/iMe/model/wallet/home/TotalBalanceItem;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/iMe/model/wallet/home/TotalBalanceItem;

    invoke-virtual {p1}, Lcom/iMe/model/common/NoChildNode;->getItemType()I

    move-result p1

    check-cast p2, Lcom/iMe/model/wallet/home/TotalBalanceItem;

    invoke-virtual {p2}, Lcom/iMe/model/common/NoChildNode;->getItemType()I

    move-result p2

    if-ne p1, p2, :cond_c

    goto :goto_0

    .line 31
    :cond_4
    instance-of v0, p1, Lcom/iMe/model/wallet/home/ServicesBasicItem;

    if-eqz v0, :cond_5

    instance-of v0, p2, Lcom/iMe/model/wallet/home/ServicesBasicItem;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/iMe/model/wallet/home/ServicesBasicItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/ServicesBasicItem;->getCategory()Lcom/iMe/model/wallet/home/ServicesCategory;

    move-result-object p1

    check-cast p2, Lcom/iMe/model/wallet/home/ServicesBasicItem;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/ServicesBasicItem;->getCategory()Lcom/iMe/model/wallet/home/ServicesCategory;

    move-result-object p2

    if-ne p1, p2, :cond_c

    goto :goto_0

    .line 32
    :cond_5
    instance-of v0, p1, Lcom/iMe/model/wallet/home/CryptoAccountItem;

    if-eqz v0, :cond_6

    instance-of v0, p2, Lcom/iMe/model/wallet/home/CryptoAccountItem;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/iMe/model/wallet/home/CryptoAccountItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/CryptoAccountItem;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    check-cast p2, Lcom/iMe/model/wallet/home/CryptoAccountItem;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/CryptoAccountItem;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long p1, v3, p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    .line 33
    :cond_6
    instance-of v0, p1, Lcom/iMe/model/wallet/home/CryptoAddTokensItem;

    if-eqz v0, :cond_7

    instance-of v0, p2, Lcom/iMe/model/wallet/home/CryptoAddTokensItem;

    if-eqz v0, :cond_7

    goto/16 :goto_0

    .line 34
    :cond_7
    instance-of v0, p1, Lcom/iMe/model/wallet/home/BannerItem;

    if-eqz v0, :cond_8

    instance-of v0, p2, Lcom/iMe/model/wallet/home/BannerItem;

    if-eqz v0, :cond_8

    goto/16 :goto_0

    .line 35
    :cond_8
    instance-of v0, p1, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz v0, :cond_9

    instance-of v3, p2, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz v3, :cond_9

    goto/16 :goto_0

    .line 36
    :cond_9
    instance-of v3, p1, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    if-eqz v3, :cond_a

    instance-of v3, p2, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    if-eqz v3, :cond_a

    check-cast p1, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->getCollection()Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftCollection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftCollection;->getContractAddress()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->getCollection()Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftCollection;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftCollection;->getContractAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    .line 37
    :cond_a
    instance-of v3, p1, Lcom/iMe/model/wallet/home/nft/NftTokenItem;

    if-eqz v3, :cond_b

    instance-of v3, p2, Lcom/iMe/model/wallet/home/nft/NftTokenItem;

    if-eqz v3, :cond_b

    check-cast p1, Lcom/iMe/model/wallet/home/nft/NftTokenItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->getToken()Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;->getId()J

    move-result-wide v3

    check-cast p2, Lcom/iMe/model/wallet/home/nft/NftTokenItem;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->getToken()Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;->getId()J

    move-result-wide p1

    cmp-long p1, v3, p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_b
    if-eqz v0, :cond_c

    .line 38
    instance-of p1, p2, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz p1, :cond_c

    goto/16 :goto_0

    :cond_c
    :goto_1
    return v1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 18
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/home/adapter/diff/BalanceDiffCallback;->areItemsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z

    move-result p1

    return p1
.end method

.method public getChangePayload(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Ljava/lang/Object;
    .locals 2

    const-string/jumbo v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    instance-of v0, p1, Lcom/iMe/model/wallet/home/AccountItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/iMe/model/wallet/home/AccountItem;

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Lcom/iMe/model/wallet/home/AccountItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/AccountItem;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p1

    check-cast p2, Lcom/iMe/model/wallet/home/AccountItem;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/AccountItem;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/AccountItem;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    goto/16 :goto_1

    .line 64
    :cond_0
    instance-of v0, p1, Lcom/iMe/model/wallet/home/HeaderItem;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/iMe/model/wallet/home/HeaderItem;

    if-eqz v0, :cond_1

    .line 65
    check-cast p1, Lcom/iMe/model/wallet/home/HeaderItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/HeaderItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/iMe/model/wallet/home/HeaderItem;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/HeaderItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/HeaderItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 69
    :cond_1
    instance-of v0, p1, Lcom/iMe/model/wallet/home/TotalBalanceItem;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/iMe/model/wallet/home/TotalBalanceItem;

    if-eqz v0, :cond_2

    .line 70
    check-cast p1, Lcom/iMe/model/wallet/home/TotalBalanceItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/TotalBalanceItem;->getBalanceText()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/iMe/model/wallet/home/TotalBalanceItem;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/TotalBalanceItem;->getBalanceText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/TotalBalanceItem;->getBalanceText()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 74
    :cond_2
    instance-of v0, p1, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    if-eqz v0, :cond_3

    .line 75
    check-cast p1, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->getNetworkItem()Lcom/iMe/model/wallet/crypto/NetworkItem;

    move-result-object p1

    check-cast p2, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->getNetworkItem()Lcom/iMe/model/wallet/crypto/NetworkItem;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_0
    move-object v1, p2

    goto :goto_1

    .line 79
    :cond_3
    instance-of v0, p1, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz v0, :cond_4

    instance-of v0, p2, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz v0, :cond_4

    .line 80
    check-cast p1, Lcom/iMe/model/common/GlobalStateItem;

    invoke-virtual {p1}, Lcom/iMe/model/common/GlobalStateItem;->getState()Lcom/iMe/model/state/GlobalState;

    move-result-object p1

    check-cast p2, Lcom/iMe/model/common/GlobalStateItem;

    invoke-virtual {p2}, Lcom/iMe/model/common/GlobalStateItem;->getState()Lcom/iMe/model/state/GlobalState;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    .line 84
    :cond_4
    instance-of v0, p1, Lcom/iMe/model/wallet/home/SelectableHeaderItem;

    if-eqz v0, :cond_5

    instance-of v0, p2, Lcom/iMe/model/wallet/home/SelectableHeaderItem;

    if-eqz v0, :cond_5

    .line 85
    check-cast p1, Lcom/iMe/model/wallet/home/SelectableHeaderItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/SelectableHeaderItem;->getTitleResId()I

    move-result p1

    check-cast p2, Lcom/iMe/model/wallet/home/SelectableHeaderItem;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/SelectableHeaderItem;->getTitleResId()I

    move-result v0

    if-eq p1, v0, :cond_6

    goto :goto_0

    .line 89
    :cond_5
    instance-of v0, p1, Lcom/iMe/model/wallet/home/CryptoAccountItem;

    if-eqz v0, :cond_6

    instance-of v0, p2, Lcom/iMe/model/wallet/home/CryptoAccountItem;

    if-eqz v0, :cond_6

    .line 90
    check-cast p1, Lcom/iMe/model/wallet/home/CryptoAccountItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/CryptoAccountItem;->getAddress()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/iMe/model/wallet/home/CryptoAccountItem;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/CryptoAccountItem;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    :goto_1
    return-object v1
.end method

.method public bridge synthetic getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/home/adapter/diff/BalanceDiffCallback;->getChangePayload(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
