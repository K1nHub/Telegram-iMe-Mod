.class final Lcom/google/android/gms/internal/firebase_ml/zzgu;
.super Lcom/google/android/gms/internal/firebase_ml/zzgi;


# instance fields
.field private final zzwu:Lcom/google/android/gms/internal/firebase_ml/zzgs;

.field private final zzwy:Lcom/google/android/gms/internal/firebase_ml/zzrj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzgs;Lcom/google/android/gms/internal/firebase_ml/zzrj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgi;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzgu;->zzwu:Lcom/google/android/gms/internal/firebase_ml/zzgs;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzgu;->zzwy:Lcom/google/android/gms/internal/firebase_ml/zzrj;

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzrj;->setLenient(Z)V

    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgu;->zzwy:Lcom/google/android/gms/internal/firebase_ml/zzrj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzrj;->flush()V

    return-void
.end method

.method public final writeBoolean(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgu;->zzwy:Lcom/google/android/gms/internal/firebase_ml/zzrj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzrj;->zzak(Z)Lcom/google/android/gms/internal/firebase_ml/zzrj;

    return-void
.end method

.method public final writeString(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgu;->zzwy:Lcom/google/android/gms/internal/firebase_ml/zzrj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzrj;->zzcc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzrj;

    return-void
.end method

.method public final zza(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgu;->zzwy:Lcom/google/android/gms/internal/firebase_ml/zzrj;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzrj;->zzb(D)Lcom/google/android/gms/internal/firebase_ml/zzrj;

    return-void
.end method

.method public final zza(Ljava/math/BigDecimal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgu;->zzwy:Lcom/google/android/gms/internal/firebase_ml/zzrj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzrj;->zza(Ljava/lang/Number;)Lcom/google/android/gms/internal/firebase_ml/zzrj;

    return-void
.end method

.method public final zza(Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgu;->zzwy:Lcom/google/android/gms/internal/firebase_ml/zzrj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzrj;->zza(Ljava/lang/Number;)Lcom/google/android/gms/internal/firebase_ml/zzrj;

    return-void
.end method

.method public final zzaa(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgu;->zzwy:Lcom/google/android/gms/internal/firebase_ml/zzrj;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzrj;->zzq(J)Lcom/google/android/gms/internal/firebase_ml/zzrj;

    return-void
.end method

.method public final zzaj(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgu;->zzwy:Lcom/google/android/gms/internal/firebase_ml/zzrj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzrj;->zzcb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzrj;

    return-void
.end method

.method public final zze(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgu;->zzwy:Lcom/google/android/gms/internal/firebase_ml/zzrj;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzrj;->zzq(J)Lcom/google/android/gms/internal/firebase_ml/zzrj;

    return-void
.end method

.method public final zzfq()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgu;->zzwy:Lcom/google/android/gms/internal/firebase_ml/zzrj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzrj;->zzoe()Lcom/google/android/gms/internal/firebase_ml/zzrj;

    return-void
.end method

.method public final zzfr()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgu;->zzwy:Lcom/google/android/gms/internal/firebase_ml/zzrj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzrj;->zzof()Lcom/google/android/gms/internal/firebase_ml/zzrj;

    return-void
.end method

.method public final zzfs()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgu;->zzwy:Lcom/google/android/gms/internal/firebase_ml/zzrj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzrj;->zzog()Lcom/google/android/gms/internal/firebase_ml/zzrj;

    return-void
.end method

.method public final zzft()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgu;->zzwy:Lcom/google/android/gms/internal/firebase_ml/zzrj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzrj;->zzoh()Lcom/google/android/gms/internal/firebase_ml/zzrj;

    return-void
.end method

.method public final zzfu()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgu;->zzwy:Lcom/google/android/gms/internal/firebase_ml/zzrj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzrj;->zzoj()Lcom/google/android/gms/internal/firebase_ml/zzrj;

    return-void
.end method

.method public final zzfv()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgu;->zzwy:Lcom/google/android/gms/internal/firebase_ml/zzrj;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzrj;->setIndent(Ljava/lang/String;)V

    return-void
.end method

.method public final zzl(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzgu;->zzwy:Lcom/google/android/gms/internal/firebase_ml/zzrj;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzrj;->zzb(D)Lcom/google/android/gms/internal/firebase_ml/zzrj;

    return-void
.end method
