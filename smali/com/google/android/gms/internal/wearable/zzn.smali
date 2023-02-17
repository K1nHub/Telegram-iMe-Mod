.class public final Lcom/google/android/gms/internal/wearable/zzn;
.super Lcom/google/android/gms/internal/wearable/zzbs;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/wearable/zzdd;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzx;->zzb()Lcom/google/android/gms/internal/wearable/zzx;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/wearable/zzbs;-><init>(Lcom/google/android/gms/internal/wearable/zzbv;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/wearable/zzm;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzx;->zzb()Lcom/google/android/gms/internal/wearable/zzx;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/wearable/zzbs;-><init>(Lcom/google/android/gms/internal/wearable/zzbv;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/wearable/zzn;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzx()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zza:Lcom/google/android/gms/internal/wearable/zzbv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/wearable/zzx;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wearable/zzx;->zzf(Lcom/google/android/gms/internal/wearable/zzx;Ljava/lang/Iterable;)V

    return-object p0
.end method
