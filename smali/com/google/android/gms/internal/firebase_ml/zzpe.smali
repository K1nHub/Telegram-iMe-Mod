.class public final Lcom/google/android/gms/internal/firebase_ml/zzpe;
.super Ljava/lang/Object;


# instance fields
.field private final zzavv:Lcom/google/android/gms/internal/firebase_ml/zzor;

.field private final zzavy:Ljava/lang/String;

.field private final zzavz:Landroid/net/Uri;

.field private final zzawa:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpe;->zzavy:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzpe;->zzavz:Landroid/net/Uri;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzpe;->zzawa:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_ml/zzpe;->zzavv:Lcom/google/android/gms/internal/firebase_ml/zzor;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/firebase_ml/zzpe;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpe;->zzawa:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/firebase_ml/zzpe;)Landroid/net/Uri;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpe;->zzavz:Landroid/net/Uri;

    return-object p0
.end method


# virtual methods
.method public final getModelHash()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpe;->zzawa:Ljava/lang/String;

    return-object v0
.end method

.method public final zzmn()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpe;->zzavy:Ljava/lang/String;

    return-object v0
.end method

.method public final zzmo()Lcom/google/android/gms/internal/firebase_ml/zzor;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpe;->zzavv:Lcom/google/android/gms/internal/firebase_ml/zzor;

    return-object v0
.end method
