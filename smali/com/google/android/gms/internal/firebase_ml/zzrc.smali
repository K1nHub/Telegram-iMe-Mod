.class public final Lcom/google/android/gms/internal/firebase_ml/zzrc;
.super Ljava/lang/Object;


# static fields
.field private static final zzass:Lcom/google/android/gms/common/internal/GmsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 141
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "TextAnnotationConverter"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzrc;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase_ml/zzjz;)Ljava/lang/String;
    .locals 2

    const-string v0, "Input Word can not be null"

    .line 130
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzjz;->getSymbols()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzjz;->getSymbols()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzjz;->getSymbols()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzjz;->getSymbols()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzjt;

    .line 133
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzjt;->zzhk()Lcom/google/android/gms/internal/firebase_ml/zzjv;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzjt;->zzhk()Lcom/google/android/gms/internal/firebase_ml/zzjv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzjv;->zzhr()Lcom/google/android/gms/internal/firebase_ml/zzjc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzjz;->getSymbols()Ljava/util/List;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzjz;->getSymbols()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase_ml/zzjt;

    .line 136
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzjt;->zzhk()Lcom/google/android/gms/internal/firebase_ml/zzjv;

    move-result-object p0

    .line 137
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzjv;->zzhr()Lcom/google/android/gms/internal/firebase_ml/zzjc;

    move-result-object p0

    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzjc;->getType()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static zzb(Lcom/google/android/gms/internal/firebase_ml/zzjw;F)Lcom/google/firebase/ml/vision/text/FirebaseVisionText;
    .locals 25

    move/from16 v0, p1

    const-string v1, "The input TextAnnotation can not be null"

    move-object/from16 v2, p0

    .line 1
    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzjw;->getPages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v3, "TextAnnotationConverter"

    const/4 v4, 0x0

    if-gtz v1, :cond_0

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzrc;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "Text Annotation is null, return null"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 5
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzjw;->getPages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x1

    if-le v1, v5, :cond_1

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzrc;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v6, "Text Annotation has more than one page, which should not happen"

    invoke-virtual {v1, v3, v6}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzjw;->getPages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/firebase_ml/zzjn;

    .line 9
    invoke-virtual {v6}, Lcom/google/android/gms/internal/firebase_ml/zzjn;->getBlocks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/firebase_ml/zziy;

    const-string v8, "Input block can not be null"

    .line 11
    invoke-static {v7, v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {v7}, Lcom/google/android/gms/internal/firebase_ml/zziy;->getParagraphs()Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_2

    move-object/from16 v22, v3

    move-object v3, v4

    move-object/from16 v23, v6

    const/4 v4, 0x1

    goto/16 :goto_13

    .line 15
    :cond_2
    invoke-virtual {v7}, Lcom/google/android/gms/internal/firebase_ml/zziy;->getParagraphs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/firebase_ml/zzjq;

    if-eqz v9, :cond_16

    const-string v11, "Input Paragraph can not be null"

    .line 18
    invoke-static {v9, v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 21
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 22
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    const/16 v16, 0x0

    .line 24
    :goto_3
    invoke-virtual {v9}, Lcom/google/android/gms/internal/firebase_ml/zzjq;->getWords()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    if-ge v10, v4, :cond_15

    .line 25
    invoke-virtual {v9}, Lcom/google/android/gms/internal/firebase_ml/zzjq;->getWords()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase_ml/zzjz;

    if-eqz v4, :cond_13

    const-string v5, "Input Word can not be null"

    .line 28
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase_ml/zzjz;->zzhj()Lcom/google/android/gms/internal/firebase_ml/zzix;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzqc;->zza(Lcom/google/android/gms/internal/firebase_ml/zzix;F)Landroid/graphics/Rect;

    move-result-object v2

    .line 31
    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase_ml/zzjz;->zzhk()Lcom/google/android/gms/internal/firebase_ml/zzjv;

    move-result-object v17

    move-object/from16 v22, v3

    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/firebase_ml/zzrc;->zze(Lcom/google/android/gms/internal/firebase_ml/zzjv;)Ljava/util/List;

    move-result-object v3

    .line 33
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase_ml/zzjz;->getSymbols()Ljava/util/List;

    move-result-object v5

    const-string v17, ""

    if-nez v5, :cond_3

    move-object/from16 v23, v6

    move-object/from16 v5, v17

    goto :goto_5

    .line 36
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase_ml/zzjz;->getSymbols()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/gms/internal/firebase_ml/zzjt;

    move-object/from16 v23, v6

    .line 38
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/firebase_ml/zzjt;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v23

    goto :goto_4

    :cond_4
    move-object/from16 v23, v6

    .line 40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 42
    :goto_5
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object/from16 v24, v8

    const/4 v6, 0x0

    goto :goto_6

    .line 44
    :cond_5
    new-instance v6, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$Element;

    move-object/from16 v24, v8

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase_ml/zzjz;->getConfidence()Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v6, v5, v2, v3, v8}, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$Element;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/Float;)V

    :goto_6
    if-eqz v6, :cond_14

    .line 47
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {v6}, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$Element;->getConfidence()Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase_ml/zzqc;->zza(Ljava/lang/Float;)F

    move-result v2

    add-float v2, v16, v2

    .line 50
    invoke-virtual {v6}, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$Element;->getRecognizedLanguages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 51
    invoke-virtual {v6}, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$Element;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Input word can not be null"

    .line 52
    invoke-static {v4, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzrc;->zza(Lcom/google/android/gms/internal/firebase_ml/zzjz;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "HYPHEN"

    if-eqz v5, :cond_8

    const-string v8, "SPACE"

    .line 56
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "SURE_SPACE"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_7

    .line 58
    :cond_6
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v17, "-"

    goto :goto_8

    :cond_7
    :goto_7
    const-string v17, " "

    :cond_8
    :goto_8
    move-object/from16 v5, v17

    .line 61
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {v4, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_ml/zzrc;->zza(Lcom/google/android/gms/internal/firebase_ml/zzjz;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    const-string v4, "EOL_SURE_SPACE"

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "LINE_BREAK"

    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 68
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    const/4 v3, 0x1

    goto :goto_9

    :cond_a
    const/4 v3, 0x0

    :goto_9
    if-nez v3, :cond_c

    .line 69
    invoke-virtual {v9}, Lcom/google/android/gms/internal/firebase_ml/zzjq;->getWords()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v10, v3, :cond_b

    goto :goto_b

    :cond_b
    move/from16 v16, v2

    :goto_a
    const/4 v8, 0x0

    goto/16 :goto_10

    :cond_c
    const/4 v4, 0x1

    :goto_b
    const-string v3, "Input elements can not be null"

    .line 71
    invoke-static {v12, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    const/16 v18, 0x0

    :cond_d
    :goto_c
    if-ge v5, v3, :cond_f

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$Element;

    .line 74
    invoke-virtual {v6}, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$Element;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v8

    if-eqz v8, :cond_d

    if-nez v18, :cond_e

    .line 76
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    goto :goto_d

    :cond_e
    move-object/from16 v8, v18

    .line 77
    :goto_d
    invoke-virtual {v6}, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$Element;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    move-object/from16 v18, v8

    goto :goto_c

    .line 81
    :cond_f
    new-instance v3, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$Line;

    .line 82
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 84
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10
    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/ml/vision/text/RecognizedLanguage;

    if-eqz v8, :cond_10

    .line 87
    invoke-virtual {v8}, Lcom/google/firebase/ml/vision/text/RecognizedLanguage;->getLanguageCode()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_10

    .line 88
    invoke-virtual {v8}, Lcom/google/firebase/ml/vision/text/RecognizedLanguage;->getLanguageCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_10

    .line 89
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_11
    const/4 v8, 0x0

    .line 93
    invoke-static {v2, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-lez v6, :cond_12

    .line 94
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object/from16 v21, v2

    goto :goto_f

    :cond_12
    const/16 v21, 0x0

    :goto_f
    move-object/from16 v16, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v12

    .line 95
    invoke-direct/range {v16 .. v21}, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$Line;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/util/List;Ljava/lang/Float;)V

    .line 96
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-interface {v14}, Ljava/util/Set;->clear()V

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v2

    move-object v15, v3

    const/16 v16, 0x0

    goto :goto_10

    :cond_13
    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move-object/from16 v24, v8

    :cond_14
    const/4 v4, 0x1

    goto/16 :goto_a

    :goto_10
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, v22

    move-object/from16 v6, v23

    move-object/from16 v8, v24

    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_15
    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move-object/from16 v24, v8

    const/4 v4, 0x1

    .line 103
    invoke-interface {v13, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_11

    :cond_16
    const/4 v4, 0x0

    :goto_11
    move-object/from16 v2, p0

    goto/16 :goto_2

    :cond_17
    move-object/from16 v22, v3

    move-object/from16 v23, v6

    const/4 v4, 0x1

    .line 105
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v3, 0x0

    goto :goto_13

    .line 107
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v10, 0x0

    :goto_12
    if-ge v10, v3, :cond_19

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v10, v10, 0x1

    check-cast v5, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$Line;

    .line 109
    invoke-virtual {v5}, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$Line;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 111
    :cond_19
    invoke-virtual {v7}, Lcom/google/android/gms/internal/firebase_ml/zziy;->zzhk()Lcom/google/android/gms/internal/firebase_ml/zzjv;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zzrc;->zze(Lcom/google/android/gms/internal/firebase_ml/zzjv;)Ljava/util/List;

    move-result-object v12

    .line 112
    new-instance v3, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$TextBlock;

    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 114
    invoke-virtual {v7}, Lcom/google/android/gms/internal/firebase_ml/zziy;->zzhj()Lcom/google/android/gms/internal/firebase_ml/zzix;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzqc;->zza(Lcom/google/android/gms/internal/firebase_ml/zzix;F)Landroid/graphics/Rect;

    move-result-object v11

    .line 115
    invoke-virtual {v7}, Lcom/google/android/gms/internal/firebase_ml/zziy;->getConfidence()Ljava/lang/Float;

    move-result-object v14

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lcom/google/firebase/ml/vision/text/FirebaseVisionText$TextBlock;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/util/List;Ljava/lang/Float;)V

    :goto_13
    if-eqz v3, :cond_1a

    .line 118
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    move-object/from16 v3, v22

    move-object/from16 v6, v23

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v2, p0

    goto/16 :goto_1

    :cond_1b
    const/4 v4, 0x0

    move-object/from16 v2, p0

    goto/16 :goto_0

    .line 121
    :cond_1c
    new-instance v0, Lcom/google/firebase/ml/vision/text/FirebaseVisionText;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase_ml/zzjw;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/firebase/ml/vision/text/FirebaseVisionText;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public static zze(Lcom/google/android/gms/internal/firebase_ml/zzjv;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_ml/zzjv;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/ml/vision/text/RecognizedLanguage;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzjv;->zzhs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzjv;->zzhs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase_ml/zzjb;

    .line 125
    invoke-static {v1}, Lcom/google/firebase/ml/vision/text/RecognizedLanguage;->zza(Lcom/google/android/gms/internal/firebase_ml/zzjb;)Lcom/google/firebase/ml/vision/text/RecognizedLanguage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
