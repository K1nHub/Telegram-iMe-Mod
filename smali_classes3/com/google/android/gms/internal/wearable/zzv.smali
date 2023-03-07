.class public final Lcom/google/android/gms/internal/wearable/zzv;
.super Lcom/google/android/gms/internal/wearable/zzbv;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/wearable/zzdd;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/wearable/zzv;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/wearable/zzu;

.field private zzh:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/wearable/zzv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wearable/zzv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/wearable/zzv;->zzb:Lcom/google/android/gms/internal/wearable/zzv;

    const-class v1, Lcom/google/android/gms/internal/wearable/zzv;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/wearable/zzbv;->zzZ(Ljava/lang/Class;Lcom/google/android/gms/internal/wearable/zzbv;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzbv;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/wearable/zzv;->zzh:B

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzv;->zzf:I

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/wearable/zzp;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/wearable/zzv;->zzb:Lcom/google/android/gms/internal/wearable/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wearable/zzbv;->zzN()Lcom/google/android/gms/internal/wearable/zzbs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/wearable/zzp;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/wearable/zzv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/wearable/zzv;->zzb:Lcom/google/android/gms/internal/wearable/zzv;

    return-object v0
.end method

.method public static zzd()Lcom/google/android/gms/internal/wearable/zzv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/wearable/zzv;->zzb:Lcom/google/android/gms/internal/wearable/zzv;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/wearable/zzv;Lcom/google/android/gms/internal/wearable/zzu;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/wearable/zzv;->zzg:Lcom/google/android/gms/internal/wearable/zzu;

    iget p1, p0, Lcom/google/android/gms/internal/wearable/zzv;->zze:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/wearable/zzv;->zze:I

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/wearable/zzv;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/wearable/zzv;->zzf:I

    iget p1, p0, Lcom/google/android/gms/internal/wearable/zzv;->zze:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/wearable/zzv;->zze:I

    return-void
.end method


# virtual methods
.method protected final zzG(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    const/4 p3, 0x0

    .line 2
    :cond_0
    iput-byte p3, p0, Lcom/google/android/gms/internal/wearable/zzv;->zzh:B

    return-object v2

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/wearable/zzv;->zzb:Lcom/google/android/gms/internal/wearable/zzv;

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/wearable/zzp;

    .line 3
    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/wearable/zzp;-><init>(Lcom/google/android/gms/internal/wearable/zzm;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/wearable/zzv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/wearable/zzv;-><init>()V

    return-object p1

    :cond_4
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "zze"

    aput-object p2, p1, v0

    const-string p2, "zzf"

    aput-object p2, p1, p3

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/wearable/zzr;->zza:Lcom/google/android/gms/internal/wearable/zzbz;

    aput-object p2, p1, v3

    const-string p2, "zzg"

    aput-object p2, p1, v2

    sget-object p2, Lcom/google/android/gms/internal/wearable/zzv;->zzb:Lcom/google/android/gms/internal/wearable/zzv;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0002\u0001\u150c\u0000\u0002\u1409\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/wearable/zzbv;->zzY(Lcom/google/android/gms/internal/wearable/zzdc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/wearable/zzv;->zzh:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Lcom/google/android/gms/internal/wearable/zzu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzv;->zzg:Lcom/google/android/gms/internal/wearable/zzu;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzu;->zzj()Lcom/google/android/gms/internal/wearable/zzu;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzf()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzv;->zzf:I

    invoke-static {v0}, Lcom/google/android/gms/internal/wearable/zzs;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
