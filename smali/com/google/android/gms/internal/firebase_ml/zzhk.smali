.class final Lcom/google/android/gms/internal/firebase_ml/zzhk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;
.implements Lj$/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;",
        "Lj$/util/Iterator;"
    }
.end annotation


# instance fields
.field private zzyw:I

.field private zzyx:Lcom/google/android/gms/internal/firebase_ml/zzhp;

.field private zzyy:Ljava/lang/Object;

.field private zzyz:Z

.field private zzza:Z

.field private zzzb:Lcom/google/android/gms/internal/firebase_ml/zzhp;

.field private final synthetic zzzc:Lcom/google/android/gms/internal/firebase_ml/zzhi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzhi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzzc:Lcom/google/android/gms/internal/firebase_ml/zzhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzyw:I

    return-void
.end method


# virtual methods
.method public synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Iterator$-CC;->$default$forEachRemaining(Ljava/util/Iterator;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final hasNext()Z
    .locals 4

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzza:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzza:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzyy:Ljava/lang/Object;

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzyy:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzyw:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzyw:I

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzzc:Lcom/google/android/gms/internal/firebase_ml/zzhi;

    iget-object v2, v2, Lcom/google/android/gms/internal/firebase_ml/zzhi;->zztq:Lcom/google/android/gms/internal/firebase_ml/zzhh;

    iget-object v2, v2, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzyi:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzzc:Lcom/google/android/gms/internal/firebase_ml/zzhi;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase_ml/zzhi;->zztq:Lcom/google/android/gms/internal/firebase_ml/zzhh;

    iget-object v2, v0, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzyi:Ljava/util/List;

    iget v3, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzyw:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzal(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzhp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzyx:Lcom/google/android/gms/internal/firebase_ml/zzhp;

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzzc:Lcom/google/android/gms/internal/firebase_ml/zzhi;

    iget-object v2, v2, Lcom/google/android/gms/internal/firebase_ml/zzhi;->object:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase_ml/zzhp;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzyy:Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzyy:Ljava/lang/Object;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 4

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzhk;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzyx:Lcom/google/android/gms/internal/firebase_ml/zzhp;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzzb:Lcom/google/android/gms/internal/firebase_ml/zzhp;

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzyy:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 20
    iput-boolean v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzza:Z

    .line 21
    iput-boolean v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzyz:Z

    const/4 v2, 0x0

    .line 22
    iput-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzyx:Lcom/google/android/gms/internal/firebase_ml/zzhp;

    .line 23
    iput-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzyy:Ljava/lang/Object;

    .line 24
    new-instance v2, Lcom/google/android/gms/internal/firebase_ml/zzhl;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzzc:Lcom/google/android/gms/internal/firebase_ml/zzhi;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzhl;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzhi;Lcom/google/android/gms/internal/firebase_ml/zzhp;Ljava/lang/Object;)V

    return-object v2

    .line 17
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzzb:Lcom/google/android/gms/internal/firebase_ml/zzhp;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzyz:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkState(Z)V

    .line 12
    iput-boolean v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzyz:Z

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzzb:Lcom/google/android/gms/internal/firebase_ml/zzhp;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzhk;->zzzc:Lcom/google/android/gms/internal/firebase_ml/zzhi;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase_ml/zzhi;->object:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzhp;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
