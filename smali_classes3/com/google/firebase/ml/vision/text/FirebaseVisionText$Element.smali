.class public Lcom/google/firebase/ml/vision/text/FirebaseVisionText$Element;
.super Lcom/google/firebase/ml/vision/text/FirebaseVisionText$TextBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/ml/vision/text/FirebaseVisionText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Element"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/vision/text/Element;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$TextBase;-><init>(Lcom/google/android/gms/vision/text/Text;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/Float;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Lcom/google/firebase/ml/vision/text/RecognizedLanguage;",
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

    move-object v4, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$TextBase;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/Float;Lcom/google/firebase/ml/vision/text/zzb;)V

    return-void
.end method
