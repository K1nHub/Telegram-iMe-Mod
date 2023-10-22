.class public final Lcom/google/android/play/core/appupdate/zzaa;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field private final zzb:Lcom/google/android/play/core/internal/zzcs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/play/core/internal/zzcs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/appupdate/zzs;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Lcom/google/android/play/core/internal/zzcs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/appupdate/zzq;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Lcom/google/android/play/core/internal/zzcs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/appupdate/zzb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzf:Lcom/google/android/play/core/internal/zzcs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/appupdate/zzf;",
            ">;"
        }
    .end annotation
.end field

.field private final zzg:Lcom/google/android/play/core/internal/zzcs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/appupdate/AppUpdateManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/play/core/appupdate/zzh;Lcom/google/android/play/core/appupdate/zzz;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/play/core/appupdate/zzj;

    invoke-direct {p2, p1}, Lcom/google/android/play/core/appupdate/zzj;-><init>(Lcom/google/android/play/core/appupdate/zzh;)V

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzb:Lcom/google/android/play/core/internal/zzcs;

    new-instance p1, Lcom/google/android/play/core/appupdate/zzt;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/play/core/appupdate/zzt;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/play/core/internal/zzcq;->zzc(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzcs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzc:Lcom/google/android/play/core/internal/zzcs;

    new-instance v0, Lcom/google/android/play/core/appupdate/zzr;

    .line 4
    invoke-direct {v0, p2, p1}, Lcom/google/android/play/core/appupdate/zzr;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V

    .line 5
    invoke-static {v0}, Lcom/google/android/play/core/internal/zzcq;->zzc(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzcs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzd:Lcom/google/android/play/core/internal/zzcs;

    new-instance v0, Lcom/google/android/play/core/appupdate/zzc;

    .line 6
    invoke-direct {v0, p2}, Lcom/google/android/play/core/appupdate/zzc;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    .line 7
    invoke-static {v0}, Lcom/google/android/play/core/internal/zzcq;->zzc(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzcs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/zzaa;->zze:Lcom/google/android/play/core/internal/zzcs;

    new-instance v1, Lcom/google/android/play/core/appupdate/zzg;

    .line 8
    invoke-direct {v1, p1, v0, p2}, Lcom/google/android/play/core/appupdate/zzg;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V

    .line 9
    invoke-static {v1}, Lcom/google/android/play/core/internal/zzcq;->zzc(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzcs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzf:Lcom/google/android/play/core/internal/zzcs;

    new-instance p2, Lcom/google/android/play/core/appupdate/zzi;

    .line 10
    invoke-direct {p2, p1}, Lcom/google/android/play/core/appupdate/zzi;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    .line 11
    invoke-static {p2}, Lcom/google/android/play/core/internal/zzcq;->zzc(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzcs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzg:Lcom/google/android/play/core/internal/zzcs;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/play/core/appupdate/AppUpdateManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzg:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/appupdate/AppUpdateManager;

    return-object v0
.end method
