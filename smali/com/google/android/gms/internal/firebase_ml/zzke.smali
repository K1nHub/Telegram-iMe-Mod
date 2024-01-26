.class final synthetic Lcom/google/android/gms/internal/firebase_ml/zzke;
.super Ljava/lang/Object;


# static fields
.field static final synthetic zzaat:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzkd;->zzhx()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzke;->zzaat:[I

    const/4 v1, 0x1

    :try_start_0
    sget v2, Lcom/google/android/gms/internal/firebase_ml/zzkd;->zzaao:I

    sub-int/2addr v2, v1

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzke;->zzaat:[I

    sget v2, Lcom/google/android/gms/internal/firebase_ml/zzkd;->zzaaq:I

    sub-int/2addr v2, v1

    const/4 v1, 0x2

    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
