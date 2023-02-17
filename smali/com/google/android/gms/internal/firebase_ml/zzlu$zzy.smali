.class public final Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zza;,
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# static fields
.field private static final zzamx:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

.field private static volatile zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzwr<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzamt:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;

.field private zzamu:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;

.field private zzamv:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;

.field private zzamw:Z

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzamx:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    .line 46
    const-class v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzc(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzu(Z)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrq()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzamt:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;

    .line 4
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzm:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzm:I

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzd(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;)V

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;)V
    .locals 0

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzamu:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;

    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzm:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzm:I

    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;)V
    .locals 0

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzamv:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;

    .line 14
    iget p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzm:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzm:I

    return-void
.end method

.method public static zzjw()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zza;
    .locals 1

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzamx:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrd()Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zza;

    return-object v0
.end method

.method public static zzjx()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;
    .locals 1

    .line 39
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzamx:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    return-object v0
.end method

.method static synthetic zzjy()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;
    .locals 1

    .line 40
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzamx:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    return-object v0
.end method

.method private final zzu(Z)V
    .locals 1

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzm:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzm:I

    .line 17
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzamw:Z

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 20
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzlt;->zzl:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 38
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 36
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_1

    .line 29
    const-class p2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    monitor-enter p2

    .line 30
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_0

    .line 32
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzamx:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    .line 33
    sput-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    .line 34
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

    .line 26
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzamx:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzm"

    aput-object v0, p1, p2

    const-string p2, "zzamt"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzamu"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzamv"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzamw"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002\u0004\u0007\u0003"

    .line 25
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzamx:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlt;)V

    return-object p1

    .line 21
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;-><init>()V

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
