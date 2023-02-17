.class final synthetic Lcom/google/android/gms/internal/firebase_ml/zzpy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzny;


# instance fields
.field private final zzaxx:Lcom/google/android/gms/internal/firebase_ml/zzpr;

.field private final zzaye:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzpr;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpy;->zzaxx:Lcom/google/android/gms/internal/firebase_ml/zzpr;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzpy;->zzaye:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zzlo()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpy;->zzaxx:Lcom/google/android/gms/internal/firebase_ml/zzpr;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpy;->zzaye:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzf(Ljava/util/List;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object v0

    return-object v0
.end method
