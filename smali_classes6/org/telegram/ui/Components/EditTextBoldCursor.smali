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

.field private forceCursorEnd:Z

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

.method public static synthetic $r8$lambda$XxX0nOoawCDKHDJnvoAlM6f8BD0(Lorg/telegram/ui/Components/EditTextBoldCursor;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->shouldShowQuoteButton()Z

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

    .line 81
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 0

    .line 240
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EditTextEffects;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 112
    new-instance p1, Lorg/telegram/ui/Components/EditTextBoldCursor$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EditTextBoldCursor$1;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->invalidateRunnable:Ljava/lang/Runnable;

    .line 131
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 143
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 144
    iput p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    .line 146
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->allowDrawCursor:Z

    const/4 p1, 0x0

    .line 147
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->forceCursorEnd:Z

    const/high16 p2, 0x40000000    # 2.0f

    .line 148
    iput p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorWidth:F

    .line 154
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineVisible:Z

    .line 159
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    const/4 p2, 0x0

    .line 160
    iput p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActiveness:F

    .line 162
    iput p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastLineActiveness:F

    .line 163
    iput p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->activeLineWidth:F

    .line 186
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->registeredTextWatchers:Ljava/util/List;

    .line 187
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->isTextWatchersSuppressed:Z

    .line 516
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->padding:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 749
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastTouchX:I

    .line 241
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_0

    const/4 p1, 0x2

    .line 242
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setImportantForAutofill(I)V

    .line 244
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/EditTextBoldCursor;)Landroid/view/View;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->attachedToWindow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/EditTextBoldCursor;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawn:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/EditTextBoldCursor;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorSize:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/EditTextBoldCursor;)F
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorWidth:F

    return p0
.end method

.method private checkHeaderVisibility(Z)V
    .locals 6

    .line 694
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

    .line 695
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->currentDrawHintAsHeader:Z

    if-eq v3, v0, :cond_6

    .line 696
    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerTransformAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2

    .line 697
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v3, 0x0

    .line 698
    iput-object v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerTransformAnimation:Landroid/animation/AnimatorSet;

    .line 700
    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->currentDrawHintAsHeader:Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    .line 702
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

    .line 703
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 704
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerTransformAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 705
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerTransformAnimation:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 706
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerTransformAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    .line 708
    :goto_2
    iput v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerAnimationProgress:F

    .line 710
    :goto_3
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    :cond_6
    return-void
.end method

.method private clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I
    .locals 6

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p2, v0

    .line 1076
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 1077
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1078
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mTempRect:Landroid/graphics/Rect;

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1082
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1083
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    .line 1085
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1087
    :goto_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result p1

    int-to-float v1, p1

    sub-float v1, p2, v1

    .line 1089
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

    .line 1092
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    sub-int/2addr v2, v0

    goto :goto_3

    .line 1093
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

    .line 1096
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 1094
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

    .line 1113
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbar:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1114
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->dismiss()V

    .line 1115
    iput-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbar:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    .line 1117
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_1

    .line 1118
    invoke-virtual {p0}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1119
    iput-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_1
    return-void
.end method

