.class public Lcom/google/firebase/ml/custom/FirebaseModelInputs$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/ml/custom/FirebaseModelInputs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzaxf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/ml/custom/FirebaseModelInputs$Builder;->zzaxf:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lcom/google/firebase/ml/custom/FirebaseModelInputs$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    const-string v0, "Please use a valid (non-null) ByteBuffer, array, or multidimensional array as input."

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "The input object should be ByteBuffer, array, or multidimensional array"

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 8
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    const-string v1, "Input Object can not be null"

    .line 9
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    if-eqz v0, :cond_4

    .line 11
    move-object v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 13
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 14
    :cond_2
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v0, "Input ByteBuffer should be direct ByteBuffer"

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 12
    :cond_3
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v0, "Input Bytebuffers should use native order"

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 16
    :cond_4
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v0, "Input Object should be a ByteBuffer"

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 18
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzps;->zzn(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 20
    invoke-static {p1}, Lcom/google/firebase/ml/custom/FirebaseModelDataType;->zzm(Ljava/lang/Object;)I

    move-result v1

    .line 21
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzps;->zza(Ljava/lang/Object;Ljava/util/List;I)Z

    .line 22
    :goto_2
    iget-object v0, p0, Lcom/google/firebase/ml/custom/FirebaseModelInputs$Builder;->zzaxf:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object p0
.end method

.method public build()Lcom/google/firebase/ml/custom/FirebaseModelInputs;
    .locals 3

    .line 24
    new-instance v0, Lcom/google/firebase/ml/custom/FirebaseModelInputs;

    iget-object v1, p0, Lcom/google/firebase/ml/custom/FirebaseModelInputs$Builder;->zzaxf:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/ml/custom/FirebaseModelInputs;-><init>(Ljava/util/List;Lcom/google/firebase/ml/custom/zzb;)V

    return-object v0
.end method
