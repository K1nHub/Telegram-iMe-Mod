.class Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;
.super Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;
.source "LPhotoPaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;Z)V
    .locals 0

    .line 3288
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method protected heightAnimationEnabled()Z
    .locals 1

    .line 3322
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$4000(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$5900(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onPanTranslationUpdate(FFZ)V
    .locals 7

    .line 3310
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$5700(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3311
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$5802(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;F)F

    .line 3312
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p1, v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$5002(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;F)F

    .line 3313
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$2700(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x28

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3314
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$700(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->updatePanTransition(FF)V

    .line 3315
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$5200(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$5300(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$5400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v4

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$5500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v5

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$5600(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setTransform(FFFFF)V

    .line 3316
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onPanTranslationUpdate(FFZ)V

    .line 3317
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onTransitionEnd()V
    .locals 8

    .line 3301
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$5002(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;F)F

    .line 3302
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$5102(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)Z

    .line 3303
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$5200(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$5300(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v4

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$5400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v5

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$5500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v6

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$5600(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setTransform(FFFFF)V

    .line 3304
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onTransitionEnd()V

    .line 3305
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$700(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->stopPanTransition()V

    return-void
.end method

.method protected onTransitionStart(ZII)V
    .locals 0

    .line 3291
    invoke-super {p0, p1, p3}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onTransitionStart(ZI)V

    .line 3292
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$700(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->startPanTransition(II)V

    .line 3294
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$4800(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3295
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$4900(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)V

    :cond_0
    return-void
.end method
