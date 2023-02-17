.class public Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zzauc:Ljava/lang/String;

.field private zzawg:Ljava/lang/String;

.field private zzawl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;->zzawg:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;->zzawl:Ljava/lang/String;

    const-string v0, "Model name can not be empty"

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;->zzauc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;
    .locals 5

    .line 15
    iget-object v0, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;->zzawg:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;->zzawl:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;->zzawl:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Set either filePath or assetFilePath."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 16
    new-instance v0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    iget-object v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;->zzauc:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;->zzawg:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;->zzawl:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/ml/common/modeldownload/zza;)V

    return-object v0
.end method

.method public setAssetFilePath(Ljava/lang/String;)Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;
    .locals 2

    const-string v0, "Model Source file path can not be empty"

    .line 11
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;->zzawg:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "A local model source is either from local file or for asset, you can not set both."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 13
    iput-object p1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;->zzawl:Ljava/lang/String;

    return-object p0
.end method

.method public setFilePath(Ljava/lang/String;)Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;
    .locals 2

    const-string v0, "Model Source file path can not be empty"

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;->zzawl:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "A local model source is either from local file or for asset, you can not set both."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 9
    iput-object p1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;->zzawg:Ljava/lang/String;

    return-object p0
.end method
