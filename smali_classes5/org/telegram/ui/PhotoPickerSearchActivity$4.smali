.class Lorg/telegram/ui/PhotoPickerSearchActivity$4;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "PhotoPickerSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerSearchActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private globalIgnoreLayout:Z

.field private maybeStartTracking:Z

.field private startedTracking:Z

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field final synthetic this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerSearchActivity;Landroid/content/Context;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2602(Lorg/telegram/ui/PhotoPickerSearchActivity$4;Z)Z
    .locals 0

    .line 198
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->maybeStartTracking:Z

    return p1
.end method

.method static synthetic access$2702(Lorg/telegram/ui/PhotoPickerSearchActivity$4;Z)Z
    .locals 0

    .line 198
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->startedTracking:Z

    return p1
.end method

.method private prepareForMoving(Landroid/view/MotionEvent;Z)Z
    .locals 4

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$600(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getNextPageId(Z)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 213
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 214
    iput-boolean v1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->maybeStartTracking:Z

    .line 215
    iput-boolean v3, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->startedTracking:Z

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->startedTrackingX:I

    .line 217
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$900(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 218
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$600(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setEnabled(Z)V

    .line 219
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;->access$402(Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;I)I

    .line 220
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 221
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$802(Lorg/telegram/ui/PhotoPickerSearchActivity;Z)Z

    .line 222
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p1, v3}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$700(Lorg/telegram/ui/PhotoPickerSearchActivity;Z)V

    if-eqz p2, :cond_1

    .line 224
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p2}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_0

    .line 226
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p2}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :goto_0
    return v3
.end method


