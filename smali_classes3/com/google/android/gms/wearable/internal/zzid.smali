.class final Lcom/google/android/gms/wearable/internal/zzid;
.super Lcom/google/android/gms/wearable/internal/zzhn;
.source "com.google.android.gms:play-services-wearable@@18.0.0"


# instance fields
.field private final zza:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/zzhn;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzid;->zza:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zzC(Lcom/google/android/gms/wearable/internal/zzgu;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcq;

    iget v1, p1, Lcom/google/android/gms/wearable/internal/zzgu;->zza:I

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzhf;->zza(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/wearable/internal/zzgu;->zzb:Lcom/google/android/gms/wearable/internal/zzdi;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wearable/internal/zzcq;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/DataItem;)V

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzhn;->zzI(Ljava/lang/Object;)V

    .line 3
    iget p1, p1, Lcom/google/android/gms/wearable/internal/zzgu;->zza:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/wearable/internal/zzid;->zza:Ljava/util/List;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method
