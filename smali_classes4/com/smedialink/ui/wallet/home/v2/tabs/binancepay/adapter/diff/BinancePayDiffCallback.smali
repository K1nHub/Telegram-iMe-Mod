.class public final Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/adapter/diff/BinancePayDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "BinancePayDiffCallback.kt"


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

    .line 30
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 31
    :cond_0
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/HeaderItem;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/HeaderItem;

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 32
    :cond_1
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/CardButtonItem;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/CardButtonItem;

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 33
    :cond_2
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;

    if-eqz v0, :cond_3

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 34
    :cond_3
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    if-eqz v0, :cond_4

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    if-eqz v0, :cond_4

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 35
    :cond_4
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;

    if-eqz v0, :cond_5

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;

    if-eqz v0, :cond_5

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 36
    :cond_5
    instance-of v0, p1, Lcom/smedialink/model/common/GlobalStateItem;

    if-eqz v0, :cond_6

    instance-of v0, p2, Lcom/smedialink/model/common/GlobalStateItem;

    if-eqz v0, :cond_6

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 37
    :cond_6
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/BannerItem;

    if-eqz v0, :cond_7

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/BannerItem;

    if-eqz v0, :cond_7

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 10
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/adapter/diff/BinancePayDiffCallback;->areContentsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z
    .locals 3

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;->getTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0

    .line 17
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

    goto/16 :goto_0

    .line 18
    :cond_1
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/CardButtonItem;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/CardButtonItem;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/smedialink/model/wallet/home/CardButtonItem;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/CardButtonItem;->getTitleResId()I

    move-result p1

    check-cast p2, Lcom/smedialink/model/wallet/home/CardButtonItem;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/CardButtonItem;->getTitleResId()I

    move-result p2

    if-ne p1, p2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 19
    :cond_3
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;

    if-eqz v0, :cond_4

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;->getInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceUserInfo;->getId()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;->getInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceUserInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/binancepay/BinanceUserInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 20
    :cond_4
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    if-eqz v0, :cond_5

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    invoke-virtual {p1}, Lcom/smedialink/model/common/NoChildNode;->getItemType()I

    move-result p1

    check-cast p2, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    invoke-virtual {p2}, Lcom/smedialink/model/common/NoChildNode;->getItemType()I

    move-result p2

    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 21
    :cond_5
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;

    if-eqz v0, :cond_6

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;->getBalanceInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAsset()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;->getBalanceInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAsset()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 22
    :cond_6
    instance-of v0, p1, Lcom/smedialink/model/common/GlobalStateItem;

    if-eqz v0, :cond_7

    instance-of v0, p2, Lcom/smedialink/model/common/GlobalStateItem;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/smedialink/model/common/GlobalStateItem;

    invoke-virtual {p1}, Lcom/smedialink/model/common/GlobalStateItem;->getItemType()I

    move-result p1

    check-cast p2, Lcom/smedialink/model/common/GlobalStateItem;

    invoke-virtual {p2}, Lcom/smedialink/model/common/GlobalStateItem;->getItemType()I

    move-result p2

    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 23
    :cond_7
    instance-of p1, p1, Lcom/smedialink/model/wallet/home/BannerItem;

    if-eqz p1, :cond_2

    instance-of p1, p2, Lcom/smedialink/model/wallet/home/BannerItem;

    if-eqz p1, :cond_2

    :goto_0
    return v1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 10
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/adapter/diff/BinancePayDiffCallback;->areItemsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z

    move-result p1

    return p1
.end method

.method public getChangePayload(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Ljava/lang/Object;
    .locals 2

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;

    if-eqz v0, :cond_1

    .line 46
    check-cast p1, Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;->getInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceUserInfo;

    move-result-object p1

    check-cast p2, Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;->getInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceUserInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;->getInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceUserInfo;

    move-result-object v1

    :cond_0
    return-object v1

    .line 49
    :cond_1
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    if-eqz v0, :cond_4

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    if-eqz v0, :cond_4

    .line 50
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
    if-nez p1, :cond_3

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/TotalBalanceItem;->getBalance()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_3
    return-object v1

    .line 53
    :cond_4
    instance-of v0, p1, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;

    if-eqz v0, :cond_6

    instance-of v0, p2, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;

    if-eqz v0, :cond_6

    .line 54
    check-cast p1, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;->getBalanceInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object p1

    check-cast p2, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;->getBalanceInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;->getBalanceInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v1

    :cond_5
    return-object v1

    .line 57
    :cond_6
    instance-of v0, p1, Lcom/smedialink/model/common/GlobalStateItem;

    if-eqz v0, :cond_7

    instance-of v0, p2, Lcom/smedialink/model/common/GlobalStateItem;

    if-eqz v0, :cond_7

    .line 58
    check-cast p1, Lcom/smedialink/model/common/GlobalStateItem;

    invoke-virtual {p1}, Lcom/smedialink/model/common/GlobalStateItem;->getState()Lcom/smedialink/model/state/GlobalState;

    move-result-object p1

    check-cast p2, Lcom/smedialink/model/common/GlobalStateItem;

    invoke-virtual {p2}, Lcom/smedialink/model/common/GlobalStateItem;->getState()Lcom/smedialink/model/state/GlobalState;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    move-object v1, p2

    :cond_7
    return-object v1
.end method

.method public bridge synthetic getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/adapter/diff/BinancePayDiffCallback;->getChangePayload(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
