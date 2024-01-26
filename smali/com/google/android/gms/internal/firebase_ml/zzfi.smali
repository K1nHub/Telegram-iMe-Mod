.class final Lcom/google/android/gms/internal/firebase_ml/zzfi;
.super Ljava/lang/Object;


# instance fields
.field final zzto:Lcom/google/android/gms/internal/firebase_ml/zzhd;

.field final zztp:Ljava/lang/StringBuilder;

.field final zztq:Lcom/google/android/gms/internal/firebase_ml/zzhh;

.field final zztr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzfj;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 3
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzfi;->zztr:Ljava/util/List;

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zza(Ljava/lang/Class;Z)Lcom/google/android/gms/internal/firebase_ml/zzhh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfi;->zztq:Lcom/google/android/gms/internal/firebase_ml/zzhh;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzfi;->zztp:Ljava/lang/StringBuilder;

    .line 6
    new-instance p2, Lcom/google/android/gms/internal/firebase_ml/zzhd;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzhd;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzfi;->zzto:Lcom/google/android/gms/internal/firebase_ml/zzhd;

    return-void
.end method
