.class public final enum Lcom/google/android/gms/internal/firebase_ml/zzho$zzc;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase_ml/zzho$zzc;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzzq:Lcom/google/android/gms/internal/firebase_ml/zzho$zzc;

.field private static final synthetic zzzr:[Lcom/google/android/gms/internal/firebase_ml/zzho$zzc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzho$zzc;

    const-string v1, "IGNORE_CASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzho$zzc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzho$zzc;->zzzq:Lcom/google/android/gms/internal/firebase_ml/zzho$zzc;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/firebase_ml/zzho$zzc;

    aput-object v0, v1, v2

    .line 4
    sput-object v1, Lcom/google/android/gms/internal/firebase_ml/zzho$zzc;->zzzr:[Lcom/google/android/gms/internal/firebase_ml/zzho$zzc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase_ml/zzho$zzc;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzho$zzc;->zzzr:[Lcom/google/android/gms/internal/firebase_ml/zzho$zzc;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase_ml/zzho$zzc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase_ml/zzho$zzc;

    return-object v0
.end method
