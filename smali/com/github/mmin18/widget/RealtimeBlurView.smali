.class public Lcom/github/mmin18/widget/RealtimeBlurView;
.super Landroid/view/View;
.source "RealtimeBlurView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mmin18/widget/RealtimeBlurView$StopException;
    }
.end annotation


# static fields
.field private static BLUR_IMPL:I

.field private static RENDERING_COUNT:I

.field private static STOP_EXCEPTION:Lcom/github/mmin18/widget/RealtimeBlurView$StopException;


# instance fields
.field private mBitmapToBlur:Landroid/graphics/Bitmap;

.field private final mBlurImpl:Lcom/github/mmin18/widget/BlurImpl;

.field private mBlurRadius:F

.field private mBlurredBitmap:Landroid/graphics/Bitmap;

.field private mBlurringCanvas:Landroid/graphics/Canvas;

.field private mDecorView:Landroid/view/View;

.field private mDifferentRoot:Z

.field private mDirty:Z

.field private mDownsampleFactor:F

.field private mIsRendering:Z

.field private mOverlayColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private final mRectDst:Landroid/graphics/Rect;

.field private final mRectSrc:Landroid/graphics/Rect;

.field private final preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 360
    new-instance v0, Lcom/github/mmin18/widget/RealtimeBlurView$StopException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mmin18/widget/RealtimeBlurView$StopException;-><init>(Lcom/github/mmin18/widget/RealtimeBlurView$1;)V

    sput-object v0, Lcom/github/mmin18/widget/RealtimeBlurView;->STOP_EXCEPTION:Lcom/github/mmin18/widget/RealtimeBlurView$StopException;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectSrc:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    .line 236
    new-instance v0, Lcom/github/mmin18/widget/RealtimeBlurView$1;

    invoke-direct {v0, p0}, Lcom/github/mmin18/widget/RealtimeBlurView$1;-><init>(Lcom/github/mmin18/widget/RealtimeBlurView;)V

    iput-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 52
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->getBlurImpl()Lcom/github/mmin18/widget/BlurImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurImpl:Lcom/github/mmin18/widget/BlurImpl;

    .line 54
    sget-object v0, Lcom/github/mmin18/realtimeblurview/R$styleable;->RealtimeBlurView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 55
    sget v0, Lcom/github/mmin18/realtimeblurview/R$styleable;->RealtimeBlurView_realtimeBlurRadius:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v1, 0x1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 55
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurRadius:F

    .line 57
    sget p1, Lcom/github/mmin18/realtimeblurview/R$styleable;->RealtimeBlurView_realtimeDownsampleFactor:I

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDownsampleFactor:F

    .line 58
    sget p1, Lcom/github/mmin18/realtimeblurview/R$styleable;->RealtimeBlurView_realtimeOverlayColor:I

    const v0, -0x55000001

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mOverlayColor:I

    .line 59
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic access$000(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/view/View;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDecorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/github/mmin18/widget/RealtimeBlurView;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mOverlayColor:I

    return p0
.end method

.method static synthetic access$300(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurringCanvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method static synthetic access$502(Lcom/github/mmin18/widget/RealtimeBlurView;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mIsRendering:Z

    return p1
.end method

.method static synthetic access$608()I
    .locals 2

    .line 28
    sget v0, Lcom/github/mmin18/widget/RealtimeBlurView;->RENDERING_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/github/mmin18/widget/RealtimeBlurView;->RENDERING_COUNT:I

    return v0
.end method

.method static synthetic access$610()I
    .locals 2

    .line 28
    sget v0, Lcom/github/mmin18/widget/RealtimeBlurView;->RENDERING_COUNT:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/github/mmin18/widget/RealtimeBlurView;->RENDERING_COUNT:I

    return v0
.end method

.method static synthetic access$700(Lcom/github/mmin18/widget/RealtimeBlurView;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDifferentRoot:Z

    return p0
.end method

.method private releaseBitmap()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 156
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 160
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method


# virtual methods
.method protected blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurImpl:Lcom/github/mmin18/widget/BlurImpl;

    invoke-interface {v0, p1, p2}, Lcom/github/mmin18/widget/BlurImpl;->blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 322
    iget-boolean v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mIsRendering:Z

    if-nez v0, :cond_1

    .line 325
    sget v0, Lcom/github/mmin18/widget/RealtimeBlurView;->RENDERING_COUNT:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    .line 324
    :cond_1
    sget-object p1, Lcom/github/mmin18/widget/RealtimeBlurView;->STOP_EXCEPTION:Lcom/github/mmin18/widget/RealtimeBlurView$StopException;

    throw p1
.end method

.method protected drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V
    .locals 3

    if-eqz p2, :cond_0

    .line 347
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 348
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 349
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 350
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 351
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectSrc:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 353
    :cond_0
    iget-object p2, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 354
    iget-object p2, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected getActivityDecorView()Landroid/view/View;
    .locals 3

    .line 285
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 286
    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_0

    .line 287
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 290
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBlurImpl()Lcom/github/mmin18/widget/BlurImpl;
    .locals 8

    .line 65
    sget v0, Lcom/github/mmin18/widget/RealtimeBlurView;->BLUR_IMPL:I

    const/4 v1, 0x3

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v3, 0x4

    if-nez v0, :cond_0

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v0, v4, :cond_0

    .line 69
    :try_start_0
    new-instance v0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;

    invoke-direct {v0}, Lcom/github/mmin18/widget/AndroidStockBlurImpl;-><init>()V

    .line 70
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5, v4, v2}, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->prepare(Landroid/content/Context;Landroid/graphics/Bitmap;F)Z

    .line 72
    invoke-virtual {v0}, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->release()V

    .line 73
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 74
    sput v1, Lcom/github/mmin18/widget/RealtimeBlurView;->BLUR_IMPL:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 79
    :cond_0
    :goto_0
    sget v0, Lcom/github/mmin18/widget/RealtimeBlurView;->BLUR_IMPL:I

    const-string v4, "androidx.renderscript.RenderScript"

    const/4 v5, 0x1

    if-nez v0, :cond_1

    .line 81
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 84
    new-instance v0, Lcom/github/mmin18/widget/AndroidXBlurImpl;

    invoke-direct {v0}, Lcom/github/mmin18/widget/AndroidXBlurImpl;-><init>()V

    .line 85
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0, v7, v6, v2}, Lcom/github/mmin18/widget/AndroidXBlurImpl;->prepare(Landroid/content/Context;Landroid/graphics/Bitmap;F)Z

    .line 87
    invoke-virtual {v0}, Lcom/github/mmin18/widget/AndroidXBlurImpl;->release()V

    .line 88
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 89
    sput v5, Lcom/github/mmin18/widget/RealtimeBlurView;->BLUR_IMPL:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    .line 94
    :cond_1
    :goto_1
    sget v0, Lcom/github/mmin18/widget/RealtimeBlurView;->BLUR_IMPL:I

    const/4 v6, 0x2

    if-nez v0, :cond_2

    .line 96
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 99
    new-instance v0, Lcom/github/mmin18/widget/SupportLibraryBlurImpl;

    invoke-direct {v0}, Lcom/github/mmin18/widget/SupportLibraryBlurImpl;-><init>()V

    .line 100
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v2}, Lcom/github/mmin18/widget/SupportLibraryBlurImpl;->prepare(Landroid/content/Context;Landroid/graphics/Bitmap;F)Z

    .line 102
    invoke-virtual {v0}, Lcom/github/mmin18/widget/SupportLibraryBlurImpl;->release()V

    .line 103
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 104
    sput v6, Lcom/github/mmin18/widget/RealtimeBlurView;->BLUR_IMPL:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    nop

    .line 109
    :cond_2
    :goto_2
    sget v0, Lcom/github/mmin18/widget/RealtimeBlurView;->BLUR_IMPL:I

    if-nez v0, :cond_3

    const/4 v0, -0x1

    .line 111
    sput v0, Lcom/github/mmin18/widget/RealtimeBlurView;->BLUR_IMPL:I

    .line 113
    :cond_3
    sget v0, Lcom/github/mmin18/widget/RealtimeBlurView;->BLUR_IMPL:I

    if-eq v0, v5, :cond_6

    if-eq v0, v6, :cond_5

    if-eq v0, v1, :cond_4

    .line 121
    new-instance v0, Lcom/github/mmin18/widget/EmptyBlurImpl;

    invoke-direct {v0}, Lcom/github/mmin18/widget/EmptyBlurImpl;-><init>()V

    return-object v0

    .line 119
    :cond_4
    new-instance v0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;

    invoke-direct {v0}, Lcom/github/mmin18/widget/AndroidStockBlurImpl;-><init>()V

    return-object v0

    .line 117
    :cond_5
    new-instance v0, Lcom/github/mmin18/widget/SupportLibraryBlurImpl;

    invoke-direct {v0}, Lcom/github/mmin18/widget/SupportLibraryBlurImpl;-><init>()V

    return-object v0

    .line 115
    :cond_6
    new-instance v0, Lcom/github/mmin18/widget/AndroidXBlurImpl;

    invoke-direct {v0}, Lcom/github/mmin18/widget/AndroidXBlurImpl;-><init>()V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 298
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 299
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->getActivityDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDecorView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 302
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDifferentRoot:Z

    if-eqz v1, :cond_2

    .line 304
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 307
    :cond_1
    iput-boolean v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDifferentRoot:Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->release()V

    .line 317
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 334
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 335
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mOverlayColor:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/mmin18/widget/RealtimeBlurView;->drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method protected prepare()Z
    .locals 7

    .line 170
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurRadius:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->release()V

    return v1

    .line 175
    :cond_0
    iget v2, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDownsampleFactor:F

    div-float/2addr v0, v2

    const/high16 v3, 0x41c80000    # 25.0f

    cmpl-float v4, v0, v3

    if-lez v4, :cond_1

    mul-float v2, v2, v0

    div-float/2addr v2, v3

    const/high16 v0, 0x41c80000    # 25.0f

    .line 182
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v3, v3

    const/4 v5, 0x1

    .line 185
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v2, v4

    .line 186
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 188
    iget-boolean v4, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDirty:Z

    .line 190
    iget-object v6, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurringCanvas:Landroid/graphics/Canvas;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    .line 191
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, v3, :cond_2

    iget-object v6, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 192
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v6, v2, :cond_5

    .line 194
    :cond_2
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->releaseBitmap()V

    .line 198
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_3

    .line 215
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->release()V

    return v1

    .line 202
    :cond_3
    :try_start_1
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-direct {v4, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurringCanvas:Landroid/graphics/Canvas;

    .line 204
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_4

    .line 215
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->release()V

    return v1

    :cond_4
    const/4 v4, 0x1

    :cond_5
    if-eqz v4, :cond_7

    .line 222
    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurImpl:Lcom/github/mmin18/widget/BlurImpl;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-interface {v2, v3, v4, v0}, Lcom/github/mmin18/widget/BlurImpl;->prepare(Landroid/content/Context;Landroid/graphics/Bitmap;F)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 223
    iput-boolean v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDirty:Z

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_0
    return v5

    .line 215
    :catchall_0
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->release()V

    return v1

    :catch_0
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->release()V

    return v1
.end method

.method protected release()V
    .locals 1

    .line 165
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->releaseBitmap()V

    .line 166
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurImpl:Lcom/github/mmin18/widget/BlurImpl;

    invoke-interface {v0}, Lcom/github/mmin18/widget/BlurImpl;->release()V

    return-void
.end method

.method public setBlurRadius(F)V
    .locals 1

    .line 126
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 127
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurRadius:F

    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDirty:Z

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDownsampleFactor(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    .line 138
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDownsampleFactor:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 139
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDownsampleFactor:F

    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDirty:Z

    .line 141
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->releaseBitmap()V

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    .line 135
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Downsample factor must be greater than 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOverlayColor(I)V
    .locals 1

    .line 147
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mOverlayColor:I

    if-eq v0, p1, :cond_0

    .line 148
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mOverlayColor:I

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
