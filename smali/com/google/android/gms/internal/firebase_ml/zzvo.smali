.class abstract Lcom/google/android/gms/internal/firebase_ml/zzvo;
.super Ljava/lang/Object;


# static fields
.field private static final zzbum:Lcom/google/android/gms/internal/firebase_ml/zzvo;

.field private static final zzbun:Lcom/google/android/gms/internal/firebase_ml/zzvo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzvq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzvq;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzvr;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzvo;->zzbum:Lcom/google/android/gms/internal/firebase_ml/zzvo;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzvt;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzvt;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzvr;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzvo;->zzbun:Lcom/google/android/gms/internal/firebase_ml/zzvo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzvr;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzvo;-><init>()V

    return-void
.end method

.method static zzse()Lcom/google/android/gms/internal/firebase_ml/zzvo;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzvo;->zzbum:Lcom/google/android/gms/internal/firebase_ml/zzvo;

    return-object v0
.end method

.method static zzsf()Lcom/google/android/gms/internal/firebase_ml/zzvo;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzvo;->zzbun:Lcom/google/android/gms/internal/firebase_ml/zzvo;

    return-object v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method abstract zzb(Ljava/lang/Object;J)V
.end method
