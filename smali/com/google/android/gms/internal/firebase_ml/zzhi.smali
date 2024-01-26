.class final Lcom/google/android/gms/internal/firebase_ml/zzhi;
.super Ljava/util/AbstractMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final object:Ljava/lang/Object;

.field final zztq:Lcom/google/android/gms/internal/firebase_ml/zzhh;


# direct methods
.method constructor <init>(Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzhi;->object:Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zza(Ljava/lang/Class;Z)Lcom/google/android/gms/internal/firebase_ml/zzhh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzhi;->zztq:Lcom/google/android/gms/internal/firebase_ml/zzhh;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzhh;->isEnum()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkArgument(Z)V

    return-void
.end method


# virtual methods
.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzhi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzhn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzhn;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzhi;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 8
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhi;->zztq:Lcom/google/android/gms/internal/firebase_ml/zzhh;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzal(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzhp;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhi;->object:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzhp;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhi;->zztq:Lcom/google/android/gms/internal/firebase_ml/zzhh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzal(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzhp;

    move-result-object v0

    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "no field of key "

    if-eqz v1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 20
    :goto_0
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzhi;->object:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzhp;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzhi;->object:Ljava/lang/Object;

    .line 23
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 24
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzhp;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
