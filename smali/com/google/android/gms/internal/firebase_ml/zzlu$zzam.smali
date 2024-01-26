.class public final Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# static fields
.field private static final zzaso:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;

.field private static volatile zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzwr<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzasg:Ljava/lang/String;

.field private zzash:Ljava/lang/String;

.field private zzasi:Ljava/lang/String;

.field private zzasj:Ljava/lang/String;

.field private zzask:Ljava/lang/String;

.field private zzasl:Ljava/lang/String;

.field private zzasm:Ljava/lang/String;

.field private zzasn:Lcom/google/android/gms/internal/firebase_ml/zzvf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzvf<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzaso:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;

    .line 84
    const-class v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzasg:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzash:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzasi:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzasj:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzask:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzasl:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzasm:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrh()Lcom/google/android/gms/internal/firebase_ml/zzvf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzasn:Lcom/google/android/gms/internal/firebase_ml/zzvf;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;Ljava/lang/Iterable;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzs(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzbl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzbm(Ljava/lang/String;)V

    return-void
.end method

.method private final zzbl(Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzm:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzm:I

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzasg:Ljava/lang/String;

    return-void
.end method

.method private final zzbm(Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzm:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzm:I

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzash:Ljava/lang/String;

    return-void
.end method

.method private final zzbn(Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzm:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzm:I

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzasi:Ljava/lang/String;

    return-void
.end method

.method private final zzbo(Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzm:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzm:I

    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzasj:Ljava/lang/String;

    return-void
.end method

.method private final zzbp(Ljava/lang/String;)V
    .locals 1

    .line 33
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzm:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzm:I

    .line 35
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzask:Ljava/lang/String;

    return-void
.end method

.method private final zzbq(Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzm:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzm:I

    .line 40
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzasl:Ljava/lang/String;

    return-void
.end method

.method private final zzbr(Ljava/lang/String;)V
    .locals 1

    .line 43
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzm:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzm:I

    .line 45
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzasm:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzbn(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzbo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzbp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzbq(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzbr(Ljava/lang/String;)V

    return-void
.end method

.method public static zzle()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;
    .locals 1

    .line 53
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzaso:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrd()Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;

    return-object v0
.end method

.method public static zzlf()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;
    .locals 1

    .line 73
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzaso:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;

    return-object v0
.end method

.method static synthetic zzlg()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;
    .locals 1

    .line 74
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzaso:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;

    return-object v0
.end method

.method private final zzs(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzasn:Lcom/google/android/gms/internal/firebase_ml/zzvf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_ml/zzvf;->zzpz()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzasn:Lcom/google/android/gms/internal/firebase_ml/zzvf;

    .line 50
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzvf;)Lcom/google/android/gms/internal/firebase_ml/zzvf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzasn:Lcom/google/android/gms/internal/firebase_ml/zzvf;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzasn:Lcom/google/android/gms/internal/firebase_ml/zzvf;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zztg;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 54
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzlt;->zzl:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 72
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 70
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 61
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_1

    .line 63
    const-class p2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;

    monitor-enter p2

    .line 64
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_0

    .line 66
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzaso:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    .line 67
    sput-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    .line 68
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 60
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzaso:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzm"

    aput-object v0, p1, p2

    const-string p2, "zzasg"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzash"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzasi"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzasj"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzask"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzasl"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzasm"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzasn"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0001\u0000\u0001\u0008\u0000\u0002\u0008\u0001\u0003\u0008\u0002\u0004\u0008\u0003\u0005\u0008\u0004\u0006\u0008\u0005\u0007\u0008\u0006\u0008\u001a"

    .line 59
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzaso:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 56
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlt;)V

    return-object p1

    .line 55
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzld()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzask:Ljava/lang/String;

    return-object v0
.end method
