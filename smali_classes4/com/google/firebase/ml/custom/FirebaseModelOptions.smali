.class public final Lcom/google/firebase/ml/custom/FirebaseModelOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/ml/custom/FirebaseModelOptions$Builder;
    }
.end annotation


# instance fields
.field private final zzaxi:Ljava/lang/String;

.field private final zzaxj:Ljava/lang/String;

.field private final zzaxk:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/google/firebase/ml/custom/FirebaseModelOptions;->zzaxj:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/google/firebase/ml/custom/FirebaseModelOptions;->zzaxi:Ljava/lang/String;

    .line 15
    iput-boolean p3, p0, Lcom/google/firebase/ml/custom/FirebaseModelOptions;->zzaxk:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/google/firebase/ml/custom/zze;)V
    .locals 0

    const/4 p3, 0x0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/ml/custom/FirebaseModelOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 5
    :cond_1
    instance-of v2, p1, Lcom/google/firebase/ml/custom/FirebaseModelOptions;

    if-nez v2, :cond_2

    return v0

    .line 7
    :cond_2
    check-cast p1, Lcom/google/firebase/ml/custom/FirebaseModelOptions;

    .line 8
    iget-object v2, p0, Lcom/google/firebase/ml/custom/FirebaseModelOptions;->zzaxi:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/firebase/ml/custom/FirebaseModelOptions;->zzaxi:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/firebase/ml/custom/FirebaseModelOptions;->zzaxj:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/firebase/ml/custom/FirebaseModelOptions;->zzaxj:Ljava/lang/String;

    .line 9
    invoke-static {v2, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/google/firebase/ml/custom/FirebaseModelOptions;->zzaxi:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/ml/custom/FirebaseModelOptions;->zzaxj:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final zzmv()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/firebase/ml/custom/FirebaseModelOptions;->zzaxi:Ljava/lang/String;

    return-object v0
.end method

.method final zzmw()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/firebase/ml/custom/FirebaseModelOptions;->zzaxj:Ljava/lang/String;

    return-object v0
.end method

.method public final zzmx()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/google/firebase/ml/custom/FirebaseModelOptions;->zzaxk:Z

    return v0
.end method
