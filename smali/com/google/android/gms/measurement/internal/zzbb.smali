.class public final synthetic Lcom/google/android/gms/measurement/internal/zzbb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.2"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzdu;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/measurement/internal/zzbb;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzbb;->zza:Lcom/google/android/gms/measurement/internal/zzbb;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzdy;->zza:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznm;->zzj()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
