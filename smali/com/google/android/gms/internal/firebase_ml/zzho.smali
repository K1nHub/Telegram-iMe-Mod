.class public Lcom/google/android/gms/internal/firebase_ml/zzho;
.super Ljava/util/AbstractMap;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzho$zzb;,
        Lcom/google/android/gms/internal/firebase_ml/zzho$zza;,
        Lcom/google/android/gms/internal/firebase_ml/zzho$zzc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field final zztq:Lcom/google/android/gms/internal/firebase_ml/zzhh;

.field zzzi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/firebase_ml/zzho$zzc;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzho;-><init>(Ljava/util/EnumSet;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/EnumSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/google/android/gms/internal/firebase_ml/zzho$zzc;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzhb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzhb;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzzi:Ljava/util/Map;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzho$zzc;->zzzq:Lcom/google/android/gms/internal/firebase_ml/zzho$zzc;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zza(Ljava/lang/Class;Z)Lcom/google/android/gms/internal/firebase_ml/zzhh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzho;->zztq:Lcom/google/android/gms/internal/firebase_ml/zzhh;

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzea()Lcom/google/android/gms/internal/firebase_ml/zzho;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzho$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzho$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzho;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 9
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzho;->zztq:Lcom/google/android/gms/internal/firebase_ml/zzhh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzal(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzhp;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzhp;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzho;->zztq:Lcom/google/android/gms/internal/firebase_ml/zzhh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzgu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzzi:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzf(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 37
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 39
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzho;->zztq:Lcom/google/android/gms/internal/firebase_ml/zzhh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzal(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzhp;

    move-result-object v0

    if-nez v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzho;->zztq:Lcom/google/android/gms/internal/firebase_ml/zzhh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzgu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzzi:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 42
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzho;->zztq:Lcom/google/android/gms/internal/firebase_ml/zzhh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzal(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzhp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, p0, p2}, Lcom/google/android/gms/internal/firebase_ml/zzhp;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzho;->zztq:Lcom/google/android/gms/internal/firebase_ml/zzhh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzgu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzzi:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public zzea()Lcom/google/android/gms/internal/firebase_ml/zzho;
    .locals 2

    .line 47
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzho;

    .line 48
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzhj;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzzi:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase_ml/zzhj;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzzi:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 52
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzf(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzho;->zztq:Lcom/google/android/gms/internal/firebase_ml/zzhh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzal(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzhp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzhp;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 21
    invoke-virtual {v0, p0, p2}, Lcom/google/android/gms/internal/firebase_ml/zzhp;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzho;->zztq:Lcom/google/android/gms/internal/firebase_ml/zzhh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzgu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzzi:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzgx()Lcom/google/android/gms/internal/firebase_ml/zzhh;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzho;->zztq:Lcom/google/android/gms/internal/firebase_ml/zzhh;

    return-object v0
.end method
