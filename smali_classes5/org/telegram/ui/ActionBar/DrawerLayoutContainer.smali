.class public Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;
.super Landroid/widget/FrameLayout;
.source "DrawerLayoutContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$PreviewForegroundDrawable;
    }
.end annotation


# instance fields
.field private allowDrawContent:Z

.field private allowOpenDrawer:Z

.field private allowOpenDrawerBySwipe:Z

.field private backgroundPaint:Landroid/graphics/Paint;

.field private beginTrackingSent:Z

.field private behindKeyboardColor:I

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private drawCurrentPreviewFragmentAbove:Z

.field private drawerLayout:Landroid/view/ViewGroup;

.field private drawerOpened:Z

.field private drawerPosition:F

.field private firstLayout:Z

.field private hasCutout:Z

.field private imeHeight:I

.field private inLayout:Z

.field private isTouchInPreview:Z

.field private isTouchOutPreview:Z

.field private keyboardVisibility:Z

.field private lastInsets:Ljava/lang/Object;

.field private maybeStartTracking:Z

.field private minDrawerMargin:I

.field private parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

.field private previewBlurDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private previewForegroundDrawable:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$PreviewForegroundDrawable;

.field private rect:Landroid/graphics/Rect;

.field private scrimOpacity:F

.field private scrimPaint:Landroid/graphics/Paint;

.field private shadowLeft:Landroid/graphics/drawable/Drawable;

