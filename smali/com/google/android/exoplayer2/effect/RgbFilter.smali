.class public Lcom/google/android/exoplayer2/effect/RgbFilter;
.super Ljava/lang/Object;
.source "RgbFilter.java"

# interfaces
.implements Lcom/google/android/exoplayer2/effect/RgbMatrix;


# static fields
.field private static final COLOR_FILTER_GRAYSCALE_INDEX:I = 0x1

.field private static final COLOR_FILTER_INVERTED_INDEX:I = 0x2

.field private static final FILTER_MATRIX_GRAYSCALE_HDR:[F

.field private static final FILTER_MATRIX_GRAYSCALE_SDR:[F

.field private static final FILTER_MATRIX_INVERTED:[F


# instance fields
.field private final colorFilter:I

.field private useHdr:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 32
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/effect/RgbFilter;->FILTER_MATRIX_GRAYSCALE_SDR:[F

    new-array v1, v0, [F

    .line 39
    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/exoplayer2/effect/RgbFilter;->FILTER_MATRIX_GRAYSCALE_HDR:[F

    new-array v0, v0, [F

    .line 44
    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/effect/RgbFilter;->FILTER_MATRIX_INVERTED:[F

    return-void

    :array_0
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x0
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x0
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3e86809d    # 0.2627f
        0x3e86809d    # 0.2627f
        0x3e86809d    # 0.2627f
        0x0
        0x3f2d9168    # 0.678f
        0x3f2d9168    # 0.678f
        0x3f2d9168    # 0.678f
        0x0
        0x3d72e48f    # 0.0593f
        0x3d72e48f    # 0.0593f
        0x3d72e48f    # 0.0593f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/google/android/exoplayer2/effect/RgbFilter;->colorFilter:I

    return-void
.end method

.method private checkForConsistentHdrSetting(Z)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/RgbFilter;->useHdr:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 71
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/RgbFilter;->useHdr:Ljava/lang/Boolean;

    goto :goto_1

    .line 73
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v0, "Changing HDR setting is not supported."

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public static createGrayscaleFilter()Lcom/google/android/exoplayer2/effect/RgbFilter;
    .locals 2

    .line 57
    new-instance v0, Lcom/google/android/exoplayer2/effect/RgbFilter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/effect/RgbFilter;-><init>(I)V

    return-object v0
.end method

.method public static createInvertedFilter()Lcom/google/android/exoplayer2/effect/RgbFilter;
    .locals 2

    .line 62
    new-instance v0, Lcom/google/android/exoplayer2/effect/RgbFilter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/effect/RgbFilter;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getMatrix(JZ)[F
    .locals 0

    .line 79
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/effect/RgbFilter;->checkForConsistentHdrSetting(Z)V

    .line 80
    iget p1, p0, Lcom/google/android/exoplayer2/effect/RgbFilter;->colorFilter:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 84
    sget-object p1, Lcom/google/android/exoplayer2/effect/RgbFilter;->FILTER_MATRIX_INVERTED:[F

    return-object p1

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid color filter "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/google/android/exoplayer2/effect/RgbFilter;->colorFilter:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz p3, :cond_2

    .line 82
    sget-object p1, Lcom/google/android/exoplayer2/effect/RgbFilter;->FILTER_MATRIX_GRAYSCALE_HDR:[F

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/google/android/exoplayer2/effect/RgbFilter;->FILTER_MATRIX_GRAYSCALE_SDR:[F

    :goto_0
    return-object p1
.end method

.method public bridge synthetic toGlTextureProcessor(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/GlTextureProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/effect/RgbFilter;->toGlTextureProcessor(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;

    move-result-object p1

    return-object p1
.end method

.method public toGlTextureProcessor(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/effect/RgbFilter;->checkForConsistentHdrSetting(Z)V

    .line 95
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/effect/RgbMatrix$-CC;->$default$toGlTextureProcessor(Lcom/google/android/exoplayer2/effect/RgbMatrix;Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;

    move-result-object p1

    return-object p1
.end method
