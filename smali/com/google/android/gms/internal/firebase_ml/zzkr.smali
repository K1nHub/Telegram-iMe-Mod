.class final Lcom/google/android/gms/internal/firebase_ml/zzkr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_ml/zzkr$zza;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final zzaba:Lcom/google/android/gms/internal/firebase_ml/zzks;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3
    const-class v0, Lcom/google/android/gms/internal/firebase_ml/zzkr;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzkr;->logger:Ljava/util/logging/Logger;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzkr$zza;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzkr$zza;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzkt;)V

    .line 5
    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzkr;->zzaba:Lcom/google/android/gms/internal/firebase_ml/zzks;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzax(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
