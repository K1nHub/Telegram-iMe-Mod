.class public final enum Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzuz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzuz;"
    }
.end annotation


# static fields
.field public static final enum zzami:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;

.field public static final enum zzamj:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;

.field public static final enum zzamk:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;

.field public static final enum zzaml:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;

.field private static final synthetic zzamm:[Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;

.field private static final zzj:Lcom/google/android/gms/internal/firebase_ml/zzuy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzuy<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;",
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
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;

    const-string v1, "TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;->zzami:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;

    .line 14
    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;

    const-string v3, "CUSTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;->zzamj:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;

    .line 15
    new-instance v3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;

    const-string v5, "AUTOML_IMAGE_LABELING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;->zzamk:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;

    .line 16
    new-instance v5, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;

    const-string v7, "BASE_TRANSLATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;->zzaml:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 17
    sput-object v7, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;->zzamm:[Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzmt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzmt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;->zzj:Lcom/google/android/gms/internal/firebase_ml/zzuy;

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
    iput p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;->zzamm:[Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;

    return-object v0
.end method

.method public static zzaw(I)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;
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
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;->zzaml:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;

    return-object p0

    .line 6
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;->zzamk:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;->zzamj:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;->zzami:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;

    return-object p0
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzmu;->zzx:Lcom/google/android/gms/internal/firebase_ml/zzvb;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;->value:I

    return v0
.end method
