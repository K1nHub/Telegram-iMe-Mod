.class final Lcom/google/android/gms/internal/firebase_ml/zzlw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzvb;


# static fields
.field static final zzx:Lcom/google/android/gms/internal/firebase_ml/zzvb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlw;->zzx:Lcom/google/android/gms/internal/firebase_ml/zzvb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(I)Z
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;->zzai(I)Lcom/google/android/gms/internal/firebase_ml/zzlu$zze$zza;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
