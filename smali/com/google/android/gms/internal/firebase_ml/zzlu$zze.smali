.class public final Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zzb;,
        Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# static fields
.field private static final zzadq:Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;

.field private static volatile zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzwr<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzadp:I

.field private zzcs:I

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;->zzadq:Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;

    .line 25
    const-class v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;-><init>()V

    return-void
.end method

.method static synthetic zziq()Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;->zzadq:Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzlt;->zzl:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 20
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_1

    .line 13
    const-class p2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;

    monitor-enter p2

    .line 14
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_0

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;->zzadq:Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    .line 17
    sput-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    .line 18
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

    .line 10
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;->zzadq:Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzm"

    aput-object v0, p1, p2

    const-string p2, "zzcs"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzadp"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;->zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u000c\u0001"

    .line 9
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;->zzadq:Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zzb;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlt;)V

    return-object p1

    .line 4
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;-><init>()V

    return-object p1

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
