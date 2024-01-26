.class final Lcom/google/android/gms/wearable/internal/zzgj;
.super Lcom/google/android/gms/wearable/internal/zza;
.source "com.google.android.gms:play-services-wearable@@18.0.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzgl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzgj;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzy(Lcom/google/android/gms/wearable/internal/zzer;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/google/android/gms/wearable/internal/zzer;->zza:I

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzhf;->zza(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/wearable/internal/zzer;->zzb:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzgj;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
