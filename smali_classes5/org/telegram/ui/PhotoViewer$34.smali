.class Lorg/telegram/ui/PhotoViewer$34;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public static synthetic $r8$lambda$JMqcXlg1h5DHUzEFez8Sqb7xWxg(Lorg/telegram/ui/PhotoViewer$34;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PhotoViewer$34;->lambda$onSizeChanged$0(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 6705
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$34;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$onSizeChanged$0(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 6745
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$34;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$20400(Lorg/telegram/ui/PhotoViewer;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    if-ne p2, p1, :cond_0

    .line 6746
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$34;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/PhotoViewer;->access$20402(Lorg/telegram/ui/PhotoViewer;Landroidx/dynamicanimation/animation/SpringAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 6708
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$34;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$11000(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 6713
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$34;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$11000(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 6733
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->onSizeChanged(IIII)V

    .line 6735
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$34;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20300(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$34;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20400(Lorg/telegram/ui/PhotoViewer;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    if-nez p1, :cond_0

    sub-int/2addr p2, p4

    int-to-float p1, p2

    .line 6736
    invoke-virtual {p0, p1}, Lorg/telegram/ui/PhotoViewer$34;->setTranslationY(F)V

    .line 6737
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$34;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$34;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result p3

    const/4 p4, 0x0

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p3, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 6738
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$34;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance p3, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p3, p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 6739
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p3

    check-cast p3, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 6740
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p3, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p2

    check-cast p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p3, Landroidx/dynamicanimation/animation/SpringForce;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const p4, 0x443b8000    # 750.0f

    .line 6742
    invoke-virtual {p3, p4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    const/high16 p4, 0x3f800000    # 1.0f

    .line 6743
    invoke-virtual {p3, p4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    .line 6741
    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    .line 6738
    invoke-static {p1, p2}, Lorg/telegram/ui/PhotoViewer;->access$20402(Lorg/telegram/ui/PhotoViewer;Landroidx/dynamicanimation/animation/SpringAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 6744
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$34;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20400(Lorg/telegram/ui/PhotoViewer;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/PhotoViewer$34$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/PhotoViewer$34$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$34;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 6749
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$34;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20400(Lorg/telegram/ui/PhotoViewer;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 6718
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$34;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$11000(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 6723
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 6724
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 6726
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6727
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
