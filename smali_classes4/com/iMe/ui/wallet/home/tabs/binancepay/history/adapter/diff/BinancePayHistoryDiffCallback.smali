.class public final Lcom/iMe/ui/wallet/home/tabs/binancepay/history/adapter/diff/BinancePayHistoryDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "BinancePayHistoryDiffCallback.kt"


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

    .line 8
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

    .line 22
    instance-of v0, p1, Lcom/iMe/model/wallet/home/HeaderItem;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/iMe/model/wallet/home/HeaderItem;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 23
    :cond_0
    instance-of v0, p1, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 8
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/adapter/diff/BinancePayHistoryDiffCallback;->areContentsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    instance-of v0, p1, Lcom/iMe/model/wallet/home/HeaderItem;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/iMe/model/wallet/home/HeaderItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/iMe/model/wallet/home/HeaderItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/HeaderItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/iMe/model/wallet/home/HeaderItem;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/HeaderItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 15
    :cond_0
    instance-of v0, p1, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 8
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/adapter/diff/BinancePayHistoryDiffCallback;->areItemsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z

    move-result p1

    return p1
.end method

.method public getChangePayload(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Ljava/lang/Object;
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "newItem"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/adapter/diff/BinancePayHistoryDiffCallback;->getChangePayload(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
