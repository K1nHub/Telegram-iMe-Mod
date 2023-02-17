.class public final Lcom/smedialink/ui/wallet/home/v2/adapter/diff/BalanceDiffCallback;
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

    .line 10
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

    .line 32
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/AccountItem;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/AccountItem;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto/16 :goto_0

    .line 33
    :cond_0
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/HeaderItem;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/HeaderItem;

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto/16 :goto_0

    .line 34
    :cond_1
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto/16 :goto_0

    .line 35
    :cond_2
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;

    if-eqz v0, :cond_3

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto/16 :goto_0

    .line 36
    :cond_3
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    if-eqz v0, :cond_4

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    if-eqz v0, :cond_4

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 37
    :cond_4
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/ServicesBasicItem;

    if-eqz v0, :cond_5

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/ServicesBasicItem;

    if-eqz v0, :cond_5

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 38
    :cond_5
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/CryptoSelectTokensItem;

    if-eqz v0, :cond_6

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/CryptoSelectTokensItem;

    if-eqz v0, :cond_6

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 39
    :cond_6
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/BannerItem;

    if-eqz v0, :cond_7

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/BannerItem;

    if-eqz v0, :cond_7

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 40
    :cond_7
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/CryptoAccountItem;

    if-eqz v0, :cond_8

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/CryptoAccountItem;

    if-eqz v0, :cond_8

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 41
    :cond_8
    instance-of v0, p1, Lcom/smedialink/model/common/GlobalStateItem;

    if-eqz v0, :cond_9

    instance-of v0, p2, Lcom/smedialink/model/common/GlobalStateItem;

    if-eqz v0, :cond_9

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 42
    :cond_9
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;

    if-eqz v0, :cond_a

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;

    if-eqz v0, :cond_a

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 43
    :cond_a
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;

    if-eqz v0, :cond_b

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;

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

    .line 10
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/wallet/home/v2/adapter/diff/BalanceDiffCallback;->areContentsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z
    .locals 5

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/AccountItem;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/AccountItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/smedialink/model/wallet/home/AccountItem;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/AccountItem;->getBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object p1

    check-cast p2, Lcom/smedialink/model/wallet/home/AccountItem;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/AccountItem;->getBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object p2

    if-ne p1, p2, :cond_c

    :goto_0
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 16
    :cond_0
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/HeaderItem;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/HeaderItem;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/smedialink/model/wallet/home/HeaderItem;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/HeaderItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/smedialink/model/wallet/home/HeaderItem;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/HeaderItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_1

    .line 17
    :cond_1
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;->getTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_1

    .line 18
    :cond_2
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->getId()I

    move-result p1

    check-cast p2, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->getId()I

    move-result p2

    if-ne p1, p2, :cond_c

    goto :goto_0

    .line 19
    :cond_3
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    if-eqz v0, :cond_4

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    invoke-virtual {p1}, Lcom/smedialink/model/common/NoChildNode;->getItemType()I

    move-result p1

    check-cast p2, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    invoke-virtual {p2}, Lcom/smedialink/model/common/NoChildNode;->getItemType()I

    move-result p2

    if-ne p1, p2, :cond_c

    goto :goto_0

    .line 20
    :cond_4
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/ServicesBasicItem;

    if-eqz v0, :cond_5

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/ServicesBasicItem;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/smedialink/model/wallet/home/ServicesBasicItem;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/ServicesBasicItem;->getCategory()Lcom/smedialink/model/wallet/home/ServicesCategory;

    move-result-object p1

    check-cast p2, Lcom/smedialink/model/wallet/home/ServicesBasicItem;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/ServicesBasicItem;->getCategory()Lcom/smedialink/model/wallet/home/ServicesCategory;

    move-result-object p2

    if-ne p1, p2, :cond_c

    goto :goto_0

    .line 21
    :cond_5
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/CryptoAccountItem;

    if-eqz v0, :cond_6

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/CryptoAccountItem;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/smedialink/model/wallet/home/CryptoAccountItem;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/CryptoAccountItem;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    check-cast p2, Lcom/smedialink/model/wallet/home/CryptoAccountItem;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/CryptoAccountItem;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v0, v3, p1

    if-nez v0, :cond_c

    goto/16 :goto_0

    .line 22
    :cond_6
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/CryptoSelectTokensItem;

    if-eqz v0, :cond_7

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/CryptoSelectTokensItem;

    if-eqz v0, :cond_7

    goto/16 :goto_0

    .line 23
    :cond_7
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/BannerItem;

    if-eqz v0, :cond_8

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/BannerItem;

    if-eqz v0, :cond_8

    goto/16 :goto_0

    .line 24
    :cond_8
    instance-of v0, p1, Lcom/smedialink/model/common/GlobalStateItem;

    if-eqz v0, :cond_9

    instance-of v3, p2, Lcom/smedialink/model/common/GlobalStateItem;

    if-eqz v3, :cond_9

    goto/16 :goto_0

    .line 25
    :cond_9
    instance-of v3, p1, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;

    if-eqz v3, :cond_a

    instance-of v3, p2, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;

    if-eqz v3, :cond_a

    check-cast p1, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;->getCollection()Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;->getContractAddress()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;->getCollection()Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;->getContractAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    .line 26
    :cond_a
    instance-of v3, p1, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;

    if-eqz v3, :cond_b

    instance-of v3, p2, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;

    if-eqz v3, :cond_b

    check-cast p1, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;->getToken()Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;->getId()J

    move-result-wide v3

    check-cast p2, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;->getToken()Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;->getId()J

    move-result-wide p1

    cmp-long v0, v3, p1

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_b
    if-eqz v0, :cond_c

    .line 27
    instance-of p1, p2, Lcom/smedialink/model/common/GlobalStateItem;

    if-eqz p1, :cond_c

    goto/16 :goto_0

    :cond_c
    :goto_1
    return v1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 10
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/wallet/home/v2/adapter/diff/BalanceDiffCallback;->areItemsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z

    move-result p1

    return p1