.field private startedTracking:Z

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static synthetic $r8$lambda$4hui0nU1rl2XjgW7keDO7vpH2NA(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->lambda$new$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 114
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->rect:Landroid/graphics/Rect;

    .line 85
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->scrimPaint:Landroid/graphics/Paint;

    .line 86
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->backgroundPaint:Landroid/graphics/Paint;

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowOpenDrawerBySwipe:Z

    .line 102
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowDrawContent:Z

    .line 104
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->firstLayout:Z

    .line 116
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v1, 0x42800000    # 64.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->minDrawerMargin:I

    const/high16 v0, 0x40000

    .line 117
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 118
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 121
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 122
    new-instance p1, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/16 p1, 0x500

    .line 155
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 158
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->menu_shadow:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->shadowLeft:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;IZ)V
    .locals 3

    .line 174
    check-cast p2, Landroid/view/WindowInsets;

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    .line 176
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    invoke-virtual {p2, p3, v1, v0, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne p3, v1, :cond_1

    .line 178
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    invoke-virtual {p2, v0, p3, v1, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p2

    .line 180
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result p3

    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eqz p4, :cond_2

    goto :goto_1

    .line 181
    :cond_2
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    :goto_1
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 182
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result p3

    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 183
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method

.method private createBlurDrawable()V
    .locals 7

    .line 414
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    .line 415
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v2, v0

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v4, v1

    div-float/2addr v4, v3

    float-to-int v3, v4

    .line 418
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 419
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v6, 0x3e2aaaab

    .line 420
    invoke-virtual {v5, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 421
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 422
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit16 v2, v2, 0xb4

    const/4 v3, 0x7

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v4, v2}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 423
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->previewBlurDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    .line 424
    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    return-void
.end method

.method private dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 3

    .line 163
    check-cast p2, Landroid/view/WindowInsets;

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    .line 165
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    invoke-virtual {p2, p3, v1, v0, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne p3, v1, :cond_1

    .line 167
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    invoke-virtual {p2, v0, p3, v1, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p2

    .line 169
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    return-void
.end method

.method private findScrollingChild(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .locals 6

    .line 575
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 577
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 578
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 581
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 582
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->rect:Landroid/graphics/Rect;

    float-to-int v4, p2

    float-to-int v5, p3

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    .line 583
    invoke-virtual {v2, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 585
    :cond_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 586
    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->rect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {p0, v2, v4, v3}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->findScrollingChild(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private getScrimOpacity()F
    .locals 1

    .line 320
    iget v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->scrimOpacity:F

    return v0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 124
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v2

    .line 125
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    .line 126
    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->keyboardVisibility:Z

    if-ne v4, v2, :cond_0

    iget v4, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->imeHeight:I

    if-eq v4, v3, :cond_1

    .line 127
    :cond_0
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->keyboardVisibility:Z

    .line 128
    iput v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->imeHeight:I

    .line 129
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->requestLayout()V

    .line 132
    :cond_1
    check-cast p1, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    .line 133
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 134
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->requestLayout()V

    .line 136
    :cond_2
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    if-nez v2, :cond_3

    .line 137
    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->firstLayout:Z

    if-eqz v3, :cond_4

    :cond_3
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-eq v3, v2, :cond_4

    .line 138
    sput v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_4
    const/4 v2, 0x0

    .line 140
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->firstLayout:Z

    .line 141
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->lastInsets:Ljava/lang/Object;

    .line 142
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    const/4 v4, 0x1

    if-gtz v3, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const/16 p1, 0x1c

    if-lt v0, p1, :cond_7

    .line 145
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 146
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    :cond_6
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->hasCutout:Z

    .line 148
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    if-lt v0, v1, :cond_8

    .line 150
    sget-object p1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p1

    .line 152
    :cond_8
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method private prepareForDrawerOpen(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v0, 0x0

    .line 370
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->maybeStartTracking:Z

    const/4 v1, 0x1

    .line 371
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    if-eqz p1, :cond_0

    .line 373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingX:I

    .line 375
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->beginTrackingSent:Z

    return-void
.end method

.method private setScrimOpacity(F)V
    .locals 0

    .line 315
    iput p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->scrimOpacity:F

    .line 316
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public cancelCurrentAnimation()V
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public closeDrawer()V
    .locals 2

    .line 343
    iget v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setDrawerPosition(F)V

    const/4 v0, 0x0

    .line 345
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->onDrawerAnimationEnd(Z)V

    :cond_0
    return-void
.end method

.method public closeDrawer(Z)V
    .locals 5

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->cancelCurrentAnimation()V

    .line 279
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/Animator;

    new-array v1, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v1, v4

    const-string v3, "drawerPosition"

    .line 281
    invoke-static {p0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v2, v4

    .line 280
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 283
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_1

    const/high16 p1, 0x43480000    # 200.0f

    .line 285
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    iget v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    mul-float p1, p1, v1

    float-to-int p1, p1

    const/16 v1, 0x32

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0xfa

    .line 287
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 289
    :goto_0
    new-instance p1, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$2;-><init>(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 295
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 729
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 730
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawCurrentPreviewFragmentAbove:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_2

    .line 731
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->previewBlurDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 732
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getCurrentPreviewFragmentAlpha()F

    move-result v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 733
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->previewBlurDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 735
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->previewForegroundDrawable:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$PreviewForegroundDrawable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->drawCurrentPreviewFragment(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 429
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawCurrentPreviewFragmentAbove:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isPreviewOpenAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_9

    .line 430
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 433
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    .line 434
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getPreviewMenu()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    .line 436
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 438
    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 439
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->rect:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v6, v7

    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 440
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 441
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 442
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    .line 446
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isTouchInPreview:Z

    .line 447
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_3

    .line 449
    :cond_2
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isTouchOutPreview:Z

    goto :goto_3

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 452
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isTouchInPreview:Z

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 453
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isTouchInPreview:Z

    goto :goto_2

    .line 454
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isTouchOutPreview:Z

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 455
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isTouchOutPreview:Z

    .line 457
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isTouchInPreview:Z

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 458
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_3

    :cond_6
    if-ne v0, v3, :cond_8

    .line 461
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isTouchOutPreview:Z

    if-eqz v0, :cond_7

    .line 462
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isTouchOutPreview:Z

    .line 463
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->finishPreviewFragment()V

    goto :goto_3

    .line 464
    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isTouchInPreview:Z

    if-eqz v0, :cond_8

    .line 465
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isTouchInPreview:Z

    .line 466
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_8
    :goto_3
    return v3

    .line 487
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 741
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowDrawContent:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 744
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    .line 745
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    const/4 v6, 0x1

    if-eq v2, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 747
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    .line 749
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    if-eqz v5, :cond_7

    .line 751
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v10, v9, :cond_5

    .line 753
    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 754
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_2

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    if-eq v13, v14, :cond_2

    move v12, v10

    :cond_2
    if-eq v13, v2, :cond_4

    .line 757
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_4

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    if-ne v13, v14, :cond_4

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v14

    if-ge v14, v3, :cond_3

    goto :goto_2

    .line 761
    :cond_3
    invoke-virtual {v13}, Landroid/view/View;->getX()F

    move-result v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v14, v13

    if-le v14, v11, :cond_4

    move v11, v14

    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    if-eqz v11, :cond_6

    .line 767
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int v3, v11, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    invoke-virtual {v1, v3, v4, v7, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_6
    move v4, v12

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    .line 770
    :goto_3
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    .line 771
    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 773
    iget v3, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->scrimOpacity:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_8

    if-eqz v5, :cond_8

    .line 774
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-ne v2, v4, :cond_9

    .line 775
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->scrimPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x43190000    # 153.0f

    iget v4, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->scrimOpacity:F

    mul-float v4, v4, v3

    float-to-int v3, v4

    shl-int/lit8 v3, v3, 0x18

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v11

    const/4 v3, 0x0

    int-to-float v4, v7

    .line 776
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->scrimPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 778
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->shadowLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_9

    .line 779
    iget v3, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    const/16 v4, 0x14

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    cmpl-float v4, v3, v6

    if-eqz v4, :cond_9

    .line 781
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->shadowLeft:Landroid/graphics/drawable/Drawable;

    iget v5, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    float-to-int v5, v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    float-to-int v7, v7

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->shadowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 782
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->shadowLeft:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 783
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->shadowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_9
    :goto_4
    return v9
.end method

.method public getDrawerLayout()Landroid/view/View;
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getDrawerPosition()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 238
    iget v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    return v0
.end method

.method public getParentActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDrawCurrentPreviewFragmentAbove()Z
    .locals 1

    .line 395
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawCurrentPreviewFragmentAbove:Z

    return v0
.end method

.method public isDrawerOpened()Z
    .locals 1

    .line 380
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->previewBlurDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 384
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerOpened:Z

    return v0
.end method

.method public moveDrawerByX(F)V
    .locals 1

    .line 203
    iget v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setDrawerPosition(F)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 791
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->lastInsets:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 792
    check-cast v0, Landroid/view/WindowInsets;

    .line 794
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    if-lez v1, :cond_0

    .line 796
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->backgroundPaint:Landroid/graphics/Paint;

    iget v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->behindKeyboardColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    .line 797
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v6, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v8, v1

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->backgroundPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 800
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->hasCutout:Z

    if-eqz v1, :cond_2

    .line 801
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 802
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, v1

    .line 804
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->backgroundPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 806
    :cond_1
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    if-eqz v0, :cond_2

    int-to-float v2, v0

    const/4 v3, 0x0

    .line 808
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->backgroundPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public onDrawerAnimationEnd(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 300
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    const/4 v1, 0x0

    .line 301
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 302
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerOpened:Z

    .line 303
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    .line 304
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 305
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 306
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    if-eq v2, v3, :cond_1

    if-eqz p1, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 307
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p1, 0x20

    .line 311
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 598
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

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
    .locals 4

    const/4 p1, 0x1

    .line 611
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->inLayout:Z

    .line 612
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_4

    .line 614
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 616
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-ne p5, v0, :cond_0

    goto/16 :goto_1

    .line 620
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/widget/FrameLayout$LayoutParams;

    .line 622
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_2

    .line 623
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    if-eq v0, p4, :cond_1

    .line 624
    iget v0, p5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget p5, p5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr p5, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr p5, v3

    invoke-virtual {p4, v0, v1, v2, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 626
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    iget v1, p5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget p5, p5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr p5, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr p5, v2

    invoke-virtual {p4, v0, v1, p2, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 630
    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    if-eq v0, p4, :cond_3

    .line 631
    iget v0, p5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget p5, p5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr p5, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr p5, v3

    invoke-virtual {p4, v0, v1, v2, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 633
    :cond_3
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    iget v1, p5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget p5, p5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr p5, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr p5, v2

    invoke-virtual {p4, v0, v1, p2, p5}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p4

    .line 636
    invoke-static {p4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    .line 640
    :cond_4
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->inLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 660
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 661
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 663
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 664
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v2, v3, :cond_3

    .line 665
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->inLayout:Z

    .line 666
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v6, v7

    if-ne v1, v6, :cond_1

    .line 667
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 668
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-virtual {p0, v5, v1, v5, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 670
    :cond_0
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 672
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_2

    .line 673
    invoke-virtual {p0, v5, v5, v5, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 676
    :cond_2
    :goto_0
    iput-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->inLayout:Z

    goto :goto_1

    .line 678
    :cond_3
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v6, v1, v6

    if-lez v6, :cond_4

    const/16 v7, 0x1000

    if-ge v6, v7, :cond_4

    .line 680
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iput v6, v7, Landroid/graphics/Point;->y:I

    .line 684
    :cond_4
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->lastInsets:Ljava/lang/Object;

    if-eqz v6, :cond_5

    if-lt v2, v3, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 686
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_c

    .line 688
    invoke-virtual {p0, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 690
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_6

    goto :goto_7

    .line 694
    :cond_6
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_9

    .line 697
    invoke-virtual {v8}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 698
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->lastInsets:Ljava/lang/Object;

    iget v11, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-direct {p0, v8, v10, v11}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_5

    .line 699
    :cond_7
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_9

    .line 700
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->lastInsets:Ljava/lang/Object;

    iget v11, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v12, v3, :cond_8

    const/4 v12, 0x1

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    :goto_4
    invoke-direct {p0, v9, v10, v11, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;IZ)V

    .line 704
    :cond_9
    :goto_5
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    if-eq v10, v8, :cond_b

    .line 705
    iget v10, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int v10, v0, v10

    iget v11, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 707
    iget v12, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-lez v12, :cond_a

    goto :goto_6

    .line 710
    :cond_a
    iget v12, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int v12, v1, v12

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v9

    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 712
    :goto_6
    invoke-virtual {v8, v10, v12}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 714
    :cond_b
    invoke-virtual {v8, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 715
    iget v10, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->minDrawerMargin:I

    iget v11, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v11

    iget v11, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    iget v11, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v10, v11}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v10

    .line 716
    iget v11, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v12, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v11, v9}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v9

    .line 717
    invoke-virtual {v8, v10, v9}, Landroid/view/View;->measure(II)V

    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_c
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 821
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerOpened:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 824
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 491
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 492
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerOpened:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    if-nez v0, :cond_1

    .line 493
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 494
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    :cond_0
    return v2

    .line 499
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowOpenDrawerBySwipe:Z

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerOpened:Z

    if-eqz v0, :cond_17

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowOpenDrawer:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_17

    const/4 v0, 0x2

    if-eqz p1, :cond_5

    .line 500
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v0, :cond_5

    :cond_3
    iget-boolean v6, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->maybeStartTracking:Z

    if-nez v6, :cond_5

    .line 501
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, p0, v0, v3}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->findScrollingChild(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    return v1

    .line 505
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getHitRect(Landroid/graphics/Rect;)V

    .line 506
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingX:I

    .line 507
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingY:I

    .line 508
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->rect:Landroid/graphics/Rect;

    iget v4, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingX:I

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 509
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingPointerId:I

    .line 510
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->maybeStartTracking:Z

    .line 511
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->cancelCurrentAnimation()V

    .line 512
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_19

    .line 513
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_4

    :cond_5
    const/4 v6, 0x0

    if-eqz p1, :cond_c

    .line 516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v0, :cond_c

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v7, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingPointerId:I

    if-ne v0, v7, :cond_c

    .line 517
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 518
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 520
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    .line 521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingY:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    .line 522
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 523
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->maybeStartTracking:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    if-nez v3, :cond_9

    cmpl-float v3, v0, v6

    if-lez v3, :cond_7

    const/high16 v3, 0x40400000    # 3.0f

    div-float v3, v0, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3e4ccccd    # 0.2f

    invoke-static {v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v4

    cmpl-float v3, v3, v4

    if-gez v3, :cond_8

    :cond_7
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerOpened:Z

    if-eqz v3, :cond_9

    cmpg-float v3, v0, v6

    if-gez v3, :cond_9

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_9

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_9

    .line 524
    :cond_8
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->prepareForDrawerOpen(Landroid/view/MotionEvent;)V

    .line 525
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingX:I

    .line 526
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_4

    .line 527
    :cond_9
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    if-eqz v1, :cond_19

    .line 528
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->beginTrackingSent:Z

    if-nez v1, :cond_b

    .line 529
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 530
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 532
    :cond_a
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->beginTrackingSent:Z

    .line 534
    :cond_b
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->moveDrawerByX(F)V

    .line 535
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingX:I

    goto/16 :goto_4

    :cond_c
    if-eqz p1, :cond_d

    .line 537
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v7, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingPointerId:I

    if-ne v0, v7, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_19

    .line 538
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_e

    .line 539
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 541
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 542
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    if-nez p1, :cond_f

    iget p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    cmpl-float v0, p1, v6

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_16

    .line 543
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    .line 544
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 545
    iget v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    const v7, 0x455ac000    # 3500.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_10

    cmpg-float v3, p1, v7

    if-ltz v3, :cond_11

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v3, v0

    if-ltz v0, :cond_11

    :cond_10
    cmpg-float v0, p1, v6

    if-gez v0, :cond_12

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v7

    if-ltz v0, :cond_12

    :cond_11
    const/4 v0, 0x1

    goto :goto_0

    :cond_12
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_14

    .line 547
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerOpened:Z

    if-nez v0, :cond_13

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v7

    if-ltz p1, :cond_13

    goto :goto_1

    :cond_13
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->openDrawer(Z)V

    goto :goto_3

    .line 549
    :cond_14
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerOpened:Z

    if-eqz v0, :cond_15

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v7

    if-ltz p1, :cond_15

    goto :goto_2

    :cond_15
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    .line 552
    :cond_16
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    .line 553
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->maybeStartTracking:Z

    .line 554
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_19

    .line 555
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 556
    iput-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    goto :goto_4

    :cond_17
    if-eqz p1, :cond_18

    .line 560
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v6, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingPointerId:I

    if-ne v0, v6, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_18

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_18

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_19

    .line 561
    :cond_18
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    .line 562
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->maybeStartTracking:Z

    .line 563
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_19

    .line 564
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 565
    iput-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 569
    :cond_19
    :goto_4
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    return p1

    :cond_1a
    return v1
.end method

.method public openDrawer(Z)V
    .locals 5

    .line 249
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowOpenDrawer:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 252
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 255
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->cancelCurrentAnimation()V

    .line 256
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/Animator;

    new-array v1, v1, [F

    .line 257
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v1, v4

    const-string v3, "drawerPosition"

    invoke-static {p0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 258
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_2

    const/high16 p1, 0x43480000    # 200.0f

    .line 260
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    sub-float/2addr v1, v2

    mul-float p1, p1, v1

    float-to-int p1, p1

    const/16 v1, 0x32

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0xfa

    .line 262
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 264
    :goto_0
    new-instance p1, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$1;-><init>(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 270
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 271
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    :cond_3
    :goto_1
    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 332
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    .line 333
    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    const/4 p1, 0x0

    .line 335
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 603
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->maybeStartTracking:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 604
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 606
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 645
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->inLayout:Z

    if-nez v0, :cond_0

    .line 653
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setAllowDrawContent(Z)V
    .locals 1

    .line 388
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowDrawContent:Z

    if-eq v0, p1, :cond_0

    .line 389
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowDrawContent:Z

    .line 390
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setAllowOpenDrawer(ZZ)V
    .locals 1

    .line 350
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowOpenDrawer:Z

    if-nez p1, :cond_1

    .line 351
    iget p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 353
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setDrawerPosition(F)V

    const/4 p1, 0x0

    .line 354
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->onDrawerAnimationEnd(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 356
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAllowOpenDrawerBySwipe(Z)V
    .locals 0

    .line 366
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowOpenDrawerBySwipe:Z

    return-void
.end method

.method public setBehindKeyboardColor(I)V
    .locals 0

    .line 723
    iput p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->behindKeyboardColor:I

    .line 724
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setDrawCurrentPreviewFragmentAbove(Z)V
    .locals 1

    .line 399
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawCurrentPreviewFragmentAbove:Z

    if-eq v0, p1, :cond_1

    .line 400
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawCurrentPreviewFragmentAbove:Z

    if-eqz p1, :cond_0

    .line 402
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->createBlurDrawable()V

    .line 403
    new-instance p1, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$PreviewForegroundDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$PreviewForegroundDrawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->previewForegroundDrawable:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$PreviewForegroundDrawable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 406
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->previewBlurDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 407
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->previewForegroundDrawable:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$PreviewForegroundDrawable;

    .line 409
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public setDrawerLayout(Landroid/view/ViewGroup;)V
    .locals 1

    .line 194
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    .line 195
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 196
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 197
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 198
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    :cond_0
    return-void
.end method

.method public setDrawerPosition(F)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    .line 212
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 213
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    goto :goto_0

    .line 214
    :cond_1
    iget p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    .line 215
    iput v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    .line 217
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    iget v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 219
    iget p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/4 p1, 0x4

    .line 220
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eq v2, p1, :cond_4

    .line 221
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 223
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 224
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 225
    iget v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 226
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setProgressToDrawerOpened(F)V

    goto :goto_2

    .line 227
    :cond_5
    iget v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_6

    .line 228
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setProgressToDrawerOpened(F)V

    goto :goto_2

    .line 230
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setProgressToDrawerOpened(F)V

    .line 233
    :cond_7
    :goto_2
    iget p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setScrimOpacity(F)V

    return-void
.end method

.method public setParentActionBarLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void
.end method