.method private drawHint(Landroid/graphics/Canvas;)V
    .locals 10

    .line 777
    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->transformHintToHeader:Z

    if-nez v0, :cond_0

    return-void

    .line 780
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

    .line 781
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 782
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

    .line 786
    :cond_4
    iput-wide v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLastUpdateTime:J

    .line 787
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    const/high16 v3, 0x43160000    # 150.0f

    if-eqz v0, :cond_5

    .line 788
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    long-to-float v4, v5

    div-float/2addr v4, v3

    add-float/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 790
    iput v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    goto :goto_0

    .line 793
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    long-to-float v4, v5

    div-float/2addr v4, v3

    sub-float/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    .line 795
    iput v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    .line 798
    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    .line 800
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

    .line 801
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_a

    .line 802
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

    .line 803
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 804
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

    .line 805
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 806
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 807
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 808
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setRightPadding(F)V

    goto :goto_1

    .line 810
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 811
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rightHintOffset:F

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 812
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 813
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 814
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 815
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

    .line 818
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setRightPadding(F)V

    .line 820
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

    .line 821
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_7

    .line 822
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    if-nez v0, :cond_c

    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_14

    .line 823
    :cond_c
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    .line 825
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 827
    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    .line 828
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

    .line 832
    :goto_2
    iget-boolean v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->supportRtlHint:Z

    if-eqz v8, :cond_e

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_e

    .line 833
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v5

    .line 834
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

    .line 836
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

    .line 838
    :goto_3
    iget-boolean v7, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->transformHintToHeader:Z

    if-eqz v7, :cond_11

    const v7, 0x3e99999a    # 0.3f

    .line 839
    iget v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerAnimationProgress:F

    mul-float/2addr v8, v7

    sub-float v7, v1, v8

    .line 841
    iget-boolean v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->supportRtlHint:Z

    if-eqz v8, :cond_f

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_f

    add-float/2addr v5, v3

    mul-float v1, v5, v7

    sub-float/2addr v5, v1

    .line 842
    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_4

    :cond_f
    if-eqz v6, :cond_10

    sub-float/2addr v1, v7

    mul-float/2addr v3, v1

    .line 844
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 846
    :cond_10
    :goto_4
    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    const/16 v1, 0x16

    .line 847
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerAnimationProgress:F

    mul-float/2addr v1, v3

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 848
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    iget v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerHintColor:I

    iget v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerAnimationProgress:F

    invoke-static {v2, v3, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_5

    .line 850
    :cond_11
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 851
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

    .line 853
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimator:Lorg/telegram/ui/Components/SubstringLayoutAnimator;

    if-eqz v1, :cond_12

    iget-boolean v1, v1, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateTextChange:Z

    if-eqz v1, :cond_12

    .line 854
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 855
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v4, v4, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 856
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimator:Lorg/telegram/ui/Components/SubstringLayoutAnimator;

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->draw(Landroid/graphics/Canvas;Landroid/text/TextPaint;)V

    .line 857
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    .line 859
    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->drawHint:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v1, :cond_13

    .line 860
    new-instance v2, Lorg/telegram/ui/Components/EditTextBoldCursor$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/graphics/Canvas;)V

    invoke-interface {v1, p1, v2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 862
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 865
    :goto_6
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 866
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_14
    :goto_7
    return-void
.end method

.method private init()V
    .locals 8

    .line 356
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->linePaint:Landroid/graphics/Paint;

    .line 357
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->activeLinePaint:Landroid/graphics/Paint;

    .line 358
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorPaint:Landroid/text/TextPaint;

    const/16 v2, 0xb

    .line 359
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 360
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x2

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    .line 361
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setImportantForAutofill(I)V

    :cond_0
    const/16 v3, 0x1d

    if-lt v0, v3, :cond_1

    .line 365
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextBoldCursor$5;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 386
    new-instance v4, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 387
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    invoke-direct {v0, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextCursorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 394
    :cond_1
    :try_start_0
    sget-boolean v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYGet:Z

    if-nez v0, :cond_2

    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    .line 395
    sput-boolean v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYGet:Z

    .line 396
    const-class v0, Landroid/view/View;

    const-string v4, "mScrollY"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYField:Ljava/lang/reflect/Field;

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    const/4 v0, 0x0

    .line 403
    :try_start_1
    sget-object v4, Lorg/telegram/ui/Components/EditTextBoldCursor;->editorClass:Ljava/lang/Class;

    if-nez v4, :cond_3

    .line 404
    const-class v4, Landroid/widget/TextView;

    const-string v5, "mEditor"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lorg/telegram/ui/Components/EditTextBoldCursor;->mEditor:Ljava/lang/reflect/Field;

    .line 405
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v4, "android.widget.Editor"

    .line 406
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/telegram/ui/Components/EditTextBoldCursor;->editorClass:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v5, "mShowCursor"

    .line 408
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lorg/telegram/ui/Components/EditTextBoldCursor;->mShowCursorField:Ljava/lang/reflect/Field;

    .line 409
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 412
    :catch_0
    :try_start_3
    sget-object v4, Lorg/telegram/ui/Components/EditTextBoldCursor;->editorClass:Ljava/lang/Class;

    const-string v5, "invalidateTextDisplayList"

    new-array v6, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/telegram/ui/Components/EditTextBoldCursor;->mEditorInvalidateDisplayList:Ljava/lang/reflect/Method;

    .line 413
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 415
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

    .line 416
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    .line 419
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 421
    :cond_3
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawable:Landroid/graphics/drawable/ShapeDrawable;

    if-nez v4, :cond_6

    .line 423
    :try_start_5
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v2, [I

    const v6, -0xab5e25

    aput v6, v2, v0

    aput v6, v2, v1

    invoke-direct {v4, v5, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v4, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 424
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_4

    .line 425
    invoke-virtual {p0, v4}, Landroid/widget/EditText;->setTextCursorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    :cond_4
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mEditor:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editor:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 432
    :catchall_2
    :try_start_6
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mCursorDrawableResField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_5

    .line 433
    const-class v0, Landroid/widget/TextView;

    const-string v2, "mCursorDrawableRes"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mCursorDrawableResField:Ljava/lang/reflect/Field;

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 436
    :cond_5
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mCursorDrawableResField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_6

    .line 437
    sget v1, Lorg/telegram/messenger/R$drawable;->field_carret_empty:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    :cond_6
    const/16 v0, 0x18

    .line 443
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

    .line 860
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private synthetic lambda$startActionMode$1()Z
    .locals 1

    .line 1153
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/FloatingActionMode;->updateViewLocationInWindow()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private shouldShowQuoteButton()Z
    .locals 5

    .line 1170
    invoke-virtual {p0}, Landroid/widget/EditText;->hasSelection()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1173
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 1177
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    const-class v4, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    if-eqz v0, :cond_2

    .line 1178
    array-length v0, v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method private updateCursorPosition(IIF)V
    .locals 4

    .line 1102
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0, v0, p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I

    move-result p3

    .line 1103
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorWidth:F

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 1104
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

    .line 1061
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1062
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->forceCursorEnd:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 1063
    :goto_0
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 1064
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 1065
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 1066
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    invoke-direct {p0, v3, v2, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->updateCursorPosition(IIF)V

    .line 1068
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    return v4
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->registeredTextWatchers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->isTextWatchersSuppressed:Z

    if-eqz v0, :cond_0

    return-void

    .line 275
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public dispatchTextWatchersTextChanged()V
    .locals 6

    .line 291
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

    .line 292
    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v3

    const-string v4, ""

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5, v2, v3}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 293
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-interface {v1, v2, v5, v3, v4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 294
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

    .line 585
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 588
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

    .line 742
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreBottomCount:I

    if-eqz v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 743
    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreBottomCount:I

    .line 744
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->scrollY:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 746
    :cond_1
    invoke-super {p0}, Landroid/widget/EditText;->getExtendedPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getExtendedPaddingTop()I
    .locals 1

    .line 733
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreTopCount:I

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 734
    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreTopCount:I

    const/4 v0, 0x0

    return v0

    .line 737
    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->getExtendedPaddingTop()I

    move-result v0

    return v0
.end method

.method public getHeaderAnimationProgress()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 722
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerAnimationProgress:F

    return v0
.end method

.method public getHintLayoutEx()Landroid/text/Layout;
    .locals 1

    .line 680
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    return-object v0
.end method

.method public getLineSpacingExtra()F
    .locals 1

    .line 1109
    invoke-super {p0}, Landroid/widget/EditText;->getLineSpacingExtra()F

    move-result v0

    return v0
.end method

.method public getLineY()F
    .locals 1

    .line 593
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineY:F

    return v0
.end method

.method public getOnPremiumMenuLockClickListener()Ljava/lang/Runnable;
    .locals 1

    .line 1262
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->onPremiumMenuLockClickListener:Ljava/lang/Runnable;

    return-object v0
.end method

.method protected getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextCursorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawable:Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 335
    invoke-super {p0}, Landroid/widget/EditText;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 337
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor$4;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor$4;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/graphics/drawable/shapes/Shape;)V

    .line 344
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method public hasErrorText()Z
    .locals 1

    .line 581
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hideActionMode()V
    .locals 0

    .line 1199
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method public invalidateForce()V
    .locals 3

    .line 759
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    .line 760
    invoke-virtual {p0}, Landroid/widget/EditText;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 765
    :cond_0
    :try_start_0
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mEditorInvalidateDisplayList:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 766
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editor:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 767
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mEditor:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editor:Ljava/lang/Object;

    .line 769
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editor:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 770
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

    .line 1126
    :try_start_0
    invoke-super {p0}, Lorg/telegram/ui/Components/EditTextEffects;->onAttachedToWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1128
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1130
    :goto_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->attachedToWindow:Landroid/view/View;

    .line 1131
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1136
    invoke-super {p0}, Lorg/telegram/ui/Components/EditTextEffects;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 1137
    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->attachedToWindow:Landroid/view/View;

    .line 1138
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 872
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->drawHint(Landroid/graphics/Canvas;)V

    .line 874
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result v0

    const v1, 0x7fffffff

    .line 875
    iput v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->scrollY:I

    const/4 v2, 0x0

    .line 877
    :try_start_0
    sget-object v3, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYField:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_0

    .line 878
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->scrollY:I

    .line 879
    sget-object v3, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYField:Ljava/lang/reflect/Field;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 881
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->scrollY:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 884
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v4, :cond_1f

    .line 888
    :goto_0
    invoke-static {}, Lorg/telegram/ui/Components/EditTextEffects;->allowHackingTextCanvas()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 889
    iput v4, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreTopCount:I

    .line 890
    iput v4, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreBottomCount:I

    .line 892
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 893
    invoke-static {}, Lorg/telegram/ui/Components/EditTextEffects;->allowHackingTextCanvas()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_2

    int-to-float v0, v0

    .line 894
    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 897
    :cond_2
    :try_start_1
    iput-boolean v4, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->drawInMaim:Z

    .line 898
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->onDraw(Landroid/graphics/Canvas;)V

    .line 899
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->drawInMaim:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 901
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v3, :cond_1e

    .line 905
    :goto_1
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_4

    iget v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->scrollY:I

    if-eq v3, v1, :cond_4

    .line 907
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 909
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v1, :cond_3

    goto :goto_2

    .line 910
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 914
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 915
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawable:Landroid/graphics/drawable/ShapeDrawable;

    const/16 v1, 0x30

    if-nez v0, :cond_b

    .line 918
    :try_start_3
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mShowCursorField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editor:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 919
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v6

    .line 920
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/16 v6, 0x3e8

    rem-long/2addr v8, v6

    const-wide/16 v6, 0x1f4

    cmp-long v0, v8, v6

    if-gez v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_3

    .line 922
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawn:Z

    .line 923
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawn:Z

    .line 925
    :goto_3
    iget-boolean v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->allowDrawCursor:Z

    if-eqz v3, :cond_10

    if-eqz v0, :cond_10

    .line 926
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 928
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->getVerticalOffsetMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_7

    .line 929
    invoke-virtual {p0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x70

    if-eq v0, v1, :cond_8

    .line 930
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->getVerticalOffsetMethod:Ljava/lang/reflect/Method;

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    .line 933
    :cond_7
    invoke-virtual {p0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x70

    if-eq v0, v1, :cond_8

    .line 934
    invoke-virtual {p0}, Landroid/widget/EditText;->getTotalPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_4

    :cond_8
    move v0, v2

    .line 937
    :goto_4
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result v3

    add-int/2addr v3, v0

    int-to-float v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 938
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 939
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 940
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .line 941
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->updateCursorPosition()Z

    .line 942
    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 943
    iget-object v6, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 944
    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorWidth:F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 945
    iget-object v6, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 946
    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v6, Landroid/graphics/Rect;->top:I

    .line 947
    iget v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineSpacingExtra:F

    cmpl-float v8, v3, v5

    if-eqz v8, :cond_9

    sub-int/2addr v0, v4

    if-ge v1, v0, :cond_9

    int-to-float v0, v7

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 948
    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 950
    :cond_9
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorSize:I

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v0, v3

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 951
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 952
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 953
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 954
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    .line 957
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v1, :cond_a

    goto/16 :goto_6

    .line 958
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 962
    :cond_b
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawn:Z

    if-eqz v0, :cond_10

    .line 964
    :try_start_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 966
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->getVerticalOffsetMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_c

    .line 967
    invoke-virtual {p0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x70

    if-eq v0, v1, :cond_d

    .line 968
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->getVerticalOffsetMethod:Ljava/lang/reflect/Method;

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5

    .line 971
    :cond_c
    invoke-virtual {p0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x70

    if-eq v0, v1, :cond_d

    .line 972
    invoke-virtual {p0}, Landroid/widget/EditText;->getTotalPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_5

    :cond_d
    move v0, v2

    .line 975
    :goto_5
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result v3

    add-int/2addr v3, v0

    int-to-float v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 976
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 977
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 978
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .line 979
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->updateCursorPosition()Z

    .line 980
    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 981
    iget-object v6, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 982
    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorWidth:F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 983
    iget-object v6, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 984
    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v6, Landroid/graphics/Rect;->top:I

    .line 985
    iget v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineSpacingExtra:F

    cmpl-float v8, v3, v5

    if-eqz v8, :cond_e

    sub-int/2addr v0, v4

    if-ge v1, v0, :cond_e

    int-to-float v0, v7

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 986
    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 988
    :cond_e
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorSize:I

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v0, v3

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 989
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 990
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 991
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 992
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 993
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawn:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    .line 995
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v1, :cond_f

    goto :goto_6

    .line 996
    :cond_f
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1001
    :cond_10
    :goto_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineVisible:Z

    if-eqz v0, :cond_1d

    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineColor:I

    if-eqz v0, :cond_1d

    .line 1002
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 1003
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    .line 1004
    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v6, 0x2

    if-nez v3, :cond_11

    .line 1005
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->linePaint:Landroid/graphics/Paint;

    iget v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorLineColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1006
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 1007
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    goto :goto_7

    .line 1008
    :cond_11
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1009
    iput-boolean v4, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    goto :goto_7

    .line 1011
    :cond_12
    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->linePaint:Landroid/graphics/Paint;

    iget v4, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1012
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    .line 1014
    :goto_7
    iget-boolean v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    if-eq v3, v1, :cond_13

    .line 1015
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineLastUpdateTime:J

    .line 1016
    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActiveness:F

    iput v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastLineActiveness:F

    .line 1018
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v7, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineLastUpdateTime:J

    sub-long/2addr v3, v7

    long-to-float v1, v3

    const/high16 v3, 0x43160000    # 150.0f

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v1, v3

    if-ltz v4, :cond_15

    .line 1019
    iget-boolean v7, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    if-eqz v7, :cond_14

    iget v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActiveness:F

    cmpl-float v8, v8, v3

    if-nez v8, :cond_15

    :cond_14
    if-nez v7, :cond_17

    iget v7, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActiveness:F

    cmpl-float v7, v7, v5

    if-eqz v7, :cond_17

    .line 1020
    :cond_15
    iget v7, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastLineActiveness:F

    iget-boolean v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    if-eqz v8, :cond_16

    move v8, v3

    goto :goto_8

    :cond_16
    move v8, v5

    :goto_8
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v7, v8, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActiveness:F

    if-gez v4, :cond_17

    .line 1022
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    .line 1026
    :cond_17
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_18

    move v1, v2

    goto :goto_9

    :cond_18
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    :goto_9
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v4

    add-int/2addr v1, v4

    .line 1027
    iget v4, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineY:F

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollY()I

    move-result v7

    add-int/2addr v4, v7

    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollY()I

    move-result v7

    sub-int/2addr v1, v7

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v4, v1

    .line 1028
    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastTouchX:I

    if-gez v1, :cond_19

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v1

    div-int/2addr v1, v6

    .line 1029
    :cond_19
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/2addr v2, v6

    .line 1030
    iget v7, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActiveness:F

    cmpg-float v7, v7, v3

    if-gez v7, :cond_1a

    .line 1031
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v7

    int-to-float v9, v7

    sub-int v0, v4, v0

    int-to-float v10, v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v0, v7

    int-to-float v11, v0

    int-to-float v12, v4

    iget-object v13, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->linePaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1033
    :cond_1a
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActiveness:F

    cmpl-float v7, v0, v5

    if-lez v7, :cond_1d

    .line 1034
    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v0

    .line 1035
    iget-boolean v7, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    if-eqz v7, :cond_1b

    int-to-float v2, v2

    mul-float/2addr v2, v0

    .line 1036
    iput v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->activeLineWidth:F

    :cond_1b
    if-eqz v7, :cond_1c

    goto :goto_a

    :cond_1c
    move v3, v0

    .line 1038
    :goto_a
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v3, v0

    float-to-int v0, v3

    .line 1040
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->activeLineWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    sub-float v3, v1, v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float v8, v2, v3

    sub-int v0, v4, v0

    int-to-float v9, v0

    .line 1042
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

    int-to-float v11, v4

    iget-object v12, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->activeLinePaint:Landroid/graphics/Paint;

    move-object v7, p1

    .line 1039
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1d
    return-void

    .line 902
    :cond_1e
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 885
    :cond_1f
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 686
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 688
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    .line 690
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->checkHeaderVisibility(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1222
    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.EditText"

    .line 1223
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1224
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    .line 1225
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1228
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

    .line 617
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onMeasure(II)V

    .line 618
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p2

    shl-int/lit8 p2, p2, 0x10

    add-int/2addr p1, p2

    .line 619
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz p2, :cond_0

    .line 620
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

    .line 622
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz p2, :cond_1

    .line 623
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

    .line 625
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    if-eqz p2, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-nez v0, :cond_4

    .line 626
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastSize:I

    if-eq v0, p1, :cond_2

    .line 627
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hint:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p0, v0, v1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;ZLandroid/text/TextPaint;)V

    .line 629
    :cond_2
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayoutYFix:Z

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_3

    .line 630
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

    .line 632
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

    .line 635
    :cond_4
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p2

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    iput p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineY:F

    .line 637
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastSize:I

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 602
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onScrollChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 604
    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 752
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 753
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastTouchX:I

    .line 755
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->registeredTextWatchers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 281
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->isTextWatchersSuppressed:Z

    if-eqz v0, :cond_0

    return-void

    .line 284
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setAllowDrawCursor(Z)V
    .locals 0

    .line 483
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->allowDrawCursor:Z

    .line 484
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setCursorColor(I)V
    .locals 1

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawable:Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 500
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 503
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setCursorSize(I)V
    .locals 0

    .line 507
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorSize:I

    return-void
.end method

.method public setCursorWidth(F)V
    .locals 0

    .line 493
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorWidth:F

    return-void
.end method

.method public setErrorLineColor(I)V
    .locals 1

    .line 511
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorLineColor:I

    .line 512
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 513
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setErrorText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 573
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 576
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorText:Ljava/lang/CharSequence;

    .line 577
    invoke-virtual {p0}, Landroid/widget/EditText;->requestLayout()V

    return-void
.end method

.method public setForceCursorEnd(Z)V
    .locals 0

    .line 488
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->forceCursorEnd:Z

    .line 489
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setHandlesColor(I)V
    .locals 2

    .line 1238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/XiaomiUtilities;->isMIUI()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1242
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1243
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1244
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextSelectHandleLeft(Landroid/graphics/drawable/Drawable;)V

    .line 1246
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSelectHandle()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1247
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1248
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextSelectHandle(Landroid/graphics/drawable/Drawable;)V

    .line 1250
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1251
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1252
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

    .line 716
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerAnimationProgress:F

    .line 717
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setHeaderHintColor(I)V
    .locals 0

    .line 553
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerHintColor:I

    .line 554
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setHintColor(I)V
    .locals 1

    .line 542
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 546
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz p1, :cond_1

    .line 547
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 549
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setHintRightOffset(I)V
    .locals 1

    .line 196
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rightHintOffset:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rightHintOffset:F

    .line 200
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setHintText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 641
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;ZLandroid/text/TextPaint;)V

    return-void
.end method

.method public setHintText(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 645
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;ZLandroid/text/TextPaint;)V

    return-void
.end method

.method public setHintText(Ljava/lang/CharSequence;ZLandroid/text/TextPaint;)V
    .locals 8

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_0

    .line 650
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 655
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_2

    const/4 p2, 0x0

    :cond_2
    if-eqz p2, :cond_4

    .line 659
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimator:Lorg/telegram/ui/Components/SubstringLayoutAnimator;

    if-nez p2, :cond_3

    .line 660
    new-instance p2, Lorg/telegram/ui/Components/SubstringLayoutAnimator;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/SubstringLayoutAnimator;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimator:Lorg/telegram/ui/Components/SubstringLayoutAnimator;

    .line 662
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimator:Lorg/telegram/ui/Components/SubstringLayoutAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hint:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0, v1, p1, p3}, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->create(Landroid/text/StaticLayout;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;)V

    goto :goto_0

    .line 664
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimator:Lorg/telegram/ui/Components/SubstringLayoutAnimator;

    if-eqz p2, :cond_5

    .line 665
    invoke-virtual {p2}, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->cancel()V

    .line 668
    :cond_5
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hint:Ljava/lang/CharSequence;

    .line 669
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p2

    if-eqz p2, :cond_6

    .line 670
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, p3, p2, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 671
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

    .line 675
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

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_1

    .line 191
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

    .line 530
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 533
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLastUpdateTime:J

    .line 534
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 536
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    .line 538
    :cond_2
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setLineColors(III)V
    .locals 4

    const/4 v0, 0x1

    .line 518
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineVisible:Z

    .line 519
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->search_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->padding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 520
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->padding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 521
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineColor:I

    .line 522
    iput p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->activeLineColor:I

    .line 523
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->activeLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 524
    iput p3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorLineColor:I

    .line 525
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setColor(I)V

    .line 526
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    .line 727
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setLineSpacing(FF)V

    .line 728
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineSpacingExtra:F

    return-void
.end method

.method public setNextSetTextAnimated(Z)V
    .locals 0

    .line 569
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->nextSetTextAnimated:Z

    return-void
.end method

.method public setOnPremiumMenuLockClickListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 1258
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->onPremiumMenuLockClickListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    .line 1214
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1216
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setSelection(II)V
    .locals 0

    .line 1205
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1207
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setSupportRtlHint(Z)V
    .locals 0

    .line 597
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->supportRtlHint:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 610
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextEffects;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 611
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->nextSetTextAnimated:Z

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->checkHeaderVisibility(Z)V

    const/4 p1, 0x0

    .line 612
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->nextSetTextAnimated:Z

    return-void
.end method

.method public setTextSize(IF)V
    .locals 2

    .line 559
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_0

    .line 560
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 562
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_1

    .line 563
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 565
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextSize(IF)V

    return-void
.end method

.method public setTextWatchersSuppressed(ZZ)V
    .locals 5

    .line 305
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->isTextWatchersSuppressed:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 306
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->isTextWatchersSuppressed:Z

    if-eqz p1, :cond_1

    .line 309
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

    .line 310
    invoke-super {p0, p2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 313
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

    .line 314
    invoke-super {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-eqz p2, :cond_2

    .line 316
    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v2

    const-string v3, ""

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v1, v2}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 317
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-interface {v0, v1, v4, v2, v3}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 318
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setTransformHintToHeader(Z)V
    .locals 1

    .line 472
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->transformHintToHeader:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 475
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->transformHintToHeader:Z

    .line 476
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerTransformAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    .line 477
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 p1, 0x0

    .line 478
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerTransformAnimation:Landroid/animation/AnimatorSet;

    :cond_1
    return-void
.end method

.method public setWindowView(Landroid/view/View;)V
    .locals 0

    .line 1057
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->windowView:Landroid/view/View;

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 5

    .line 1143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->windowView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->attachedToWindow:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1144
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    if-eqz v0, :cond_1

    .line 1145
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/FloatingActionMode;->finish()V

    .line 1147
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->cleanupFloatingActionModeViews()V

    .line 1148
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

    .line 1149
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->onPremiumMenuLockClickListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->setOnPremiumLockClick(Ljava/lang/Runnable;)V

    .line 1150
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbar:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    new-instance v1, Lorg/telegram/ui/Components/EditTextBoldCursor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EditTextBoldCursor$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->setQuoteShowVisible(Lorg/telegram/messenger/Utilities$Callback0Return;)V

    .line 1151
    new-instance v0, Lorg/telegram/ui/ActionBar/FloatingActionMode;

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/EditTextBoldCursor$ActionModeCallback2Wrapper;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor$ActionModeCallback2Wrapper;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/view/ActionMode$Callback;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbar:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    invoke-direct {v0, v1, v2, p0, v3}, Lorg/telegram/ui/ActionBar/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lorg/telegram/ui/ActionBar/FloatingToolbar;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    .line 1152
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextBoldCursor$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 1158
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/FloatingActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 1159
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/FloatingActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->extendActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 1160
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/FloatingActionMode;->invalidate()V

    .line 1161
    invoke-virtual {p0}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1162
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    .line 1163
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    return-object p1

    .line 1165
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 2

    .line 1183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->windowView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->attachedToWindow:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1184
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 1186
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public useAnimatedTextDrawable()V
    .locals 2

    .line 248
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextBoldCursor$2;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v1, 0x1

    .line 254
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setEllipsizeByGradient(Z)V

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 258
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextBoldCursor$3;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v1, 0x5

    .line 264
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    return-void
.end method
