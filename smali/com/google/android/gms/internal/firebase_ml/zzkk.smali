.class final Lcom/google/android/gms/internal/firebase_ml/zzkk;
.super Lcom/google/android/gms/internal/firebase_ml/zzkh;


# static fields
.field static final zzaav:Lcom/google/android/gms/internal/firebase_ml/zzkk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzkk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzkk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzkk;->zzaav:Lcom/google/android/gms/internal/firebase_ml/zzkk;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.none()"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzkh;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/CharSequence;I)I
    .locals 1

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-string v0, "index"

    .line 6
    invoke-static {p2, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->zza(IILjava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public final zzb(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
