.class public final enum Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzuz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu$zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzuz;"
    }
.end annotation


# static fields
.field private static final enum zzadr:Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;

.field private static final enum zzads:Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;

.field private static final enum zzadt:Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;

.field private static final synthetic zzadu:[Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;

.field private static final zzj:Lcom/google/android/gms/internal/firebase_ml/zzuy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzuy<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;",
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
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;

    const-string v1, "UNKNOWN_MODEL_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;->zzadr:Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;

    const-string v3, "STABLE_MODEL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;->zzads:Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;

    .line 14
    new-instance v3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;

    const-string v5, "LATEST_MODEL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;->zzadt:Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 15
    sput-object v5, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;->zzadu:[Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;->zzj:Lcom/google/android/gms/internal/firebase_ml/zzuy;

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
    iput p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;->zzadu:[Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;

    return-object v0
.end method

.method public static zzai(I)Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;
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
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;->zzadt:Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;

    return-object p0

    .line 5
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;->zzads:Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;->zzadr:Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;

    return-object p0
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlw;->zzx:Lcom/google/android/gms/internal/firebase_ml/zzvb;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;->value:I

    return v0
.end method
