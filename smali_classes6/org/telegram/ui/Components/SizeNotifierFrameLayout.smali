.class public Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SizeNotifierFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;,
        Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;,
        Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;,
        Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;
    }
.end annotation


# static fields
.field private static blurQueue:Lorg/telegram/messenger/DispatchQueue;


# instance fields
.field public adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

.field private animationInProgress:Z

.field attached:Z

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundMotion:Z

.field private backgroundTranslationY:I

.field protected backgroundView:Landroid/view/View;

.field final blurBackgroundTask:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;

.field public blurBehindViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field blurCrossfade:Landroid/animation/ValueAnimator;

.field public blurCrossfadeProgress:F

.field public blurGeneratingTuskIsRunning:Z

.field public blurIsRunning:Z

.field public blurPaintBottom:Landroid/graphics/Paint;

.field public blurPaintBottom2:Landroid/graphics/Paint;

.field public blurPaintTop:Landroid/graphics/Paint;

.field public blurPaintTop2:Landroid/graphics/Paint;

.field private bottomClip:I

.field count:I

.field count2:I

.field currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

.field private delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;

.field private emojiHeight:I

.field private emojiOffset:F

.field public invalidateBlur:Z

.field protected keyboardHeight:I

.field matrix:Landroid/graphics/Matrix;

.field matrix2:Landroid/graphics/Matrix;

.field public needBlur:Z

.field public needBlurBottom:Z

.field private occupyStatusBar:Z

.field private oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private oldBackgroundMotion:Z

.field private parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

.field private parallaxScale:F

.field private parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

.field private paused:Z

.field prevBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

.field private rect:Landroid/graphics/Rect;

.field private selectedBlurPaint:Landroid/graphics/Paint;

.field private selectedBlurPaint2:Landroid/graphics/Paint;

.field private skipBackgroundDrawing:Z

.field snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

.field private themeAnimationValue:F

.field times:I

.field times2:I

.field private translationX:F

.field private translationY:F

