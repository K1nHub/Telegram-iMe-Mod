.class public Lcom/google/android/gms/internal/firebase_ml/zzes;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzev;


# instance fields
.field private final key:Ljava/lang/String;

.field private final zztb:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzes;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzes;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzes;->key:Ljava/lang/String;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzes;->zztb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/firebase_ml/zzer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_ml/zzer<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzes;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "key"

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzf(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