# virtual methods
.method public checkTabsAnimationInProgress()Z
    .locals 7

    .line 374
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1700(Lorg/telegram/ui/PhotoPickerSearchActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1800(Lorg/telegram/ui/PhotoPickerSearchActivity;)Z

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v5

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v4}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$800(Lorg/telegram/ui/PhotoPickerSearchActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    mul-int v3, v3, v2

    int-to-float v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_1

    .line 382
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v4}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v6}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$800(Lorg/telegram/ui/PhotoPickerSearchActivity;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    mul-int v4, v4, v2

    int-to-float v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 384
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_5

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1900(Lorg/telegram/ui/PhotoPickerSearchActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1900(Lorg/telegram/ui/PhotoPickerSearchActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1902(Lorg/telegram/ui/PhotoPickerSearchActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 392
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1702(Lorg/telegram/ui/PhotoPickerSearchActivity;Z)Z

    .line 394
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1700(Lorg/telegram/ui/PhotoPickerSearchActivity;)Z

    move-result v0

    return v0

    :cond_6
    return v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 360
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1500(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1600(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v5, v0

    .line 362
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public forceHasOverlappingRendering(Z)V
    .locals 0

    .line 233
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->forceHasOverlappingRendering(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 406
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$2000(Lorg/telegram/ui/PhotoPickerSearchActivity;)Landroid/graphics/Paint;

    move-result-object v0

    const-string v1, "windowBackgroundGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$2100(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$2200(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    add-float v4, v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$2000(Lorg/telegram/ui/PhotoPickerSearchActivity;)Landroid/graphics/Paint;

    move-result-object v7

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 401
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->checkTabsAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$600(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->isAnimatingIndicator()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .line 292
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    .line 294
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->smoothKeyboard:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v0

    :goto_0
    const/16 v2, 0x14

    .line 295
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-gt v0, v2, :cond_1

    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1100(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 296
    :goto_1
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBottomClip(I)V

    :goto_2
    if-ge v1, p1, :cond_b

    .line 299
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 300
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    goto/16 :goto_8

    .line 303
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 305
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 306
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 311
    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    const/16 v7, 0x33

    :cond_3
    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    and-int/lit8 v8, v8, 0x7

    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    const/4 v9, 0x5

    if-eq v8, v9, :cond_4

    .line 328
    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_4

    :cond_4
    sub-int v8, p4, p2

    sub-int/2addr v8, v5

    .line 324
    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v9

    goto :goto_3

    :cond_5
    sub-int v8, p4, p2

    sub-int/2addr v8, v5

    .line 321
    div-int/lit8 v8, v8, 0x2

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_3
    sub-int/2addr v8, v9

    :goto_4
    const/16 v9, 0x10

    if-eq v7, v9, :cond_8

    const/16 v9, 0x30

    if-eq v7, v9, :cond_7

    const/16 v9, 0x50

    if-eq v7, v9, :cond_6

    .line 342
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_6

    :cond_6
    sub-int v7, p5, v2

    sub-int/2addr v7, p3

    sub-int/2addr v7, v6

    .line 339
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_5

    .line 333
    :cond_7
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_6

    :cond_8
    sub-int v7, p5, v2

    sub-int/2addr v7, p3

    sub-int/2addr v7, v6

    .line 336
    div-int/lit8 v7, v7, 0x2

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v9

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_5
    sub-int v4, v7, v4

    .line 345
    :goto_6
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v7}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1100(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v7}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1100(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupView(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 346
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 347
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    goto :goto_7

    .line 349
    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    :goto_7
    sub-int/2addr v4, v7

    :cond_a
    add-int/2addr v5, v8

    add-int/2addr v6, v4

    .line 352
    invoke-virtual {v3, v8, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 355
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 238
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 239
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 241
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 243
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1000(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v5, p1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 244
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->smoothKeyboard:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v2

    :goto_0
    const/16 v4, 0x14

    .line 245
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v5, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    if-gt v2, v4, :cond_1

    .line 246
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_2

    .line 247
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p2}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1100(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result p2

    sub-int/2addr v1, p2

    .line 248
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    .line 251
    :cond_1
    iput-boolean v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->globalIgnoreLayout:Z

    .line 252
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1100(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hideEmojiView()V

    .line 253
    iput-boolean v3, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->globalIgnoreLayout:Z

    .line 256
    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1200(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    .line 257
    iput-boolean v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->globalIgnoreLayout:Z

    const/4 v4, 0x0

    .line 258
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 259
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v5

    aget-object v5, v5, v4

    if-nez v5, :cond_3

    goto :goto_3

    .line 262
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;->access$1300(Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 263
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;->access$1300(Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    const/4 v7, 0x4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v5, v8, v9, v10, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 266
    :cond_5
    iput-boolean v3, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->globalIgnoreLayout:Z

    .line 268
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    :goto_4
    if-ge v3, v2, :cond_d

    .line 270
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 271
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_c

    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v4}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1400(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    if-ne v8, v4, :cond_6

    goto/16 :goto_7

    .line 274
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v4}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1100(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v4}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1100(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 275
    sget-boolean v4, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v4, :cond_8

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_5

    .line 282
    :cond_7
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v8, v4, v5}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 276
    :cond_8
    :goto_5
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 277
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v5, 0xc8

    goto :goto_6

    :cond_9
    const/16 v5, 0x140

    :goto_6
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v7, v1, v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v9

    add-int/2addr v7, v9

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v8, v4, v5}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 279
    :cond_a
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v5, v1, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v7

    add-int/2addr v5, v7

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v8, v4, v5}, Landroid/view/View;->measure(II)V

    goto :goto_7

    :cond_b
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    move v9, p1

    move v11, p2

    .line 285
    invoke-virtual/range {v7 .. v12}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_c
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :cond_d
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 412
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$2300(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->checkTransitionAnimation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->checkTabsAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_18

    if-eqz p1, :cond_1

    .line 414
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 415
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->velocityTracker:Landroid/view/VelocityTracker;

    .line 417
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->startedTracking:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->maybeStartTracking:Z

    if-nez v2, :cond_2

    .line 420
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->startedTrackingPointerId:I

    .line 421
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->maybeStartTracking:Z

    .line 422
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->startedTrackingX:I

    .line 423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->startedTrackingY:I

    .line 424
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_9

    :cond_2
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_b

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_b

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->startedTrackingPointerId:I

    if-ne v4, v5, :cond_b

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v4, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->startedTrackingX:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->startedTrackingY:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 428
    iget-boolean v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->startedTracking:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$800(Lorg/telegram/ui/PhotoPickerSearchActivity;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-gtz v2, :cond_4

    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$800(Lorg/telegram/ui/PhotoPickerSearchActivity;)Z

    move-result v5

    if-nez v5, :cond_7

    if-gez v2, :cond_7

    :cond_4
    if-gez v2, :cond_5

    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    .line 429
    :goto_0
    invoke-direct {p0, p1, v5}, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    move-result v5

    if-nez v5, :cond_7

    .line 430
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->maybeStartTracking:Z

    .line 431
    iput-boolean v1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->startedTracking:Z

    .line 432
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 433
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v5

    aget-object v5, v5, v0

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v6}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$800(Lorg/telegram/ui/PhotoPickerSearchActivity;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v6}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v6}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    neg-int v6, v6

    :goto_1
    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 434
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$600(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v6}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-static {v6}, Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;->access$400(Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;)I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectTabWithId(IF)V

    .line 437
    :cond_7
    iget-boolean v3, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->maybeStartTracking:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->startedTracking:Z

    if-nez v3, :cond_9

    const v3, 0x3e99999a    # 0.3f

    .line 438
    invoke-static {v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v3

    .line 439
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v3, v5, v3

    if-ltz v3, :cond_17

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v4, :cond_17

    if-gez v2, :cond_8

    const/4 v1, 0x1

    .line 440
    :cond_8
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    goto/16 :goto_9

    .line 442
    :cond_9
    iget-boolean p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->startedTracking:Z

    if-eqz p1, :cond_17

    .line 443
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v1

    int-to-float v3, v2

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 444
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$800(Lorg/telegram/ui/PhotoPickerSearchActivity;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 445
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_2

    .line 447
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 449
    :goto_2
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 450
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$600(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;->access$400(Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;)I

    move-result v0

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectTabWithId(IF)V

    goto/16 :goto_9

    :cond_b
    const/4 v4, 0x3

    if-eqz p1, :cond_c

    .line 452
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->startedTrackingPointerId:I

    if-ne v5, v6, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v4, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v0, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_17

    .line 453
    :cond_c
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v7}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$2400(Lorg/telegram/ui/PhotoPickerSearchActivity;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    if-eqz p1, :cond_e

    .line 456
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v4, :cond_e

    .line 457
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    .line 458
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    .line 459
    iget-boolean v6, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->startedTracking:Z

    if-nez v6, :cond_f

    .line 460
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x453b8000    # 3000.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_f

    cmpg-float v6, v4, v3

    if-gez v6, :cond_d

    const/4 v6, 0x1

    goto :goto_3

    :cond_d
    const/4 v6, 0x0

    .line 461
    :goto_3
    invoke-direct {p0, p1, v6}, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    goto :goto_4

    :cond_e
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 468
    :cond_f
    :goto_4
    iget-boolean p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->startedTracking:Z

    if-eqz p1, :cond_16

    .line 469
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getX()F

    move-result p1

    .line 470
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v6, v7}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1902(Lorg/telegram/ui/PhotoPickerSearchActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 471
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_11

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x455ac000    # 3500.0f

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_10

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v7, v5

    if-gez v5, :cond_11

    :cond_10
    const/4 v5, 0x1

    goto :goto_5

    :cond_11
    const/4 v5, 0x0

    :goto_5
    invoke-static {v6, v5}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1802(Lorg/telegram/ui/PhotoPickerSearchActivity;Z)Z

    .line 474
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1800(Lorg/telegram/ui/PhotoPickerSearchActivity;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 475
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 476
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$800(Lorg/telegram/ui/PhotoPickerSearchActivity;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 477
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1900(Lorg/telegram/ui/PhotoPickerSearchActivity;)Landroid/animation/AnimatorSet;

    move-result-object v5

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    .line 478
    invoke-static {v6}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v1

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v0, [F

    aput v3, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v2, v1

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    .line 479
    invoke-static {v6}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v0

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v0, [F

    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v9

    aget-object v9, v9, v0

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    aput v9, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v2, v0

    .line 477
    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_6

    .line 482
    :cond_12
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1900(Lorg/telegram/ui/PhotoPickerSearchActivity;)Landroid/animation/AnimatorSet;

    move-result-object v5

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    .line 483
    invoke-static {v6}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v1

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v0, [F

    aput v3, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v2, v1

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    .line 484
    invoke-static {v6}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v0

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v0, [F

    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v9

    aget-object v9, v9, v0

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v2, v0

    .line 482
    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_6

    .line 488
    :cond_13
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, v5, p1

    .line 489
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$800(Lorg/telegram/ui/PhotoPickerSearchActivity;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 490
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1900(Lorg/telegram/ui/PhotoPickerSearchActivity;)Landroid/animation/AnimatorSet;

    move-result-object v5

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    .line 491
    invoke-static {v6}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v1

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v0, [F

    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v2, v1

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    .line 492
    invoke-static {v6}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v0

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v0, [F

    aput v3, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v2, v0

    .line 490
    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_6

    .line 495
    :cond_14
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1900(Lorg/telegram/ui/PhotoPickerSearchActivity;)Landroid/animation/AnimatorSet;

    move-result-object v5

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    .line 496
    invoke-static {v6}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v1

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v0, [F

    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    aput v9, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v2, v1

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    .line 497
    invoke-static {v6}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v0

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v0, [F

    aput v3, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v2, v0

    .line 495
    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 501
    :goto_6
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1900(Lorg/telegram/ui/PhotoPickerSearchActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-static {}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$2500()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 503
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    .line 504
    div-int/lit8 v5, v2, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v7, p1, v6

    int-to-float v2, v2

    div-float/2addr v7, v2

    .line 505
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v5, v5

    .line 506
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->distanceInfluenceForSnapDuration(F)F

    move-result v2

    mul-float v2, v2, v5

    add-float/2addr v5, v2

    .line 507
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v3, v2, v3

    if-lez v3, :cond_15

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr v5, v2

    .line 510
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float v2, v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_7

    .line 512
    :cond_15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    add-float/2addr p1, v6

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float p1, p1, v2

    float-to-int p1, p1

    :goto_7
    const/16 v2, 0x96

    const/16 v3, 0x258

    .line 515
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 517
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1900(Lorg/telegram/ui/PhotoPickerSearchActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 518
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1900(Lorg/telegram/ui/PhotoPickerSearchActivity;)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/PhotoPickerSearchActivity$4$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoPickerSearchActivity$4$1;-><init>(Lorg/telegram/ui/PhotoPickerSearchActivity$4;)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 539
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1900(Lorg/telegram/ui/PhotoPickerSearchActivity;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 540
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$1702(Lorg/telegram/ui/PhotoPickerSearchActivity;Z)Z

    .line 541
    iput-boolean v1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->startedTracking:Z

    goto :goto_8

    .line 543
    :cond_16
    iput-boolean v1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->maybeStartTracking:Z

    .line 544
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$2900(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 545
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$600(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setEnabled(Z)V

    .line 547
    :goto_8
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_17

    .line 548
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 549
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->velocityTracker:Landroid/view/VelocityTracker;

    .line 552
    :cond_17
    :goto_9
    iget-boolean p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->startedTracking:Z

    return p1

    :cond_18
    return v1
.end method

.method public requestLayout()V
    .locals 1

    .line 367
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$4;->globalIgnoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 370
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
