.class public final Lcom/google/android/gms/internal/measurement/zzgm;
.super Lcom/google/android/gms/internal/measurement/zzjz;
.source "com.google.android.gms:play-services-measurement@@19.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzjz<",
        "Lcom/google/android/gms/internal/measurement/zzgm;",
        "Lcom/google/android/gms/internal/measurement/zzgl;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzlh;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzgm;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/measurement/zzkg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkg<",
            "Lcom/google/android/gms/internal/measurement/zzgt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzgm;->zza:Lcom/google/android/gms/internal/measurement/zzgm;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzgm;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzjz;->zzbG(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzjz;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjz;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzf:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjz;->zzbA()Lcom/google/android/gms/internal/measurement/zzkg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzg:Lcom/google/android/gms/internal/measurement/zzkg;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/measurement/zzgm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgm;->zza:Lcom/google/android/gms/internal/measurement/zzgm;

    return-object v0
.end method


# virtual methods
.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzgt;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzg:Lcom/google/android/gms/internal/measurement/zzkg;

    return-object v0
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x0

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgm;->zza:Lcom/google/android/gms/internal/measurement/zzgm;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgl;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzgl;-><init>(Lcom/google/android/gms/internal/measurement/zzgi;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgm;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzgm;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v2, "zze"

    aput-object v2, p1, p3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    .line 2
    const-class p2, Lcom/google/android/gms/internal/measurement/zzgt;

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzgm;->zza:Lcom/google/android/gms/internal/measurement/zzgm;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzjz;->zzbF(Lcom/google/android/gms/internal/measurement/zzlg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
