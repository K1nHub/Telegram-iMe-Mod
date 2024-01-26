.class public final Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzaj"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj$zza;,
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj$zzc;,
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# static fields
.field private static final zzaqj:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;

.field private static volatile zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzwr<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzadd:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;

.field private zzaqf:Lcom/google/android/gms/internal/firebase_ml/zzvf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzvf<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzaqg:I

.field private zzaqh:I

.field private zzaqi:I

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;->zzaqj:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;

    .line 26
    const-class v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zzrh()Lcom/google/android/gms/internal/firebase_ml/zzvf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;->zzaqf:Lcom/google/android/gms/internal/firebase_ml/zzvf;

    return-void
.end method

.method static synthetic zzkx()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;->zzaqj:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzlt;->zzl:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 23
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 21
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_1

    .line 14
    const-class p2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;

    monitor-enter p2

    .line 15
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_0

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;->zzaqj:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    .line 18
    sput-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    .line 19
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

    .line 11
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;->zzaqj:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzm"

    aput-object v0, p1, p2

    const-string p2, "zzadd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzaqf"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 7
    const-class p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj$zzc;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzaqg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj$zzb;->zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzaqh"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzaqi"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\t\u0000\u0002\u001b\u0003\u000c\u0001\u0004\u0004\u0002\u0005\u0004\u0003"

    .line 10
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;->zzaqj:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlt;)V

    return-object p1

    .line 5
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaj;-><init>()V

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
