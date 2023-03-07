.class final Lcom/google/android/gms/wearable/zzy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/wearable/internal/zzbf;

.field final synthetic zzb:Lcom/google/android/gms/wearable/zzaa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/zzaa;Lcom/google/android/gms/wearable/internal/zzbf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/zzy;->zzb:Lcom/google/android/gms/wearable/zzaa;

    iput-object p2, p0, Lcom/google/android/gms/wearable/zzy;->zza:Lcom/google/android/gms/wearable/internal/zzbf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/zzy;->zza:Lcom/google/android/gms/wearable/internal/zzbf;

    iget-object v1, p0, Lcom/google/android/gms/wearable/zzy;->zzb:Lcom/google/android/gms/wearable/zzaa;

    iget-object v1, v1, Lcom/google/android/gms/wearable/zzaa;->zza:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/internal/zzbf;->zza(Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/zzy;->zza:Lcom/google/android/gms/wearable/internal/zzbf;

    iget-object v1, p0, Lcom/google/android/gms/wearable/zzy;->zzb:Lcom/google/android/gms/wearable/zzaa;

    iget-object v1, v1, Lcom/google/android/gms/wearable/zzaa;->zza:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {v1}, Lcom/google/android/gms/wearable/WearableListenerService;->zzd(Lcom/google/android/gms/wearable/WearableListenerService;)Lcom/google/android/gms/wearable/internal/zzbc;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/internal/zzbf;->zza(Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;)V

    return-void
.end method
