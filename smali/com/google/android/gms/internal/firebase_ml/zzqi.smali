.class final Lcom/google/android/gms/internal/firebase_ml/zzqi;
.super Lcom/google/android/gms/internal/firebase_ml/zzir;


# instance fields
.field private final synthetic zzbar:Lcom/google/android/gms/internal/firebase_ml/zzqf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzqf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqi;->zzbar:Lcom/google/android/gms/internal/firebase_ml/zzqf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzir;-><init>()V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/firebase_ml/zzis;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_ml/zzis<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzir;->zza(Lcom/google/android/gms/internal/firebase_ml/zzis;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzeh()Lcom/google/android/gms/internal/firebase_ml/zzfj;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqi;->zzbar:Lcom/google/android/gms/internal/firebase_ml/zzqf;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzqf;->zza(Lcom/google/android/gms/internal/firebase_ml/zzqf;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-Goog-Spatula"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzf(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
