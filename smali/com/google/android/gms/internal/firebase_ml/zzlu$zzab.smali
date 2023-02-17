.class public final Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzab"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# static fields
.field private static final zzapc:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;

.field private static volatile zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzwr<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzadd:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

.field private zzadg:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

.field private zzaoy:Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;

.field private zzaoz:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr;

.field private zzapa:I

.field private zzapb:I

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzapc:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;

    .line 49
    const-class v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzbd(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr;)V
    .locals 0

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzaoz:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr;

    .line 14
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzm:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzm:I

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzbe(I)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;)V
    .locals 0

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzadg:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzm:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzm:I

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrq()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzadd:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

    .line 4
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzm:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzm:I

    return-void
.end method

.method private final zzbd(I)V
    .locals 1

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzm:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzm:I

    .line 17
    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzapa:I

    return-void
.end method

.method private final zzbe(I)V
    .locals 1

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzm:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzm:I

    .line 20
    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzapb:I

    return-void
.end method

.method public static zzkf()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab$zza;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzapc:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrd()Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab$zza;

    return-object v0
.end method

.method static synthetic zzkg()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzapc:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 23
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzlt;->zzl:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 41
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 39
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 30
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_1

    .line 32
    const-class p2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;

    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_0

    .line 35
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzapc:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    .line 36
    sput-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    .line 37
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

    .line 29
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzapc:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzm"

    aput-object v0, p1, p2

    const-string p2, "zzadd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzaoy"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzadg"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzaoz"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzapa"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzapb"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002\u0004\t\u0003\u0005\u000b\u0004\u0006\u000b\u0005"

    .line 28
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;->zzapc:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlt;)V

    return-object p1

    .line 24
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzab;-><init>()V

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
