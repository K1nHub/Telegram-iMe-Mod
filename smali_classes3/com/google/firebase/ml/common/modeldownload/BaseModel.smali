.class public final enum Lcom/google/firebase/ml/common/modeldownload/BaseModel;
.super Ljava/lang/Enum;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/ml/common/modeldownload/BaseModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum TRANSLATE:Lcom/google/firebase/ml/common/modeldownload/BaseModel;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final enum zzawi:Lcom/google/firebase/ml/common/modeldownload/BaseModel;

.field public static final enum zzawj:Lcom/google/firebase/ml/common/modeldownload/BaseModel;

.field private static final synthetic zzawk:[Lcom/google/firebase/ml/common/modeldownload/BaseModel;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 3
    new-instance v0, Lcom/google/firebase/ml/common/modeldownload/BaseModel;

    const-string v1, "FACE_DETECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/ml/common/modeldownload/BaseModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/ml/common/modeldownload/BaseModel;->zzawi:Lcom/google/firebase/ml/common/modeldownload/BaseModel;

    .line 4
    new-instance v1, Lcom/google/firebase/ml/common/modeldownload/BaseModel;

    const-string v3, "SMART_REPLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/firebase/ml/common/modeldownload/BaseModel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/ml/common/modeldownload/BaseModel;->zzawj:Lcom/google/firebase/ml/common/modeldownload/BaseModel;

    .line 5
    new-instance v3, Lcom/google/firebase/ml/common/modeldownload/BaseModel;

    const-string v5, "TRANSLATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/firebase/ml/common/modeldownload/BaseModel;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/ml/common/modeldownload/BaseModel;->TRANSLATE:Lcom/google/firebase/ml/common/modeldownload/BaseModel;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/firebase/ml/common/modeldownload/BaseModel;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 6
    sput-object v5, Lcom/google/firebase/ml/common/modeldownload/BaseModel;->zzawk:[Lcom/google/firebase/ml/common/modeldownload/BaseModel;

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

.method public static values()[Lcom/google/firebase/ml/common/modeldownload/BaseModel;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/ml/common/modeldownload/BaseModel;->zzawk:[Lcom/google/firebase/ml/common/modeldownload/BaseModel;

    invoke-virtual {v0}, [Lcom/google/firebase/ml/common/modeldownload/BaseModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/ml/common/modeldownload/BaseModel;

    return-object v0
.end method
