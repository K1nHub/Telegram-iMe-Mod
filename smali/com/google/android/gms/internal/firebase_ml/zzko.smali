.class public final Lcom/google/android/gms/internal/firebase_ml/zzko;
.super Ljava/lang/Object;


# instance fields
.field private final className:Ljava/lang/String;

.field private final zzaax:Lcom/google/android/gms/internal/firebase_ml/zzkn;

.field private zzaay:Lcom/google/android/gms/internal/firebase_ml/zzkn;

.field private zzaaz:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzkn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzkn;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzkl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzaax:Lcom/google/android/gms/internal/firebase_ml/zzkn;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzaay:Lcom/google/android/gms/internal/firebase_ml/zzkn;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzaaz:Z

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzko;->className:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzkl;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzko;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private final zzi(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzko;
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzkn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzkn;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzkl;)V

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzaay:Lcom/google/android/gms/internal/firebase_ml/zzkn;

    iput-object v0, v1, Lcom/google/android/gms/internal/firebase_ml/zzkn;->zzaaw:Lcom/google/android/gms/internal/firebase_ml/zzkn;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzaay:Lcom/google/android/gms/internal/firebase_ml/zzkn;

    .line 33
    iput-object p2, v0, Lcom/google/android/gms/internal/firebase_ml/zzkn;->value:Ljava/lang/Object;

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase_ml/zzkn;->name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzko;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzaax:Lcom/google/android/gms/internal/firebase_ml/zzkn;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase_ml/zzkn;->zzaaw:Lcom/google/android/gms/internal/firebase_ml/zzkn;

    const-string v2, ""

    :goto_0
    if-eqz v1, :cond_2

    .line 15
    iget-object v3, v1, Lcom/google/android/gms/internal/firebase_ml/zzkn;->value:Ljava/lang/Object;

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase_ml/zzkn;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v3, :cond_1

    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 22
    invoke-static {v4}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    :goto_1
    iget-object v1, v1, Lcom/google/android/gms/internal/firebase_ml/zzkn;->zzaaw:Lcom/google/android/gms/internal/firebase_ml/zzkn;

    const-string v2, ", "

    goto :goto_0

    :cond_2
    const/16 v1, 0x7d

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;F)Lcom/google/android/gms/internal/firebase_ml/zzko;
    .locals 0

    .line 9
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzi(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/firebase_ml/zzko;
    .locals 0

    .line 8
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzi(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/lang/String;I)Lcom/google/android/gms/internal/firebase_ml/zzko;
    .locals 0

    .line 10
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzi(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzko;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzi(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object p1

    return-object p1
.end method
