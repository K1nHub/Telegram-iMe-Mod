.class public final synthetic Lcom/google/android/gms/wearable/internal/zzge;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/wearable/internal/zzgl;

.field public final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/wearable/internal/zzgl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzge;->zza:Lcom/google/android/gms/wearable/internal/zzgl;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzge;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzge;->zza:Lcom/google/android/gms/wearable/internal/zzgl;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzge;->zzb:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzim;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    new-instance v2, Lcom/google/android/gms/wearable/internal/zzgi;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/wearable/internal/zzgi;-><init>(Lcom/google/android/gms/wearable/internal/zzgl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    .line 2
    check-cast p1, Lcom/google/android/gms/wearable/internal/zzfb;

    new-instance p2, Lcom/google/android/gms/wearable/internal/zzhv;

    invoke-direct {p2, v2}, Lcom/google/android/gms/wearable/internal/zzhv;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 3
    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/wearable/internal/zzfb;->zzm(Lcom/google/android/gms/wearable/internal/zzex;Ljava/lang/String;)V

    return-void
.end method
