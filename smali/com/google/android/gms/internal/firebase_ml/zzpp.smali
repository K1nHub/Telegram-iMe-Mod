.class public final Lcom/google/android/gms/internal/firebase_ml/zzpp;
.super Ljava/lang/Object;


# instance fields
.field private final type:I

.field private final zzaxo:[I


# direct methods
.method public constructor <init>(I[I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Data dimensions should not be null."

    .line 2
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Data dimensions can not be empty"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 4
    array-length v0, p2

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    aget v4, p2, v3

    if-lez v4, :cond_1

    move v4, v1

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    const-string v5, "Each dimension must be a positive integer"

    .line 5
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7
    :cond_2
    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpp;->type:I

    .line 8
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpp;->zzaxo:[I

    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpp;->type:I

    return v0
.end method

.method public final zzmy()[I
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpp;->zzaxo:[I

    return-object v0
.end method

.method final zzmz()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpp;->type:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const/16 v2, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Not supported data type: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 20
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzpp;->zzaxo:[I

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 21
    aget v2, v2, v0

    mul-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public final zzna()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;
    .locals 5

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpp;->zzaxo:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 26
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;->zzje()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zza;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzpp;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 34
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;->zzael:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    goto :goto_1

    .line 33
    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;->zzaep:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    goto :goto_1

    .line 32
    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;->zzaeo:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    goto :goto_1

    .line 31
    :cond_3
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;->zzaen:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    goto :goto_1

    .line 30
    :cond_4
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;->zzaem:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    .line 35
    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zza;

    move-result-object v1

    .line 36
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zza;->zzi(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zza;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrq()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;

    return-object v0
.end method
