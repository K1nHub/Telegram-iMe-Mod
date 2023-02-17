.class public final Lcom/google/android/gms/internal/firebase_ml/zzpq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzpj;


# instance fields
.field private final zzaxp:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpq;->zzaxp:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zzbv(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzoj;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpq;->zzaxp:Landroid/content/Context;

    new-instance v2, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;

    const-string v3, "local"

    invoke-direct {v2, v3}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2, p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;->setFilePath(Ljava/lang/String;)Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;->build()Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/firebase_ml/zzoj;-><init>(Landroid/content/Context;Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzoj;->load()Ljava/nio/MappedByteBuffer;

    move-result-object p1

    return-object p1
.end method
