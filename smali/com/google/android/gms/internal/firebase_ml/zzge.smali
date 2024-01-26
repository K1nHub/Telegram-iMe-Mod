.class public final Lcom/google/android/gms/internal/firebase_ml/zzge;
.super Lcom/google/android/gms/internal/firebase_ml/zzey;


# instance fields
.field private final data:Ljava/lang/Object;

.field private final zzvw:Lcom/google/android/gms/internal/firebase_ml/zzgj;

.field private zzvx:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzgj;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "application/json; charset=UTF-8"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzey;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzgj;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzge;->zzvw:Lcom/google/android/gms/internal/firebase_ml/zzgj;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzge;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzge;->zzvw:Lcom/google/android/gms/internal/firebase_ml/zzgj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzey;->zzen()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase_ml/zzgj;->zza(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/android/gms/internal/firebase_ml/zzgi;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzge;->zzvx:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzgi;->zzfs()V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzge;->zzvx:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzgi;->zzaj(Ljava/lang/String;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzge;->data:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzgi;->zzc(Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzge;->zzvx:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzgi;->zzft()V

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzgi;->flush()V

    return-void
.end method

.method public final zzai(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzge;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzge;->zzvx:Ljava/lang/String;

    return-object p0
.end method
