.class final Lcom/smedialink/ui/adapter/provider/GlobalStateProvider$convert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GlobalStateProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/common/GlobalStateItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/ui/custom/state/GlobalStateLayout;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/smedialink/model/common/GlobalStateItem;

.field final synthetic this$0:Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;Lcom/smedialink/model/common/GlobalStateItem;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/GlobalStateProvider$convert$1;->this$0:Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;

    iput-object p2, p0, Lcom/smedialink/ui/adapter/provider/GlobalStateProvider$convert$1;->$item:Lcom/smedialink/model/common/GlobalStateItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Lcom/smedialink/ui/custom/state/GlobalStateLayout;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/adapter/provider/GlobalStateProvider$convert$1;->invoke(Lcom/smedialink/ui/custom/state/GlobalStateLayout;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/smedialink/ui/custom/state/GlobalStateLayout;)V
    .locals 2

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/GlobalStateProvider$convert$1;->this$0:Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;

    invoke-virtual {v0}, Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;->isMatchParentHeight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 29
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/GlobalStateProvider$convert$1;->$item:Lcom/smedialink/model/common/GlobalStateItem;

    invoke-virtual {v0}, Lcom/smedialink/model/common/GlobalStateItem;->getState()Lcom/smedialink/model/state/GlobalState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->setInternalState(Lcom/smedialink/model/state/GlobalState;)V

    .line 33
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/GlobalStateProvider$convert$1;->this$0:Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;

    invoke-virtual {v0}, Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;->getOnRetryButtonClickAction()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->setRetryButtonClickListener(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
