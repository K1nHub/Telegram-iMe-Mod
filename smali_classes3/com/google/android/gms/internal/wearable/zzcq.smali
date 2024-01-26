.class abstract Lcom/google/android/gms/internal/wearable/zzcq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wearable@@18.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/wearable/zzcq;

.field private static final zzb:Lcom/google/android/gms/internal/wearable/zzcq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/wearable/zzcm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/wearable/zzcm;-><init>(Lcom/google/android/gms/internal/wearable/zzcl;)V

    sput-object v0, Lcom/google/android/gms/internal/wearable/zzcq;->zza:Lcom/google/android/gms/internal/wearable/zzcq;

    new-instance v0, Lcom/google/android/gms/internal/wearable/zzco;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/wearable/zzco;-><init>(Lcom/google/android/gms/internal/wearable/zzcn;)V

    sput-object v0, Lcom/google/android/gms/internal/wearable/zzcq;->zzb:Lcom/google/android/gms/internal/wearable/zzcq;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/wearable/zzcp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzc()Lcom/google/android/gms/internal/wearable/zzcq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/wearable/zzcq;->zza:Lcom/google/android/gms/internal/wearable/zzcq;

    return-object v0
.end method

.method static zzd()Lcom/google/android/gms/internal/wearable/zzcq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/wearable/zzcq;->zzb:Lcom/google/android/gms/internal/wearable/zzcq;

    return-object v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;J)V
.end method

.method abstract zzb(Ljava/lang/Object;Ljava/lang/Object;J)V
.end method
