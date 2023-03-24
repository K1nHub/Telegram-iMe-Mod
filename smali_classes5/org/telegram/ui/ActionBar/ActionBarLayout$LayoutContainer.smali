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

    .line 154
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 155
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 145
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->rect:Landroid/graphics/Rect;

    .line 149
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->backgroundPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 156
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->isKeyboardVisible:Z

    return p0
.end method

.method private synthetic lambda$processMenuButtonsTouch$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 371
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->moveUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 372
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$700(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 373
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$700(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 375
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-eqz p1, :cond_1

    .line 376
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 378
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 291
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->processMenuButtonsTouch(Landroid/view/MotionEvent;)V

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$400(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 293
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$600(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z

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

    .line 297
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

    .line 299
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return v2
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .line 161
    instance-of v0, p2, Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v0, :cond_5

    instance-of v0, p2, Lorg/fork/ui/view/PinnedPlayerView;

    if-eqz v0, :cond_0

    goto :goto_3

    .line 166
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 168
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p2, :cond_1

    goto :goto_1

    .line 172
    :cond_1
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 173
    move-object v0, v3

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getCastShadows()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 175
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    move v2, v0

    .line 180
    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    if-eqz v0, :cond_4

    .line 181
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$100()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 182
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$100()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p4

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$100()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p3, v1, v2, p4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 183
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$100()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return p2

    .line 162
    :cond_5
    :goto_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public hasOverlappingRendering()Z
    .locals 2

    .line 191
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

    .line 306
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->fragmentPanTranslationOffset:I

    if-eqz v0, :cond_1

    const-string v0, "windowBackgroundWhite"

    .line 307
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 308
    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->backgroundColor:I

    if-eq v2, v1, :cond_0

    .line 309
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->backgroundPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->backgroundColor:I

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    const/4 v3, 0x0

    .line 311
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

    .line 313
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 241
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_1

    .line 244
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 245
    instance-of v0, p4, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 247
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
    if-ge p4, p1, :cond_3

    .line 253
    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 254
    instance-of v1, v0, Lorg/fork/ui/view/PinnedPlayerView;

    if-eqz v1, :cond_2

    .line 255
    invoke-static {}, Lorg/fork/ui/view/PinnedPlayerView;->getPlayerHeight()I

    move-result p4

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    sub-int p4, p5, p4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, p2, p4, v1, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    move p4, p2

    :goto_4
    if-ge p4, p1, :cond_6

    .line 261
    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 262
    instance-of v0, p5, Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v0, :cond_5

    instance-of v0, p5, Lorg/fork/ui/view/PinnedPlayerView;

    if-nez v0, :cond_5

    .line 263
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 264
    invoke-virtual {p5}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 265
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

    .line 267
    :cond_4
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

    :cond_5
    :goto_5
    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 272
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 273
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->rect:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->top:I

    if-eqz p4, :cond_7

    sget p4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_6

    :cond_7
    move p4, p2

    :goto_6
    sub-int/2addr p3, p4

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getViewInset(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p3, p1

    .line 275
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->isKeyboardVisible:Z

    .line 276
    iget-object p4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->rect:Landroid/graphics/Rect;

    iget p5, p4, Landroid/graphics/Rect;->bottom:I

    iget p4, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, p4

    sub-int/2addr p3, p5

    if-lez p3, :cond_8

    const/4 p2, 0x1

    :cond_8
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->isKeyboardVisible:Z

    if-eq p1, p2, :cond_9

    .line 279
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->updatePinnedPlayerVisible()V

    .line 282
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$200(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object p2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-boolean p2, p2, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->isKeyboardVisible:Z

    if-nez p2, :cond_a

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->isKeyboardVisible:Z

    if-nez p1, :cond_a

    .line 283
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$200(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 284
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$200(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 285
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$202(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_a
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 199
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 200
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x0

    if-le v1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 202
    :goto_0
    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->wasPortrait:Z

    if-eq v4, v3, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isInPreviewMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 203
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->finishPreviewFragment()V

    .line 205
    :cond_1
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->wasPortrait:Z

    .line 207
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    move v4, v2

    :goto_1
    const/high16 v5, 0x40000000    # 2.0f

    if-ge v4, v3, :cond_3

    .line 210
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 211
    instance-of v7, v6, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v7, :cond_2

    .line 212
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v4, v7}, Landroid/view/View;->measure(II)V

    .line 213
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
    if-ge v6, v3, :cond_5

    .line 219
    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 220
    instance-of v8, v7, Lorg/fork/ui/view/PinnedPlayerView;

    if-eqz v8, :cond_4

    .line 221
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v7, v5, v6}, Landroid/view/View;->measure(II)V

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-ge v2, v3, :cond_8

    .line 227
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 228
    instance-of v5, v6, Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v5, :cond_7

    instance-of v5, v6, Lorg/fork/ui/view/PinnedPlayerView;

    if-nez v5, :cond_7

    .line 229
    invoke-virtual {v6}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move v7, p1

    move v9, p2

    .line 230
    invoke-virtual/range {v5 .. v10}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    move-object v5, p0

    move v7, p1

    move v9, p2

    move v10, v4

    .line 232
    invoke-virtual/range {v5 .. v10}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 236
    :cond_8
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public processMenuButtonsTouch(Landroid/view/MotionEvent;)V
    .locals 10

    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->pressX:F

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->pressY:F

    .line 328
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->allowToPressByHover:Z

    goto/16 :goto_4

    .line 329
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_9

    .line 330
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->highlightActionButtons:Z

    if-eqz v0, :cond_9

    .line 332
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

    .line 333
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->allowToPressByHover:Z

    .line 335
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->allowToPressByHover:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->isForegroundOpen()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_3
    move v0, v2

    .line 336
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v4

    if-ge v0, v4, :cond_9

    .line 337
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v4, :cond_4

    goto :goto_3

    .line 338
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v4, :cond_8

    .line 340
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 341
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    .line 343
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v7

    array-length v7, v7

    if-ne v7, v1, :cond_5

    move v7, v3

    goto :goto_1

    :cond_5
    move v7, v2

    .line 344
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v1, :cond_7

    if-eq v6, v7, :cond_8

    if-eqz v6, :cond_6

    new-array v7, v1, [I

    .line 346
    fill-array-data v7, :array_0

    goto :goto_2

    :cond_6
    new-array v7, v2, [I

    :goto_2
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    if-eqz v6, :cond_8

    const/16 v5, 0x9

    .line 349
    :try_start_0
    invoke-virtual {v4, v5, v3}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 353
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_8

    if-eqz v6, :cond_8

    .line 355
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->performClick()Z

    :catch_0
    :cond_8
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_9
    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_d

    .line 364
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->highlightActionButtons:Z

    if-eqz p1, :cond_c

    const/16 p1, 0xff

    .line 366
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v0, v4, :cond_b

    .line 367
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->moveUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p1

    :cond_b
    new-array v0, v1, [F

    int-to-float p1, p1

    aput p1, v0, v2

    const/4 p1, 0x0

    aput p1, v0, v3

    .line 369
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 370
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v4, 0x96

    .line 380
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 381
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 382
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    aput p1, v3, v2

    invoke-static {v0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 384
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 385
    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 386
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 388
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

    .line 317
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->fragmentPanTranslationOffset:I

    .line 318
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
