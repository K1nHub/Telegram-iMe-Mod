.class public Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzaxa:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/firebase_ml/zzpp;",
            ">;"
        }
    .end annotation
.end field

.field private zzaxb:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/firebase_ml/zzpp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;->zzaxa:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;->zzaxb:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;

    iget-object v1, p0, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;->zzaxa:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;->zzaxb:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;-><init>(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/google/firebase/ml/custom/zza;)V

    return-object v0
.end method

.method public setInputFormat(II[I)Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Input dimension can not be null, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;->zzaxa:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzpp;

    invoke-direct {v1, p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzpp;-><init>(I[I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setOutputFormat(II[I)Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x34

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Output dimension can not be null, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;->zzaxb:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzpp;

    invoke-direct {v1, p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzpp;-><init>(I[I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method
