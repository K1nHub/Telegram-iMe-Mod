.class final Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-subject-segmentation@@16.0.0-beta1"

# interfaces
.implements Ljava/util/Iterator;
.implements Lj$/util/Iterator;


# instance fields
.field final zza:Ljava/util/Iterator;

.field zzb:Ljava/util/Collection;

.field final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzo;->zza:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzn;->zza:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Iterator$-CC;->$default$forEachRemaining(Ljava/util/Iterator;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzn;->zza:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzn;->zza:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzn;->zzb:Ljava/util/Collection;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzo;

    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzo;->zzb:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzw;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzw;->zzb(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzar;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzar;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzn;->zzb:Ljava/util/Collection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzi;->zzd(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzn;->zza:Ljava/util/Iterator;

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzo;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzo;->zzb:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzw;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzw;->zzd(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzw;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzn;->zzb:Ljava/util/Collection;

    .line 3
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzw;->zzj(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzw;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzn;->zzb:Ljava/util/Collection;

    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzn;->zzb:Ljava/util/Collection;

    return-void
.end method
