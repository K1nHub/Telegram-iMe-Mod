.class public final enum Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzuz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzuz;"
    }
.end annotation


# static fields
.field public static final enum zzael:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

.field public static final enum zzaem:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

.field public static final enum zzaen:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

.field public static final enum zzaeo:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

.field public static final enum zzaep:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

.field private static final synthetic zzaeq:[Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

.field private static final zzj:Lcom/google/android/gms/internal/firebase_ml/zzuy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzuy<",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    const-string v1, "UNKNOWN_DATA_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;->zzael:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    .line 15
    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    const-string v3, "TYPE_FLOAT32"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;->zzaem:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    .line 16
    new-instance v3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    const-string v5, "TYPE_INT32"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;->zzaen:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    .line 17
    new-instance v5, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    const-string v7, "TYPE_BYTE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;->zzaeo:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    .line 18
    new-instance v7, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    const-string v9, "TYPE_LONG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;->zzaep:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 19
    sput-object v9, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;->zzaeq:[Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzly;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzly;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;->zzj:Lcom/google/android/gms/internal/firebase_ml/zzuy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;->zzaeq:[Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    return-object v0
.end method

.method public static zzaj(I)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;->zzaep:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    return-object p0

    .line 7
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;->zzaeo:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    return-object p0

    .line 6
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;->zzaen:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;->zzaem:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    return-object p0

    .line 4
    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;->zzael:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;

    return-object p0
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase_ml/zzvb;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlz;->zzx:Lcom/google/android/gms/internal/firebase_ml/zzvb;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzp$zzb$zzb;->value:I

    return v0
.end method
