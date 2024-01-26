.class public Lcom/google/android/gms/internal/firebase_ml/zzve;
.super Ljava/io/IOException;


# instance fields
.field private zzbtp:Lcom/google/android/gms/internal/firebase_ml/zzwe;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzbtp:Lcom/google/android/gms/internal/firebase_ml/zzwe;

    return-void
.end method

.method static zzrt()Lcom/google/android/gms/internal/firebase_ml/zzve;
    .locals 2

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzve;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzve;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzru()Lcom/google/android/gms/internal/firebase_ml/zzve;
    .locals 2

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzve;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzve;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzrv()Lcom/google/android/gms/internal/firebase_ml/zzve;
    .locals 2

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzve;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzve;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzrw()Lcom/google/android/gms/internal/firebase_ml/zzvh;
    .locals 2

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzvh;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzvh;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzrx()Lcom/google/android/gms/internal/firebase_ml/zzve;
    .locals 2

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzve;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzve;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzry()Lcom/google/android/gms/internal/firebase_ml/zzve;
    .locals 2

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzve;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzve;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final zzg(Lcom/google/android/gms/internal/firebase_ml/zzwe;)Lcom/google/android/gms/internal/firebase_ml/zzve;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzbtp:Lcom/google/android/gms/internal/firebase_ml/zzwe;

    return-object p0
.end method
