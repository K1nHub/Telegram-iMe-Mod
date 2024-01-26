.class public Lcom/google/android/gms/internal/firebase_ml/zzew;
.super Lcom/google/android/gms/internal/firebase_ml/zzer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/firebase_ml/zzer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzte:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzeu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_ml/zzeu;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :goto_0
    move-object v5, v0

    goto :goto_2

    .line 2
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzge;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzeu;->zzel()Lcom/google/android/gms/internal/firebase_ml/zzgj;

    move-result-object v2

    invoke-direct {v1, v2, p4}, Lcom/google/android/gms/internal/firebase_ml/zzge;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzgj;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzep;->zzef()Lcom/google/android/gms/internal/firebase_ml/zzhy;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase_ml/zzgl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase_ml/zzgl;->zzfx()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "data"

    .line 6
    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzge;->zzai(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzge;

    move-result-object v0

    goto :goto_0

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    .line 7
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzer;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzep;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzff;Ljava/lang/Class;)V

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_ml/zzew;->zzte:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public synthetic zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzew;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzew;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/internal/firebase_ml/zzfp;)Ljava/io/IOException;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzeg()Lcom/google/android/gms/internal/firebase_ml/zzep;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzeu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzeu;->zzel()Lcom/google/android/gms/internal/firebase_ml/zzgj;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzeo;->zza(Lcom/google/android/gms/internal/firebase_ml/zzgj;Lcom/google/android/gms/internal/firebase_ml/zzfp;)Lcom/google/android/gms/internal/firebase_ml/zzeo;

    move-result-object p1

    return-object p1
.end method

.method public synthetic zzc(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzer;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzew;

    return-object p1
.end method

.method public zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzew;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/firebase_ml/zzew<",
            "TT;>;"
        }
    .end annotation

    .line 11
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzc(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzer;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzew;

    return-object p1
.end method

.method public synthetic zzeg()Lcom/google/android/gms/internal/firebase_ml/zzep;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzew;->zzem()Lcom/google/android/gms/internal/firebase_ml/zzeu;

    move-result-object v0

    return-object v0
.end method

.method public zzem()Lcom/google/android/gms/internal/firebase_ml/zzeu;
    .locals 1

    .line 10
    invoke-super {p0}, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzeg()Lcom/google/android/gms/internal/firebase_ml/zzep;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzeu;

    return-object v0
.end method
