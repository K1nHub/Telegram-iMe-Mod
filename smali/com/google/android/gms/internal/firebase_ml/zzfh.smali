.class public final Lcom/google/android/gms/internal/firebase_ml/zzfh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzic;


# instance fields
.field private final zztm:Lcom/google/android/gms/internal/firebase_ml/zzic;

.field private final zztn:Lcom/google/android/gms/internal/firebase_ml/zzfe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzic;Lcom/google/android/gms/internal/firebase_ml/zzfe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzic;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfh;->zztm:Lcom/google/android/gms/internal/firebase_ml/zzic;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzfe;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfh;->zztn:Lcom/google/android/gms/internal/firebase_ml/zzfe;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfh;->zztn:Lcom/google/android/gms/internal/firebase_ml/zzfe;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfh;->zztm:Lcom/google/android/gms/internal/firebase_ml/zzic;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/firebase_ml/zzfe;->zza(Lcom/google/android/gms/internal/firebase_ml/zzic;Ljava/io/OutputStream;)V

    return-void
.end method
