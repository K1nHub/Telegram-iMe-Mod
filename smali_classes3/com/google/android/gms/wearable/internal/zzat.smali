.class final Lcom/google/android/gms/wearable/internal/zzat;
.super Lcom/google/android/gms/wearable/internal/zzu;
.source "com.google.android.gms:play-services-wearable@@18.0.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private zzb:Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/zzu;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzat;->zzb:Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzat;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzat;->zzb:Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;

    return-object p1
.end method

.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/wearable/internal/zzim;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzat;->zzb:Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzat;->zza:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzim;->zzy(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzat;->zzb:Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;

    return-void
.end method
