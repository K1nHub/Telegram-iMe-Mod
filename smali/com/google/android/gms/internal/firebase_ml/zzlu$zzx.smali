.class public final Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzx"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;,
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;,
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# static fields
.field private static final zzamh:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;

.field private static volatile zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzwr<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzadp:I

.field private zzamc:Ljava/lang/String;

.field private zzamd:Ljava/lang/String;

.field private zzame:I

.field private zzamf:Ljava/lang/String;

.field private zzamg:Ljava/lang/String;

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzamh:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;

    .line 61
    const-class v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzamc:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzamd:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzamf:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzamg:Ljava/lang/String;

    return-void
.end method

.method private final setName(Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzm:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzm:I

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzamc:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzc;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzc;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;)V
    .locals 1

    .line 28
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzm:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzm:I

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzadp:I

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzc;)V
    .locals 1

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzm:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzm:I

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzc;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzame:I

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzbc(Ljava/lang/String;)V

    return-void
.end method

.method private final zzbc(Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzm:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzm:I

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzamf:Ljava/lang/String;

    return-void
.end method

.method private final zzbd(Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzm:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzm:I

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzamg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzbd(Ljava/lang/String;)V

    return-void
.end method

.method public static zzju()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;
    .locals 1

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzamh:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrd()Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;

    return-object v0
.end method

.method static synthetic zzjv()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;
    .locals 1

    .line 54
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzamh:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 33
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzlt;->zzl:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 53
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 51
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 42
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_1

    .line 44
    const-class p2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;

    monitor-enter p2

    .line 45
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_0

    .line 47
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzamh:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    .line 48
    sput-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    .line 49
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

    .line 41
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzamh:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzm"

    aput-object v0, p1, p2

    const-string p2, "zzamc"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzamd"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzame"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzc;->zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzamf"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzamg"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzadp"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;->zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u0008\u0001\u0003\u000c\u0002\u0004\u0008\u0003\u0005\u0008\u0004\u0006\u000c\u0005"

    .line 40
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzamh:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlt;)V

    return-object p1

    .line 34
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;-><init>()V

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
