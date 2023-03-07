.class public final Lcom/google/android/gms/internal/wearable/zzw;
.super Lcom/google/android/gms/internal/wearable/zzbv;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/wearable/zzdd;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/wearable/zzw;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/wearable/zzv;

.field private zzh:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/wearable/zzw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wearable/zzw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/wearable/zzw;->zzb:Lcom/google/android/gms/internal/wearable/zzw;

    const-class v1, Lcom/google/android/gms/internal/wearable/zzw;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/wearable/zzbv;->zzZ(Ljava/lang/Class;Lcom/google/android/gms/internal/wearable/zzbv;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzbv;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/wearable/zzw;->zzh:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzw;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/wearable/zzo;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/wearable/zzw;->zzb:Lcom/google/android/gms/internal/wearable/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wearable/zzbv;->zzN()Lcom/google/android/gms/internal/wearable/zzbs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/wearable/zzo;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/wearable/zzw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/wearable/zzw;->zzb:Lcom/google/android/gms/internal/wearable/zzw;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/wearable/zzw;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzw;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzw;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/wearable/zzw;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/wearable/zzw;Lcom/google/android/gms/internal/wearable/zzv;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/wearable/zzw;->zzg:Lcom/google/android/gms/internal/wearable/zzv;

    iget p1, p0, Lcom/google/android/gms/internal/wearable/zzw;->zze:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/wearable/zzw;->zze:I

    return-void
.end method


# virtual methods
.method protected final zzG(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

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
    iput-byte p3, p0, Lcom/google/android/gms/internal/wearable/zzw;->zzh:B

    return-object v2

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/wearable/zzw;->zzb:Lcom/google/android/gms/internal/wearable/zzw;

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/wearable/zzo;

    .line 3
    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/wearable/zzo;-><init>(Lcom/google/android/gms/internal/wearable/zzm;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/wearable/zzw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/wearable/zzw;-><init>()V

    return-object p1

    :cond_4
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "zze"

    aput-object p2, p1, v0

    const-string p2, "zzf"

    aput-object p2, p1, p3

    const-string p2, "zzg"

    aput-object p2, p1, v2

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/wearable/zzw;->zzb:Lcom/google/android/gms/internal/wearable/zzw;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0002\u0001\u1508\u0000\u0002\u1509\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/wearable/zzbv;->zzY(Lcom/google/android/gms/internal/wearable/zzdc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/wearable/zzw;->zzh:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Lcom/google/android/gms/internal/wearable/zzv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzw;->zzg:Lcom/google/android/gms/internal/wearable/zzv;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzv;->zzd()Lcom/google/android/gms/internal/wearable/zzv;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzw;->zzf:Ljava/lang/String;

    return-object v0
.end method
