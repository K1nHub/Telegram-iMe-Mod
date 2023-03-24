.class Lorg/telegram/ui/QrActivity$QrView;
.super Landroid/view/View;
.source "QrActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/QrActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QrView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/QrActivity$QrView$QrCenterChangedListener;
    }
.end annotation


# static fields
.field private static final RADIUS:F

.field private static final SHADOW_SIZE:F


# instance fields
.field private backgroundBitmap:Landroid/graphics/Bitmap;

.field private final bitmapGradientPaint:Landroid/graphics/Paint;

.field private centerChangedListener:Lorg/telegram/ui/QrActivity$QrView$QrCenterChangedListener;

.field private checkTimerToken:Ljava/lang/Runnable;

.field private contentBitmap:Landroid/graphics/Bitmap;

.field private contentBitmapAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private crossfadeFromPaint:Landroid/graphics/Paint;

.field private crossfadeToPaint:Landroid/graphics/Paint;

.field private firstPrepare:Z

.field private final gradientDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

.field private final gradientShader:Landroid/graphics/BitmapShader;

.field private final gradientTextShader:Landroid/graphics/BitmapShader;

.field private hadHeight:Ljava/lang/Integer;

.field private hadLink:Ljava/lang/String;

.field private hadUserText:Ljava/lang/String;

.field private hadWidth:Ljava/lang/Integer;

.field private hasTimer:Z

.field private isPhone:Z

.field private link:Ljava/lang/String;

.field private linkExpires:I

.field private loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

.field private logoCenterSet:Z

.field private oldContentBitmap:Landroid/graphics/Bitmap;

