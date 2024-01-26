.class public final Lcom/google/android/gms/internal/firebase_ml/zzgk;
.super Ljava/lang/Object;


# instance fields
.field final zzvw:Lcom/google/android/gms/internal/firebase_ml/zzgj;

.field zzwa:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzgj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgk;->zzwa:Ljava/util/Collection;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzgj;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzgk;->zzvw:Lcom/google/android/gms/internal/firebase_ml/zzgj;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Collection;)Lcom/google/android/gms/internal/firebase_ml/zzgk;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/firebase_ml/zzgk;"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzgk;->zzwa:Ljava/util/Collection;

    return-object p0
.end method

.method public final zzfw()Lcom/google/android/gms/internal/firebase_ml/zzgl;
    .locals 1

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzgl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzgl;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzgk;)V

    return-object v0
.end method
