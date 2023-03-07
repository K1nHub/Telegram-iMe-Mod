.class final Lcom/google/android/exoplayer2/effect/MatrixUtils;
.super Ljava/lang/Object;
.source "MatrixUtils.java"


# static fields
.field private static final NDC_CUBE:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [[F

    const/4 v1, 0x4

    new-array v2, v1, [F

    .line 32
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v1, [F

    fill-array-data v1, :array_5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/effect/MatrixUtils;->NDC_CUBE:[[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clipConvexPolygonToNdcRange(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "[F>;)",
            "Lcom/google/common/collect/ImmutableList<",
            "[F>;"
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "A polygon must have at least 3 vertices."

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 107
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 108
    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p0

    .line 109
    sget-object v0, Lcom/google/android/exoplayer2/effect/MatrixUtils;->NDC_CUBE:[[F

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    .line 110
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    .line 111
    new-instance v6, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v6}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v7, 0x0

    .line 113
    :goto_2
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 114
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    .line 116
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    add-int/2addr v9, v7

    sub-int/2addr v9, v2

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    rem-int/2addr v9, v10

    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    .line 117
    invoke-static {v8, v5}, Lcom/google/android/exoplayer2/effect/MatrixUtils;->isInsideClippingHalfSpace([F[F)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 118
    invoke-static {v9, v5}, Lcom/google/android/exoplayer2/effect/MatrixUtils;->isInsideClippingHalfSpace([F[F)Z

    move-result v10

    if-nez v10, :cond_1

    .line 120
    invoke-static {v5, v5, v9, v8}, Lcom/google/android/exoplayer2/effect/MatrixUtils;->computeIntersectionPoint([F[F[F[F)[F

    move-result-object v9

    .line 122
    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v10

    if-nez v10, :cond_1

    .line 123
    invoke-virtual {v6, v9}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 126
    :cond_1
    invoke-virtual {v6, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_3

    .line 127
    :cond_2
    invoke-static {v9, v5}, Lcom/google/android/exoplayer2/effect/MatrixUtils;->isInsideClippingHalfSpace([F[F)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 129
    invoke-static {v5, v5, v9, v8}, Lcom/google/android/exoplayer2/effect/MatrixUtils;->computeIntersectionPoint([F[F[F[F)[F

    move-result-object v8

    .line 130
    invoke-static {v9, v8}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v9

    if-nez v9, :cond_3

    .line 131
    invoke-virtual {v6, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    move-object p0, v6

    goto :goto_1

    .line 137
    :cond_5
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static computeIntersectionPoint([F[F[F[F)[F
    .locals 7

    .line 174
    array-length v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v4, "Expecting 4 plane parameters"

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 178
    aget v0, p0, v3

    aget v4, p2, v3

    sub-float/2addr v0, v4

    aget v4, p1, v3

    mul-float v0, v0, v4

    aget v4, p0, v2

    aget v5, p2, v2

    sub-float/2addr v4, v5

    aget v5, p1, v2

    mul-float v4, v4, v5

    add-float/2addr v0, v4

    const/4 v4, 0x2

    aget p0, p0, v4

    aget v5, p2, v4

    sub-float/2addr p0, v5

    aget v5, p1, v4

    mul-float p0, p0, v5

    add-float/2addr v0, p0

    aget p0, p3, v3

    aget v5, p2, v3

    sub-float/2addr p0, v5

    aget v5, p1, v3

    mul-float p0, p0, v5

    aget v5, p3, v2

    aget v6, p2, v2

    sub-float/2addr v5, v6

    aget v6, p1, v2

    mul-float v5, v5, v6

    add-float/2addr p0, v5

    aget v5, p3, v4

    aget v6, p2, v4

    sub-float/2addr v5, v6

    aget p1, p1, v4

    mul-float v5, v5, p1

    add-float/2addr p0, v5

    div-float/2addr v0, p0

    .line 185
    aget p0, p2, v3

    aget p1, p3, v3

    aget v5, p2, v3

    sub-float/2addr p1, v5

    mul-float p1, p1, v0

    add-float/2addr p0, p1

    .line 186
    aget p1, p2, v2

    aget v5, p3, v2

    aget v6, p2, v2

    sub-float/2addr v5, v6

    mul-float v5, v5, v0

    add-float/2addr p1, v5

    .line 187
    aget v5, p2, v4

    aget p3, p3, v4

    aget p2, p2, v4

    sub-float/2addr p3, p2

    mul-float p3, p3, v0

    add-float/2addr v5, p3

    new-array p2, v1, [F

    aput p0, p2, v3

    aput p1, p2, v2

    aput v5, p2, v4

    const/4 p0, 0x3

    const/high16 p1, 0x3f800000    # 1.0f

    aput p1, p2, p0

    return-object p2
.end method

.method public static configureAndGetOutputSize(IILcom/google/common/collect/ImmutableList;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "inputWidth must be positive"

    .line 229
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v2, "inputHeight must be positive"

    .line 230
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 232
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    .line 233
    :goto_2
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    .line 234
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;->configure(II)Landroid/util/Pair;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object p0
.end method

.method public static getGlMatrixArray(Landroid/graphics/Matrix;)[F
    .locals 2

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 50
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 51
    invoke-static {v0}, Lcom/google/android/exoplayer2/effect/MatrixUtils;->getMatrix4x4Array([F)[F

    move-result-object p0

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 55
    invoke-static {v0, v1, p0, v1}, Landroid/opengl/Matrix;->transposeM([FI[FI)V

    return-object v0
.end method

.method private static getMatrix4x4Array([F)[F
    .locals 7

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/16 v1, 0xa

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    const/4 v6, 0x3

    goto :goto_2

    :cond_0
    move v6, v2

    :goto_2
    if-ne v4, v5, :cond_1

    const/4 v5, 0x3

    goto :goto_3

    :cond_1
    move v5, v4

    :goto_3
    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v5

    mul-int/lit8 v5, v2, 0x3

    add-int/2addr v5, v4

    .line 78
    aget v5, p0, v5

    aput v5, v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static isInsideClippingHalfSpace([F[F)Z
    .locals 5

    .line 151
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Expecting 4 plane parameters"

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 153
    aget v0, p1, v2

    aget v3, p0, v2

    mul-float v0, v0, v3

    aget v3, p1, v1

    aget v4, p0, v1

    mul-float v3, v3, v4

    add-float/2addr v0, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    aget p0, p0, v3

    mul-float v4, v4, p0

    add-float/2addr v0, v4

    const/4 p0, 0x3

    aget p0, p1, p0

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static transformPoints([FLcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Lcom/google/common/collect/ImmutableList<",
            "[F>;)",
            "Lcom/google/common/collect/ImmutableList<",
            "[F>;"
        }
    .end annotation

    .line 200
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 201
    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v3, 0x4

    new-array v3, v3, [F

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 208
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, [F

    const/4 v9, 0x0

    move-object v4, v3

    move-object v6, p0

    .line 203
    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 212
    aget v4, v3, v1

    const/4 v5, 0x3

    aget v6, v3, v5

    div-float/2addr v4, v6

    aput v4, v3, v1

    const/4 v4, 0x1

    .line 213
    aget v6, v3, v4

    aget v7, v3, v5

    div-float/2addr v6, v7

    aput v6, v3, v4

    const/4 v4, 0x2

    .line 214
    aget v6, v3, v4

    aget v7, v3, v5

    div-float/2addr v6, v7

    aput v6, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v5

    .line 216
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method
