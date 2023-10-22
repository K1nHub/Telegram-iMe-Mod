.class final Lcom/iMe/ui/custom/state/GlobalStateLayout$getStateView$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GlobalStateLayout.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/custom/state/GlobalStateLayout;->getStateView(Lcom/iMe/model/state/GlobalState;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $state:Lcom/iMe/model/state/GlobalState;

.field final synthetic this$0:Lcom/iMe/ui/custom/state/GlobalStateLayout;


# direct methods
.method constructor <init>(Lcom/iMe/model/state/GlobalState;Lcom/iMe/ui/custom/state/GlobalStateLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/custom/state/GlobalStateLayout$getStateView$1$2$1;->$state:Lcom/iMe/model/state/GlobalState;

    iput-object p2, p0, Lcom/iMe/ui/custom/state/GlobalStateLayout$getStateView$1$2$1;->this$0:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 165
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/custom/state/GlobalStateLayout$getStateView$1$2$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/iMe/ui/custom/state/GlobalStateLayout$getStateView$1$2$1;->$state:Lcom/iMe/model/state/GlobalState;

    .line 167
    sget-object v0, Lcom/iMe/model/state/GlobalState$Empty$TokenSearchResult;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$TokenSearchResult;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 168
    :cond_0
    sget-object v0, Lcom/iMe/model/state/GlobalState$Empty$CustomTokens;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$CustomTokens;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/iMe/ui/custom/state/GlobalStateLayout$getStateView$1$2$1;->this$0:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    invoke-virtual {p1}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->getEmptyButtonClickListener()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_2

    .line 170
    :cond_1
    sget-object v0, Lcom/iMe/model/state/GlobalState$NoInternet;->INSTANCE:Lcom/iMe/model/state/GlobalState$NoInternet;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 171
    :cond_2
    sget-object v0, Lcom/iMe/model/state/GlobalState$Unexpected;->INSTANCE:Lcom/iMe/model/state/GlobalState$Unexpected;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/iMe/ui/custom/state/GlobalStateLayout$getStateView$1$2$1;->this$0:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    invoke-virtual {p1}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->getRetryButtonClickListener()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    :goto_2
    return-void
.end method
