.class public final Lcom/google/android/gms/internal/firebase_ml/zzkx;
.super Ljava/lang/Object;


# instance fields
.field private final limit:I

.field private final zzabd:Lcom/google/android/gms/internal/firebase_ml/zzkg;

.field private final zzabe:Z

.field private final zzabf:Lcom/google/android/gms/internal/firebase_ml/zzlb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzlb;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzkk;->zzaav:Lcom/google/android/gms/internal/firebase_ml/zzkk;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    .line 3
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/android/gms/internal/firebase_ml/zzkx;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlb;ZLcom/google/android/gms/internal/firebase_ml/zzkg;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzlb;ZLcom/google/android/gms/internal/firebase_ml/zzkg;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzkx;->zzabf:Lcom/google/android/gms/internal/firebase_ml/zzlb;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzkx;->zzabe:Z

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzkx;->zzabd:Lcom/google/android/gms/internal/firebase_ml/zzkg;

    const p1, 0x7fffffff

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzkx;->limit:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzkx;)Lcom/google/android/gms/internal/firebase_ml/zzkg;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase_ml/zzkx;->zzabd:Lcom/google/android/gms/internal/firebase_ml/zzkg;

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase_ml/zzkg;)Lcom/google/android/gms/internal/firebase_ml/zzkx;
    .locals 2

    .line 11
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzkx;

    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzkw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/firebase_ml/zzkw;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzkg;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzkx;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlb;)V

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase_ml/zzkx;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/google/android/gms/internal/firebase_ml/zzkx;->limit:I

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzkx;->zzabf:Lcom/google/android/gms/internal/firebase_ml/zzlb;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlb;->zza(Lcom/google/android/gms/internal/firebase_ml/zzkx;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
