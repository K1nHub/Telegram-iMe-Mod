.class abstract Lcom/google/android/gms/internal/safetynet/zzt;
.super Lcom/google/android/gms/internal/safetynet/zze;
.source "com.google.android.gms:play-services-safetynet@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/safetynet/zze<",
        "Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResult;",
        ">;"
    }
.end annotation


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/safetynet/zzg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/safetynet/zze;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance p1, Lcom/google/android/gms/internal/safetynet/zzs;

    .line 2
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/safetynet/zzs;-><init>(Lcom/google/android/gms/internal/safetynet/zzt;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/safetynet/zzt;->zza:Lcom/google/android/gms/internal/safetynet/zzg;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/safetynet/zzad;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/safetynet/zzad;-><init>(Lcom/google/android/gms/common/api/Status;Z)V

    return-object v0
.end method
