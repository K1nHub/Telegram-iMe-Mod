.class public Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;
.super Ljava/lang/Object;
.source "StarParticlesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/StarParticlesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Drawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;
    }
.end annotation


# instance fields
.field a:F

.field a1:F

.field a2:F

.field public checkBounds:Z

.field public checkTime:Z

.field public colorKey:Ljava/lang/String;

.field public final count:I

.field public distributionAlgorithm:Z

.field private final dt:F

.field public excludeRadius:F

.field public excludeRect:Landroid/graphics/RectF;

.field public forceMaxAlpha:Z

.field public isCircle:Z

.field public k1:F

.field public k2:F

.field public k3:F

.field private lastColor:I

.field matrix:Landroid/graphics/Matrix;

.field matrix2:Landroid/graphics/Matrix;

.field matrix3:Landroid/graphics/Matrix;

.field public minLifeTime:J

.field public overridePaint:Landroid/graphics/Paint;

.field public paint:Landroid/graphics/Paint;

.field public particles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;",
            ">;"
        }
    .end annotation
.end field

.field public paused:Z

.field public pausedTime:J

.field points1:[F

.field points2:[F

.field points3:[F

.field pointsCount1:I

.field pointsCount2:I

.field pointsCount3:I

.field private prevTime:J

.field public randLifeTime:I

.field public rect:Landroid/graphics/RectF;

.field public rect2:Landroid/graphics/RectF;

.field public roundEffect:Z

.field public size1:I

.field public size2:I

.field public size3:I

.field public speedScale:F

.field private final stars:[Landroid/graphics/Bitmap;

.field public startFromCenter:Z

.field public svg:Z

.field public type:I

.field public useBlur:Z

.field public useGradient:Z

.field public useRotate:Z


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    .line 108
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect2:Landroid/graphics/RectF;

    .line 109
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->excludeRect:Landroid/graphics/RectF;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Bitmap;

    .line 110
    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->stars:[Landroid/graphics/Bitmap;

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->excludeRadius:F

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 118
    iput v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->speedScale:F

    const/16 v0, 0xe

    .line 122
    iput v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size1:I

    const/16 v0, 0xc

    iput v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size2:I

    const/16 v0, 0xa

    iput v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size3:I

    const v0, 0x3f59999a    # 0.85f

    .line 123
    iput v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k1:F

    iput v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k2:F

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k3:F

    const-wide/16 v0, 0x7d0

    .line 124
    iput-wide v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->minLifeTime:J

    const/16 v0, 0x3e8

    .line 125
    iput v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->randLifeTime:I

    .line 127
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->dt:F

    .line 129
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->matrix:Landroid/graphics/Matrix;

    .line 130
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->matrix2:Landroid/graphics/Matrix;

    .line 131
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->matrix3:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->checkBounds:Z

    const/4 v1, 0x1

    .line 138
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->checkTime:Z

    .line 139
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->isCircle:Z

    .line 140
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useBlur:Z

    .line 141
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->forceMaxAlpha:Z

    .line 142
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->roundEffect:Z

    const/4 v2, -0x1

    .line 143
    iput v2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->type:I

    const-string v2, "premiumStartSmallStarsColor"

    .line 144
    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->colorKey:Ljava/lang/String;

    .line 156
    iput p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->count:I

    const/16 v2, 0x32

    if-ge p1, v2, :cond_0

    const/4 v0, 0x1

    .line 157
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->distributionAlgorithm:Z

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;)[Landroid/graphics/Bitmap;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->stars:[Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;)F
    .locals 0

    .line 105
    iget p0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->dt:F

    return p0
.end method

.method private generateBitmaps()V
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1b

    .line 185
    iget v3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k1:F

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 188
    iget v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size1:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    :goto_1
    move v9, v5

    goto :goto_2

    :cond_0
    if-ne v1, v4, :cond_1

    .line 190
    iget v3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k2:F

    .line 191
    iget v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size2:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    goto :goto_1

    .line 193
    :cond_1
    iget v3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k3:F

    .line 194
    iget v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size3:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    goto :goto_1

    .line 197
    :goto_2
    iget v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->type:I

    const/16 v6, 0x9

    const/16 v7, 0x1e

    if-ne v5, v6, :cond_4

    if-nez v1, :cond_2

    .line 200
    sget v2, Lorg/telegram/messenger/R$raw;->premium_object_folder:I

    goto :goto_3

    :cond_2
    if-ne v1, v4, :cond_3

    .line 202
    sget v2, Lorg/telegram/messenger/R$raw;->premium_object_bubble:I

    goto :goto_3

    .line 204
    :cond_3
    sget v2, Lorg/telegram/messenger/R$raw;->premium_object_settings:I

    .line 206
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->stars:[Landroid/graphics/Bitmap;

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->colorKey:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-static {v2, v9, v9, v5}, Lorg/telegram/messenger/SvgHelper;->getBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v3, v1

    .line 207
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->svg:Z

    goto/16 :goto_c

    :cond_4
    const/16 v6, 0xb

    if-eq v5, v6, :cond_17

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    goto/16 :goto_a

    :cond_5
    if-ne v5, v2, :cond_8

    if-nez v1, :cond_6

    .line 224
    sget v2, Lorg/telegram/messenger/R$raw;->premium_object_adsbubble:I

    goto :goto_4

    :cond_6
    if-ne v1, v4, :cond_7

    .line 226
    sget v2, Lorg/telegram/messenger/R$raw;->premium_object_like:I

    goto :goto_4

    .line 228
    :cond_7
    sget v2, Lorg/telegram/messenger/R$raw;->premium_object_noads:I

    .line 230
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->stars:[Landroid/graphics/Bitmap;

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->colorKey:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-static {v2, v9, v9, v5}, Lorg/telegram/messenger/SvgHelper;->getBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v3, v1

    .line 231
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->svg:Z

    goto/16 :goto_c

    :cond_8
    const/4 v2, 0x7

    if-ne v5, v2, :cond_b

    if-nez v1, :cond_9

    .line 236
    sget v2, Lorg/telegram/messenger/R$raw;->premium_object_video2:I

    goto :goto_5

    :cond_9
    if-ne v1, v4, :cond_a

    .line 238
    sget v2, Lorg/telegram/messenger/R$raw;->premium_object_video:I

    goto :goto_5

    .line 240
    :cond_a
    sget v2, Lorg/telegram/messenger/R$raw;->premium_object_user:I

    .line 242
    :goto_5
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->stars:[Landroid/graphics/Bitmap;

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->colorKey:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-static {v2, v9, v9, v5}, Lorg/telegram/messenger/SvgHelper;->getBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v3, v1

    .line 243
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->svg:Z

    goto/16 :goto_c

    :cond_b
    const/16 v2, 0x3e9

    if-ne v5, v2, :cond_c

    .line 246
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->stars:[Landroid/graphics/Bitmap;

    sget v3, Lorg/telegram/messenger/R$raw;->premium_object_fire:I

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->colorKey:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-static {v3, v9, v9, v5}, Lorg/telegram/messenger/SvgHelper;->getBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v1

    .line 247
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->svg:Z

    goto/16 :goto_c

    :cond_c
    const/16 v2, 0x3ea

    if-ne v5, v2, :cond_d

    .line 250
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->stars:[Landroid/graphics/Bitmap;

    sget v3, Lorg/telegram/messenger/R$raw;->premium_object_star2:I

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->colorKey:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-static {v3, v9, v9, v5}, Lorg/telegram/messenger/SvgHelper;->getBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v1

    .line 251
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->svg:Z

    goto/16 :goto_c

    .line 255
    :cond_d
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v9, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 256
    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->stars:[Landroid/graphics/Bitmap;

    aput-object v2, v5, v1

    .line 258
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 260
    iget v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->type:I

    const/4 v6, 0x6

    const/4 v13, 0x2

    if-ne v5, v6, :cond_f

    if-eq v1, v4, :cond_e

    if-ne v1, v13, :cond_f

    .line 261
    :cond_e
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_premium_liststar:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 262
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->colorKey:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 263
    invoke-virtual {v2, v0, v0, v9, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 264
    invoke-virtual {v2, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_c

    .line 267
    :cond_f
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    shr-int/lit8 v5, v9, 0x1

    int-to-float v5, v5

    mul-float v3, v3, v5

    float-to-int v3, v3

    const/4 v6, 0x0

    .line 270
    invoke-virtual {v4, v6, v5}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v7, v3

    .line 271
    invoke-virtual {v4, v7, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 272
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    sub-int v3, v9, v3

    int-to-float v3, v3

    .line 273
    invoke-virtual {v4, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v8, v9

    .line 274
    invoke-virtual {v4, v8, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 275
    invoke-virtual {v4, v3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 276
    invoke-virtual {v4, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 277
    invoke-virtual {v4, v7, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 278
    invoke-virtual {v4, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 279
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 281
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 282
    iget-boolean v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useGradient:Z

    const/high16 v14, 0x40a00000    # 5.0f

    if-eqz v5, :cond_14

    const/16 v3, 0xa

    .line 283
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-lt v9, v3, :cond_10

    .line 284
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    mul-int/lit8 v3, v9, -0x2

    int-to-float v10, v3

    const/4 v11, 0x0

    move v8, v9

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->updateMainGradientMatrix(IIIIFF)V

    goto :goto_6

    .line 286
    :cond_10
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    mul-int/lit8 v3, v9, -0x4

    int-to-float v10, v3

    const/4 v11, 0x0

    move v8, v9

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->updateMainGradientMatrix(IIIIFF)V

    .line 288
    :goto_6
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getMainGradientPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 289
    iget-boolean v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->roundEffect:Z

    if-eqz v5, :cond_11

    .line 290
    new-instance v5, Landroid/graphics/CornerPathEffect;

    iget v6, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size1:I

    int-to-float v6, v6

    div-float/2addr v6, v14

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 292
    :cond_11
    iget-boolean v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->forceMaxAlpha:Z

    const/16 v6, 0xff

    if-eqz v5, :cond_12

    .line 293
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_7

    .line 294
    :cond_12
    iget-boolean v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useBlur:Z

    if-eqz v5, :cond_13

    const/16 v5, 0x3c

    .line 295
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_7

    :cond_13
    const/16 v5, 0x78

    .line 297
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 299
    :goto_7
    invoke-virtual {v12, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v4, 0x0

    .line 300
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 301
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_9

    .line 303
    :cond_14
    iget v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->type:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_15

    .line 304
    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->colorKey:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xc8

    invoke-static {v5, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 306
    :cond_15
    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->colorKey:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    :goto_8
    iget-boolean v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->roundEffect:Z

    if-eqz v5, :cond_16

    .line 309
    new-instance v5, Landroid/graphics/CornerPathEffect;

    iget v6, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size1:I

    int-to-float v6, v6

    div-float/2addr v6, v14

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 311
    :cond_16
    invoke-virtual {v12, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 313
    :goto_9
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useBlur:Z

    if-eqz v3, :cond_1a

    .line 314
    invoke-static {v2, v13}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    goto :goto_c

    :cond_17
    :goto_a
    if-nez v1, :cond_18

    .line 212
    sget v2, Lorg/telegram/messenger/R$raw;->premium_object_smile1:I

    goto :goto_b

    :cond_18
    if-ne v1, v4, :cond_19

    .line 214
    sget v2, Lorg/telegram/messenger/R$raw;->premium_object_smile2:I

    goto :goto_b

    .line 216
    :cond_19
    sget v2, Lorg/telegram/messenger/R$raw;->premium_object_like:I

    .line 218
    :goto_b
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->stars:[Landroid/graphics/Bitmap;

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->colorKey:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-static {v2, v9, v9, v5}, Lorg/telegram/messenger/SvgHelper;->getBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v3, v1

    .line 219
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->svg:Z

    :cond_1a
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1b
    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 161
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useRotate:Z

    if-eqz v0, :cond_0

    .line 162
    iget v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->count:I

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->points1:[F

    mul-int/lit8 v1, v0, 0x2

    .line 163
    new-array v1, v1, [F

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->points2:[F

    mul-int/lit8 v0, v0, 0x2

    .line 164
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->points3:[F

    .line 166
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->generateBitmaps()V

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 168
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->count:I

    if-ge v0, v1, :cond_1

    .line 169
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;-><init>(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 328
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->onDraw(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;F)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 334
    iget-wide v5, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->prevTime:J

    sub-long v7, v3, v5

    const-wide/16 v9, 0x4

    const-wide/16 v11, 0x32

    invoke-static/range {v7 .. v12}, Landroidx/core/math/MathUtils;->clamp(JJJ)J

    move-result-wide v5

    .line 335
    iget-boolean v7, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useRotate:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    .line 336
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 337
    iget v7, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->a:F

    long-to-float v5, v5

    const v6, 0x471c4000    # 40000.0f

    div-float v6, v5, v6

    const/high16 v9, 0x43b40000    # 360.0f

    mul-float v6, v6, v9

    add-float/2addr v7, v6

    iput v7, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->a:F

    .line 338
    iget v6, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->a1:F

    const v10, 0x47435000    # 50000.0f

    div-float v10, v5, v10

    mul-float v10, v10, v9

    add-float/2addr v6, v10

    iput v6, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->a1:F

    .line 339
    iget v6, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->a2:F

    const v10, 0x476a6000    # 60000.0f

    div-float/2addr v5, v10

    mul-float v5, v5, v9

    add-float/2addr v6, v5

    iput v6, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->a2:F

    .line 340
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->matrix:Landroid/graphics/Matrix;

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v5, v7, v6, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 341
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->matrix2:Landroid/graphics/Matrix;

    iget v6, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->a1:F

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v5, v6, v7, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 342
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->matrix3:Landroid/graphics/Matrix;

    iget v6, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->a2:F

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v5, v6, v7, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 344
    iput v8, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount1:I

    .line 345
    iput v8, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount2:I

    .line 346
    iput v8, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount3:I

    const/4 v5, 0x0

    .line 347
    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 348
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;

    .line 349
    invoke-virtual {v6}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->updatePoint()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 351
    :cond_0
    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->matrix:Landroid/graphics/Matrix;

    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->points1:[F

    const/4 v11, 0x0

    const/4 v13, 0x0

    iget v14, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount1:I

    move-object v10, v12

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 352
    iget-object v15, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->matrix2:Landroid/graphics/Matrix;

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->points2:[F

    const/16 v17, 0x0

    const/16 v19, 0x0

    iget v6, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount2:I

    move-object/from16 v16, v5

    move-object/from16 v18, v5

    move/from16 v20, v6

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 353
    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->matrix3:Landroid/graphics/Matrix;

    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->points3:[F

    iget v14, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount3:I

    move-object v10, v12

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 354
    iput v8, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount1:I

    .line 355
    iput v8, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount2:I

    .line 356
    iput v8, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount3:I

    .line 359
    :cond_1
    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v8, v5, :cond_5

    .line 360
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;

    .line 361
    iget-boolean v6, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->paused:Z

    if-eqz v6, :cond_2

    .line 362
    iget-wide v6, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pausedTime:J

    invoke-virtual {v5, v1, v6, v7, v2}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->draw(Landroid/graphics/Canvas;JF)V

    goto :goto_2

    .line 364
    :cond_2
    invoke-virtual {v5, v1, v3, v4, v2}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->draw(Landroid/graphics/Canvas;JF)V

    .line 366
    :goto_2
    iget-boolean v6, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->checkTime:Z

    if-eqz v6, :cond_3

    .line 367
    iget-wide v6, v5, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->lifeTime:J

    cmp-long v9, v3, v6

    if-lez v9, :cond_3

    .line 368
    invoke-virtual {v5, v3, v4}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->genPosition(J)V

    .line 371
    :cond_3
    iget-boolean v6, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->checkBounds:Z

    if-eqz v6, :cond_4

    .line 372
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect2:Landroid/graphics/RectF;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->access$000(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;)F

    move-result v7

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->access$100(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;)F

    move-result v9

    invoke-virtual {v6, v7, v9}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-nez v6, :cond_4

    .line 373
    invoke-virtual {v5, v3, v4}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->genPosition(J)V

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 377
    :cond_5
    iput-wide v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->prevTime:J

    return-void
.end method

.method public resetPositions()V
    .locals 4

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 322
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 323
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;

    invoke-virtual {v3, v0, v1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->genPosition(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateColors()V
    .locals 2

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->colorKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 176
    iget v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->lastColor:I

    if-eq v1, v0, :cond_0

    .line 177
    iput v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->lastColor:I

    .line 178
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->generateBitmaps()V

    :cond_0
    return-void
.end method
