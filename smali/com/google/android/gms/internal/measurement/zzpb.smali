.class public final Lcom/google/android/gms/internal/measurement/zzpb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzpa;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/measurement/zzhu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhu<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzb:Lcom/google/android/gms/internal/measurement/zzhu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhu<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzc:Lcom/google/android/gms/internal/measurement/zzhu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhu<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzd:Lcom/google/android/gms/internal/measurement/zzhu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhu<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zze:Lcom/google/android/gms/internal/measurement/zzhu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhu<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhr;

    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhr;-><init>(Landroid/net/Uri;)V

    const-string v1, "measurement.id.lifecycle.app_in_background_parameter"

    const-wide/16 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzhu;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpb;->zza:Lcom/google/android/gms/internal/measurement/zzhu;

    const-string v1, "measurement.lifecycle.app_backgrounded_engagement"

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/zzhr;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhu;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpb;->zzb:Lcom/google/android/gms/internal/measurement/zzhu;

    const-string v1, "measurement.lifecycle.app_backgrounded_tracking"

    const/4 v5, 0x1

    .line 4
    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/internal/measurement/zzhr;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhu;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpb;->zzc:Lcom/google/android/gms/internal/measurement/zzhu;

    const-string v1, "measurement.lifecycle.app_in_background_parameter"

    .line 5
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/zzhr;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhu;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpb;->zzd:Lcom/google/android/gms/internal/measurement/zzhu;

    const-string v1, "measurement.id.lifecycle.app_backgrounded_tracking"

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzhu;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzpb;->zze:Lcom/google/android/gms/internal/measurement/zzhu;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpb;->zzb:Lcom/google/android/gms/internal/measurement/zzhu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhu;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzb()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpb;->zzd:Lcom/google/android/gms/internal/measurement/zzhu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhu;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
