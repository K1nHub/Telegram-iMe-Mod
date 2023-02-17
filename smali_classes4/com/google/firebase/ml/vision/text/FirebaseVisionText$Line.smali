.class public Lcom/google/firebase/ml/vision/text/FirebaseVisionText$Line;
.super Lcom/google/firebase/ml/vision/text/FirebaseVisionText$TextBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/ml/vision/text/FirebaseVisionText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Line"
.end annotation


# instance fields
.field private final zzbdr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/ml/vision/text/FirebaseVisionText$Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/vision/text/Line;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$TextBase;-><init>(Lcom/google/android/gms/vision/text/Text;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$Line;->zzbdr:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/vision/text/Line;->getComponents()Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/vision/text/Text;

    .line 5
    instance-of v1, v0, Lcom/google/android/gms/vision/text/Element;

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$Line;->zzbdr:Ljava/util/List;

    new-instance v2, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$Element;

    check-cast v0, Lcom/google/android/gms/vision/text/Element;

    invoke-direct {v2, v0}, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$Element;-><init>(Lcom/google/android/gms/vision/text/Element;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "FirebaseVisionText"

    const-string v1, "A subcomponent of line is should be an element!"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/util/List;Ljava/lang/Float;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Lcom/google/firebase/ml/vision/text/RecognizedLanguage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/firebase/ml/vision/text/FirebaseVisionText$Element;",
            ">;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$TextBase;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/Float;Lcom/google/firebase/ml/vision/text/zzb;)V

    .line 11
    iput-object p4, p0, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$Line;->zzbdr:Ljava/util/List;

    return-void
.end method
