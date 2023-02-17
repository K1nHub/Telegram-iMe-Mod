.class public final Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# static fields
.field private static final zzanc:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;

.field private static volatile zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzwr<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzamy:Z

.field private zzamz:Z

.field private zzana:Z

.field private zzanb:Z

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;->zzanc:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;

    .line 37
    const-class v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;->zzy(Z)V

    return-void
.end method

.method private final zzaa(Z)V
    .locals 1

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;->zzm:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;->zzm:I

    .line 10
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;->zzana:Z

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;->zzz(Z)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;->zzaa(Z)V

    return-void
.end method

.method public static zzjz()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb$zza;
    .locals 1

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;->zzanc:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrd()Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb$zza;

    return-object v0
.end method

.method static synthetic zzka()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;
    .locals 1

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;->zzanc:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;

    return-object v0
.end method

.method private final zzy(Z)V
    .locals 1

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;->zzm:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;->zzm:I

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;->zzamy:Z

    return-void
.end method

.method private final zzz(Z)V
    .locals 1

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;->zzm:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;->zzm:I

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;->zzamz:Z

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 13
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzlt;->zzl:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 29
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_1

    .line 22
    const-class p2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;

    monitor-enter p2

    .line 23
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_0

    .line 25
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;->zzanc:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    .line 26
    sput-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    .line 27
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

    .line 19
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;->zzanc:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzm"

    aput-object v0, p1, p2

    const-string p2, "zzamy"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzamz"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzana"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzanb"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0007\u0000\u0002\u0007\u0001\u0003\u0007\u0002\u0004\u0007\u0003"

    .line 18
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;->zzanc:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlt;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;-><init>()V

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
