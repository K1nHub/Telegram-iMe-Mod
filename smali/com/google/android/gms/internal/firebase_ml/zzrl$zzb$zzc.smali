.class public final enum Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzuz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzuz;"
    }
.end annotation


# static fields
.field private static final enum zzbfr:Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;

.field private static final enum zzbfs:Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;

.field private static final enum zzbft:Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;

.field private static final enum zzbfu:Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;

.field private static final synthetic zzbfv:[Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;

.field private static final zzj:Lcom/google/android/gms/internal/firebase_ml/zzuy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzuy<",
            "Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;

    const-string v1, "LANDMARK_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;->zzbfr:Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;

    .line 14
    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;

    const-string v3, "LANDMARK_NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;->zzbfs:Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;

    .line 15
    new-instance v3, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;

    const-string v5, "LANDMARK_ALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;->zzbft:Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;

    .line 16
    new-instance v5, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;

    const-string v7, "LANDMARK_CONTOUR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;->zzbfu:Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 17
    sput-object v7, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;->zzbfv:[Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzrp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzrp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;->zzj:Lcom/google/android/gms/internal/firebase_ml/zzuy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;->zzbfv:[Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;

    return-object v0
.end method

.method public static zzbx(I)Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;->zzbfu:Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;

    return-object p0

    .line 6
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;->zzbft:Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;->zzbfs:Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;->zzbfr:Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;

    return-object p0
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzrq;->zzx:Lcom/google/android/gms/internal/firebase_ml/zzvb;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzrl$zzb$zzc;->value:I

    return v0
.end method
