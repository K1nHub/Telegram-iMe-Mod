.class public final enum Lcom/google/android/gms/internal/mlkit_common/zzmx;
.super Ljava/lang/Enum;
.source "com.google.mlkit:common@@18.10.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzbl;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_common/zzmx;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_common/zzmx;

.field private static final synthetic zzc:[Lcom/google/android/gms/internal/mlkit_common/zzmx;


# instance fields
.field private final zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzmx;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_common/zzmx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzmx;->zza:Lcom/google/android/gms/internal/mlkit_common/zzmx;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzmx;

    const-string v3, "TRANSLATE"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_common/zzmx;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_common/zzmx;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzmx;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/mlkit_common/zzmx;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/google/android/gms/internal/mlkit_common/zzmx;->zzc:[Lcom/google/android/gms/internal/mlkit_common/zzmx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzmx;->zzd:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_common/zzmx;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzmx;->zzc:[Lcom/google/android/gms/internal/mlkit_common/zzmx;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_common/zzmx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_common/zzmx;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/mlkit_common/zzmx;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzmx;->values()[Lcom/google/android/gms/internal/mlkit_common/zzmx;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcom/google/android/gms/internal/mlkit_common/zzmx;->zzd:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_common/zzmx;->zza:Lcom/google/android/gms/internal/mlkit_common/zzmx;

    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzmx;->zzd:I

    return v0
.end method
