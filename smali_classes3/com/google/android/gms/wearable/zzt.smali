.class final Lcom/google/android/gms/wearable/zzt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/wearable/internal/zzgm;

.field final synthetic zzb:Lcom/google/android/gms/wearable/zzaa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/zzaa;Lcom/google/android/gms/wearable/internal/zzgm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/zzt;->zzb:Lcom/google/android/gms/wearable/zzaa;

    iput-object p2, p0, Lcom/google/android/gms/wearable/zzt;->zza:Lcom/google/android/gms/wearable/internal/zzgm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/zzt;->zzb:Lcom/google/android/gms/wearable/zzaa;

    iget-object v0, v0, Lcom/google/android/gms/wearable/zzaa;->zza:Lcom/google/android/gms/wearable/WearableListenerService;

    iget-object v1, p0, Lcom/google/android/gms/wearable/zzt;->zza:Lcom/google/android/gms/wearable/internal/zzgm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/WearableListenerService;->onPeerDisconnected(Lcom/google/android/gms/wearable/Node;)V

    return-void
.end method
