.class public final Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;
.super Lcom/google/android/gms/internal/mlkit_language_id/zzeo;
.source "com.google.mlkit:language-id@@16.1.1"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_language_id/zzgb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_language_id/zzeo<",
        "Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;",
        "Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_language_id/zzgb;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;

.field private static volatile zzh:Lcom/google/android/gms/internal/mlkit_language_id/zzgj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_language_id/zzgj<",
            "Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/mlkit_language_id/zzew;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_language_id/zzew<",
            "Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;-><init>()V

    .line 25
    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;

    .line 26
    const-class v1, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zzl()Lcom/google/android/gms/internal/mlkit_language_id/zzew;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;->zzf:Lcom/google/android/gms/internal/mlkit_language_id/zzew;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/mlkit_language_id/zzic;->zza:[I

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
    sget-object p1, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;->zzh:Lcom/google/android/gms/internal/mlkit_language_id/zzgj;

    if-nez p1, :cond_1

    .line 13
    const-class p2, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;

    monitor-enter p2

    .line 14
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;->zzh:Lcom/google/android/gms/internal/mlkit_language_id/zzgj;

    if-nez p1, :cond_0

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zza;

    sget-object p3, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zza;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)V

    .line 17
    sput-object p1, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;->zzh:Lcom/google/android/gms/internal/mlkit_language_id/zzgj;

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
    sget-object p1, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 7
    const-class p3, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzk;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u001b"

    .line 9
    sget-object p3, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzfz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb$zza;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzic;)V

    return-object p1

    .line 5
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb;-><init>()V

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
