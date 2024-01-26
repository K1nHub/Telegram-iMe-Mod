.class public final Lcom/google/android/gms/internal/firebase_ml/zzvw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final zzbut:Lcom/google/android/gms/internal/firebase_ml/zzvz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzvz<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final zzbuu:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzyd;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyd;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_ml/zzyd;",
            "TK;",
            "Lcom/google/android/gms/internal/firebase_ml/zzyd;",
            "TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzvz;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase_ml/zzvz;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzyd;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyd;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzvw;->zzbut:Lcom/google/android/gms/internal/firebase_ml/zzvz;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzvw;->zzbuu:Ljava/lang/Object;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_ml/zzvw;->value:Ljava/lang/Object;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/firebase_ml/zzvz;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_ml/zzvz<",
            "TK;TV;>;TK;TV;)I"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzvz;->zzbux:Lcom/google/android/gms/internal/firebase_ml/zzyd;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/firebase_ml/zzum;->zza(Lcom/google/android/gms/internal/firebase_ml/zzyd;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase_ml/zzvz;->zzbuz:Lcom/google/android/gms/internal/firebase_ml/zzyd;

    const/4 v0, 0x2

    .line 11
    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/firebase_ml/zzum;->zza(Lcom/google/android/gms/internal/firebase_ml/zzyd;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase_ml/zzyd;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyd;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzvw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_ml/zzyd;",
            "TK;",
            "Lcom/google/android/gms/internal/firebase_ml/zzyd;",
            "TV;)",
            "Lcom/google/android/gms/internal/firebase_ml/zzvw<",
            "TK;TV;>;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzvw;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzvw;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzyd;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_ml/zzyd;Ljava/lang/Object;)V

    return-object v0
.end method

.method static zza(Lcom/google/android/gms/internal/firebase_ml/zzue;Lcom/google/android/gms/internal/firebase_ml/zzvz;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_ml/zzue;",
            "Lcom/google/android/gms/internal/firebase_ml/zzvz<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase_ml/zzvz;->zzbux:Lcom/google/android/gms/internal/firebase_ml/zzyd;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzum;->zza(Lcom/google/android/gms/internal/firebase_ml/zzue;Lcom/google/android/gms/internal/firebase_ml/zzyd;ILjava/lang/Object;)V

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase_ml/zzvz;->zzbuz:Lcom/google/android/gms/internal/firebase_ml/zzyd;

    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzum;->zza(Lcom/google/android/gms/internal/firebase_ml/zzue;Lcom/google/android/gms/internal/firebase_ml/zzyd;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zzc(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)I"
        }
    .end annotation

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzcv(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzvw;->zzbut:Lcom/google/android/gms/internal/firebase_ml/zzvz;

    .line 14
    invoke-static {v0, p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzvw;->zza(Lcom/google/android/gms/internal/firebase_ml/zzvz;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    .line 15
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzdc(I)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method final zzsh()Lcom/google/android/gms/internal/firebase_ml/zzvz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase_ml/zzvz<",
            "TK;TV;>;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzvw;->zzbut:Lcom/google/android/gms/internal/firebase_ml/zzvz;

    return-object v0
.end method
