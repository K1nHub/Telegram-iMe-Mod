.class public final Lcom/iMe/ui/adapter/provider/GlobalStateProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "GlobalStateProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/common/GlobalStateItem;",
        ">;"
    }
.end annotation


# instance fields
.field private isMatchParentHeight:Z

.field private final itemViewType:I

.field private final layoutId:I

.field private onEmptyButtonClickAction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onRetryButtonClickAction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 15
    sget-object v0, Lcom/iMe/ui/adapter/provider/GlobalStateProvider$onRetryButtonClickAction$1;->INSTANCE:Lcom/iMe/ui/adapter/provider/GlobalStateProvider$onRetryButtonClickAction$1;

    iput-object v0, p0, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->onRetryButtonClickAction:Lkotlin/jvm/functions/Function0;

    .line 16
    sget-object v0, Lcom/iMe/ui/adapter/provider/GlobalStateProvider$onEmptyButtonClickAction$1;->INSTANCE:Lcom/iMe/ui/adapter/provider/GlobalStateProvider$onEmptyButtonClickAction$1;

    iput-object v0, p0, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->onEmptyButtonClickAction:Lkotlin/jvm/functions/Function0;

    .line 18
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->GLOBAL_STATE:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->itemViewType:I

    .line 19
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_global_state:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->layoutId:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/common/GlobalStateItem;)V
    .locals 2

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget v0, Lorg/telegram/messenger/R$id;->global_state_layout:I

    new-instance v1, Lcom/iMe/ui/adapter/provider/GlobalStateProvider$convert$1;

    invoke-direct {v1, p0, p2}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider$convert$1;-><init>(Lcom/iMe/ui/adapter/provider/GlobalStateProvider;Lcom/iMe/model/common/GlobalStateItem;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/common/GlobalStateItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/iMe/model/common/GlobalStateItem;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/common/GlobalStateItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/iMe/model/common/GlobalStateItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/common/GlobalStateItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/iMe/model/common/GlobalStateItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/common/GlobalStateItem;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->layoutId:I

    return v0
.end method

.method public final getOnEmptyButtonClickAction()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->onEmptyButtonClickAction:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOnRetryButtonClickAction()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->onRetryButtonClickAction:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final isMatchParentHeight()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->isMatchParentHeight:Z

    return v0
.end method

.method public final setMatchParentHeight(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->isMatchParentHeight:Z

    return-void
.end method

.method public final setOnEmptyButtonClickAction(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->onEmptyButtonClickAction:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnRetryButtonClickAction(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->onRetryButtonClickAction:Lkotlin/jvm/functions/Function0;

    return-void
.end method
