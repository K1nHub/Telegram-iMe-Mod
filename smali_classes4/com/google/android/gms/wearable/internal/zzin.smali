.class final Lcom/google/android/gms/wearable/internal/zzin;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/wearable/internal/zzao;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzao;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzin;->zza:Lcom/google/android/gms/wearable/internal/zzao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic notifyListener(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzin;->zza:Lcom/google/android/gms/wearable/internal/zzao;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;->onCapabilityChanged(Lcom/google/android/gms/wearable/CapabilityInfo;)V

    return-void
.end method

.method public final onNotifyListenerFailed()V
    .locals 0

    return-void
.end method
