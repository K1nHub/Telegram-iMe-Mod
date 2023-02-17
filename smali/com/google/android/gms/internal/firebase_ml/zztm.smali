.class final Lcom/google/android/gms/internal/firebase_ml/zztm;
.super Ljava/lang/Object;


# instance fields
.field public zzbop:I

.field public zzboq:J

.field public zzbor:Ljava/lang/Object;

.field public final zzih:Lcom/google/android/gms/internal/firebase_ml/zzuj;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzuj;->zzqs()Lcom/google/android/gms/internal/firebase_ml/zzuj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzih:Lcom/google/android/gms/internal/firebase_ml/zzuj;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzuj;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zztm;->zzih:Lcom/google/android/gms/internal/firebase_ml/zzuj;

    return-void
.end method
