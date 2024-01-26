.class final Lcom/google/android/gms/wearable/internal/zzbn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/wearable/internal/zzb;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:[Landroid/content/IntentFilter;


# direct methods
.method constructor <init>(Ljava/lang/String;[Landroid/content/IntentFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzb:[Landroid/content/IntentFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/wearable/internal/zzim;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/Object;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    move-object v2, p3

    check-cast v2, Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;

    iget-object v4, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzb:[Landroid/content/IntentFilter;

    move-object v0, p1

    move-object v1, p2

    move-object v3, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/wearable/internal/zzim;->zzq(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;Lcom/google/android/gms/common/api/internal/ListenerHolder;Ljava/lang/String;[Landroid/content/IntentFilter;)V

    return-void
.end method
