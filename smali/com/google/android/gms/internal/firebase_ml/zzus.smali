.class final Lcom/google/android/gms/internal/firebase_ml/zzus;
.super Lcom/google/android/gms/internal/firebase_ml/zzth;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwq;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzth<",
        "Ljava/lang/Float;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzvf<",
        "Ljava/lang/Float;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwq;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zzbsg:Lcom/google/android/gms/internal/firebase_ml/zzus;


# instance fields
.field private size:I

.field private zzbsh:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 113
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzus;

    const/4 v1, 0x0

    new-array v2, v1, [F

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzus;-><init>([FI)V

    .line 114
    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzbsg:Lcom/google/android/gms/internal/firebase_ml/zzus;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzth;->zzqa()V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzus;-><init>([FI)V

    return-void
.end method

.method private constructor <init>([FI)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzth;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzbsh:[F

    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    return-void
.end method

.method private final zzc(IF)V
    .locals 4

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzth;->zzqb()V

    if-ltz p1, :cond_1

    .line 37
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    if-gt p1, v0, :cond_1

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzbsh:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 40
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 41
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 42
    new-array v0, v0, [F

    const/4 v2, 0x0

    .line 43
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzbsh:[F

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzbsh:[F

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzbsh:[F

    aput p2, v0, p1

    .line 47
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    .line 48
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    .line 38
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzck(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final zzcj(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 76
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    if-ge p1, v0, :cond_0

    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzck(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzck(I)Ljava/lang/String;
    .locals 3

    .line 79
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static zzrc()Lcom/google/android/gms/internal/firebase_ml/zzus;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzbsg:Lcom/google/android/gms/internal/firebase_ml/zzus;

    return-object v0
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 99
    check-cast p2, Ljava/lang/Float;

    .line 100
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzc(IF)V

    return-void
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzth;->zzqb()V

    .line 51
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzuw;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase_ml/zzus;

    if-nez v0, :cond_0

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzth;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 54
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzus;

    .line 55
    iget v0, p1, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v2, 0x7fffffff

    .line 57
    iget v3, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3

    add-int/2addr v3, v0

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzbsh:[F

    array-length v2, v0

    if-le v3, v2, :cond_2

    .line 62
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzbsh:[F

    .line 63
    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzbsh:[F

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzbsh:[F

    iget v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    iget p1, p1, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput v3, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    .line 65
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0

    .line 59
    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 17
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/firebase_ml/zzus;

    if-nez v1, :cond_1

    .line 18
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzth;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 19
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzus;

    .line 20
    iget v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    iget v2, p1, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 22
    :cond_2
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzbsh:[F

    move v1, v3

    .line 23
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    if-ge v1, v2, :cond_4

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzbsh:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v2, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 109
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzcj(I)V

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzbsh:[F

    aget p1, v0, p1

    .line 111
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 30
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzbsh:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 4

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzth;->zzqb()V

    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzcj(I)V

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzbsh:[F

    aget v1, v0, p1

    .line 93
    iget v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    .line 94
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    .line 96
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 97
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzth;->zzqb()V

    const/4 v0, 0x0

    move v1, v0

    .line 68
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    if-ge v1, v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzbsh:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzbsh:[F

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    .line 72
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final removeRange(II)V
    .locals 2

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzth;->zzqb()V

    if-lt p2, p1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzbsh:[F

    iget v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    .line 13
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 80
    check-cast p2, Ljava/lang/Float;

    .line 81
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzth;->zzqb()V

    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzcj(I)V

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzbsh:[F

    aget v1, v0, p1

    .line 85
    aput p2, v0, p1

    .line 87
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    return v0
.end method

.method public final synthetic zzcl(I)Lcom/google/android/gms/internal/firebase_ml/zzvf;
    .locals 2

    .line 103
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    if-lt p1, v0, :cond_0

    .line 105
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzus;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzbsh:[F

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/firebase_ml/zzus;-><init>([FI)V

    return-object v0

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zzu(F)V
    .locals 1

    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzus;->size:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzus;->zzc(IF)V

    return-void
.end method
