.class public final enum Lcom/google/android/gms/internal/firebase_ml/zzov;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase_ml/zzov;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzavd:Lcom/google/android/gms/internal/firebase_ml/zzov;

.field public static final enum zzave:Lcom/google/android/gms/internal/firebase_ml/zzov;

.field public static final enum zzavf:Lcom/google/android/gms/internal/firebase_ml/zzov;

.field private static final synthetic zzavg:[Lcom/google/android/gms/internal/firebase_ml/zzov;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzov;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzov;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzov;->zzavd:Lcom/google/android/gms/internal/firebase_ml/zzov;

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzov;

    const-string v3, "TFLITE_VERSION_INCOMPATIBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zzov;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/firebase_ml/zzov;->zzave:Lcom/google/android/gms/internal/firebase_ml/zzov;

    .line 5
    new-instance v3, Lcom/google/android/gms/internal/firebase_ml/zzov;

    const-string v5, "MODEL_FORMAT_INVALID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_ml/zzov;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/firebase_ml/zzov;->zzavf:Lcom/google/android/gms/internal/firebase_ml/zzov;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/firebase_ml/zzov;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 6
    sput-object v5, Lcom/google/android/gms/internal/firebase_ml/zzov;->zzavg:[Lcom/google/android/gms/internal/firebase_ml/zzov;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase_ml/zzov;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzov;->zzavg:[Lcom/google/android/gms/internal/firebase_ml/zzov;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase_ml/zzov;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase_ml/zzov;

    return-object v0
.end method
