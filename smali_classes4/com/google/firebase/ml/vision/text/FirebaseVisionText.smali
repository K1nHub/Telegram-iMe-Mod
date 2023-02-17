.class public Lcom/google/firebase/ml/vision/text/FirebaseVisionText;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/ml/vision/text/FirebaseVisionText$TextBase;,
        Lcom/google/firebase/ml/vision/text/FirebaseVisionText$Element;,
        Lcom/google/firebase/ml/vision/text/FirebaseVisionText$Line;,
        Lcom/google/firebase/ml/vision/text/FirebaseVisionText$TextBlock;
    }
.end annotation


# instance fields
.field private final zzbdq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/ml/vision/text/FirebaseVisionText$TextBlock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/vision/text/TextBlock;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/ml/vision/text/FirebaseVisionText;->zzbdq:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 7
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/vision/text/TextBlock;

    if-eqz v2, :cond_1

    .line 9
    new-instance v3, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$TextBlock;

    invoke-direct {v3, v2}, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$TextBlock;-><init>(Lcom/google/android/gms/vision/text/TextBlock;)V

    .line 10
    iget-object v4, p0, Lcom/google/firebase/ml/vision/text/FirebaseVisionText;->zzbdq:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "\n"

    .line 12
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/vision/text/TextBlock;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {v3}, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$TextBase;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/firebase/ml/vision/text/FirebaseVisionText$TextBlock;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/ml/vision/text/FirebaseVisionText;->zzbdq:Ljava/util/List;

    .line 21
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
