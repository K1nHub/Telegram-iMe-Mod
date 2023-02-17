.class public final Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;
    }
.end annotation


# instance fields
.field private final zzaxa:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/firebase_ml/zzpp;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaxb:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/firebase_ml/zzpp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/firebase_ml/zzpp;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/firebase_ml/zzpp;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Input formats can not be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Output formats can not be null"

    .line 3
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 9
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-ltz v4, :cond_0

    if-ge v4, v0, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Model input index (%d) is outside range [0, %d]"

    .line 13
    invoke-static {p2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xb

    invoke-direct {p1, p2, v0}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 16
    :cond_1
    iput-object p1, p0, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;->zzaxa:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_2

    .line 22
    iput-object p2, p0, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;->zzaxb:Landroid/util/SparseArray;

    return-void

    .line 20
    :cond_2
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string p2, "Model output data formats must be specified and cannot be empty."

    invoke-direct {p1, p2, v1}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 7
    :cond_3
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string p2, "Model input data formats must be specified and cannot be empty."

    invoke-direct {p1, p2, v1}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method synthetic constructor <init>(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/google/firebase/ml/custom/zza;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;-><init>(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-void
.end method


# virtual methods
.method public final zzmr()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/firebase_ml/zzpp;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;->zzaxa:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final zzms()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/firebase_ml/zzpp;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;->zzaxb:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final zzmt()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;->zzaxb:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 27
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 29
    iget-object v3, p0, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;->zzaxb:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 30
    iget-object v4, p0, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;->zzaxb:Landroid/util/SparseArray;

    .line 31
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase_ml/zzpp;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase_ml/zzpp;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v6, 0x4

    if-ne v4, v6, :cond_0

    .line 36
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_1

    .line 37
    :cond_0
    new-instance v0, Lcom/google/firebase/ml/common/FirebaseMLException;

    const/16 v1, 0x24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Not supported data type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 35
    :cond_1
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_1

    .line 34
    :cond_2
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_1

    .line 33
    :cond_3
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 38
    :goto_1
    iget-object v5, p0, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;->zzaxb:Landroid/util/SparseArray;

    .line 39
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/firebase_ml/zzpp;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase_ml/zzpp;->zzmy()[I

    move-result-object v5

    .line 40
    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method
