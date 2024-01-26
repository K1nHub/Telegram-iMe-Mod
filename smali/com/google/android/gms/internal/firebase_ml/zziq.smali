.class public final Lcom/google/android/gms/internal/firebase_ml/zziq;
.super Ljava/lang/Object;


# instance fields
.field final synthetic zzaak:Lcom/google/android/gms/internal/firebase_ml/zzio;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzio;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zziq;->zzaak:Lcom/google/android/gms/internal/firebase_ml/zzio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase_ml/zziw;)Lcom/google/android/gms/internal/firebase_ml/zzip;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzip;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzip;-><init>(Lcom/google/android/gms/internal/firebase_ml/zziq;Lcom/google/android/gms/internal/firebase_ml/zziw;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zziq;->zzaak:Lcom/google/android/gms/internal/firebase_ml/zzio;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzio;->zza(Lcom/google/android/gms/internal/firebase_ml/zzer;)V

    return-object v0
.end method
