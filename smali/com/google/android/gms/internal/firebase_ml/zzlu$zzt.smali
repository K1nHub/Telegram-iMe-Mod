.class public final Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zza;,
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# static fields
.field private static final zzaks:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

.field private static volatile zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzwr<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzakp:I

.field private zzakq:I

.field private zzakr:I

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;->zzaks:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

    .line 36
    const-class v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;->zzar(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zzb;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zzb;)V

    return-void
.end method

.method private final zzar(I)V
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;->zzm:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;->zzm:I

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;->zzakq:I

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zzb;)V
    .locals 1

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;->zzm:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;->zzm:I

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zzb;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;->zzakp:I

    return-void
.end method

.method public static zzjn()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zza;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;->zzaks:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrd()Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zza;

    return-object v0
.end method

.method static synthetic zzjo()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;
    .locals 1

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;->zzaks:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 12
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
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_1

    .line 22
    const-class p2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

    monitor-enter p2

    .line 23
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_0

    .line 25
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;->zzaks:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    .line 26
    sput-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

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
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;->zzaks:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzm"

    aput-object v0, p1, p2

    const-string p2, "zzakp"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zzb;->zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzakq"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzakr"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u000b\u0001\u0003\u000b\u0002"

    .line 18
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;->zzaks:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlt;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;-><init>()V

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
