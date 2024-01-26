.class abstract Lcom/google/android/gms/internal/firebase_ml/zzkb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;
.implements Lj$/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lj$/util/Iterator;"
    }
.end annotation


# instance fields
.field private zzaal:I

.field private zzaam:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/google/android/gms/internal/firebase_ml/zzkd;->zzaap:I

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzkb;->zzaal:I

    return-void
.end method


# virtual methods
.method public synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Iterator$-CC;->$default$forEachRemaining(Ljava/util/Iterator;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final hasNext()Z
    .locals 5

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzkb;->zzaal:I

    sget v1, Lcom/google/android/gms/internal/firebase_ml/zzkd;->zzaar:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkState(Z)V

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzke;->zzaat:[I

    iget v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzkb;->zzaal:I

    sub-int/2addr v4, v3

    aget v0, v0, v4

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    .line 11
    iput v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzkb;->zzaal:I

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzkb;->zzhv()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzkb;->zzaam:Ljava/lang/Object;

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzkb;->zzaal:I

    sget v1, Lcom/google/android/gms/internal/firebase_ml/zzkd;->zzaaq:I

    if-eq v0, v1, :cond_1

    .line 14
    sget v0, Lcom/google/android/gms/internal/firebase_ml/zzkd;->zzaao:I

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzkb;->zzaal:I

    return v3

    :cond_1
    return v2

    :cond_2
    return v3
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzkb;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget v0, Lcom/google/android/gms/internal/firebase_ml/zzkd;->zzaap:I

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzkb;->zzaal:I

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzkb;->zzaam:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzkb;->zzaam:Ljava/lang/Object;

    return-object v0

    .line 19
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract zzhv()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final zzhw()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 4
    sget v0, Lcom/google/android/gms/internal/firebase_ml/zzkd;->zzaaq:I

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzkb;->zzaal:I

    const/4 v0, 0x0

    return-object v0
.end method
