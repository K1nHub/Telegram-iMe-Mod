.class public final Lcom/google/android/gms/internal/firebase_ml/zzow;
.super Ljava/lang/Object;


# static fields
.field public static final zzavh:Lcom/google/android/gms/internal/firebase_ml/zzow;


# instance fields
.field private final zzavi:Lcom/google/android/gms/internal/firebase_ml/zzov;

.field private final zzavj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzow;

    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzov;->zzavd:Lcom/google/android/gms/internal/firebase_ml/zzov;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzow;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzov;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzow;->zzavh:Lcom/google/android/gms/internal/firebase_ml/zzow;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzov;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzow;->zzavi:Lcom/google/android/gms/internal/firebase_ml/zzov;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzow;->zzavj:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final isValid()Z
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzow;->zzavi:Lcom/google/android/gms/internal/firebase_ml/zzov;

    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzov;->zzavd:Lcom/google/android/gms/internal/firebase_ml/zzov;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzma()Lcom/google/android/gms/internal/firebase_ml/zzov;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzow;->zzavi:Lcom/google/android/gms/internal/firebase_ml/zzov;

    return-object v0
.end method
