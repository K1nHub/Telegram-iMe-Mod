.class public final Lcom/iMe/ui/wallet/transaction/adapter/diff/TransactionDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "TransactionDiffCallback.kt"


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

    .line 23
    instance-of v0, p1, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 24
    :cond_0
    instance-of v0, p1, Lcom/iMe/model/wallet/home/HeaderItem;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/iMe/model/wallet/home/HeaderItem;

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 25
    :cond_1
    instance-of v0, p1, Lcom/iMe/model/wallet/transaction/TransactionItem;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/iMe/model/wallet/transaction/TransactionItem;

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 26
    :cond_2
    instance-of v0, p1, Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    if-eqz v0, :cond_3

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 10
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/transaction/adapter/diff/TransactionDiffCallback;->areContentsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z

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
    instance-of v0, p1, Lcom/iMe/model/common/GlobalStateItem;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz v0, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    .line 16
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

    goto :goto_1

    .line 17
    :cond_1
    instance-of v0, p1, Lcom/iMe/model/wallet/transaction/TransactionItem;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/iMe/model/wallet/transaction/TransactionItem;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/iMe/model/wallet/transaction/TransactionItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getId()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/iMe/model/wallet/transaction/TransactionItem;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    .line 18
    :cond_2
    instance-of v0, p1, Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getId()J

    move-result-wide v3

    check-cast p2, Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getId()J

    move-result-wide p1

    cmp-long p1, v3, p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 10
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/transaction/adapter/diff/TransactionDiffCallback;->areItemsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z

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

    .line 10
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/transaction/adapter/diff/TransactionDiffCallback;->getChangePayload(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
