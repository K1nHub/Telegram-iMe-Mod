.class public final enum Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzuz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzuz;"
    }
.end annotation


# static fields
.field public static final enum zzapy:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;

.field public static final enum zzapz:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;

.field public static final enum zzaqa:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;

.field private static final synthetic zzaqb:[Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;

.field private static final zzj:Lcom/google/android/gms/internal/firebase_ml/zzuy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzuy<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;

    const-string v1, "MODE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;->zzapy:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;

    const-string v3, "STREAM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;->zzapz:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;

    .line 14
    new-instance v3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;

    const-string v5, "SINGLE_IMAGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;->zzaqa:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 15
    sput-object v5, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;->zzaqb:[Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzng;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzng;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;->zzj:Lcom/google/android/gms/internal/firebase_ml/zzuy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;->zzaqb:[Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;

    return-object v0
.end method

.method public static zzbh(I)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;->zzaqa:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;

    return-object p0

    .line 5
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;->zzapz:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;->zzapy:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;

    return-object p0
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zznf;->zzx:Lcom/google/android/gms/internal/firebase_ml/zzvb;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzag$zza;->value:I

    return v0
.end method
