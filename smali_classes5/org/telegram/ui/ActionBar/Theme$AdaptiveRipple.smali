.class public Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;
.super Ljava/lang/Object;
.source "Theme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/Theme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdaptiveRipple"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple$CircleDrawable;
    }
.end annotation


# static fields
.field private static final defaultBackgroundColorKey:I

.field private static tempHSV:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5759
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sput v0, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->defaultBackgroundColorKey:I

    return-void
.end method

.method private static varargs calcRadii([F)[F
    .locals 10

    .line 5986
    array-length v0, p0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    new-array p0, v1, [F

    .line 5987
    fill-array-data p0, :array_0

    return-object p0

    .line 5988
    :cond_0
    array-length v0, p0

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v0, v8, :cond_1

    new-array v0, v1, [F

    .line 5989
    aget v1, p0, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v9

    aget v1, p0, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v8

    aget v1, p0, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v7

    aget v1, p0, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v6

    aget v1, p0, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v5

    aget v1, p0, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v4

    aget v1, p0, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v3

    aget p0, p0, v9

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    int-to-float p0, p0

    aput p0, v0, v2

    return-object v0

    .line 5990
    :cond_1
    array-length v0, p0

    if-ne v0, v7, :cond_2

    new-array v0, v1, [F

    .line 5991
    aget v1, p0, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v9

    aget v1, p0, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v8

    aget v1, p0, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v7

    aget v1, p0, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v6

    aget v1, p0, v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v5

    aget v1, p0, v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v4

    aget v1, p0, v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v3

    aget p0, p0, v8

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    int-to-float p0, p0

    aput p0, v0, v2

    return-object v0

    .line 5992
    :cond_2
    array-length v0, p0

    if-ne v0, v6, :cond_3

    new-array v0, v1, [F

    .line 5993
    aget v1, p0, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v9

    aget v1, p0, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v8

    aget v1, p0, v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v7

    aget v1, p0, v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v6

    aget v1, p0, v7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v5

    aget v1, p0, v7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v4

    aget v1, p0, v7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v3

    aget p0, p0, v7

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    int-to-float p0, p0

    aput p0, v0, v2

    return-object v0

    .line 5994
    :cond_3
    array-length v0, p0

    if-ge v0, v1, :cond_4

    new-array v0, v1, [F

    .line 5995
    aget v1, p0, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v9

    aget v1, p0, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v8

    aget v1, p0, v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v7

    aget v1, p0, v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v6

    aget v1, p0, v7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v5

    aget v1, p0, v7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v4

    aget v1, p0, v6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v3

    aget p0, p0, v6

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    int-to-float p0, p0

    aput p0, v0, v2

    return-object v0

    :cond_4
    new-array v0, v1, [F

    .line 5997
    aget v1, p0, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v9

    aget v1, p0, v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v8

    aget v1, p0, v7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v7

    aget v1, p0, v6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v6

    aget v1, p0, v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v5

    aget v1, p0, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v4

    aget v1, p0, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v3

    aget p0, p0, v2

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    int-to-float p0, p0

    aput p0, v0, v2

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static calcRippleColor(I)I
    .locals 6

    .line 6011
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->tempHSV:[F

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 6012
    sput-object v0, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->tempHSV:[F

    .line 6014
    :cond_0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->tempHSV:[F

    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 6015
    sget-object p0, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->tempHSV:[F

    const/4 v0, 0x1

    aget v1, p0, v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    if-lez v1, :cond_3

    .line 6018
    aget v1, p0, v0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v5

    if-eqz v5, :cond_1

    const/high16 v5, 0x3e800000    # 0.25f

    goto :goto_0

    :cond_1
    const/high16 v5, -0x41800000    # -0.25f

    :goto_0
    add-float/2addr v1, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, p0, v0

    .line 6019
    sget-object p0, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->tempHSV:[F

    aget v0, p0, v4

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x3d4ccccd    # 0.05f

    goto :goto_1

    :cond_2
    const v1, -0x42b33333    # -0.05f

    :goto_1
    add-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, p0, v4

    goto :goto_3

    .line 6021
    :cond_3
    aget v0, p0, v4

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x3dcccccd    # 0.1f

    goto :goto_2

    :cond_4
    const v1, -0x42333333    # -0.1f

    :goto_2
    add-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, p0, v4

    :goto_3
    const/16 p0, 0x7f

    .line 6023
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->tempHSV:[F

    invoke-static {p0, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0
.end method

.method public static circle(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 5771
    invoke-static {p0, v0}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->circle(IF)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static circle(IF)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 5774
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->calcRippleColor(I)I

    move-result p0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->createCircle(IF)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static createCircle(IF)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 5910
    invoke-static {v0, p0, p1}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->createCircle(IIF)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static createCircle(IIF)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 5914
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple$CircleDrawable;

    invoke-direct {v0, p2, p0}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple$CircleDrawable;-><init>(FI)V

    move-object p0, v0

    .line 5913
    :goto_0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->createCircle(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static createCircle(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 5920
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    .line 5921
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v4, v1, [[I

    sget-object v5, Landroid/util/StateSet;->WILD_CARD:[I

    aput-object v5, v4, v2

    new-array v1, v1, [I

    aput p1, v1, v2

    invoke-direct {v3, v4, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance p1, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple$CircleDrawable;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple$CircleDrawable;-><init>(F)V

    invoke-direct {v0, v3, p0, p1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    .line 5930
    :cond_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 5931
    new-instance v3, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple$CircleDrawable;

    invoke-direct {v3, p2, p1}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple$CircleDrawable;-><init>(FI)V

    .line 5932
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    aput-object p0, p2, v2

    aput-object v3, p2, v1

    invoke-direct {p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    new-array p2, v1, [I

    const v3, 0x10100a7

    aput v3, p2, v2

    .line 5933
    invoke-virtual {v0, p2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p2, v1, [I

    const v1, 0x10100a1

    aput v1, p2, v2

    .line 5934
    invoke-virtual {v0, p2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 5935
    sget-object p1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static varargs createRect(II[F)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 5857
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->hasNonzeroRadii([F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5858
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->calcRadii([F)[F

    move-result-object v3

    invoke-direct {v2, v3, v0, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 5859
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    move-object v0, v1

    goto :goto_0

    .line 5861
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 5864
    :cond_1
    :goto_0
    invoke-static {v0, p1, p2}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->createRect(Landroid/graphics/drawable/Drawable;I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static varargs createRect(Landroid/graphics/drawable/Drawable;I[F)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 5871
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-lt v0, v4, :cond_1

    .line 5873
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->hasNonzeroRadii([F)Z

    move-result v0

    const/4 v4, -0x1

    if-eqz v0, :cond_0

    .line 5874
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v5, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->calcRadii([F)[F

    move-result-object p2

    invoke-direct {v5, p2, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 5875
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 5877
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance p2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {p2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 5878
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 5880
    :goto_0
    new-instance p2, Landroid/graphics/drawable/RippleDrawable;

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v4, v2, [[I

    sget-object v5, Landroid/util/StateSet;->WILD_CARD:[I

    aput-object v5, v4, v3

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v4, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-direct {p2, v1, p0, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p2

    .line 5889
    :cond_1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 5891
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->hasNonzeroRadii([F)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5892
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v5, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->calcRadii([F)[F

    move-result-object p2

    invoke-direct {v5, p2, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 5893
    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 5895
    :cond_2
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    new-instance p2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {p2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v4, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 5896
    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5898
    :goto_1
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    aput-object p0, p2, v3

    aput-object v4, p2, v2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    new-array p2, v2, [I

    const v1, 0x10100a7

    aput v1, p2, v3

    .line 5899
    invoke-virtual {v0, p2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p2, v2, [I

    const v1, 0x10100a1

    aput v1, p2, v3

    .line 5900
    invoke-virtual {v0, p2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 5901
    sget-object p1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static filledRect()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 5823
    sget v0, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->defaultBackgroundColorKey:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs filledRect(I[F)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 5845
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->calcRippleColor(I)I

    move-result v0

    invoke-static {p0, v0, p1}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->createRect(II[F)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs filledRectByKey(I[F)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 5836
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static varargs hasNonzeroRadii([F)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    .line 6001
    array-length v3, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 6002
    aget v2, p0, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static rect()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 5806
    sget v0, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->defaultBackgroundColorKey:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->rect(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static rect(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 5816
    invoke-static {p0, v0}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->rect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs rect(I[F)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 5819
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->calcRippleColor(I)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->createRect(II[F)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs rectByKey(I[F)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 5813
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->rect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
