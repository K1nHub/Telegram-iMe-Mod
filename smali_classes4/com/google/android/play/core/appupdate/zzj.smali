.class public final Lcom/google/android/play/core/appupdate/zzj;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/internal/zzcs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/zzcs<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/play/core/appupdate/zzh;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/zzh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzj;->zza:Lcom/google/android/play/core/appupdate/zzh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzj;->zza:Lcom/google/android/play/core/appupdate/zzh;

    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/zzh;->zza()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/internal/zzcr;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final zzb()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzj;->zza:Lcom/google/android/play/core/appupdate/zzh;

    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/zzh;->zza()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/internal/zzcr;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