.field private radii:[F

.field private setData:Z

.field private shareUsernameLayout:Landroid/text/StaticLayout;

.field private shareUsernameLayoutPaint:Landroid/text/TextPaint;

.field private timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private username:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$4wq--lXo-NuZH2q-yKoLN0nxWZo(Lorg/telegram/ui/QrActivity$QrView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/QrActivity$QrView;->lambda$new$2(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$M98Afy3yYnfMUGs92VTKwFptBeY(Lorg/telegram/ui/QrActivity$QrView;Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/QrActivity$QrView;->lambda$new$3(Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O8OatGnIi-7IyerMSo-X3B618Ho(Lorg/telegram/ui/QrActivity$QrView;Landroid/graphics/Bitmap;FIF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/QrActivity$QrView;->lambda$prepareContent$7(Landroid/graphics/Bitmap;FIF)V

    return-void
.end method

.method public static synthetic $r8$lambda$VykxiI5ylsxGNg1w-bvIXwxUCd8(Lorg/telegram/ui/QrActivity$QrView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/QrActivity$QrView;->lambda$onSizeChanged$0(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$aqM7_ZYqe9rAOYPxhHnEsGFGzQA(Lorg/telegram/ui/QrActivity$QrView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/QrActivity$QrView;->lambda$prepareContent$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$lCnxx-vOm-lpecz89IQTYEPGEhg(Lorg/telegram/ui/QrActivity$QrView;Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/QrActivity$QrView;->lambda$new$4(Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pMZp1yUO8bIRtcVxynctuJBWB8k(Lorg/telegram/ui/QrActivity$QrView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/QrActivity$QrView;->lambda$new$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$swwgRu_NNQA-Sxxyf7ebNYH_NUw(Lorg/telegram/ui/QrActivity$QrView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/QrActivity$QrView;->lambda$setData$1(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 798
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lorg/telegram/ui/QrActivity$QrView;->SHADOW_SIZE:F

    const/16 v0, 0x14

    .line 799
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lorg/telegram/ui/QrActivity$QrView;->RADIUS:F

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 827
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 801
    new-instance p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->gradientDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    .line 802
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->bitmapGradientPaint:Landroid/graphics/Paint;

    .line 812
    new-instance v10, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v11, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x7d0

    move-object v2, v10

    move-object v4, p0

    move-object v9, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLandroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v10, p0, Lorg/telegram/ui/QrActivity$QrView;->contentBitmapAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 813
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/QrActivity$QrView;->crossfadeFromPaint:Landroid/graphics/Paint;

    .line 814
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/QrActivity$QrView;->crossfadeToPaint:Landroid/graphics/Paint;

    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 823
    iput-object v2, p0, Lorg/telegram/ui/QrActivity$QrView;->radii:[F

    .line 1026
    new-instance v2, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/QrActivity$QrView;)V

    iput-object v2, p0, Lorg/telegram/ui/QrActivity$QrView;->checkTimerToken:Ljava/lang/Runnable;

    .line 1092
    iput-boolean v1, p0, Lorg/telegram/ui/QrActivity$QrView;->firstPrepare:Z

    .line 828
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setIndeterminateAnimation(Z)V

    .line 829
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setParentView(Landroid/view/View;)V

    .line 830
    new-instance v2, Landroid/graphics/BitmapShader;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v3, v4, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lorg/telegram/ui/QrActivity$QrView;->gradientShader:Landroid/graphics/BitmapShader;

    .line 831
    new-instance v9, Landroid/graphics/BitmapShader;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object v3, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v9, p1, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v9, p0, Lorg/telegram/ui/QrActivity$QrView;->gradientTextShader:Landroid/graphics/BitmapShader;

    .line 832
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 833
    new-instance v2, Lorg/telegram/ui/QrActivity$QrView$1;

    const/4 p1, 0x0

    invoke-direct {v2, p0, p1, v1, p1}, Lorg/telegram/ui/QrActivity$QrView$1;-><init>(Lorg/telegram/ui/QrActivity$QrView;ZZZ)V

    iput-object v2, p0, Lorg/telegram/ui/QrActivity$QrView;->timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v3, 0x3eb33333    # 0.35f

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x12c

    move-object v8, v11

    .line 839
    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 840
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 841
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-string v0, "fonts/rcondensedbold.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 842
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 843
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    .line 844
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/16 v0, 0x23

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 845
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 846
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->crossfadeFromPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/LinearGradient;

    const/16 v9, 0x78

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v4, v0

    const/4 v10, 0x2

    new-array v5, v10, [I

    fill-array-data v5, :array_0

    new-array v6, v10, [F

    fill-array-data v6, :array_1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 847
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->crossfadeFromPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 848
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->crossfadeToPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/LinearGradient;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v4, v0

    new-array v5, v10, [I

    fill-array-data v5, :array_2

    new-array v6, v10, [F

    fill-array-data v6, :array_3

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 849
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->crossfadeToPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

    :array_0
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private drawLoading(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 905
    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_1

    .line 907
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/16 v2, 0x3c

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v8, v1, 0x21

    mul-int/lit8 v1, v8, 0x21

    add-int/lit8 v9, v1, 0x20

    .line 909
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v9

    div-int/lit8 v10, v1, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 910
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v3, v2, :cond_0

    .line 911
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3db851ec    # 0.09f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    :cond_0
    move v11, v1

    .line 913
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 v2, 0xff

    const/16 v3, 0x1f

    .line 914
    invoke-virtual {v7, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    add-int/lit8 v12, v10, 0x10

    int-to-float v2, v12

    add-int/lit8 v13, v11, 0x10

    int-to-float v3, v13

    .line 915
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v10

    add-int/lit8 v1, v1, -0x10

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v11

    sub-int/2addr v1, v10

    sub-int/2addr v1, v10

    add-int/lit8 v1, v1, -0x10

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/QrActivity$QrView;->bitmapGradientPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 916
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 917
    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v10

    add-int/lit8 v2, v2, -0x10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v11

    sub-int/2addr v3, v10

    sub-int/2addr v3, v10

    add-int/lit8 v3, v3, -0x10

    invoke-virtual {v1, v12, v13, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 918
    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 919
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 920
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 921
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v12, v1, v2

    int-to-float v3, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v1, v3

    int-to-float v2, v10

    sub-float v13, v1, v2

    add-int/lit8 v1, v9, -0x20

    int-to-float v1, v1

    const v4, 0x4094cccd    # 4.65f

    div-float/2addr v1, v4

    int-to-float v6, v8

    div-float/2addr v1, v6

    .line 922
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/2addr v1, v8

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float v14, v1, v4

    .line 923
    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->bitmapGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v12, v13, v14, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 924
    iget-object v4, v0, Lorg/telegram/ui/QrActivity$QrView;->bitmapGradientPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40e00000    # 7.0f

    const/16 v8, 0x10

    int-to-float v9, v9

    const/high16 v10, 0x3f400000    # 0.75f

    iget-object v11, v0, Lorg/telegram/ui/QrActivity$QrView;->radii:[F

    const/4 v15, 0x1

    move-object/from16 v1, p1

    move v7, v8

    move v8, v9

    move v9, v10

    move-object v10, v11

    move v11, v15

    invoke-static/range {v1 .. v11}, Lcom/google/zxing/qrcode/QRCodeWriter;->drawSideQuads(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;FFIFF[FZ)V

    .line 925
    iget-boolean v1, v0, Lorg/telegram/ui/QrActivity$QrView;->logoCenterSet:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->centerChangedListener:Lorg/telegram/ui/QrActivity$QrView$QrCenterChangedListener;

    if-eqz v1, :cond_1

    sub-float v2, v12, v14

    float-to-int v2, v2

    sub-float v3, v13, v14

    float-to-int v3, v3

    add-float/2addr v12, v14

    float-to-int v4, v12

    add-float/2addr v13, v14

    float-to-int v5, v13

    .line 926
    invoke-interface {v1, v2, v3, v4, v5}, Lorg/telegram/ui/QrActivity$QrView$QrCenterChangedListener;->onCenterChanged(IIII)V

    const/4 v1, 0x1

    .line 927
    iput-boolean v1, v0, Lorg/telegram/ui/QrActivity$QrView;->logoCenterSet:Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$2(II)V
    .locals 0

    .line 1042
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/QrActivity$QrView;->prepareContent(II)V

    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1050
    :cond_0
    iget v0, p0, Lorg/telegram/ui/QrActivity$QrView;->linkExpires:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;->expires:I

    if-ge v0, v2, :cond_1

    .line 1052
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x64

    .line 1054
    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x2

    .line 1058
    :try_start_1
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1062
    :catch_1
    :cond_1
    :goto_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;->expires:I

    iput v0, p0, Lorg/telegram/ui/QrActivity$QrView;->linkExpires:I

    .line 1063
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;->url:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/telegram/ui/QrActivity$QrView;->setData(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;)V
    .locals 1

    .line 1046
    new-instance v0, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/QrActivity$QrView;Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$5()V
    .locals 11

    .line 1027
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->checkTimerToken:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1028
    iget-boolean v0, p0, Lorg/telegram/ui/QrActivity$QrView;->hasTimer:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1031
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_1

    .line 1032
    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v2, Lorg/telegram/messenger/R$raw;->qr_matrix:I

    const/16 v3, 0xc8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const-string v5, "qr_matrix"

    invoke-direct {v0, v2, v5, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    iput-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 1033
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    .line 1034
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1035
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    .line 1036
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 1038
    :cond_1
    iget v0, p0, Lorg/telegram/ui/QrActivity$QrView;->linkExpires:I

    const-string v2, ""

    const-wide/16 v3, 0x3e8

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v3

    iget v0, p0, Lorg/telegram/ui/QrActivity$QrView;->linkExpires:I

    int-to-long v7, v0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_5

    .line 1039
    :cond_2
    iget v0, p0, Lorg/telegram/ui/QrActivity$QrView;->linkExpires:I

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1040
    iput-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->link:Ljava/lang/String;

    .line 1041
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 1042
    sget-object v6, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v7, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0, v0, v5}, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/QrActivity$QrView;II)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1043
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    :cond_3
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v5, p0, Lorg/telegram/ui/QrActivity$QrView;->linkExpires:I

    if-nez v5, :cond_4

    const-wide/16 v5, 0x2ee

    goto :goto_0

    :cond_4
    const-wide/16 v5, 0x6d6

    :goto_0
    new-instance v7, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda7;

    invoke-direct {v7, p0}, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/QrActivity$QrView;)V

    invoke-virtual {v0, v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->requestContactToken(JLorg/telegram/messenger/Utilities$Callback;)V

    .line 1067
    :cond_5
    iget v0, p0, Lorg/telegram/ui/QrActivity$QrView;->linkExpires:I

    if-lez v0, :cond_8

    iget-object v5, p0, Lorg/telegram/ui/QrActivity$QrView;->link:Ljava/lang/String;

    if-eqz v5, :cond_8

    const-wide/16 v5, 0x0

    int-to-long v7, v0

    .line 1068
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    div-long/2addr v9, v3

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const-wide/16 v7, 0x3c

    .line 1069
    rem-long v9, v5, v7

    long-to-int v0, v9

    const/16 v9, 0x63

    div-long/2addr v5, v7

    long-to-int v5, v5

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1070
    iget-object v6, p0, Lorg/telegram/ui/QrActivity$QrView;->timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    const/16 v9, 0xa

    if-ge v5, v9, :cond_6

    move-object v10, v8

    goto :goto_1

    :cond_6
    move-object v10, v2

    .line 1071
    :goto_1
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v0, v9, :cond_7

    move-object v2, v8

    :cond_7
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 1070
    invoke-virtual {v6, v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;ZZ)V

    .line 1076
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1077
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->checkTimerToken:Ljava/lang/Runnable;

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$onSizeChanged$0(II)V
    .locals 0

    .line 887
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/QrActivity$QrView;->prepareContent(II)V

    return-void
.end method

.method private synthetic lambda$prepareContent$6()V
    .locals 4

    const/4 v0, 0x0

    .line 1100
    iput-boolean v0, p0, Lorg/telegram/ui/QrActivity$QrView;->firstPrepare:Z

    .line 1101
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->contentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1103
    iput-object v1, p0, Lorg/telegram/ui/QrActivity$QrView;->contentBitmap:Landroid/graphics/Bitmap;

    .line 1104
    iget-object v1, p0, Lorg/telegram/ui/QrActivity$QrView;->contentBitmapAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 1105
    iget-object v1, p0, Lorg/telegram/ui/QrActivity$QrView;->oldContentBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 1106
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1108
    :cond_0
    iput-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->oldContentBitmap:Landroid/graphics/Bitmap;

    .line 1109
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$prepareContent$7(Landroid/graphics/Bitmap;FIF)V
    .locals 3

    .line 1234
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->contentBitmap:Landroid/graphics/Bitmap;

    .line 1235
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->contentBitmap:Landroid/graphics/Bitmap;

    .line 1236
    iget-boolean p1, p0, Lorg/telegram/ui/QrActivity$QrView;->firstPrepare:Z

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 1237
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->contentBitmapAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_0
    const/4 p1, 0x0

    .line 1239
    iput-boolean p1, p0, Lorg/telegram/ui/QrActivity$QrView;->firstPrepare:Z

    .line 1240
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->oldContentBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 1241
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1243
    :cond_1
    iput-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->oldContentBitmap:Landroid/graphics/Bitmap;

    .line 1245
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->centerChangedListener:Lorg/telegram/ui/QrActivity$QrView$QrCenterChangedListener;

    if-eqz p1, :cond_2

    int-to-float p3, p3

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p3, v0

    sub-float v0, p2, p3

    float-to-int v0, v0

    sub-float v2, p4, p3

    float-to-int v2, v2

    add-float/2addr p2, p3

    float-to-int p2, p2

    add-float/2addr p4, p3

    float-to-int p3, p4

    .line 1246
    invoke-interface {p1, v0, v2, p2, p3}, Lorg/telegram/ui/QrActivity$QrView$QrCenterChangedListener;->onCenterChanged(IIII)V

    .line 1247
    iput-boolean v1, p0, Lorg/telegram/ui/QrActivity$QrView;->logoCenterSet:Z

    .line 1249
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setData$1(II)V
    .locals 0

    .line 1020
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/QrActivity$QrView;->prepareContent(II)V

    return-void
.end method

.method private prepareContent(II)V
    .locals 30

    move-object/from16 v6, p0

    move/from16 v0, p1

    move/from16 v1, p2

    if-eqz v0, :cond_18

    if-nez v1, :cond_0

    goto/16 :goto_b

    .line 1098
    :cond_0
    iget-object v2, v6, Lorg/telegram/ui/QrActivity$QrView;->username:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v6, Lorg/telegram/ui/QrActivity$QrView;->hasTimer:Z

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v6, Lorg/telegram/ui/QrActivity$QrView;->link:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1099
    :cond_2
    new-instance v0, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda0;

    invoke-direct {v0, v6}, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/QrActivity$QrView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 1115
    :cond_3
    iget-boolean v2, v6, Lorg/telegram/ui/QrActivity$QrView;->hasTimer:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    iget-boolean v2, v6, Lorg/telegram/ui/QrActivity$QrView;->isPhone:Z

    if-eqz v2, :cond_5

    iget-object v2, v6, Lorg/telegram/ui/QrActivity$QrView;->username:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v2, v6, Lorg/telegram/ui/QrActivity$QrView;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 1116
    :goto_0
    iget-object v4, v6, Lorg/telegram/ui/QrActivity$QrView;->hadUserText:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v6, Lorg/telegram/ui/QrActivity$QrView;->link:Ljava/lang/String;

    iget-object v5, v6, Lorg/telegram/ui/QrActivity$QrView;->hadLink:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v6, Lorg/telegram/ui/QrActivity$QrView;->hadWidth:Ljava/lang/Integer;

    if-eqz v4, :cond_6

    iget-object v5, v6, Lorg/telegram/ui/QrActivity$QrView;->hadHeight:Ljava/lang/Integer;

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_6

    iget-object v4, v6, Lorg/telegram/ui/QrActivity$QrView;->hadHeight:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_6

    return-void

    .line 1120
    :cond_6
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/high16 v5, -0x1000000

    .line 1124
    new-instance v15, Landroid/text/TextPaint;

    const/16 v8, 0x41

    invoke-direct {v15, v8}, Landroid/text/TextPaint;-><init>(I)V

    .line 1125
    invoke-virtual {v15, v5}, Landroid/text/TextPaint;->setColor(I)V

    const-string v8, "fonts/rcondensedbold.ttf"

    .line 1126
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1130
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    const/16 v9, 0x14

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    const/4 v14, 0x2

    mul-int/2addr v9, v14

    sub-int/2addr v8, v9

    .line 1131
    iget-boolean v9, v6, Lorg/telegram/ui/QrActivity$QrView;->hasTimer:Z

    const/16 v18, 0x4

    const/16 v19, 0x1e

    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_f

    move v9, v12

    :goto_1
    if-gt v9, v14, :cond_f

    if-nez v9, :cond_7

    .line 1134
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v3, Lorg/telegram/messenger/R$drawable;->qr_at_large:I

    invoke-static {v10, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1135
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v15, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_2

    :cond_7
    if-ne v9, v11, :cond_8

    .line 1137
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v10, Lorg/telegram/messenger/R$drawable;->qr_at_medium:I

    invoke-static {v3, v10}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v10, 0x19

    .line 1138
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v15, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_2

    .line 1140
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v10, Lorg/telegram/messenger/R$drawable;->qr_at_small:I

    invoke-static {v3, v10}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v10, 0x13

    .line 1141
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v15, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    :goto_2
    if-eqz v3, :cond_9

    .line 1144
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v3, v12, v12, v10, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1145
    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v5, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1148
    :cond_9
    new-instance v7, Landroid/text/SpannableStringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1149
    iget-boolean v5, v6, Lorg/telegram/ui/QrActivity$QrView;->isPhone:Z

    if-nez v5, :cond_a

    .line 1150
    new-instance v5, Lorg/telegram/ui/Cells/SettingsSearchCell$VerticalImageSpan;

    invoke-direct {v5, v3}, Lorg/telegram/ui/Cells/SettingsSearchCell$VerticalImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/16 v10, 0x21

    invoke-virtual {v7, v5, v12, v11, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1152
    :cond_a
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v15, v7, v11, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v5, v10

    if-gt v9, v11, :cond_b

    int-to-float v10, v8

    cmpl-float v10, v5, v10

    if-lez v10, :cond_b

    add-int/lit8 v9, v9, 0x1

    const/high16 v5, -0x1000000

    goto/16 :goto_1

    :cond_b
    int-to-float v9, v8

    cmpl-float v9, v5, v9

    if-lez v9, :cond_c

    move v9, v14

    goto :goto_3

    :cond_c
    move v9, v11

    :goto_3
    if-le v9, v11, :cond_d

    .line 1159
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v5

    float-to-int v10, v10

    div-int/2addr v10, v14

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    add-int v10, v10, v16

    goto :goto_4

    :cond_d
    move v10, v8

    :goto_4
    if-le v10, v8, :cond_e

    .line 1163
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v5, v3

    float-to-int v3, v5

    div-int/2addr v3, v13

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v3, v5

    move v10, v3

    move/from16 v17, v13

    goto :goto_5

    :cond_e
    move/from16 v17, v9

    .line 1165
    :goto_5
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v8, 0xa

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v8, v10

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v23

    move-object v8, v7

    move-object v9, v15

    move v7, v11

    move-object v11, v3

    move v3, v12

    move v12, v5

    move v5, v13

    move/from16 v13, v16

    move/from16 v24, v14

    move/from16 v14, v21

    move-object/from16 v21, v15

    move-object/from16 v15, v22

    move/from16 v16, v23

    invoke-static/range {v8 .. v17}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v8

    goto :goto_6

    :cond_f
    move v7, v11

    move v3, v12

    move v5, v13

    move/from16 v24, v14

    move-object/from16 v21, v15

    const/4 v8, 0x0

    .line 1170
    :goto_6
    invoke-virtual/range {v21 .. v21}, Landroid/text/TextPaint;->descent()F

    move-result v9

    invoke-virtual/range {v21 .. v21}, Landroid/text/TextPaint;->ascent()F

    move-result v10

    sub-float/2addr v9, v10

    if-nez v8, :cond_10

    move v12, v3

    goto :goto_7

    .line 1171
    :cond_10
    invoke-virtual {v8}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v12

    :goto_7
    int-to-float v10, v12

    mul-float/2addr v9, v10

    .line 1175
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    sub-int v10, v0, v10

    .line 1176
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1177
    sget-object v12, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v13, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->M:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    sget-object v12, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    new-instance v12, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v12}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    move v13, v3

    move v14, v5

    const/16 v20, 0x0

    :goto_8
    const/4 v15, 0x5

    if-ge v14, v15, :cond_12

    .line 1183
    :try_start_0
    sget-object v15, Lcom/google/zxing/EncodeHintType;->QR_VERSION:Lcom/google/zxing/EncodeHintType;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    iget-object v3, v6, Lorg/telegram/ui/QrActivity$QrView;->link:Ljava/lang/String;

    const/16 v26, 0x0

    const/high16 v27, 0x3f400000    # 0.75f

    const v28, 0xffffff

    const/high16 v29, -0x1000000

    move-object/from16 v21, v12

    move-object/from16 v22, v3

    move/from16 v23, v10

    move/from16 v24, v10

    move-object/from16 v25, v11

    invoke-virtual/range {v21 .. v29}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;IILjava/util/Map;Landroid/graphics/Bitmap;FII)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 1185
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/QRCodeWriter;->getImageSize()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v13, v3

    :catch_0
    if-eqz v20, :cond_11

    goto :goto_9

    :cond_11
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    goto :goto_8

    :cond_12
    :goto_9
    move-object/from16 v3, v20

    if-nez v3, :cond_13

    return-void

    .line 1197
    :cond_13
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v11, 0xffffff

    .line 1198
    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1200
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sub-int v11, v0, v11

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    int-to-float v12, v1

    const v14, 0x3e19999a    # 0.15f

    mul-float/2addr v14, v12

    if-eqz v8, :cond_14

    .line 1202
    invoke-virtual {v8}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v15

    if-ne v15, v5, :cond_14

    const v14, 0x3e051eb8    # 0.13f

    mul-float/2addr v14, v12

    .line 1205
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    if-ge v15, v7, :cond_15

    const/16 v16, 0x1

    goto :goto_a

    :cond_15
    const/16 v16, 0x0

    :goto_a
    if-nez v16, :cond_16

    const v7, 0x3db851ec    # 0.09f

    mul-float v14, v12, v7

    .line 1209
    :cond_16
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v10, v3, v11, v14, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1211
    new-instance v5, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v7, -0x1000000

    .line 1212
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1213
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v7, v12

    add-float/2addr v7, v11

    .line 1214
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v12

    add-float/2addr v11, v14

    int-to-float v15, v13

    mul-float/2addr v15, v12

    .line 1215
    invoke-virtual {v10, v7, v11, v15, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz v8, :cond_17

    .line 1219
    invoke-virtual {v10}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v8}, Landroid/text/StaticLayout;->getWidth()I

    move-result v15

    sub-int/2addr v5, v15

    int-to-float v5, v5

    mul-float/2addr v5, v12

    .line 1220
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v15, v14

    invoke-virtual {v10}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v14, v0

    sub-float/2addr v12, v14

    sub-float/2addr v12, v9

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v12, v0

    add-float/2addr v15, v12

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v15, v0

    .line 1221
    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    .line 1222
    invoke-virtual {v10, v5, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1223
    invoke-virtual {v8, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1224
    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    .line 1225
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1228
    :cond_17
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/QrActivity$QrView;->hadWidth:Ljava/lang/Integer;

    .line 1229
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/QrActivity$QrView;->hadHeight:Ljava/lang/Integer;

    .line 1230
    iput-object v2, v6, Lorg/telegram/ui/QrActivity$QrView;->hadUserText:Ljava/lang/String;

    .line 1231
    iget-object v0, v6, Lorg/telegram/ui/QrActivity$QrView;->link:Ljava/lang/String;

    iput-object v0, v6, Lorg/telegram/ui/QrActivity$QrView;->hadLink:Ljava/lang/String;

    .line 1233
    new-instance v8, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda5;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v4

    move v3, v7

    move v4, v13

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/QrActivity$QrView;Landroid/graphics/Bitmap;FIF)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_18
    :goto_b
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 1259
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1260
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->checkTimerToken:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1265
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1266
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    .line 1267
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 1268
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    const/4 v0, 0x0

    .line 1269
    iput-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 934
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 935
    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->backgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 936
    invoke-virtual {v7, v1, v8, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 939
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->contentBitmapAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v10

    cmpl-float v11, v10, v8

    const/4 v13, 0x1

    if-lez v11, :cond_1

    cmpg-float v1, v10, v9

    if-gez v1, :cond_1

    move v14, v13

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    :goto_0
    cmpg-float v1, v10, v9

    const/16 v15, 0x78

    const/16 v6, 0x1f

    const/16 v5, 0xff

    if-gez v1, :cond_4

    if-eqz v14, :cond_2

    .line 944
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v8, v8, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 945
    invoke-virtual {v7, v1, v5, v6}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 947
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->oldContentBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 948
    iget-object v2, v0, Lorg/telegram/ui/QrActivity$QrView;->bitmapGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v8, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 950
    :cond_3
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/QrActivity$QrView;->drawLoading(Landroid/graphics/Canvas;)V

    :goto_1
    if-eqz v14, :cond_4

    .line 953
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    .line 954
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    neg-float v2, v1

    .line 955
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    sub-float v4, v9, v10

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v7, v8, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 956
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->crossfadeToPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v1

    move-object/from16 v1, p1

    const/16 v12, 0xff

    move v9, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 957
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 958
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_4
    move v12, v5

    move v9, v6

    :goto_2
    if-lez v11, :cond_7

    if-eqz v14, :cond_5

    .line 963
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v8, v8, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 964
    invoke-virtual {v7, v1, v12, v9}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 966
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->contentBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 967
    iget-object v2, v0, Lorg/telegram/ui/QrActivity$QrView;->bitmapGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v8, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 968
    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->gradientDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    goto :goto_3

    .line 970
    :cond_6
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/QrActivity$QrView;->drawLoading(Landroid/graphics/Canvas;)V

    :goto_3
    if-eqz v14, :cond_7

    .line 973
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    .line 974
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    neg-float v2, v1

    .line 975
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v9, v4, v10

    mul-float/2addr v3, v9

    add-float/2addr v3, v2

    invoke-virtual {v7, v8, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    .line 976
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float v6, v2, v1

    iget-object v9, v0, Lorg/telegram/ui/QrActivity$QrView;->crossfadeFromPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 977
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 978
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 982
    :cond_7
    iget-boolean v1, v0, Lorg/telegram/ui/QrActivity$QrView;->hasTimer:Z

    if-eqz v1, :cond_a

    .line 983
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 984
    iget-object v2, v0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_9

    .line 985
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 986
    invoke-virtual {v7, v8, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 987
    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eq v1, v2, :cond_8

    .line 988
    invoke-virtual {v0, v13}, Lorg/telegram/ui/QrActivity$QrView;->setForShare(Z)V

    .line 990
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 991
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    .line 993
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/QrActivity$QrView;->timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    float-to-int v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    const/16 v4, 0x28

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v1, v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 994
    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_a
    :goto_4
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    .line 873
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_3

    .line 875
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/QrActivity$QrView;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_1

    .line 876
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p3, 0x0

    .line 877
    iput-object p3, p0, Lorg/telegram/ui/QrActivity$QrView;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 879
    :cond_1
    new-instance p3, Landroid/graphics/Paint;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Landroid/graphics/Paint;-><init>(I)V

    const/4 p4, -0x1

    .line 880
    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p4, 0x4

    .line 881
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    int-to-float p4, p4

    const/4 v0, 0x0

    sget v1, Lorg/telegram/ui/QrActivity$QrView;->SHADOW_SIZE:F

    const/high16 v2, 0xf000000

    invoke-virtual {p3, p4, v0, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 882
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    iput-object p4, p0, Lorg/telegram/ui/QrActivity$QrView;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 883
    new-instance p4, Landroid/graphics/Canvas;

    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 884
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v2, p1

    sub-float v3, v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-direct {v0, v1, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 885
    sget v1, Lorg/telegram/ui/QrActivity$QrView;->RADIUS:F

    invoke-virtual {p4, v0, v1, v1, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 886
    iget-boolean p3, p0, Lorg/telegram/ui/QrActivity$QrView;->setData:Z

    if-eqz p3, :cond_2

    .line 887
    sget-object p3, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p4, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda3;

    invoke-direct {p4, p0, p1, p2}, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/QrActivity$QrView;II)V

    invoke-virtual {p3, p4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 890
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    iget-object p3, p0, Lorg/telegram/ui/QrActivity$QrView;->gradientDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    .line 891
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    iget-object p2, p0, Lorg/telegram/ui/QrActivity$QrView;->gradientDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p3, p2

    .line 892
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 893
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 894
    invoke-virtual {p2, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 895
    iget-object p3, p0, Lorg/telegram/ui/QrActivity$QrView;->gradientShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p3, p2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 897
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 898
    invoke-virtual {p2, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v2, p1

    .line 899
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    const/4 p3, 0x6

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    add-int/2addr p1, p3

    int-to-float p1, p1

    invoke-virtual {p2, v2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 900
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->gradientTextShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, p2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_3
    return-void
.end method

.method setCenterChangedListener(Lorg/telegram/ui/QrActivity$QrView$QrCenterChangedListener;)V
    .locals 0

    .line 1000
    iput-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->centerChangedListener:Lorg/telegram/ui/QrActivity$QrView$QrCenterChangedListener;

    return-void
.end method

.method setColors(IIII)V
    .locals 1

    .line 1082
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->gradientDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIII)V

    .line 1083
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setData(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 1004
    iput-boolean v0, p0, Lorg/telegram/ui/QrActivity$QrView;->setData:Z

    .line 1005
    iput-object p2, p0, Lorg/telegram/ui/QrActivity$QrView;->username:Ljava/lang/String;

    .line 1006
    iput-boolean p3, p0, Lorg/telegram/ui/QrActivity$QrView;->isPhone:Z

    if-eqz p4, :cond_1

    .line 1008
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getCachedContactToken()Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1010
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;->url:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/QrActivity$QrView;->link:Ljava/lang/String;

    .line 1011
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;->expires:I

    iput p1, p0, Lorg/telegram/ui/QrActivity$QrView;->linkExpires:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1013
    iput-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->link:Ljava/lang/String;

    goto :goto_0

    .line 1016
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->link:Ljava/lang/String;

    .line 1018
    :goto_0
    iput-boolean p4, p0, Lorg/telegram/ui/QrActivity$QrView;->hasTimer:Z

    .line 1019
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 1020
    sget-object p3, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p4, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda4;

    invoke-direct {p4, p0, p1, p2}, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/QrActivity$QrView;II)V

    invoke-virtual {p3, p4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1021
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1023
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->checkTimerToken:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public setForShare(Z)V
    .locals 13

    .line 853
    iget-boolean v0, p0, Lorg/telegram/ui/QrActivity$QrView;->hasTimer:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 857
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayoutPaint:Landroid/text/TextPaint;

    if-nez p1, :cond_1

    .line 858
    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayoutPaint:Landroid/text/TextPaint;

    .line 860
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayoutPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->gradientTextShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 861
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayoutPaint:Landroid/text/TextPaint;

    const-string v0, "fonts/rcondensedbold.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 862
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayoutPaint:Landroid/text/TextPaint;

    const/16 v0, 0x19

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 863
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->username:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, ""

    .line 864
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayoutPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v3

    .line 865
    iget-object v4, p0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayoutPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    const/16 v0, 0x3c

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int v11, p1, v0

    const/4 v12, 0x1

    invoke-static/range {v3 .. v12}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayout:Landroid/text/StaticLayout;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 867
    iput-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayout:Landroid/text/StaticLayout;

    :goto_0
    return-void
.end method

.method setPosAnimationProgress(F)V
    .locals 1

    .line 1087
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->gradientDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iput p1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    return-void
.end method
