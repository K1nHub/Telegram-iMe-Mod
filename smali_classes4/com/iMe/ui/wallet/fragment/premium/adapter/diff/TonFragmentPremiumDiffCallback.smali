.class public final Lcom/iMe/ui/wallet/fragment/premium/adapter/diff/TonFragmentPremiumDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "TonFragmentPremiumDiffCallback.kt"


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

    const-string/jumbo v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 8
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/fragment/premium/adapter/diff/TonFragmentPremiumDiffCallback;->areContentsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z
    .locals 3

    const-string/jumbo v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    instance-of v0, p1, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    if-eqz v0, :cond_0

    .line 13
    check-cast p1, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->getMonthsCount()I

    move-result p1

    check-cast p2, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->getMonthsCount()I

    move-result p2

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 16
    :cond_0
    instance-of p1, p1, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz p1, :cond_1

    instance-of p1, p2, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 8
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/fragment/premium/adapter/diff/TonFragmentPremiumDiffCallback;->areItemsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z

    move-result p1

    return p1
.end method

.method public getChangePayload(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Ljava/lang/Object;
    .locals 2

    const-string/jumbo v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    instance-of v0, p1, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    if-eqz v0, :cond_0

    .line 26
    check-cast p1, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->isChecked()Z

    move-result p1

    check-cast p2, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    :goto_0
    move-object v1, p2

    goto :goto_1

    .line 30
    :cond_0
    instance-of v0, p1, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz v0, :cond_1

    .line 31
    check-cast p1, Lcom/iMe/model/common/GlobalStateItem;

    invoke-virtual {p1}, Lcom/iMe/model/common/GlobalStateItem;->getState()Lcom/iMe/model/state/GlobalState;

    move-result-object p1

    check-cast p2, Lcom/iMe/model/common/GlobalStateItem;

    invoke-virtual {p2}, Lcom/iMe/model/common/GlobalStateItem;->getState()Lcom/iMe/model/state/GlobalState;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method public bridge synthetic getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/fragment/premium/adapter/diff/TonFragmentPremiumDiffCallback;->getChangePayload(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
