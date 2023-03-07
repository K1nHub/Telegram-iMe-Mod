.class Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;
.super Landroid/widget/FrameLayout;
.source "PremiumFeatureBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IIZLorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

.field final synthetic val$headerShadowDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$scrollView:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Landroid/content/Context;Landroid/widget/ScrollView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->val$scrollView:Landroid/widget/ScrollView;

    iput-object p4, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->val$headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$500(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topCurrentOffset:I

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I

    move-result v1

    sub-int/2addr v2, v1

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 384
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$600(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 385
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->val$headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->val$headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->val$headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->val$headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 407
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topCurrentOffset:I

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$700(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I

    move-result v1

    sub-int/2addr v2, v1

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v2, v1

    int-to-float v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->dismiss()V

    .line 412
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->val$scrollView:Landroid/widget/ScrollView;

    if-ne p2, v0, :cond_0

    .line 396
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    .line 397
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v1, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topCurrentOffset:I

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 398
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 399
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 p1, 0x1

    return p1

    .line 402
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topGlobalOffset:I

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->val$scrollView:Landroid/widget/ScrollView;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ScrollView;->measure(II)V

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->val$scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topGlobalOffset:I

    .line 374
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 375
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->checkTopOffset()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 359
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 360
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$200(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;F)V

    return-void
.end method