.end method

.method public getChangePayload(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Ljava/lang/Object;
    .locals 2

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/AccountItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/AccountItem;

    if-eqz v0, :cond_0

    .line 49
    check-cast p1, Lcom/smedialink/model/wallet/home/AccountItem;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/AccountItem;->getBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p1

    check-cast p2, Lcom/smedialink/model/wallet/home/AccountItem;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/AccountItem;->getBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/AccountItem;->getBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    goto/16 :goto_2

    .line 52
    :cond_0
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/HeaderItem;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/HeaderItem;

    if-eqz v0, :cond_1

    .line 53
    check-cast p1, Lcom/smedialink/model/wallet/home/HeaderItem;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/HeaderItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/smedialink/model/wallet/home/HeaderItem;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/HeaderItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/HeaderItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 56
    :cond_1
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    if-eqz v0, :cond_3

    .line 57
    check-cast p1, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/TotalBalanceItem;->getBalance()F

    move-result p1

    check-cast p2, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/TotalBalanceItem;->getBalance()F

    move-result v0

    cmpg-float p1, p1, v0

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_7

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/TotalBalanceItem;->getBalance()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_2

    .line 60
    :cond_3
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;

    if-eqz v0, :cond_4

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;

    if-eqz v0, :cond_4

    .line 61
    check-cast p1, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p1

    check-cast p2, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    if-eq p1, v0, :cond_7

    :goto_1
    move-object v1, p2

    goto :goto_2

    .line 64
    :cond_4
    instance-of v0, p1, Lcom/smedialink/model/common/GlobalStateItem;

    if-eqz v0, :cond_5

    instance-of v0, p2, Lcom/smedialink/model/common/GlobalStateItem;

    if-eqz v0, :cond_5

    .line 65
    check-cast p1, Lcom/smedialink/model/common/GlobalStateItem;

    invoke-virtual {p1}, Lcom/smedialink/model/common/GlobalStateItem;->getState()Lcom/smedialink/model/state/GlobalState;

    move-result-object p1

    check-cast p2, Lcom/smedialink/model/common/GlobalStateItem;

    invoke-virtual {p2}, Lcom/smedialink/model/common/GlobalStateItem;->getState()Lcom/smedialink/model/state/GlobalState;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    .line 68
    :cond_5
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;

    if-eqz v0, :cond_6

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;

    if-eqz v0, :cond_6

    .line 69
    check-cast p1, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->getTitleResId()I

    move-result p1

    check-cast p2, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->getTitleResId()I

    move-result v0

    if-eq p1, v0, :cond_7

    goto :goto_1

    .line 72
    :cond_6
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/CryptoAccountItem;

    if-eqz v0, :cond_7

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/CryptoAccountItem;

    if-eqz v0, :cond_7

    .line 73
    check-cast p1, Lcom/smedialink/model/wallet/home/CryptoAccountItem;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/CryptoAccountItem;->getAddress()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/smedialink/model/wallet/home/CryptoAccountItem;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/CryptoAccountItem;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    return-object v1
.end method

.method public bridge synthetic getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/wallet/home/v2/adapter/diff/BalanceDiffCallback;->getChangePayload(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