.field public unusedBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$sCk8L4WxX2asnvq8I7NsiOH9W28(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->lambda$notifyHeightChanged$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$sEdKmmgAYveVtsoI80nl2cr1N_k(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;IIF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->lambda$checkMotion$0(IIF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 3

    .line 128
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->rect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->occupyStatusBar:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 62
    iput v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxScale:F

    .line 64
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->paused:Z

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->unusedBitmaps:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBehindViews:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    .line 87
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix2:Landroid/graphics/Matrix;

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintTop:Landroid/graphics/Paint;

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintTop2:Landroid/graphics/Paint;

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintBottom:Landroid/graphics/Paint;

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintBottom2:Landroid/graphics/Paint;

    .line 106
    iput v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->themeAnimationValue:F

    .line 530
    new-instance v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;-><init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout$1;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBackgroundTask:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 130
    iput-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 131
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->createAdjustPanLayoutHelper()Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    .line 132
    new-instance p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;-><init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    const/4 p1, -0x1

    invoke-static {p1, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-direct {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->checkLayerType()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->skipBackgroundDrawing:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->translationY:F

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->occupyStatusBar:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundTranslationY:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->bottomClip:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/Canvas;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->checkSnowflake(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->animationInProgress:Z

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiOffset:F

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiHeight:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->oldBackgroundMotion:Z

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->oldBackgroundMotion:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundMotion:Z

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundMotion:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->themeAnimationValue:F

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;F)F
    .locals 0

    .line 46
    iput p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->themeAnimationValue:F

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->checkMotion()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxScale:F

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->translationX:F

    return p0
.end method

.method private checkLayerType()V
    .locals 0

    return-void
.end method

.method private checkMotion()V
    .locals 4

    .line 334
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->oldBackgroundMotion:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundMotion:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    if-nez v0, :cond_2

    .line 337
    new-instance v0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    .line 338
    new-instance v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setCallback(Lorg/telegram/ui/Components/WallpaperParallaxEffect$Callback;)V

    .line 344
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->getScale(II)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxScale:F

    .line 348
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->paused:Z

    if-nez v0, :cond_4

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setEnabled(Z)V

    goto :goto_2

    .line 351
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    if-eqz v0, :cond_4

    .line 352
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 353
    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 354
    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxScale:F

    const/4 v0, 0x0

    .line 355
    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->translationX:F

    .line 356
    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->translationY:F

    :cond_4
    :goto_2
    return-void
.end method

.method private checkSnowflake(Landroid/graphics/Canvas;)V
    .locals 2

    .line 494
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->canStartHolidayAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Lorg/telegram/ui/Components/SnowflakesEffect;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SnowflakesEffect;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    .line 498
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/SnowflakesEffect;->onDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$checkMotion$0(IIF)V
    .locals 0

    int-to-float p1, p1

    .line 339
    iput p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->translationX:F

    int-to-float p1, p2

    .line 340
    iput p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->translationY:F

    .line 342
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$notifyHeightChanged$1(Z)V
    .locals 2

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;

    if-eqz v0, :cond_0

    .line 423
    iget v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    invoke-interface {v0, v1, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;->onSizeChanged(IZ)V

    :cond_0
    return-void
.end method

.method private updateBlurShaderPosition(FZ)V
    .locals 5

    if-eqz p2, :cond_0

    .line 847
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintTop:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintBottom:Landroid/graphics/Paint;

    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint:Landroid/graphics/Paint;

    if-eqz p2, :cond_1

    .line 848
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintTop2:Landroid/graphics/Paint;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintBottom2:Landroid/graphics/Paint;

    :goto_1
    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint2:Landroid/graphics/Paint;

    if-eqz p2, :cond_2

    .line 851
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    add-float/2addr p1, v0

    .line 854
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 855
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix2:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/high16 v0, 0x42080000    # 34.0f

    const/4 v1, 0x0

    if-nez p2, :cond_3

    neg-float p1, p1

    .line 858
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    iget v2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomOffset:F

    add-float/2addr v2, p1

    iget v3, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->pixelFixOffset:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    iget p2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->drawnLisetTranslationY:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBottomOffset()F

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getListTranslationY()F

    move-result v4

    add-float/2addr v3, v4

    sub-float/2addr p2, v3

    sub-float/2addr v2, p2

    .line 859
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 860
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    iget v3, v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomScaleX:F

    iget v2, v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomScaleY:F

    invoke-virtual {p2, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 862
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->prevBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    if-eqz p2, :cond_4

    .line 863
    iget v2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomOffset:F

    add-float/2addr p1, v2

    iget v2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->pixelFixOffset:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    sub-float/2addr p1, v0

    iget p2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->drawnLisetTranslationY:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBottomOffset()F

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getListTranslationY()F

    move-result v2

    add-float/2addr v0, v2

    sub-float/2addr p2, v0

    sub-float/2addr p1, p2

    .line 864
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix2:Landroid/graphics/Matrix;

    invoke-virtual {p2, v1, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 865
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix2:Landroid/graphics/Matrix;

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->prevBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    iget v0, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomScaleX:F

    iget p2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomScaleY:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_2

    .line 868
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    neg-float p1, p1

    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    iget v2, v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->pixelFixOffset:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    sub-float/2addr v2, v0

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 869
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    iget v3, v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topScaleX:F

    iget v2, v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topScaleY:F

    invoke-virtual {p2, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 871
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->prevBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    if-eqz p2, :cond_4

    .line 872
    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix2:Landroid/graphics/Matrix;

    iget p2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->pixelFixOffset:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    sub-float/2addr p1, v0

    invoke-virtual {v2, v1, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 873
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix2:Landroid/graphics/Matrix;

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->prevBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    iget v0, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topScaleX:F

    iget p2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topScaleY:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 877
    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 878
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 879
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public blurWasDrawn()Z
    .locals 1

    .line 795
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected createAdjustPanLayoutHelper()Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 741
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurIsRunning:Z

    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->startBlur()V

    .line 744
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawBlurCircle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;Z)V
    .locals 8

    .line 823
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_BlurAlpha:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 824
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 828
    :cond_0
    invoke-direct {p0, p2, p7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->updateBlurShaderPosition(FZ)V

    const/16 p2, 0xff

    .line 829
    invoke-virtual {p6, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 830
    iget p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurCrossfadeProgress:F

    const/high16 p7, 0x3f800000    # 1.0f

    cmpl-float p2, p2, p7

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint2:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 831
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 832
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sub-float v2, p3, p5

    sub-float v3, p4, p5

    add-float v4, p3, p5

    add-float v5, p4, p5

    .line 833
    iget p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurCrossfadeProgress:F

    const/high16 p7, 0x437f0000    # 255.0f

    mul-float/2addr p2, p7

    float-to-int v6, p2

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 834
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 835
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 836
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 838
    :cond_1
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 839
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 842
    :goto_0
    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 843
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    .line 825
    :cond_2
    :goto_1
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V
    .locals 8

    .line 799
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_BlurAlpha:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 800
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 804
    :cond_0
    invoke-direct {p0, p2, p5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->updateBlurShaderPosition(FZ)V

    const/16 p2, 0xff

    .line 805
    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 806
    iget p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurCrossfadeProgress:F

    const/high16 p5, 0x3f800000    # 1.0f

    cmpl-float p2, p2, p5

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint2:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 807
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 808
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 809
    iget p2, p3, Landroid/graphics/Rect;->left:I

    int-to-float v2, p2

    iget p2, p3, Landroid/graphics/Rect;->top:I

    int-to-float v3, p2

    iget p2, p3, Landroid/graphics/Rect;->right:I

    int-to-float v4, p2

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p2

    iget p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurCrossfadeProgress:F

    const/high16 p5, 0x437f0000    # 255.0f

    mul-float/2addr p2, p5

    float-to-int v6, p2

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 810
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 811
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 812
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 814
    :cond_1
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 815
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 818
    :goto_0
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 819
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    .line 801
    :cond_2
    :goto_1
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected drawList(Landroid/graphics/Canvas;Z)V
    .locals 0

    return-void
.end method

.method public getBackgroundImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackgroundSizeY()I
    .locals 3

    .line 457
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 458
    check-cast v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    .line 459
    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->hasPattern()Z

    move-result v0

    if-nez v0, :cond_2

    .line 460
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->animationInProgress:Z

    if-eqz v0, :cond_0

    .line 461
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiOffset:F

    float-to-int v2, v0

    goto :goto_0

    .line 462
    :cond_0
    iget v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiHeight:I

    if-eqz v2, :cond_1

    goto :goto_0

    .line 465
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundTranslationY:I

    goto :goto_0

    .line 468
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundTranslationY:I

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    neg-int v0, v0

    move v2, v0

    .line 471
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v2

    return v0
.end method

.method public getBackgroundTranslationY()I
    .locals 1

    .line 444
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v0, :cond_2

    .line 445
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->animationInProgress:Z

    if-eqz v0, :cond_0

    .line 446
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiOffset:F

    float-to-int v0, v0

    return v0

    .line 447
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiHeight:I

    if-eqz v0, :cond_1

    return v0

    .line 450
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundTranslationY:I

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected getBottomOffset()F
    .locals 1

    .line 719
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method protected getBottomTranslation()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeightWithKeyboard()I
    .locals 2

    .line 475
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getKeyboardHeight()I
    .locals 1

    .line 411
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    return v0
.end method

.method protected getListTranslationY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getNewDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 518
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getNewDrawableMotion()Z
    .locals 1

    .line 522
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isWallpaperMotion()Z

    move-result v0

    return v0
.end method

.method protected getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getScrollOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateBackground()V
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public invalidateBlur()V
    .locals 1

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur:Z

    .line 111
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public invalidateBlurredViews()V
    .locals 2

    const/4 v0, 0x0

    .line 713
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBehindViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 714
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBehindViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected isActionBarVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public measureKeyboardHeight()I
    .locals 4

    .line 401
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 403
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->rect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_0

    return v3

    .line 406
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    sub-int/2addr v1, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getViewInset(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->rect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    return v0
.end method

.method public notifyHeightChanged()V
    .locals 3

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->getScale(II)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxScale:F

    .line 418
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;

    if-eqz v0, :cond_2

    .line 419
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    .line 420
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 421
    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Z)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 749
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 750
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->attached:Z

    .line 751
    iget-boolean v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->needBlur:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurIsRunning:Z

    if-nez v1, :cond_0

    .line 752
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurIsRunning:Z

    .line 753
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur:Z

    .line 755
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v1, :cond_1

    .line 756
    check-cast v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatBackgroundDrawable;->onAttachedToWindow()V

    .line 758
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v1, :cond_2

    .line 759
    check-cast v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatBackgroundDrawable;->onAttachedToWindow()V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 765
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 766
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->attached:Z

    .line 767
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintTop:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 768
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintTop2:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 769
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintBottom:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 770
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintBottom2:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 771
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurCrossfade:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 772
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 774
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    if-eqz v1, :cond_1

    .line 775
    invoke-virtual {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->recycle()V

    .line 776
    iput-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    :cond_1
    move v1, v0

    .line 778
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 779
    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 780
    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->recycle()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 783
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 784
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurIsRunning:Z

    .line 786
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v1, :cond_4

    .line 787
    check-cast v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatBackgroundDrawable;->onDetachedFromWindow()V

    .line 789
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v1, :cond_5

    .line 790
    check-cast v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatBackgroundDrawable;->onDetachedFromWindow()V

    :cond_5
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 396
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 397
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 381
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 382
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setEnabled(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 384
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->paused:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 389
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setEnabled(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 391
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->paused:Z

    return-void
.end method

.method public setBackgroundImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    .line 314
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p2, p1, :cond_0

    return-void

    .line 317
    :cond_0
    instance-of p2, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p2, :cond_1

    .line 318
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setParentView(Landroid/view/View;)V

    .line 321
    :cond_1
    iget-boolean p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->attached:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p2, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v0, :cond_2

    .line 322
    check-cast p2, Lorg/telegram/ui/ChatBackgroundDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatBackgroundDrawable;->onDetachedFromWindow()V

    .line 324
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 325
    iget-boolean p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->attached:Z

    if-eqz p2, :cond_3

    instance-of p2, p1, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz p2, :cond_3

    .line 326
    check-cast p1, Lorg/telegram/ui/ChatBackgroundDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatBackgroundDrawable;->onAttachedToWindow()V

    .line 328
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->checkMotion()V

    .line 329
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 330
    invoke-direct {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->checkLayerType()V

    return-void
.end method

.method public setBackgroundTranslation(I)V
    .locals 1

    .line 437
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundTranslationY:I

    if-eq p1, v0, :cond_0

    .line 438
    iput p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundTranslationY:I

    .line 439
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBottomClip(I)V
    .locals 1

    .line 430
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->bottomClip:I

    if-eq p1, v0, :cond_0

    .line 431
    iput p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->bottomClip:I

    .line 432
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;

    return-void
.end method

.method public setEmojiKeyboardHeight(I)V
    .locals 1

    .line 479
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiHeight:I

    if-eq v0, p1, :cond_0

    .line 480
    iput p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiHeight:I

    .line 481
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEmojiOffset(ZF)V
    .locals 1

    .line 486
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiOffset:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->animationInProgress:Z

    if-eq v0, p1, :cond_1

    .line 487
    :cond_0
    iput p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiOffset:F

    .line 488
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->animationInProgress:Z

    .line 489
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setOccupyStatusBar(Z)V
    .locals 0

    .line 377
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->occupyStatusBar:Z

    return-void
.end method

.method public setSkipBackgroundDrawing(Z)V
    .locals 1

    .line 511
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->skipBackgroundDrawing:Z

    if-eq v0, p1, :cond_0

    .line 512
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->skipBackgroundDrawing:Z

    .line 513
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public startBlur()V
    .locals 16

    move-object/from16 v0, p0

    .line 533
    iget-boolean v1, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurIsRunning:Z

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurGeneratingTuskIsRunning:Z

    if-nez v1, :cond_9

    iget-boolean v1, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur:Z

    if-eqz v1, :cond_9

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 537
    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_BlurAlpha:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1

    return-void

    .line 541
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    .line 542
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v2, v3

    const/16 v3, 0x64

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    if-eqz v1, :cond_9

    if-nez v2, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v3, 0x0

    .line 557
    iput-boolean v3, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur:Z

    const/4 v4, 0x1

    .line 558
    iput-boolean v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurGeneratingTuskIsRunning:Z

    int-to-float v5, v2

    const/high16 v6, 0x41400000    # 12.0f

    div-float v7, v5, v6

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x22

    int-to-float v8, v1

    div-float v6, v8, v6

    float-to-int v6, v6

    .line 563
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 565
    iget-object v11, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    if-lez v11, :cond_3

    .line 566
    iget-object v11, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v4

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    goto :goto_0

    :cond_3
    move-object v11, v12

    :goto_0
    if-nez v11, :cond_4

    .line 570
    new-instance v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    invoke-direct {v11, v12}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;-><init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$1;)V

    .line 571
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topBitmap:Landroid/graphics/Bitmap;

    .line 572
    new-instance v12, Landroid/graphics/Canvas;

    iget-object v13, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v12, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v12, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topCanvas:Landroid/graphics/Canvas;

    .line 574
    iget-boolean v12, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->needBlurBottom:Z

    if-eqz v12, :cond_5

    .line 575
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomBitmap:Landroid/graphics/Bitmap;

    .line 576
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v7, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomCanvas:Landroid/graphics/Canvas;

    goto :goto_1

    .line 579
    :cond_4
    iget-object v6, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 580
    iget-object v6, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_5

    .line 581
    invoke-virtual {v6, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 587
    :cond_5
    :goto_1
    iget-object v6, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    .line 588
    iget-object v7, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x22

    int-to-float v7, v7

    div-float/2addr v7, v5

    .line 589
    iget-object v12, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v12}, Landroid/graphics/Canvas;->save()I

    .line 590
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getScrollOffset()I

    move-result v12

    rem-int/lit8 v12, v12, 0x18

    iput v12, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->pixelFixOffset:I

    .line 592
    iget-object v12, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topCanvas:Landroid/graphics/Canvas;

    const/high16 v13, 0x41200000    # 10.0f

    mul-float v14, v7, v13

    iget-object v15, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-float v15, v15

    iget-object v3, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13, v14, v15, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 593
    iget-object v3, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 594
    iget-object v3, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topCanvas:Landroid/graphics/Canvas;

    iget v12, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->pixelFixOffset:I

    int-to-float v12, v12

    add-float/2addr v14, v12

    const/4 v12, 0x0

    invoke-virtual {v3, v12, v14}, Landroid/graphics/Canvas;->translate(FF)V

    div-float v3, v13, v6

    .line 596
    iput v3, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topScaleX:F

    div-float v3, v13, v7

    .line 597
    iput v3, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topScaleY:F

    .line 599
    iget-object v3, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawList(Landroid/graphics/Canvas;Z)V

    .line 600
    iget-object v3, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 602
    iget-boolean v3, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->needBlurBottom:Z

    if-eqz v3, :cond_6

    .line 603
    iget-object v3, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    .line 604
    iget-object v6, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x22

    int-to-float v6, v6

    div-float/2addr v6, v5

    .line 605
    iput-boolean v4, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->needBlurBottom:Z

    .line 606
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBottomOffset()F

    move-result v7

    sub-float/2addr v7, v5

    iput v7, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomOffset:F

    .line 607
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBottomOffset()F

    move-result v5

    iput v5, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->drawnLisetTranslationY:F

    .line 608
    iget-object v5, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 609
    iget-object v5, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomCanvas:Landroid/graphics/Canvas;

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v7, v6

    iget-object v8, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v14, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int/2addr v14, v4

    int-to-float v14, v14

    invoke-virtual {v5, v13, v7, v8, v14}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 610
    iget-object v5, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v3, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 611
    iget-object v5, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomCanvas:Landroid/graphics/Canvas;

    iget v8, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomOffset:F

    sub-float/2addr v7, v8

    iget v8, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->pixelFixOffset:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v5, v12, v7}, Landroid/graphics/Canvas;->translate(FF)V

    div-float v3, v13, v3

    .line 612
    iput v3, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomScaleX:F

    div-float/2addr v13, v6

    .line 613
    iput v13, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomScaleY:F

    .line 615
    iget-object v3, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawList(Landroid/graphics/Canvas;Z)V

    .line 616
    iget-object v3, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    .line 618
    iput-boolean v5, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->needBlurBottom:Z

    .line 622
    :goto_2
    iget v3, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->times2:I

    int-to-long v5, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v9

    add-long/2addr v5, v7

    long-to-int v3, v5

    iput v3, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->times2:I

    .line 623
    iget v3, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->count2:I

    add-int/2addr v3, v4

    iput v3, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->count2:I

    const/16 v4, 0x14

    if-lt v3, v4, :cond_7

    const/4 v3, 0x0

    .line 625
    iput v3, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->count2:I

    .line 626
    iput v3, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->times2:I

    .line 629
    :cond_7
    sget-object v3, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurQueue:Lorg/telegram/messenger/DispatchQueue;

    if-nez v3, :cond_8

    .line 630
    new-instance v3, Lorg/telegram/messenger/DispatchQueue;

    const-string v4, "BlurQueue"

    invoke-direct {v3, v4}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 632
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBackgroundTask:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;

    const/4 v4, 0x6

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit16 v1, v1, 0xb4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40200000    # 2.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    sget v2, Lorg/telegram/ui/BlurSettingsBottomSheet;->blurRadius:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v3, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;->radius:I

    .line 633
    iget-object v1, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBackgroundTask:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;

    iput-object v11, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;->finalBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    .line 634
    sget-object v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_9
    :goto_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 527
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
