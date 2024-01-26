.class public final Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzb;,
        Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zza;,
        Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;,
        Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzd;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;",
        "Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# static fields
.field private static final zzbfm:Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;

.field private static volatile zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzwr<",
            "Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzait:F

.field private zzbfi:I

.field private zzbfj:I

.field private zzbfk:Z

.field private zzbfl:Z

.field private zzkc:I

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;->zzbfm:Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;

    .line 27
    const-class v1, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;-><init>()V

    return-void
.end method

.method static synthetic zzoo()Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;->zzbfm:Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzrk;->zzl:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 22
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_1

    .line 15
    const-class p2, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;->zzbfm:Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuu;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;->zzs:Lcom/google/android/gms/internal/firebase_ml/zzwr;

    .line 20
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

    .line 12
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;->zzbfm:Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzm"

    aput-object v0, p1, p2

    const-string p2, "zzkc"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzd;->zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbfi"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;->zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzbfj"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zza;->zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzbfk"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzbfl"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzait"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u000c\u0001\u0003\u000c\u0002\u0004\u0007\u0003\u0005\u0007\u0004\u0006\u0001\u0005"

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;->zzbfm:Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzb;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzrk;)V

    return-object p1

    .line 4
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;-><init>()V

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
