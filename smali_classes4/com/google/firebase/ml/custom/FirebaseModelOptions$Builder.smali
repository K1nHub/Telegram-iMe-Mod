.class public Lcom/google/firebase/ml/custom/FirebaseModelOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/ml/custom/FirebaseModelOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzaxi:Ljava/lang/String;

.field private zzaxj:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/ml/custom/FirebaseModelOptions;
    .locals 5

    .line 10
    iget-object v0, p0, Lcom/google/firebase/ml/custom/FirebaseModelOptions$Builder;->zzaxi:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/ml/custom/FirebaseModelOptions$Builder;->zzaxj:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v2, "At least one model source should be not null"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 11
    new-instance v0, Lcom/google/firebase/ml/custom/FirebaseModelOptions;

    iget-object v2, p0, Lcom/google/firebase/ml/custom/FirebaseModelOptions$Builder;->zzaxi:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/ml/custom/FirebaseModelOptions$Builder;->zzaxj:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/firebase/ml/custom/FirebaseModelOptions;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/google/firebase/ml/custom/zze;)V

    return-object v0
.end method

.method public setLocalModelName(Ljava/lang/String;)Lcom/google/firebase/ml/custom/FirebaseModelOptions$Builder;
    .locals 0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/firebase/ml/custom/FirebaseModelOptions$Builder;->zzaxi:Ljava/lang/String;

    return-object p0
.end method
