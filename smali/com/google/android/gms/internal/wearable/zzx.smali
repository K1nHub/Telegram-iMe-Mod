.class public final Lcom/google/android/gms/internal/wearable/zzx;
.super Lcom/google/android/gms/internal/wearable/zzbv;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/wearable/zzdd;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/wearable/zzx;


# instance fields
.field private zze:Lcom/google/android/gms/internal/wearable/zzcc;

.field private zzf:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/wearable/zzx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wearable/zzx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/wearable/zzx;->zzb:Lcom/google/android/gms/internal/wearable/zzx;

    const-class v1, Lcom/google/android/gms/internal/wearable/zzx;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/wearable/zzbv;->zzZ(Ljava/lang/Class;Lcom/google/android/gms/internal/wearable/zzbv;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzbv;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/wearable/zzx;->zzf:B

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzbv;->zzT()Lcom/google/android/gms/internal/wearable/zzcc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzx;->zze:Lcom/google/android/gms/internal/wearable/zzcc;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/wearable/zzn;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/wearable/zzx;->zzb:Lcom/google/android/gms/internal/wearable/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wearable/zzbv;->zzN()Lcom/google/android/gms/internal/wearable/zzbs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/wearable/zzn;

    return-object v0
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/wearable/zzx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/wearable/zzx;->zzb:Lcom/google/android/gms/internal/wearable/zzx;

    return-object v0
.end method

.method public static zzc([B)Lcom/google/android/gms/internal/wearable/zzx;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/wearable/zzcf;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/wearable/zzx;->zzb:Lcom/google/android/gms/internal/wearable/zzx;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/wearable/zzbv;->zzP(Lcom/google/android/gms/internal/wearable/zzbv;[B)Lcom/google/android/gms/internal/wearable/zzbv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/wearable/zzx;

    return-object p0
.end method

.method public static zzd([BLcom/google/android/gms/internal/wearable/zzbj;)Lcom/google/android/gms/internal/wearable/zzx;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/wearable/zzcf;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/wearable/zzx;->zzb:Lcom/google/android/gms/internal/wearable/zzx;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/wearable/zzbv;->zzQ(Lcom/google/android/gms/internal/wearable/zzbv;[BLcom/google/android/gms/internal/wearable/zzbj;)Lcom/google/android/gms/internal/wearable/zzbv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/wearable/zzx;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/wearable/zzx;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzx;->zze:Lcom/google/android/gms/internal/wearable/zzcc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/wearable/zzcc;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/wearable/zzbv;->zzU(Lcom/google/android/gms/internal/wearable/zzcc;)Lcom/google/android/gms/internal/wearable/zzcc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzx;->zze:Lcom/google/android/gms/internal/wearable/zzcc;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/wearable/zzx;->zze:Lcom/google/android/gms/internal/wearable/zzcc;

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/wearable/zzag;->zzJ(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected final zzG(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    const/4 p3, 0x0

    .line 2
    :cond_0
    iput-byte p3, p0, Lcom/google/android/gms/internal/wearable/zzx;->zzf:B

    return-object v2

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/wearable/zzx;->zzb:Lcom/google/android/gms/internal/wearable/zzx;

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/wearable/zzn;

    .line 3
    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/wearable/zzn;-><init>(Lcom/google/android/gms/internal/wearable/zzm;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/wearable/zzx;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/wearable/zzx;-><init>()V

    return-object p1

    :cond_4
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "zze"

    aput-object p2, p1, v0

    .line 2
    const-class p2, Lcom/google/android/gms/internal/wearable/zzw;

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/wearable/zzx;->zzb:Lcom/google/android/gms/internal/wearable/zzx;

    const-string p3, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u041b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/wearable/zzbv;->zzY(Lcom/google/android/gms/internal/wearable/zzdc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/wearable/zzx;->zzf:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zze()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzx;->zze:Lcom/google/android/gms/internal/wearable/zzcc;

    return-object v0
.end method
