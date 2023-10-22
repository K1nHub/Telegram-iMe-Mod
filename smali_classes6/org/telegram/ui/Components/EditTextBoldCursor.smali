.class public Lorg/telegram/ui/Components/EditTextBoldCursor;
.super Lorg/telegram/ui/Components/EditTextEffects;
.source "EditTextBoldCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EditTextBoldCursor$ActionModeCallback2Wrapper;
    }
.end annotation


# static fields
.field private static editorClass:Ljava/lang/Class;

.field private static getVerticalOffsetMethod:Ljava/lang/reflect/Method;

.field private static mCursorDrawableResField:Ljava/lang/reflect/Field;

.field private static mEditor:Ljava/lang/reflect/Field;

.field private static mEditorInvalidateDisplayList:Ljava/lang/reflect/Method;

.field private static mScrollYField:Ljava/lang/reflect/Field;

.field private static mScrollYGet:Z

.field private static mShowCursorField:Ljava/lang/reflect/Field;


# instance fields
.field private activeLineColor:I

.field private activeLinePaint:Landroid/graphics/Paint;

.field private activeLineWidth:F

.field private allowDrawCursor:Z

.field private attachedToWindow:Landroid/view/View;

.field private currentDrawHintAsHeader:Z

.field cursorDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private cursorDrawn:Z

.field private cursorSize:I

.field private cursorWidth:F

.field public drawHint:Lorg/telegram/messenger/Utilities$Callback2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Landroid/graphics/Canvas;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field drawInMaim:Z

.field private editor:Ljava/lang/Object;

.field private errorLineColor:I

.field private errorPaint:Landroid/text/TextPaint;

.field private errorText:Ljava/lang/CharSequence;

.field public floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

.field private floatingToolbar:Lorg/telegram/ui/ActionBar/FloatingToolbar;

.field private floatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private headerAnimationProgress:F

.field private headerHintColor:I

.field private headerTransformAnimation:Landroid/animation/AnimatorSet;

.field private hint:Ljava/lang/CharSequence;

.field private hintAlpha:F

.field private hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private hintAnimator:Lorg/telegram/ui/Components/SubstringLayoutAnimator;

.field private hintColor:I

.field private hintLastUpdateTime:J

.field private hintLayout:Landroid/text/StaticLayout;

.field public hintLayoutX:F

.field public hintLayoutYFix:Z

.field private hintVisible:Z

.field private ignoreBottomCount:I

.field private ignoreTopCount:I

.field private invalidateRunnable:Ljava/lang/Runnable;

.field private isTextWatchersSuppressed:Z

.field private lastLineActiveness:F

.field private lastSize:I

.field private lastTouchX:I

.field private lineActive:Z

.field private lineActiveness:F

.field private lineColor:I

.field private lineLastUpdateTime:J

.field private linePaint:Landroid/graphics/Paint;

.field private lineSpacingExtra:F

.field private lineVisible:Z

.field private lineY:F

.field private mTempRect:Landroid/graphics/Rect;

.field private nextSetTextAnimated:Z

.field private onPremiumMenuLockClickListener:Ljava/lang/Runnable;

.field private padding:Landroid/graphics/Rect;

.field private rect:Landroid/graphics/Rect;

.field private registeredTextWatchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field rightHintOffset:F

.field private scrollY:I

.field private supportRtlHint:Z

.field private transformHintToHeader:Z

