.class final Lcom/google/android/gms/wearable/internal/zzip;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/wearable/internal/zzfx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzfx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzip;->zza:Lcom/google/android/gms/wearable/internal/zzfx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic notifyListener(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzip;->zza:Lcom/google/android/gms/wearable/internal/zzfx;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/wearable/MessageApi$MessageListener;->onMessageReceived(Lcom/google/android/gms/wearable/MessageEvent;)V

    return-void
.end method

.method public final onNotifyListenerFailed()V
    .locals 0

    return-void
.end method
