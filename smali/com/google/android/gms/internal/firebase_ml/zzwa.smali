.class final Lcom/google/android/gms/internal/firebase_ml/zzwa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwb;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 19
    check-cast p2, Lcom/google/android/gms/internal/firebase_ml/zzvy;

    .line 20
    check-cast p3, Lcom/google/android/gms/internal/firebase_ml/zzvw;

    .line 21
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 24
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase_ml/zzvy;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, p1, v2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzvw;->zzc(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 10
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzvy;

    .line 11
    check-cast p2, Lcom/google/android/gms/internal/firebase_ml/zzvy;

    .line 12
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzvy;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzvy;->zzsj()Lcom/google/android/gms/internal/firebase_ml/zzvy;

    move-result-object p1

    .line 15
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzvy;->zza(Lcom/google/android/gms/internal/firebase_ml/zzvy;)V

    :cond_1
    return-object p1
.end method

.method public final zzu(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzvy;

    return-object p1
.end method

.method public final zzv(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzvz;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/firebase_ml/zzvz<",
            "**>;"
        }
    .end annotation

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzvw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzvw;->zzsh()Lcom/google/android/gms/internal/firebase_ml/zzvz;

    move-result-object p1

    return-object p1
.end method

.method public final zzw(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzvy;

    return-object p1
.end method

.method public final zzx(Ljava/lang/Object;)Z
    .locals 0

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzvy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzvy;->isMutable()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 6
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzvy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzvy;->zzqa()V

    return-object p1
.end method

.method public final zzz(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzvy;->zzsi()Lcom/google/android/gms/internal/firebase_ml/zzvy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzvy;->zzsj()Lcom/google/android/gms/internal/firebase_ml/zzvy;

    move-result-object p1

    return-object p1
.end method
