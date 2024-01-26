.class final Lcom/google/android/gms/internal/firebase_ml/zznt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzatc:Lcom/google/android/gms/internal/firebase_ml/zznx;

.field private final synthetic zzatd:Lcom/google/android/gms/internal/firebase_ml/zzno;

.field private final synthetic zzate:Lcom/google/android/gms/internal/firebase_ml/zzns;

.field private final synthetic zzatf:Lcom/google/android/gms/internal/firebase_ml/zznr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zznr;Lcom/google/android/gms/internal/firebase_ml/zznx;Lcom/google/android/gms/internal/firebase_ml/zzno;Lcom/google/android/gms/internal/firebase_ml/zzns;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zznt;->zzatf:Lcom/google/android/gms/internal/firebase_ml/zznr;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zznt;->zzatc:Lcom/google/android/gms/internal/firebase_ml/zznx;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zznt;->zzatd:Lcom/google/android/gms/internal/firebase_ml/zzno;

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_ml/zznt;->zzate:Lcom/google/android/gms/internal/firebase_ml/zzns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zznt;->zzatc:Lcom/google/android/gms/internal/firebase_ml/zznx;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zznt;->zzatf:Lcom/google/android/gms/internal/firebase_ml/zznr;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zznr;->zza(Lcom/google/android/gms/internal/firebase_ml/zznr;)Lcom/google/android/gms/internal/firebase_ml/zzoa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zznt;->zzatc:Lcom/google/android/gms/internal/firebase_ml/zznx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzf(Lcom/google/android/gms/internal/firebase_ml/zznx;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zznt;->zzatd:Lcom/google/android/gms/internal/firebase_ml/zzno;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zznt;->zzate:Lcom/google/android/gms/internal/firebase_ml/zzns;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzno;->zza(Lcom/google/android/gms/internal/firebase_ml/zzns;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
