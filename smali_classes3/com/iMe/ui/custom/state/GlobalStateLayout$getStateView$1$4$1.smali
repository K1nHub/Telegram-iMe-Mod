.class final Lcom/iMe/ui/custom/state/GlobalStateLayout$getStateView$1$4$1;
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
.field final synthetic this$0:Lcom/iMe/ui/custom/state/GlobalStateLayout;


# direct methods
.method constructor <init>(Lcom/iMe/ui/custom/state/GlobalStateLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/custom/state/GlobalStateLayout$getStateView$1$4$1;->this$0:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 122
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/custom/state/GlobalStateLayout$getStateView$1$4$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/iMe/ui/custom/state/GlobalStateLayout$getStateView$1$4$1;->this$0:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    invoke-virtual {p1}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->getRetryButtonClickListener()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
