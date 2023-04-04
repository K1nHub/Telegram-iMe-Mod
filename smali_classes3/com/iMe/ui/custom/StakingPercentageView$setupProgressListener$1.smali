.class final Lcom/iMe/ui/custom/StakingPercentageView$setupProgressListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StakingPercentageView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/custom/StakingPercentageView;->setupProgressListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Float;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/custom/StakingPercentageView;


# direct methods
.method public static synthetic $r8$lambda$3dBNWYeYJGPpx63MRB1qeNk-r0g(Lcom/iMe/ui/custom/StakingPercentageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/custom/StakingPercentageView$setupProgressListener$1;->invoke$lambda$1$lambda$0(Lcom/iMe/ui/custom/StakingPercentageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lcom/iMe/ui/custom/StakingPercentageView;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/custom/StakingPercentageView$setupProgressListener$1;->this$0:Lcom/iMe/ui/custom/StakingPercentageView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Lcom/iMe/ui/custom/StakingPercentageView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-static {p0}, Lcom/iMe/ui/custom/StakingPercentageView;->access$getBinding$p(Lcom/iMe/ui/custom/StakingPercentageView;)Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->viewProgress:Lcom/iMe/ui/custom/ProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/iMe/ui/custom/ProgressView;->updateProgress(F)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 131
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/custom/StakingPercentageView$setupProgressListener$1;->invoke(Ljava/lang/Float;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Float;)V
    .locals 6

    .line 132
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingPercentageView$setupProgressListener$1;->this$0:Lcom/iMe/ui/custom/StakingPercentageView;

    invoke-static {v0}, Lcom/iMe/ui/custom/StakingPercentageView;->access$getAnimator$p(Lcom/iMe/ui/custom/StakingPercentageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingPercentageView$setupProgressListener$1;->this$0:Lcom/iMe/ui/custom/StakingPercentageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-static {v0}, Lcom/iMe/ui/custom/StakingPercentageView;->access$getProgress$p(Lcom/iMe/ui/custom/StakingPercentageView;)F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string v2, "newProgress"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/ui/custom/StakingPercentageView$setupProgressListener$1;->this$0:Lcom/iMe/ui/custom/StakingPercentageView;

    .line 134
    new-instance v5, Lcom/iMe/ui/custom/StakingPercentageView$setupProgressListener$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Lcom/iMe/ui/custom/StakingPercentageView$setupProgressListener$1$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/custom/StakingPercentageView;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 135
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 136
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 133
    invoke-static {v0, v1}, Lcom/iMe/ui/custom/StakingPercentageView;->access$setAnimator$p(Lcom/iMe/ui/custom/StakingPercentageView;Landroid/animation/ValueAnimator;)V

    .line 138
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingPercentageView$setupProgressListener$1;->this$0:Lcom/iMe/ui/custom/StakingPercentageView;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/iMe/ui/custom/StakingPercentageView;->access$setProgress$p(Lcom/iMe/ui/custom/StakingPercentageView;F)V

    .line 139
    iget-object p1, p0, Lcom/iMe/ui/custom/StakingPercentageView$setupProgressListener$1;->this$0:Lcom/iMe/ui/custom/StakingPercentageView;

    invoke-static {p1}, Lcom/iMe/ui/custom/StakingPercentageView;->access$getProgress$p(Lcom/iMe/ui/custom/StakingPercentageView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    move v3, v4

    :cond_1
    invoke-static {p1, v3}, Lcom/iMe/ui/custom/StakingPercentageView;->access$setThresholdReached$p(Lcom/iMe/ui/custom/StakingPercentageView;Z)V

    .line 140
    iget-object p1, p0, Lcom/iMe/ui/custom/StakingPercentageView$setupProgressListener$1;->this$0:Lcom/iMe/ui/custom/StakingPercentageView;

    invoke-virtual {p1}, Lcom/iMe/ui/custom/StakingPercentageView;->setupColors()V

    return-void
.end method
