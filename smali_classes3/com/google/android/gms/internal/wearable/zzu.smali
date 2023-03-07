.class public final Lcom/google/android/gms/internal/wearable/zzu;
.super Lcom/google/android/gms/internal/wearable/zzbv;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/wearable/zzdd;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/wearable/zzu;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/wearable/zzaw;

.field private zzg:Ljava/lang/String;

.field private zzh:D

.field private zzi:F

.field private zzj:J

.field private zzk:I

.field private zzl:I

.field private zzm:Z

.field private zzn:Lcom/google/android/gms/internal/wearable/zzcc;

.field private zzo:Lcom/google/android/gms/internal/wearable/zzcc;

.field private zzp:Lcom/google/android/gms/internal/wearable/zzcc;

.field private zzq:Lcom/google/android/gms/internal/wearable/zzcb;

.field private zzr:Lcom/google/android/gms/internal/wearable/zzca;

.field private zzs:J

.field private zzt:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/wearable/zzu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wearable/zzu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/wearable/zzu;->zzb:Lcom/google/android/gms/internal/wearable/zzu;

    const-class v1, Lcom/google/android/gms/internal/wearable/zzu;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/wearable/zzbv;->zzZ(Ljava/lang/Class;Lcom/google/android/gms/internal/wearable/zzbv;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzbv;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzt:B

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/wearable/zzaw;->zzb:Lcom/google/android/gms/internal/wearable/zzaw;

    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzf:Lcom/google/android/gms/internal/wearable/zzaw;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzg:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzbv;->zzT()Lcom/google/android/gms/internal/wearable/zzcc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzn:Lcom/google/android/gms/internal/wearable/zzcc;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzbv;->zzT()Lcom/google/android/gms/internal/wearable/zzcc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzo:Lcom/google/android/gms/internal/wearable/zzcc;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzbv;->zzT()Lcom/google/android/gms/internal/wearable/zzcc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzp:Lcom/google/android/gms/internal/wearable/zzcc;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzbv;->zzS()Lcom/google/android/gms/internal/wearable/zzcb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzq:Lcom/google/android/gms/internal/wearable/zzcb;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzbv;->zzR()Lcom/google/android/gms/internal/wearable/zzca;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzr:Lcom/google/android/gms/internal/wearable/zzca;

    return-void
.end method

.method static synthetic zzA(Lcom/google/android/gms/internal/wearable/zzu;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzq:Lcom/google/android/gms/internal/wearable/zzcb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/wearable/zzcc;->zzc()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    .line 3
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/wearable/zzcb;->zza(I)Lcom/google/android/gms/internal/wearable/zzcb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzq:Lcom/google/android/gms/internal/wearable/zzcb;

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzq:Lcom/google/android/gms/internal/wearable/zzcb;

    .line 4
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/wearable/zzag;->zzJ(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzB(Lcom/google/android/gms/internal/wearable/zzu;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzr:Lcom/google/android/gms/internal/wearable/zzca;

    invoke-interface {v0}, Lcom/google/android/gms/internal/wearable/zzcc;->zzc()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    .line 3
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/wearable/zzca;->zzf(I)Lcom/google/android/gms/internal/wearable/zzca;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzr:Lcom/google/android/gms/internal/wearable/zzca;

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzr:Lcom/google/android/gms/internal/wearable/zzca;

    .line 4
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/wearable/zzag;->zzJ(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzC(Lcom/google/android/gms/internal/wearable/zzu;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zze:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzs:J

    return-void
.end method

.method static synthetic zzD(Lcom/google/android/gms/internal/wearable/zzu;D)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzh:D

    return-void
.end method

.method static synthetic zzE(Lcom/google/android/gms/internal/wearable/zzu;F)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzi:F

    return-void
.end method

.method public static zzh()Lcom/google/android/gms/internal/wearable/zzt;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/wearable/zzu;->zzb:Lcom/google/android/gms/internal/wearable/zzu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wearable/zzbv;->zzN()Lcom/google/android/gms/internal/wearable/zzbs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/wearable/zzt;

    return-object v0
.end method

.method static synthetic zzi()Lcom/google/android/gms/internal/wearable/zzu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/wearable/zzu;->zzb:Lcom/google/android/gms/internal/wearable/zzu;

    return-object v0
.end method

.method public static zzj()Lcom/google/android/gms/internal/wearable/zzu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/wearable/zzu;->zzb:Lcom/google/android/gms/internal/wearable/zzu;

    return-object v0
.end method

.method static synthetic zzr(Lcom/google/android/gms/internal/wearable/zzu;Lcom/google/android/gms/internal/wearable/zzaw;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzf:Lcom/google/android/gms/internal/wearable/zzaw;

    return-void
.end method

.method static synthetic zzs(Lcom/google/android/gms/internal/wearable/zzu;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zze:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzj:J

    return-void
.end method

.method static synthetic zzt(Lcom/google/android/gms/internal/wearable/zzu;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zze:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzk:I

    return-void
.end method

.method static synthetic zzu(Lcom/google/android/gms/internal/wearable/zzu;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zze:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzl:I

    return-void
.end method

.method static synthetic zzv(Lcom/google/android/gms/internal/wearable/zzu;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zze:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zze:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzm:Z

    return-void
.end method

.method static synthetic zzw(Lcom/google/android/gms/internal/wearable/zzu;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzn:Lcom/google/android/gms/internal/wearable/zzcc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/wearable/zzcc;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/wearable/zzbv;->zzU(Lcom/google/android/gms/internal/wearable/zzcc;)Lcom/google/android/gms/internal/wearable/zzcc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzn:Lcom/google/android/gms/internal/wearable/zzcc;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzn:Lcom/google/android/gms/internal/wearable/zzcc;

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/wearable/zzag;->zzJ(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzx(Lcom/google/android/gms/internal/wearable/zzu;Lcom/google/android/gms/internal/wearable/zzv;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzo:Lcom/google/android/gms/internal/wearable/zzcc;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/wearable/zzcc;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/wearable/zzbv;->zzU(Lcom/google/android/gms/internal/wearable/zzcc;)Lcom/google/android/gms/internal/wearable/zzcc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzo:Lcom/google/android/gms/internal/wearable/zzcc;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzo:Lcom/google/android/gms/internal/wearable/zzcc;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zzy(Lcom/google/android/gms/internal/wearable/zzu;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzz(Lcom/google/android/gms/internal/wearable/zzu;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzp:Lcom/google/android/gms/internal/wearable/zzcc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/wearable/zzcc;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/wearable/zzbv;->zzU(Lcom/google/android/gms/internal/wearable/zzcc;)Lcom/google/android/gms/internal/wearable/zzcc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzp:Lcom/google/android/gms/internal/wearable/zzcc;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzp:Lcom/google/android/gms/internal/wearable/zzcc;

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/wearable/zzag;->zzJ(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final zzF()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzm:Z

    return v0
.end method

.method protected final zzG(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    const/4 p3, 0x0

    .line 2
    :cond_0
    iput-byte p3, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzt:B

    return-object v3

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/wearable/zzu;->zzb:Lcom/google/android/gms/internal/wearable/zzu;

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/wearable/zzt;

    .line 3
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/wearable/zzt;-><init>(Lcom/google/android/gms/internal/wearable/zzm;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/wearable/zzu;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/wearable/zzu;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0x11

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zze"

    aput-object p2, p1, v0

    const-string p2, "zzf"

    aput-object p2, p1, p3

    const-string p2, "zzg"

    aput-object p2, p1, v4

    const-string p2, "zzh"

    aput-object p2, p1, v3

    const-string p2, "zzi"

    aput-object p2, p1, v2

    const-string p2, "zzj"

    aput-object p2, p1, v1

    const/4 p2, 0x6

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    .line 2
    const-class p3, Lcom/google/android/gms/internal/wearable/zzw;

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-class p3, Lcom/google/android/gms/internal/wearable/zzv;

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzr"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/wearable/zzu;->zzb:Lcom/google/android/gms/internal/wearable/zzu;

    const-string p3, "\u0001\u000e\u0000\u0001\u0001\u000e\u000e\u0000\u0005\u0002\u0001\u100a\u0000\u0002\u1008\u0001\u0003\u1000\u0002\u0004\u1001\u0003\u0005\u1002\u0004\u0006\u1004\u0005\u0007\u100f\u0006\u0008\u1007\u0007\t\u041b\n\u041b\u000b\u001a\u000c\u0014\r\u1002\u0008\u000e\u0013"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/wearable/zzbv;->zzY(Lcom/google/android/gms/internal/wearable/zzdc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzt:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zza()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzh:D

    return-wide v0
.end method

.method public final zzb()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzi:F

    return v0
.end method

.method public final zzc()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzo:Lcom/google/android/gms/internal/wearable/zzcc;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzl:I

    return v0
.end method

.method public final zze()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzk:I

    return v0
.end method

.method public final zzf()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzs:J

    return-wide v0
.end method

.method public final zzg()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzj:J

    return-wide v0
.end method

.method public final zzk()Lcom/google/android/gms/internal/wearable/zzaw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzf:Lcom/google/android/gms/internal/wearable/zzaw;

    return-object v0
.end method

.method public final zzl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzm()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzo:Lcom/google/android/gms/internal/wearable/zzcc;

    return-object v0
.end method

.method public final zzn()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzn:Lcom/google/android/gms/internal/wearable/zzcc;

    return-object v0
.end method

.method public final zzo()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzr:Lcom/google/android/gms/internal/wearable/zzca;

    return-object v0
.end method

.method public final zzp()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzq:Lcom/google/android/gms/internal/wearable/zzcb;

    return-object v0
.end method

.method public final zzq()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzu;->zzp:Lcom/google/android/gms/internal/wearable/zzcc;

    return-object v0
.end method
