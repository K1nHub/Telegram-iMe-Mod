.class public final Lcom/google/android/gms/internal/measurement/zzfo;
.super Lcom/google/android/gms/internal/measurement/zzjz;
.source "com.google.android.gms:play-services-measurement@@19.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzjz<",
        "Lcom/google/android/gms/internal/measurement/zzfo;",
        "Lcom/google/android/gms/internal/measurement/zzfn;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzlh;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzfo;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/zzkg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkg<",
            "Lcom/google/android/gms/internal/measurement/zzfs;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Ljava/lang/String;

.field private zzh:J

.field private zzi:J

.field private zzj:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfo;->zza:Lcom/google/android/gms/internal/measurement/zzfo;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzfo;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzjz;->zzbG(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzjz;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjz;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjz;->zzbA()Lcom/google/android/gms/internal/measurement/zzkg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzf:Lcom/google/android/gms/internal/measurement/zzkg;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/measurement/zzfn;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfo;->zza:Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjz;->zzbu()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfn;

    return-object v0
.end method

.method static synthetic zzf()Lcom/google/android/gms/internal/measurement/zzfo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfo;->zza:Lcom/google/android/gms/internal/measurement/zzfo;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/measurement/zzfo;ILcom/google/android/gms/internal/measurement/zzfs;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfo;->zzv()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzf:Lcom/google/android/gms/internal/measurement/zzkg;

    .line 3
    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/measurement/zzfo;Lcom/google/android/gms/internal/measurement/zzfs;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfo;->zzv()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzf:Lcom/google/android/gms/internal/measurement/zzkg;

    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfo;->zzv()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzf:Lcom/google/android/gms/internal/measurement/zzkg;

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzih;->zzbq(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/measurement/zzfo;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjz;->zzbA()Lcom/google/android/gms/internal/measurement/zzkg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzf:Lcom/google/android/gms/internal/measurement/zzkg;

    return-void
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/measurement/zzfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfo;->zzv()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzf:Lcom/google/android/gms/internal/measurement/zzkg;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzq(Lcom/google/android/gms/internal/measurement/zzfo;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzh:J

    return-void
.end method

.method static synthetic zzr(Lcom/google/android/gms/internal/measurement/zzfo;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzi:J

    return-void
.end method

.method private final zzv()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzf:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjz;->zzbB(Lcom/google/android/gms/internal/measurement/zzkg;)Lcom/google/android/gms/internal/measurement/zzkg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzf:Lcom/google/android/gms/internal/measurement/zzkg;

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzj:I

    return v0
.end method

.method public final zzb()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzf:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zzc()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzi:J

    return-wide v0
.end method

.method public final zzd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzh:J

    return-wide v0
.end method

.method public final zzg(I)Lcom/google/android/gms/internal/measurement/zzfs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzf:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfs;

    return-object p1
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfs;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzf:Lcom/google/android/gms/internal/measurement/zzkg;

    return-object v0
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfo;->zza:Lcom/google/android/gms/internal/measurement/zzfo;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfn;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfn;-><init>(Lcom/google/android/gms/internal/measurement/zzff;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfo;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfo;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    .line 2
    const-class p2, Lcom/google/android/gms/internal/measurement/zzfs;

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzj"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfo;->zza:Lcom/google/android/gms/internal/measurement/zzfo;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002\u1008\u0000\u0003\u1002\u0001\u0004\u1002\u0002\u0005\u1004\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzjz;->zzbF(Lcom/google/android/gms/internal/measurement/zzlg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzs()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzt()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzu()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
