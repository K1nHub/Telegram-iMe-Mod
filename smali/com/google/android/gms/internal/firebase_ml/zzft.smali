.class public abstract Lcom/google/android/gms/internal/firebase_ml/zzft;
.super Ljava/lang/Object;


# static fields
.field static final zzuz:Ljava/util/logging/Logger;

.field private static final zzva:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4
    const-class v0, Lcom/google/android/gms/internal/firebase_ml/zzft;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzft;->zzuz:Ljava/util/logging/Logger;

    const-string v0, "DELETE"

    const-string v1, "GET"

    const-string v2, "POST"

    const-string v3, "PUT"

    .line 5
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 6
    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzft;->zzva:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase_ml/zzfm;)Lcom/google/android/gms/internal/firebase_ml/zzfn;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzfn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzfn;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzft;Lcom/google/android/gms/internal/firebase_ml/zzfm;)V

    return-object v0
.end method

.method public zzag(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzft;->zzva:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzfs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
