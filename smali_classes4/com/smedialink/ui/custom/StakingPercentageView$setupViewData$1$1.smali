.class final Lcom/smedialink/ui/custom/StakingPercentageView$setupViewData$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StakingPercentageView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/custom/StakingPercentageView;->setupViewData(Lcom/smedialink/model/staking/StakingAnnualPercentageData;Lorg/fork/utils/Callbacks$Callback;)V
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
.field final synthetic $onInfoClickAction:Lorg/fork/utils/Callbacks$Callback;


# direct methods
.method constructor <init>(Lorg/fork/utils/Callbacks$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/custom/StakingPercentageView$setupViewData$1$1;->$onInfoClickAction:Lorg/fork/utils/Callbacks$Callback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/custom/StakingPercentageView$setupViewData$1$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/smedialink/ui/custom/StakingPercentageView$setupViewData$1$1;->$onInfoClickAction:Lorg/fork/utils/Callbacks$Callback;

    invoke-interface {p1}, Lorg/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method
