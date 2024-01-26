.class public final Lcom/google/android/gms/internal/firebase_ml/zzos;
.super Ljava/lang/Object;


# static fields
.field public static final enum zzauz:I = 0x1

.field public static final enum zzava:I = 0x2

.field public static final enum zzavb:I = 0x3

.field private static final synthetic zzavc:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v2, v1, v3

    aput v0, v1, v2

    .line 5
    sput-object v1, Lcom/google/android/gms/internal/firebase_ml/zzos;->zzavc:[I

    return-void
.end method

.method public static zzlz()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzos;->zzavc:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
