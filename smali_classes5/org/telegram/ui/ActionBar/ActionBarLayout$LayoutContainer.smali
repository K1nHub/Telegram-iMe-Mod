.class public Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/ActionBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LayoutContainer"
.end annotation


# instance fields
.field private allowToPressByHover:Z

.field private backgroundColor:I

.field private backgroundPaint:Landroid/graphics/Paint;

.field private fragmentPanTranslationOffset:I

.field private isKeyboardVisible:Z

.field private pressX:F

.field private pressY:F

.field private rect:Landroid/graphics/Rect;

.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private wasPortrait:Z


# direct methods
.method public static synthetic $r8$lambda$-SaWVxBmfQVvSDed2SMEd0o_S8E(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->lambda$processMenuButtonsTouch$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/content/Context;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 200
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 190
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->rect:Landroid/graphics/Rect;

    .line 194
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->backgroundPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 201
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)Z
    .locals 0

    .line 188
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->isKeyboardVisible:Z

    return p0
.end method

.method private synthetic lambda$processMenuButtonsTouch$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 429
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->moveUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 430
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$800(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 431
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$800(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 433
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-eqz p1, :cond_1

    .line 434
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 436
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 345
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->processMenuButtonsTouch(Landroid/view/MotionEvent;)V

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$600(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 347
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$700(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 351
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-eq p0, v0, :cond_4

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1

    :catchall_0
    move-exception p1

    .line 353
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return v2
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$100(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$100(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$100(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 210
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->storyViewerAttached()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryViewer;->isFullyVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->isStoryViewer(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 213
    :cond_1
    instance-of v0, p2, Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v0, :cond_7

    instance-of v0, p2, Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-nez v0, :cond_7

    instance-of v0, p2, Lorg/telegram/ui/Components/PasscodeView;

    if-eqz v0, :cond_2

    goto :goto_4

    .line 218
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_5

    .line 220
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p2, :cond_3

    goto :goto_2

    .line 224
    :cond_3
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 225
    move-object v0, v3

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getCastShadows()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 226
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 227
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    move v2, v0

    .line 232
    :goto_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    if-eqz v0, :cond_6

    .line 233
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$200()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 234
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$200()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p4

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$200()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p3, v1, v2, p4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 235
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$200()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    return p2

    .line 214
    :cond_7
    :goto_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public hasOverlappingRendering()Z
    .locals 2

    .line 243
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 360
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->fragmentPanTranslationOffset:I

    if-eqz v0, :cond_1

    .line 361
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 362
    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->backgroundColor:I

    if-eq v2, v1, :cond_0

    .line 363
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->backgroundPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->backgroundColor:I

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    const/4 v3, 0x0

    .line 365
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->fragmentPanTranslationOffset:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x3

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->backgroundPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 367
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 294
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_1

    .line 297
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 298
    instance-of v0, p4, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 300
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p4, p2, p2, v0, p3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    move p3, p2

    :goto_1
    move p4, p2

    :goto_2
    if-ge p4, p1, :cond_4

    .line 306
    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 307
    instance-of v1, v0, Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-eqz v1, :cond_2

    .line 308
    invoke-static {}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->getPlayerHeight()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v1, p5, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, p2, v1, v2, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 309
    :cond_2
    instance-of v1, v0, Lorg/telegram/ui/Components/PasscodeView;

    if-eqz v1, :cond_3

    .line 310
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, p2, p2, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_3
    :goto_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_4
    move p4, p2

    :goto_4
    if-ge p4, p1, :cond_7

    .line 315
    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 316
    instance-of v0, p5, Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v0, :cond_6

    instance-of v0, p5, Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-nez v0, :cond_6

    instance-of v0, p5, Lorg/telegram/ui/Components/PasscodeView;

    if-nez v0, :cond_6

    .line 317
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 318
    invoke-virtual {p5}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 319
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {p5, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    .line 321
    :cond_5
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, p3

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, p3

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {p5, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    :cond_6
    :goto_5
    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 326
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 327
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->rect:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->top:I

    if-eqz p4, :cond_8

    sget p4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_6

    :cond_8
    move p4, p2

    :goto_6
    sub-int/2addr p3, p4

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getViewInset(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p3, p1

    .line 329
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->isKeyboardVisible:Z

    .line 330
    iget-object p4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->rect:Landroid/graphics/Rect;

    iget p5, p4, Landroid/graphics/Rect;->bottom:I

    iget p4, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, p4

    sub-int/2addr p3, p5

    if-lez p3, :cond_9

    const/4 p2, 0x1

    :cond_9
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->isKeyboardVisible:Z

    if-eq p1, p2, :cond_a

    .line 333
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->updatePinnedPlayerVisible()V

    .line 336
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object p2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-boolean p2, p2, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->isKeyboardVisible:Z

    if-nez p2, :cond_b

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$400(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->isKeyboardVisible:Z

    if-nez p1, :cond_b

    .line 337
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 338
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 339
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$302(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_b
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 251
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 252
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x0

    if-le v1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 254
    :goto_0
    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->wasPortrait:Z

    if-eq v4, v3, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isInPreviewMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->finishPreviewFragment()V

    .line 257
    :cond_1
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->wasPortrait:Z

    .line 259
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    move v4, v2

    :goto_1
    const/high16 v5, 0x40000000    # 2.0f

    if-ge v4, v3, :cond_3

    .line 262
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 263
    instance-of v7, v6, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v7, :cond_2

    .line 264
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v4, v7}, Landroid/view/View;->measure(II)V

    .line 265
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_2
    move v6, v2

    :goto_3
    if-ge v6, v3, :cond_6

    .line 271
    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 272
    instance-of v8, v7, Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-eqz v8, :cond_4

    .line 273
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 274
    :cond_4
    instance-of v8, v7, Lorg/telegram/ui/Components/PasscodeView;

    if-eqz v8, :cond_5

    .line 275
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    :goto_5
    if-ge v2, v3, :cond_9

    .line 280
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 281
    instance-of v5, v6, Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v5, :cond_8

    instance-of v5, v6, Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-nez v5, :cond_8

    instance-of v5, v6, Lorg/telegram/ui/Components/PasscodeView;

    if-nez v5, :cond_8

    .line 282
    invoke-virtual {v6}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move v7, p1

    move v9, p2

    .line 283
    invoke-virtual/range {v5 .. v10}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    move-object v5, p0

    move v7, p1

    move v9, p2

    move v10, v4

    .line 285
    invoke-virtual/range {v5 .. v10}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 289
    :cond_9
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public processMenuButtonsTouch(Landroid/view/MotionEvent;)V
    .locals 10

    .line 379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->pressX:F

    .line 381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->pressY:F

    .line 382
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->allowToPressByHover:Z

    goto/16 :goto_4

    .line 383
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_9

    .line 384
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$600(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->highlightActionButtons:Z

    if-eqz v0, :cond_9

    .line 386
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->allowToPressByHover:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->pressX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v0, v4

    float-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->pressY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v0, v8

    float-to-double v8, v0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const/16 v0, 0x1e

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-double v6, v0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_2

    .line 387
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->allowToPressByHover:Z

    .line 389
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->allowToPressByHover:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$600(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$600(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->isForegroundOpen()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_3
    move v0, v2

    .line 390
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$600(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v4

    if-ge v0, v4, :cond_9

    .line 392
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$600(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v4, :cond_4

    goto :goto_3

    .line 396
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$600(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v4, :cond_8

    .line 398
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 399
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 400
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    .line 401
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v7

    array-length v7, v7

    if-ne v7, v1, :cond_5

    move v7, v3

    goto :goto_1

    :cond_5
    move v7, v2

    .line 402
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v1, :cond_7

    if-eq v6, v7, :cond_8

    if-eqz v6, :cond_6

    new-array v7, v1, [I

    .line 404
    fill-array-data v7, :array_0

    goto :goto_2

    :cond_6
    new-array v7, v2, [I

    :goto_2
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    if-eqz v6, :cond_8

    const/16 v5, 0x9

    .line 407
    :try_start_0
    invoke-virtual {v4, v5, v3}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 411
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_8

    if-eqz v6, :cond_8

    .line 413
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->performClick()Z

    :catch_0
    :cond_8
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    :cond_9
    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_d

    .line 422
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$600(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->highlightActionButtons:Z

    if-eqz p1, :cond_c

    const/16 p1, 0xff

    .line 424
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v0, v4, :cond_b

    .line 425
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->moveUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p1

    :cond_b
    new-array v0, v1, [F

    int-to-float p1, p1

    aput p1, v0, v2

    const/4 p1, 0x0

    aput p1, v0, v3

    .line 427
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 428
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v4, 0x96

    .line 438
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 439
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 440
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 441
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    aput p1, v3, v2

    invoke-static {v0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 442
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 443
    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 444
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 446
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iput-boolean v2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->highlightActionButtons:Z

    :cond_d
    return-void

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method public setFragmentPanTranslationOffset(I)V
    .locals 0

    .line 371
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->fragmentPanTranslationOffset:I

    .line 372
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
