.class public Lcom/google/android/gms/internal/firebase_ml/zzis;
.super Lcom/google/android/gms/internal/firebase_ml/zzew;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/firebase_ml/zzew<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private $Xgafv:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
        value = "$.xgafv"
    .end annotation
.end field

.field private accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
        value = "access_token"
    .end annotation
.end field

.field private alt:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private callback:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private fields:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private oauthToken:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
        value = "oauth_token"
    .end annotation
.end field

.field private prettyPrint:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private quotaUser:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private uploadProtocol:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
        value = "upload_protocol"
    .end annotation
.end field

.field private uploadType:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzio;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_ml/zzio;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/firebase_ml/zzew;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzeu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public synthetic zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzis;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzis;

    move-result-object p1

    return-object p1
.end method

.method public synthetic zzc(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzer;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzis;

    return-object p1
.end method

.method public synthetic zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzew;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzis;

    return-object p1
.end method

.method public final synthetic zzeg()Lcom/google/android/gms/internal/firebase_ml/zzep;
    .locals 1

    .line 8
    invoke-super {p0}, Lcom/google/android/gms/internal/firebase_ml/zzew;->zzem()Lcom/google/android/gms/internal/firebase_ml/zzeu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzio;

    return-object v0
.end method

.method public final synthetic zzem()Lcom/google/android/gms/internal/firebase_ml/zzeu;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzeg()Lcom/google/android/gms/internal/firebase_ml/zzep;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzio;

    return-object v0
.end method

.method public zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzis;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/firebase_ml/zzis<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzew;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzew;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzis;

    return-object p1
.end method