.field private windowView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$K3OBgRTOI7VE27ciSl8eLKDQrAA(Lorg/telegram/ui/Components/EditTextBoldCursor;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->lambda$startActionMode$1()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pXqGq_uhYpOYIBj_jsbwmAJ5GzU(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->lambda$drawHint$0(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 75
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 0

    .line 233
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EditTextEffects;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 106
    new-instance p1, Lorg/telegram/ui/Components/EditTextBoldCursor$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EditTextBoldCursor$1;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->invalidateRunnable:Ljava/lang/Runnable;

    .line 125
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 138
    iput p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    .line 140
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->allowDrawCursor:Z

    const/high16 p1, 0x40000000    # 2.0f

    .line 141
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorWidth:F

    const/4 p1, 0x0

    .line 147
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineVisible:Z

    .line 152
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    const/4 p2, 0x0

    .line 153
    iput p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActiveness:F

    .line 155
    iput p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastLineActiveness:F

    .line 156
    iput p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->activeLineWidth:F

    .line 179
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->registeredTextWatchers:Ljava/util/List;

    .line 180
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->isTextWatchersSuppressed:Z

    .line 504
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->padding:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 740
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastTouchX:I

    .line 234
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_0

    const/4 p1, 0x2

    .line 235
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setImportantForAutofill(I)V

    .line 237
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/EditTextBoldCursor;)Landroid/view/View;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->attachedToWindow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/EditTextBoldCursor;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawn:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/EditTextBoldCursor;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorSize:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/EditTextBoldCursor;)F
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorWidth:F

    return p0
.end method

.method private checkHeaderVisibility(Z)V
    .locals 6

    .line 682
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->transformHintToHeader:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 683
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->currentDrawHintAsHeader:Z

    if-eq v3, v0, :cond_6

    .line 684
    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerTransformAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2

    .line 685
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v3, 0x0

    .line 686
    iput-object v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerTransformAnimation:Landroid/animation/AnimatorSet;

    .line 688
    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->currentDrawHintAsHeader:Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    .line 690
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerTransformAnimation:Landroid/animation/AnimatorSet;

    new-array v5, v1, [Landroid/animation/Animator;

    new-array v1, v1, [F

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    aput v3, v1, v2

    const-string v0, "headerAnimationProgress"

    .line 691
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 692
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerTransformAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 693
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerTransformAnimation:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 694
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerTransformAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    .line 696
    :goto_2
    iput v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerAnimationProgress:F

    .line 698
    :goto_3
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    :cond_6
    return-void
.end method

.method private clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I
    .locals 6

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p2, v0

    .line 1063
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 1064
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1065
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mTempRect:Landroid/graphics/Rect;

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1069
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1070
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    .line 1072
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1074
    :goto_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result p1

    int-to-float v1, p1

    sub-float v1, p2, v1

    .line 1076
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v3, v4

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_2

    add-int/2addr v2, p1

    .line 1079
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    sub-int/2addr v2, v0

    goto :goto_3

    .line 1080
    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-lez v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x100000

    sub-int/2addr v0, p1

    int-to-float v0, v0

    add-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_3

    cmpg-float v0, p2, v4

    if-gtz v0, :cond_3

    goto :goto_1

    :cond_3
    float-to-int p1, p2

    .line 1083
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 1081
    :cond_4
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    :goto_2
    sub-int v2, p1, p2

    :goto_3
    return v2
.end method

.method private cleanupFloatingActionModeViews()V
    .locals 3

    .line 1100
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbar:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1101
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->dismiss()V

    .line 1102
    iput-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbar:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    .line 1104
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_1

    .line 1105
    invoke-virtual {p0}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1106
    iput-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_1
    return-void
.end method

.method private drawHint(Landroid/graphics/Canvas;)V
    .locals 10

    .line 768
    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->transformHintToHeader:Z

    if-nez v0, :cond_0

    return-void

    .line 771
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_2

    :cond_1
    if-nez v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_7

    .line 772
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 773
    iget-wide v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLastUpdateTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    const-wide/16 v7, 0x11

    if-ltz v0, :cond_3

    cmp-long v0, v5, v7

    if-lez v0, :cond_4

    :cond_3
    move-wide v5, v7

    .line 777
    :cond_4
    iput-wide v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLastUpdateTime:J

    .line 778
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    const/high16 v3, 0x43160000    # 150.0f

    if-eqz v0, :cond_5

    .line 779
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    long-to-float v4, v5

    div-float/2addr v4, v3

    add-float/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 781
    iput v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    goto :goto_0

    .line 784
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    long-to-float v4, v5

    div-float/2addr v4, v3

    sub-float/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    .line 786
    iput v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    .line 789
    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    .line 791
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    if-nez v0, :cond_8

    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_b

    .line 792
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_a

    .line 793
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 794
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 795
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 796
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 797
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 798
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 799
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setRightPadding(F)V

    goto :goto_1

    .line 801
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 802
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rightHintOffset:F

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 803
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 804
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 805
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 806
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rightHintOffset:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setRightPadding(F)V

    goto :goto_1

    .line 809
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setRightPadding(F)V

    .line 811
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 812
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_7

    .line 813
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    if-nez v0, :cond_c

    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_14

    .line 814
    :cond_c
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    .line 816
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 818
    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    .line 819
    iget-object v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v5

    cmpl-float v6, v3, v2

    if-eqz v6, :cond_d

    int-to-float v7, v4

    sub-float/2addr v7, v3

    float-to-int v7, v7

    goto :goto_2

    :cond_d
    move v7, v4

    .line 823
    :goto_2
    iget-boolean v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->supportRtlHint:Z

    if-eqz v8, :cond_e

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_e

    .line 824
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v5

    .line 825
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v9

    add-int/2addr v7, v9

    int-to-float v7, v7

    add-float/2addr v7, v8

    iput v7, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayoutX:F

    iget v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineY:F

    iget-object v9, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const/4 v9, 0x7

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    .line 827
    :cond_e
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    iput v7, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayoutX:F

    iget v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineY:F

    iget-object v9, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40e00000    # 7.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 829
    :goto_3
    iget-boolean v7, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->transformHintToHeader:Z

    if-eqz v7, :cond_11

    const v7, 0x3e99999a    # 0.3f

    .line 830
    iget v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerAnimationProgress:F

    mul-float/2addr v8, v7

    sub-float v7, v1, v8

    .line 832
    iget-boolean v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->supportRtlHint:Z

    if-eqz v8, :cond_f

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_f

    add-float/2addr v5, v3

    mul-float v1, v5, v7

    sub-float/2addr v5, v1

    .line 833
    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_4

    :cond_f
    if-eqz v6, :cond_10

    sub-float/2addr v1, v7

    mul-float/2addr v3, v1

    .line 835
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 837
    :cond_10
    :goto_4
    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    const/16 v1, 0x16

    .line 838
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerAnimationProgress:F

    mul-float/2addr v1, v3

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 839
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    iget v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerHintColor:I

    iget v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerAnimationProgress:F

    invoke-static {v2, v3, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_5

    .line 841
    :cond_11
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 842
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    iget v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 844
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimator:Lorg/telegram/ui/Components/SubstringLayoutAnimator;

    if-eqz v1, :cond_12

    iget-boolean v1, v1, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateTextChange:Z

    if-eqz v1, :cond_12

    .line 845
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 846
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v4, v4, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 847
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimator:Lorg/telegram/ui/Components/SubstringLayoutAnimator;

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->draw(Landroid/graphics/Canvas;Landroid/text/TextPaint;)V

    .line 848
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    .line 850
    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->drawHint:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v1, :cond_13

    .line 851
    new-instance v2, Lorg/telegram/ui/Components/EditTextBoldCursor$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/graphics/Canvas;)V

    invoke-interface {v1, p1, v2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 853
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 856
    :goto_6
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 857
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_14
    :goto_7
    return-void
.end method

.method private init()V
    .locals 8

    .line 349
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->linePaint:Landroid/graphics/Paint;

    .line 350
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->activeLinePaint:Landroid/graphics/Paint;

    .line 351
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorPaint:Landroid/text/TextPaint;

    const/16 v2, 0xb

    .line 352
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 353
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x2

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    .line 354
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setImportantForAutofill(I)V

    :cond_0
    const/16 v3, 0x1d

    if-lt v0, v3, :cond_1

    .line 358
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextBoldCursor$5;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 379
    new-instance v4, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 380
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    invoke-direct {v0, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextCursorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 387
    :cond_1
    :try_start_0
    sget-boolean v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYGet:Z

    if-nez v0, :cond_2

    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    .line 388
    sput-boolean v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYGet:Z

    .line 389
    const-class v0, Landroid/view/View;

    const-string v4, "mScrollY"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYField:Ljava/lang/reflect/Field;

    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    const/4 v0, 0x0

    .line 396
    :try_start_1
    sget-object v4, Lorg/telegram/ui/Components/EditTextBoldCursor;->editorClass:Ljava/lang/Class;

    if-nez v4, :cond_3

    .line 397
    const-class v4, Landroid/widget/TextView;

    const-string v5, "mEditor"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lorg/telegram/ui/Components/EditTextBoldCursor;->mEditor:Ljava/lang/reflect/Field;

    .line 398
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v4, "android.widget.Editor"

    .line 399
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/telegram/ui/Components/EditTextBoldCursor;->editorClass:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v5, "mShowCursor"

    .line 401
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lorg/telegram/ui/Components/EditTextBoldCursor;->mShowCursorField:Ljava/lang/reflect/Field;

    .line 402
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 405
    :catch_0
    :try_start_3
    sget-object v4, Lorg/telegram/ui/Components/EditTextBoldCursor;->editorClass:Ljava/lang/Class;

    const-string v5, "invalidateTextDisplayList"

    new-array v6, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/telegram/ui/Components/EditTextBoldCursor;->mEditorInvalidateDisplayList:Ljava/lang/reflect/Method;

    .line 406
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 408
    :catch_1
    :try_start_4
    const-class v4, Landroid/widget/TextView;

    const-string v5, "getVerticalOffset"

    new-array v6, v1, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/telegram/ui/Components/EditTextBoldCursor;->getVerticalOffsetMethod:Ljava/lang/reflect/Method;

    .line 409
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    .line 412
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 414
    :cond_3
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawable:Landroid/graphics/drawable/ShapeDrawable;

    if-nez v4, :cond_6

    .line 416
    :try_start_5
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v2, [I

    const v6, -0xab5e25

    aput v6, v2, v0

    aput v6, v2, v1

    invoke-direct {v4, v5, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v4, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 417
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_4

    .line 418
    invoke-virtual {p0, v4}, Landroid/widget/EditText;->setTextCursorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 420
    :cond_4
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mEditor:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editor:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 425
    :catchall_2
    :try_start_6
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mCursorDrawableResField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_5

    .line 426
    const-class v0, Landroid/widget/TextView;

    const-string v2, "mCursorDrawableRes"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mCursorDrawableResField:Ljava/lang/reflect/Field;

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 429
    :cond_5
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mCursorDrawableResField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_6

    .line 430
    sget v1, Lorg/telegram/messenger/R$drawable;->field_carret_empty:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    :cond_6
    const/16 v0, 0x18

    .line 436
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorSize:I

    return-void

    nop

    :array_0
    .array-data 4
        -0xab5e25
        -0xab5e25
    .end array-data
.end method

.method private synthetic lambda$drawHint$0(Landroid/graphics/Canvas;)V
    .locals 1

    .line 851
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private synthetic lambda$startActionMode$1()Z
    .locals 1

    .line 1139
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    if-eqz v0, :cond_0

    .line 1140
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/FloatingActionMode;->updateViewLocationInWindow()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private updateCursorPosition(IIF)V
    .locals 4

    .line 1089
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0, v0, p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I

    move-result p3

    .line 1090
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorWidth:F

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 1091
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v3

    add-int/2addr v0, p3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v2

    invoke-virtual {v1, p3, p1, v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    return-void
.end method

.method private updateCursorPosition()Z
    .locals 5

    .line 1048
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1049
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 1050
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 1051
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 1052
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 1053
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    invoke-direct {p0, v3, v2, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->updateCursorPosition(IIF)V

    .line 1055
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    return v4
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->registeredTextWatchers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->isTextWatchersSuppressed:Z

    if-eqz v0, :cond_0

    return-void

    .line 268
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public dispatchTextWatchersTextChanged()V
    .locals 6

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->registeredTextWatchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    .line 285
    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v3

    const-string v4, ""

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5, v2, v3}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 286
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-interface {v1, v2, v5, v3, v4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 287
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected extendActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method protected getActionModeStyle()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAutofillType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getErrorLayout(I)Landroid/text/StaticLayout;
    .locals 9

    .line 573
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 576
    :cond_0
    new-instance v8, Landroid/text/StaticLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v8
.end method

.method public getExtendedPaddingBottom()I
    .locals 2

    .line 733
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreBottomCount:I

    if-eqz v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 734
    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreBottomCount:I

    .line 735
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->scrollY:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 737
    :cond_1
    invoke-super {p0}, Landroid/widget/EditText;->getExtendedPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getExtendedPaddingTop()I
    .locals 1

    .line 724
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreTopCount:I

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 725
    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreTopCount:I

    const/4 v0, 0x0

    return v0

    .line 728
    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->getExtendedPaddingTop()I

    move-result v0

    return v0
.end method

.method public getHeaderAnimationProgress()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 710
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerAnimationProgress:F

    return v0
.end method

.method public getHintLayoutEx()Landroid/text/Layout;
    .locals 1

    .line 668
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    return-object v0
.end method

.method public getLineSpacingExtra()F
    .locals 1

    .line 1096
    invoke-super {p0}, Landroid/widget/EditText;->getLineSpacingExtra()F

    move-result v0

    return v0
.end method

.method public getLineY()F
    .locals 1

    .line 581
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineY:F

    return v0
.end method

.method protected getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextCursorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 327
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawable:Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 328
    invoke-super {p0}, Landroid/widget/EditText;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 330
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor$4;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor$4;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/graphics/drawable/shapes/Shape;)V

    .line 337
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method public hasErrorText()Z
    .locals 1

    .line 569
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hideActionMode()V
    .locals 0

    .line 1173
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method public invalidateForce()V
    .locals 3

    .line 750
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    .line 751
    invoke-virtual {p0}, Landroid/widget/EditText;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 756
    :cond_0
    :try_start_0
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mEditorInvalidateDisplayList:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 757
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editor:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 758
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mEditor:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editor:Ljava/lang/Object;

    .line 760
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editor:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 761
    sget-object v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->mEditorInvalidateDisplayList:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1113
    :try_start_0
    invoke-super {p0}, Lorg/telegram/ui/Components/EditTextEffects;->onAttachedToWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1115
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1117
    :goto_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->attachedToWindow:Landroid/view/View;

    .line 1118
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1123
    invoke-super {p0}, Lorg/telegram/ui/Components/EditTextEffects;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 1124
    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->attachedToWindow:Landroid/view/View;

    .line 1125
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 863
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->drawHint(Landroid/graphics/Canvas;)V

    .line 865
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result v0

    const v1, 0x7fffffff

    .line 866
    iput v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->scrollY:I

    const/4 v2, 0x0

    .line 868
    :try_start_0
    sget-object v3, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYField:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_0

    .line 869
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->scrollY:I

    .line 870
    sget-object v3, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYField:Ljava/lang/reflect/Field;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 872
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->scrollY:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 875
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v4, :cond_1d

    :goto_0
    const/4 v3, 0x1

    .line 879
    iput v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreTopCount:I

    .line 880
    iput v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreBottomCount:I

    .line 881
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v0

    const/4 v4, 0x0

    .line 882
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 884
    :try_start_1
    iput-boolean v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->drawInMaim:Z

    .line 885
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->onDraw(Landroid/graphics/Canvas;)V

    .line 886
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->drawInMaim:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 888
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v5, :cond_1c

    .line 892
    :goto_1
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    iget v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->scrollY:I

    if-eq v5, v1, :cond_2

    .line 894
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 896
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v1, :cond_1

    goto :goto_2

    .line 897
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 901
    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 902
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawable:Landroid/graphics/drawable/ShapeDrawable;

    const/16 v1, 0x30

    if-nez v0, :cond_9

    .line 905
    :try_start_3
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mShowCursorField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editor:Ljava/lang/Object;

    if-eqz v5, :cond_4

    .line 906
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v5

    .line 907
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/16 v5, 0x3e8

    rem-long/2addr v7, v5

    const-wide/16 v5, 0x1f4

    cmp-long v0, v7, v5

    if-gez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_3

    .line 909
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawn:Z

    .line 910
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawn:Z

    .line 912
    :goto_3
    iget-boolean v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->allowDrawCursor:Z

    if-eqz v5, :cond_e

    if-eqz v0, :cond_e

    .line 913
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 915
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->getVerticalOffsetMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    .line 916
    invoke-virtual {p0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x70

    if-eq v0, v1, :cond_6

    .line 917
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->getVerticalOffsetMethod:Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    .line 920
    :cond_5
    invoke-virtual {p0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x70

    if-eq v0, v1, :cond_6

    .line 921
    invoke-virtual {p0}, Landroid/widget/EditText;->getTotalPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_4

    :cond_6
    move v0, v2

    .line 924
    :goto_4
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v0, v5

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 925
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 926
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 927
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .line 928
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->updateCursorPosition()Z

    .line 929
    iget-object v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 930
    iget-object v6, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 931
    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorWidth:F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 932
    iget-object v6, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 933
    iget v5, v5, Landroid/graphics/Rect;->top:I

    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 934
    iget v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineSpacingExtra:F

    cmpl-float v8, v5, v4

    if-eqz v8, :cond_7

    sub-int/2addr v0, v3

    if-ge v1, v0, :cond_7

    int-to-float v0, v7

    sub-float/2addr v0, v5

    float-to-int v0, v0

    .line 935
    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 937
    :cond_7
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorSize:I

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v0, v5

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 938
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 939
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 940
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 941
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    .line 944
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v1, :cond_8

    goto/16 :goto_6

    .line 945
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 949
    :cond_9
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawn:Z

    if-eqz v0, :cond_e

    .line 951
    :try_start_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 953
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->getVerticalOffsetMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_a

    .line 954
    invoke-virtual {p0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x70

    if-eq v0, v1, :cond_b

    .line 955
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->getVerticalOffsetMethod:Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5

    .line 958
    :cond_a
    invoke-virtual {p0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x70

    if-eq v0, v1, :cond_b

    .line 959
    invoke-virtual {p0}, Landroid/widget/EditText;->getTotalPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_5

    :cond_b
    move v0, v2

    .line 962
    :goto_5
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v0, v5

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 963
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 964
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 965
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .line 966
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->updateCursorPosition()Z

    .line 967
    iget-object v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 968
    iget-object v6, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 969
    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorWidth:F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 970
    iget-object v6, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 971
    iget v5, v5, Landroid/graphics/Rect;->top:I

    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 972
    iget v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineSpacingExtra:F

    cmpl-float v8, v5, v4

    if-eqz v8, :cond_c

    sub-int/2addr v0, v3

    if-ge v1, v0, :cond_c

    int-to-float v0, v7

    sub-float/2addr v0, v5

    float-to-int v0, v0

    .line 973
    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 975
    :cond_c
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorSize:I

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v0, v5

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 976
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 977
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 978
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 979
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 980
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawn:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    .line 982
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v1, :cond_d

    goto :goto_6

    .line 983
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 988
    :cond_e
    :goto_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineVisible:Z

    if-eqz v0, :cond_1b

    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineColor:I

    if-eqz v0, :cond_1b

    .line 989
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 990
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    .line 991
    iget-object v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x2

    if-nez v5, :cond_f

    .line 992
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->linePaint:Landroid/graphics/Paint;

    iget v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorLineColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 993
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 994
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    goto :goto_7

    .line 995
    :cond_f
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 996
    iput-boolean v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    goto :goto_7

    .line 998
    :cond_10
    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->linePaint:Landroid/graphics/Paint;

    iget v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 999
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    .line 1001
    :goto_7
    iget-boolean v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    if-eq v3, v1, :cond_11

    .line 1002
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineLastUpdateTime:J

    .line 1003
    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActiveness:F

    iput v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastLineActiveness:F

    .line 1005
    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineLastUpdateTime:J

    sub-long/2addr v7, v9

    long-to-float v1, v7

    const/high16 v3, 0x43160000    # 150.0f

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v5, v1, v3

    if-ltz v5, :cond_13

    .line 1006
    iget-boolean v7, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    if-eqz v7, :cond_12

    iget v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActiveness:F

    cmpl-float v8, v8, v3

    if-nez v8, :cond_13

    :cond_12
    if-nez v7, :cond_15

    iget v7, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActiveness:F

    cmpl-float v7, v7, v4

    if-eqz v7, :cond_15

    .line 1007
    :cond_13
    iget v7, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastLineActiveness:F

    iget-boolean v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    if-eqz v8, :cond_14

    move v8, v3

    goto :goto_8

    :cond_14
    move v8, v4

    :goto_8
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v7, v8, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActiveness:F

    if-gez v5, :cond_15

    .line 1009
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    .line 1013
    :cond_15
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_16

    move v1, v2

    goto :goto_9

    :cond_16
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    :goto_9
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v5

    add-int/2addr v1, v5

    .line 1014
    iget v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineY:F

    float-to-int v5, v5

    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollY()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollY()I

    move-result v7

    sub-int/2addr v1, v7

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v5, v1

    .line 1015
    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastTouchX:I

    if-gez v1, :cond_17

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v1

    div-int/2addr v1, v6

    .line 1016
    :cond_17
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/2addr v2, v6

    .line 1017
    iget v7, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActiveness:F

    cmpg-float v7, v7, v3

    if-gez v7, :cond_18

    .line 1018
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v7

    int-to-float v9, v7

    sub-int v0, v5, v0

    int-to-float v10, v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v0, v7

    int-to-float v11, v0

    int-to-float v12, v5

    iget-object v13, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->linePaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1020
    :cond_18
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActiveness:F

    cmpl-float v7, v0, v4

    if-lez v7, :cond_1b

    .line 1021
    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v0

    .line 1022
    iget-boolean v7, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    if-eqz v7, :cond_19

    int-to-float v2, v2

    mul-float/2addr v2, v0

    .line 1023
    iput v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->activeLineWidth:F

    :cond_19
    if-eqz v7, :cond_1a

    goto :goto_a

    :cond_1a
    move v3, v0

    .line 1025
    :goto_a
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v3, v0

    float-to-int v0, v3

    .line 1027
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->activeLineWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    sub-float v3, v1, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float v8, v2, v3

    sub-int v0, v5, v0

    int-to-float v9, v0

    .line 1029
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->activeLineWidth:F

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float v10, v0, v1

    int-to-float v11, v5

    iget-object v12, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->activeLinePaint:Landroid/graphics/Paint;

    move-object v7, p1

    .line 1026
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1b
    return-void

    .line 889
    :cond_1c
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 876
    :cond_1d
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 674
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 676
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    .line 678
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->checkHeaderVisibility(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1196
    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.EditText"

    .line 1197
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1198
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    .line 1199
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1202
    :cond_0
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHintText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 605
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onMeasure(II)V

    .line 606
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p2

    shl-int/lit8 p2, p2, 0x10

    add-int/2addr p1, p2

    .line 607
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz p2, :cond_0

    .line 608
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2, v0, v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 610
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz p2, :cond_1

    .line 611
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2, v0, v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 613
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    if-eqz p2, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-nez v0, :cond_4

    .line 614
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastSize:I

    if-eq v0, p1, :cond_2

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hint:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p0, v0, v1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;ZLandroid/text/TextPaint;)V

    .line 617
    :cond_2
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayoutYFix:Z

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_3

    .line 618
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v1

    add-int/2addr p2, v1

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v0

    add-float/2addr p2, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineY:F

    goto :goto_0

    .line 620
    :cond_3
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p2

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    div-float/2addr p2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    const/4 v0, 0x6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineY:F

    goto :goto_0

    .line 623
    :cond_4
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p2

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    iput p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineY:F

    .line 625
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastSize:I

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 590
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onScrollChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 592
    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 743
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 744
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastTouchX:I

    .line 746
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->registeredTextWatchers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 274
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->isTextWatchersSuppressed:Z

    if-eqz v0, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setAllowDrawCursor(Z)V
    .locals 0

    .line 476
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->allowDrawCursor:Z

    .line 477
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setCursorColor(I)V
    .locals 1

    .line 485
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawable:Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 488
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 489
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 491
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setCursorSize(I)V
    .locals 0

    .line 495
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorSize:I

    return-void
.end method

.method public setCursorWidth(F)V
    .locals 0

    .line 481
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorWidth:F

    return-void
.end method

.method public setErrorLineColor(I)V
    .locals 1

    .line 499
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorLineColor:I

    .line 500
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 501
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setErrorText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 561
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 564
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorText:Ljava/lang/CharSequence;

    .line 565
    invoke-virtual {p0}, Landroid/widget/EditText;->requestLayout()V

    return-void
.end method

.method public setHandlesColor(I)V
    .locals 2

    .line 1212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/XiaomiUtilities;->isMIUI()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1216
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1217
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1218
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextSelectHandleLeft(Landroid/graphics/drawable/Drawable;)V

    .line 1220
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSelectHandle()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1221
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1222
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextSelectHandle(Landroid/graphics/drawable/Drawable;)V

    .line 1224
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1225
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1226
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextSelectHandleRight(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public setHeaderAnimationProgress(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 704
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerAnimationProgress:F

    .line 705
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setHeaderHintColor(I)V
    .locals 0

    .line 541
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerHintColor:I

    .line 542
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setHintColor(I)V
    .locals 1

    .line 530
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    .line 531
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 534
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz p1, :cond_1

    .line 535
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 537
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setHintRightOffset(I)V
    .locals 1

    .line 189
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rightHintOffset:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rightHintOffset:F

    .line 193
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setHintText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 629
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;ZLandroid/text/TextPaint;)V

    return-void
.end method

.method public setHintText(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 633
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;ZLandroid/text/TextPaint;)V

    return-void
.end method

.method public setHintText(Ljava/lang/CharSequence;ZLandroid/text/TextPaint;)V
    .locals 8

    .line 637
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_0

    .line 638
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 643
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_2

    const/4 p2, 0x0

    :cond_2
    if-eqz p2, :cond_4

    .line 647
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimator:Lorg/telegram/ui/Components/SubstringLayoutAnimator;

    if-nez p2, :cond_3

    .line 648
    new-instance p2, Lorg/telegram/ui/Components/SubstringLayoutAnimator;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/SubstringLayoutAnimator;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimator:Lorg/telegram/ui/Components/SubstringLayoutAnimator;

    .line 650
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimator:Lorg/telegram/ui/Components/SubstringLayoutAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hint:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0, v1, p1, p3}, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->create(Landroid/text/StaticLayout;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;)V

    goto :goto_0

    .line 652
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimator:Lorg/telegram/ui/Components/SubstringLayoutAnimator;

    if-eqz p2, :cond_5

    .line 653
    invoke-virtual {p2}, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->cancel()V

    .line 656
    :cond_5
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hint:Ljava/lang/CharSequence;

    .line 657
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p2

    if-eqz p2, :cond_6

    .line 658
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, p3, p2, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 659
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    :cond_6
    move-object v1, p1

    .line 663
    new-instance p1, Landroid/text/StaticLayout;

    const/16 p2, 0x3e8

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    :goto_1
    return-void
.end method

.method public setHintText2(Ljava/lang/CharSequence;Z)V
    .locals 2

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_1

    .line 184
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    :cond_1
    return-void
.end method

.method public setHintVisible(ZZ)V
    .locals 2

    .line 518
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 521
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLastUpdateTime:J

    .line 522
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 524
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    .line 526
    :cond_2
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setLineColors(III)V
    .locals 4

    const/4 v0, 0x1

    .line 506
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineVisible:Z

    .line 507
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->search_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->padding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->padding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 509
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineColor:I

    .line 510
    iput p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->activeLineColor:I

    .line 511
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->activeLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 512
    iput p3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorLineColor:I

    .line 513
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setColor(I)V

    .line 514
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    .line 715
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setLineSpacing(FF)V

    .line 716
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineSpacingExtra:F

    return-void
.end method

.method public setNextSetTextAnimated(Z)V
    .locals 0

    .line 557
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->nextSetTextAnimated:Z

    return-void
.end method

.method public setOnPremiumMenuLockClickListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 1232
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->onPremiumMenuLockClickListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    .line 1188
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1190
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setSelection(II)V
    .locals 0

    .line 1179
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1181
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setSupportRtlHint(Z)V
    .locals 0

    .line 585
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->supportRtlHint:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 598
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextEffects;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 599
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->nextSetTextAnimated:Z

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->checkHeaderVisibility(Z)V

    const/4 p1, 0x0

    .line 600
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->nextSetTextAnimated:Z

    return-void
.end method

.method public setTextSize(IF)V
    .locals 2

    .line 547
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_0

    .line 548
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 550
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_1

    .line 551
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 553
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextSize(IF)V

    return-void
.end method

.method public setTextWatchersSuppressed(ZZ)V
    .locals 5

    .line 298
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->isTextWatchersSuppressed:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 299
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->isTextWatchersSuppressed:Z

    if-eqz p1, :cond_1

    .line 302
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->registeredTextWatchers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/text/TextWatcher;

    .line 303
    invoke-super {p0, p2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 306
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->registeredTextWatchers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextWatcher;

    .line 307
    invoke-super {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-eqz p2, :cond_2

    .line 309
    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v2

    const-string v3, ""

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v1, v2}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 310
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-interface {v0, v1, v4, v2, v3}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 311
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setTransformHintToHeader(Z)V
    .locals 1

    .line 465
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->transformHintToHeader:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 468
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->transformHintToHeader:Z

    .line 469
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerTransformAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    .line 470
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 p1, 0x0

    .line 471
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerTransformAnimation:Landroid/animation/AnimatorSet;

    :cond_1
    return-void
.end method

.method public setWindowView(Landroid/view/View;)V
    .locals 0

    .line 1044
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->windowView:Landroid/view/View;

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 5

    .line 1130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->windowView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->attachedToWindow:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1131
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    if-eqz v0, :cond_1

    .line 1132
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/FloatingActionMode;->finish()V

    .line 1134
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->cleanupFloatingActionModeViews()V

    .line 1135
    new-instance v0, Lorg/telegram/ui/ActionBar/FloatingToolbar;

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->windowView:Landroid/view/View;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->attachedToWindow:Landroid/view/View;

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getActionModeStyle()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/FloatingToolbar;-><init>(Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbar:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    .line 1136
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->onPremiumMenuLockClickListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->setOnPremiumLockClick(Ljava/lang/Runnable;)V

    .line 1137
    new-instance v0, Lorg/telegram/ui/ActionBar/FloatingActionMode;

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/EditTextBoldCursor$ActionModeCallback2Wrapper;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor$ActionModeCallback2Wrapper;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/view/ActionMode$Callback;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbar:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    invoke-direct {v0, v1, v2, p0, v3}, Lorg/telegram/ui/ActionBar/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lorg/telegram/ui/ActionBar/FloatingToolbar;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    .line 1138
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextBoldCursor$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 1144
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/FloatingActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 1145
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/FloatingActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->extendActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 1146
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/FloatingActionMode;->invalidate()V

    .line 1147
    invoke-virtual {p0}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1148
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    .line 1149
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    return-object p1

    .line 1151
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 2

    .line 1157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->windowView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->attachedToWindow:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1158
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 1160
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public useAnimatedTextDrawable()V
    .locals 2

    .line 241
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextBoldCursor$2;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v1, 0x1

    .line 247
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setEllipsizeByGradient(Z)V

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 251
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextBoldCursor$3;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v1, 0x5

    .line 257
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    return-void
.end method
