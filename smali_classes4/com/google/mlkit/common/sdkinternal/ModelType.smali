.class public final enum Lcom/google/mlkit/common/sdkinternal/ModelType;
.super Ljava/lang/Enum;
.source "com.google.mlkit:common@@17.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mlkit/common/sdkinternal/ModelType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTOML:Lcom/google/mlkit/common/sdkinternal/ModelType;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final enum BASE:Lcom/google/mlkit/common/sdkinternal/ModelType;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final enum CUSTOM:Lcom/google/mlkit/common/sdkinternal/ModelType;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final enum ENTITY_EXTRACTION:Lcom/google/mlkit/common/sdkinternal/ModelType;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final enum TRANSLATE:Lcom/google/mlkit/common/sdkinternal/ModelType;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/google/mlkit/common/sdkinternal/ModelType;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field private static final synthetic zza:[Lcom/google/mlkit/common/sdkinternal/ModelType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 3
    new-instance v0, Lcom/google/mlkit/common/sdkinternal/ModelType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/common/sdkinternal/ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/ModelType;->UNKNOWN:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 4
    new-instance v1, Lcom/google/mlkit/common/sdkinternal/ModelType;

    const-string v3, "BASE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/mlkit/common/sdkinternal/ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/mlkit/common/sdkinternal/ModelType;->BASE:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 5
    new-instance v3, Lcom/google/mlkit/common/sdkinternal/ModelType;

    const-string v5, "AUTOML"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/mlkit/common/sdkinternal/ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/mlkit/common/sdkinternal/ModelType;->AUTOML:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 6
    new-instance v5, Lcom/google/mlkit/common/sdkinternal/ModelType;

    const-string v7, "TRANSLATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/mlkit/common/sdkinternal/ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/mlkit/common/sdkinternal/ModelType;->TRANSLATE:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 7
    new-instance v7, Lcom/google/mlkit/common/sdkinternal/ModelType;

    const-string v9, "ENTITY_EXTRACTION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/mlkit/common/sdkinternal/ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/mlkit/common/sdkinternal/ModelType;->ENTITY_EXTRACTION:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 8
    new-instance v9, Lcom/google/mlkit/common/sdkinternal/ModelType;

    const-string v11, "CUSTOM"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/mlkit/common/sdkinternal/ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/mlkit/common/sdkinternal/ModelType;->CUSTOM:Lcom/google/mlkit/common/sdkinternal/ModelType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/mlkit/common/sdkinternal/ModelType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 10
    sput-object v11, Lcom/google/mlkit/common/sdkinternal/ModelType;->zza:[Lcom/google/mlkit/common/sdkinternal/ModelType;

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

.method public static values()[Lcom/google/mlkit/common/sdkinternal/ModelType;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/ModelType;->zza:[Lcom/google/mlkit/common/sdkinternal/ModelType;

    invoke-virtual {v0}, [Lcom/google/mlkit/common/sdkinternal/ModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mlkit/common/sdkinternal/ModelType;

    return-object v0
.end method
