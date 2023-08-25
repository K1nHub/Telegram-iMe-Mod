.class public final Lcom/iMe/ui/wallet/swap/token/adapter/diff/SelectTokenDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "SelectTokenDiffCallback.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/iMe/model/wallet/select/SelectableTokenItem;",
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
.method public areContentsTheSame(Lcom/iMe/model/wallet/select/SelectableTokenItem;Lcom/iMe/model/wallet/select/SelectableTokenItem;)Z
    .locals 1

    const-string/jumbo v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 6
    check-cast p1, Lcom/iMe/model/wallet/select/SelectableTokenItem;

    check-cast p2, Lcom/iMe/model/wallet/select/SelectableTokenItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/token/adapter/diff/SelectTokenDiffCallback;->areContentsTheSame(Lcom/iMe/model/wallet/select/SelectableTokenItem;Lcom/iMe/model/wallet/select/SelectableTokenItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/iMe/model/wallet/select/SelectableTokenItem;Lcom/iMe/model/wallet/select/SelectableTokenItem;)Z
    .locals 1

    const-string/jumbo v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 6
    check-cast p1, Lcom/iMe/model/wallet/select/SelectableTokenItem;

    check-cast p2, Lcom/iMe/model/wallet/select/SelectableTokenItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/token/adapter/diff/SelectTokenDiffCallback;->areItemsTheSame(Lcom/iMe/model/wallet/select/SelectableTokenItem;Lcom/iMe/model/wallet/select/SelectableTokenItem;)Z

    move-result p1

    return p1
.end method

.method public getChangePayload(Lcom/iMe/model/wallet/select/SelectableTokenItem;Lcom/iMe/model/wallet/select/SelectableTokenItem;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->getBalance()Lcom/iMe/model/wallet/select/SelectableTokenBalance;

    move-result-object p1

    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->getBalance()Lcom/iMe/model/wallet/select/SelectableTokenBalance;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public bridge synthetic getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Lcom/iMe/model/wallet/select/SelectableTokenItem;

    check-cast p2, Lcom/iMe/model/wallet/select/SelectableTokenItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/token/adapter/diff/SelectTokenDiffCallback;->getChangePayload(Lcom/iMe/model/wallet/select/SelectableTokenItem;Lcom/iMe/model/wallet/select/SelectableTokenItem;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
