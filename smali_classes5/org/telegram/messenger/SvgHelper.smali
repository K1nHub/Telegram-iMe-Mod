.class public Lorg/telegram/messenger/SvgHelper;
.super Ljava/lang/Object;
.source "SvgHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/SvgHelper$ParserHelper;,
        Lorg/telegram/messenger/SvgHelper$SVGHandler;,
        Lorg/telegram/messenger/SvgHelper$Properties;,
        Lorg/telegram/messenger/SvgHelper$StyleSet;,
        Lorg/telegram/messenger/SvgHelper$NumberParse;,
        Lorg/telegram/messenger/SvgHelper$SvgDrawable;,
        Lorg/telegram/messenger/SvgHelper$RoundRect;,
        Lorg/telegram/messenger/SvgHelper$Oval;,
        Lorg/telegram/messenger/SvgHelper$Circle;,
        Lorg/telegram/messenger/SvgHelper$Line;
    }
.end annotation


# static fields
.field private static final pow10:[D


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x80

    new-array v0, v0, [D

    .line 1489
    sput-object v0, Lorg/telegram/messenger/SvgHelper;->pow10:[D

    const/4 v0, 0x0

    .line 1492
    :goto_0
    sget-object v1, Lorg/telegram/messenger/SvgHelper;->pow10:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double v4, v0

    .line 1493
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lorg/telegram/messenger/SvgHelper$NumberParse;
    .locals 0

    .line 64
    invoke-static {p0, p1}, Lorg/telegram/messenger/SvgHelper;->getNumberParseAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lorg/telegram/messenger/SvgHelper$NumberParse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 0

    .line 64
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper;->doPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300()[D
    .locals 1

    .line 64
    sget-object v0, Lorg/telegram/messenger/SvgHelper;->pow10:[D

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 0

    .line 64
    invoke-static {p0, p1}, Lorg/telegram/messenger/SvgHelper;->getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 64
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper;->getColorByName(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 0

    .line 64
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper;->parseTransform(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;
    .locals 0

    .line 64
    invoke-static {p0, p1}, Lorg/telegram/messenger/SvgHelper;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 64
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/SvgHelper;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static decompress([B)Ljava/lang/String;
    .locals 5

    .line 1857
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x4d

    .line 1858
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 1859
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 1860
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xc0

    const/16 v4, 0x40

    if-lt v2, v3, :cond_0

    add-int/lit8 v2, v2, -0x80

    sub-int/2addr v2, v4

    const-string v3, "AACAAAAHAAALMAAAQASTAVAAAZaacaaaahaaalmaaaqastava.az0123456789-,"

    .line 1863
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/16 v3, 0x80

    if-lt v2, v3, :cond_1

    const/16 v3, 0x2c

    .line 1866
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-lt v2, v4, :cond_2

    const/16 v3, 0x2d

    .line 1868
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    and-int/lit8 v2, v2, 0x3f

    .line 1870
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 p0, 0x7a

    .line 1873
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1874
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1876
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method private static doPath(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 23

    move-object/from16 v0, p0

    .line 670
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 671
    new-instance v2, Lorg/telegram/messenger/SvgHelper$ParserHelper;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/telegram/messenger/SvgHelper$ParserHelper;-><init>(Ljava/lang/CharSequence;I)V

    .line 672
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->skipWhitespace()V

    .line 673
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 681
    :goto_0
    iget v7, v2, Lorg/telegram/messenger/SvgHelper$ParserHelper;->pos:I

    if-ge v7, v1, :cond_10

    .line 682
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2b

    const/16 v10, 0x73

    const/16 v11, 0x6c

    const/16 v3, 0x68

    const/16 v15, 0x63

    const/16 v9, 0x6d

    if-eq v7, v8, :cond_0

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_0

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :cond_0
    :pswitch_0
    if-eq v4, v9, :cond_8

    const/16 v8, 0x4d

    if-ne v4, v8, :cond_1

    goto :goto_3

    :cond_1
    if-eq v4, v15, :cond_7

    const/16 v8, 0x43

    if-ne v4, v8, :cond_2

    goto :goto_2

    :cond_2
    if-eq v4, v11, :cond_7

    const/16 v8, 0x4c

    if-ne v4, v8, :cond_3

    goto :goto_2

    :cond_3
    if-eq v4, v10, :cond_7

    const/16 v8, 0x53

    if-ne v4, v8, :cond_4

    goto :goto_2

    :cond_4
    if-eq v4, v3, :cond_7

    const/16 v8, 0x48

    if-ne v4, v8, :cond_5

    goto :goto_2

    :cond_5
    const/16 v8, 0x76

    if-eq v4, v8, :cond_7

    const/16 v8, 0x56

    if-ne v4, v8, :cond_6

    goto :goto_2

    .line 716
    :cond_6
    :goto_1
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->advance()V

    move v4, v7

    :cond_7
    :goto_2
    move/from16 v20, v4

    goto :goto_4

    :cond_8
    :goto_3
    add-int/lit8 v7, v4, -0x1

    int-to-char v7, v7

    move/from16 v20, v4

    move v4, v7

    :goto_4
    const/16 v21, 0x1

    sparse-switch v4, :sswitch_data_0

    move/from16 v22, v12

    move v15, v13

    :goto_5
    const/4 v3, 0x0

    :goto_6
    const/16 v21, 0x0

    goto/16 :goto_9

    .line 744
    :sswitch_0
    invoke-virtual {v14}, Landroid/graphics/Path;->close()V

    .line 745
    invoke-virtual {v14, v13, v12}, Landroid/graphics/Path;->moveTo(FF)V

    move v6, v12

    move/from16 v17, v6

    move v5, v13

    move/from16 v16, v5

    :goto_7
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 782
    :sswitch_1
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->nextFloat()F

    move-result v3

    const/16 v7, 0x76

    if-ne v4, v7, :cond_9

    const/4 v4, 0x0

    .line 784
    invoke-virtual {v14, v4, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    add-float/2addr v6, v3

    goto :goto_5

    .line 787
    :cond_9
    invoke-virtual {v14, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move v6, v3

    goto :goto_5

    .line 819
    :sswitch_2
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->nextFloat()F

    move-result v3

    .line 820
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->nextFloat()F

    move-result v7

    .line 821
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->nextFloat()F

    move-result v8

    .line 822
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->nextFloat()F

    move-result v9

    if-ne v4, v10, :cond_a

    add-float/2addr v3, v5

    add-float/2addr v8, v5

    add-float/2addr v7, v6

    add-float/2addr v9, v6

    :cond_a
    move v11, v7

    move v15, v8

    move/from16 v19, v9

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v5, v4

    sub-float v5, v5, v16

    mul-float v6, v6, v4

    sub-float v6, v6, v17

    move-object v4, v14

    move v7, v3

    move v8, v11

    move v9, v15

    move/from16 v10, v19

    .line 831
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move/from16 v16, v3

    move/from16 v17, v11

    move v5, v15

    move/from16 v6, v19

    goto :goto_7

    .line 725
    :sswitch_3
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->nextFloat()F

    move-result v3

    .line 726
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->nextFloat()F

    move-result v7

    if-ne v4, v9, :cond_b

    add-float/2addr v13, v3

    add-float/2addr v12, v7

    .line 730
    invoke-virtual {v14, v3, v7}, Landroid/graphics/Path;->rMoveTo(FF)V

    goto :goto_8

    .line 736
    :cond_b
    invoke-virtual {v14, v3, v7}, Landroid/graphics/Path;->moveTo(FF)V

    move v5, v3

    move v13, v5

    move v6, v7

    move v12, v6

    goto :goto_5

    .line 755
    :sswitch_4
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->nextFloat()F

    move-result v3

    .line 756
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->nextFloat()F

    move-result v7

    if-ne v4, v11, :cond_c

    .line 758
    invoke-virtual {v14, v3, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_8
    add-float/2addr v5, v3

    add-float/2addr v6, v7

    goto/16 :goto_5

    .line 762
    :cond_c
    invoke-virtual {v14, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move v5, v3

    move v6, v7

    goto/16 :goto_5

    .line 770
    :sswitch_5
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->nextFloat()F

    move-result v7

    if-ne v4, v3, :cond_d

    const/4 v3, 0x0

    .line 772
    invoke-virtual {v14, v7, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    add-float/2addr v5, v7

    goto/16 :goto_6

    :cond_d
    const/4 v3, 0x0

    .line 775
    invoke-virtual {v14, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move v5, v7

    goto/16 :goto_6

    :sswitch_6
    const/4 v3, 0x0

    .line 795
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->nextFloat()F

    move-result v7

    .line 796
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->nextFloat()F

    move-result v8

    .line 797
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->nextFloat()F

    move-result v9

    .line 798
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->nextFloat()F

    move-result v10

    .line 799
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->nextFloat()F

    move-result v11

    .line 800
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->nextFloat()F

    move-result v16

    if-ne v4, v15, :cond_e

    add-float/2addr v7, v5

    add-float/2addr v9, v5

    add-float/2addr v11, v5

    add-float/2addr v8, v6

    add-float/2addr v10, v6

    add-float v16, v16, v6

    :cond_e
    move v5, v7

    move v6, v8

    move v15, v9

    move/from16 v17, v10

    move-object v4, v14

    move v7, v15

    move/from16 v8, v17

    move v9, v11

    move/from16 v10, v16

    .line 809
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v5, v11

    move/from16 v6, v16

    move/from16 v16, v15

    goto :goto_9

    :sswitch_7
    const/4 v3, 0x0

    .line 840
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->nextFloat()F

    move-result v9

    .line 841
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->nextFloat()F

    move-result v10

    .line 842
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->nextFloat()F

    move-result v11

    .line 843
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->nextFloat()F

    move-result v4

    float-to-int v15, v4

    .line 844
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->nextFloat()F

    move-result v4

    float-to-int v8, v4

    .line 845
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->nextFloat()F

    move-result v18

    .line 846
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->nextFloat()F

    move-result v19

    move-object v4, v14

    move/from16 v7, v18

    move/from16 v21, v8

    move/from16 v8, v19

    move/from16 v22, v12

    move v12, v15

    move v15, v13

    move/from16 v13, v21

    .line 847
    invoke-static/range {v4 .. v13}, Lorg/telegram/messenger/SvgHelper;->drawArc(Landroid/graphics/Path;FFFFFFFII)V

    move v13, v15

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v12, v22

    goto/16 :goto_6

    :goto_9
    if-nez v21, :cond_f

    move/from16 v16, v5

    move/from16 v17, v6

    .line 857
    :cond_f
    invoke-virtual {v2}, Lorg/telegram/messenger/SvgHelper$ParserHelper;->skipWhitespace()V

    move/from16 v4, v20

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_10
    return-object v14

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_7
        0x43 -> :sswitch_6
        0x48 -> :sswitch_5
        0x4c -> :sswitch_4
        0x4d -> :sswitch_3
        0x53 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
        0x61 -> :sswitch_7
        0x63 -> :sswitch_6
        0x68 -> :sswitch_5
        0x6c -> :sswitch_4
        0x6d -> :sswitch_3
        0x73 -> :sswitch_2
        0x76 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFII)V
    .locals 0

    return-void
.end method

.method public static getBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 410
    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/SvgHelper;->getBitmap(IIIIF)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(IIIIF)Landroid/graphics/Bitmap;
    .locals 9

    .line 414
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 418
    new-instance v8, Lorg/telegram/messenger/SvgHelper$SVGHandler;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move v2, p1

    move v3, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/SvgHelper$SVGHandler;-><init>(IILjava/lang/Integer;ZFLorg/telegram/messenger/SvgHelper$1;)V

    .line 419
    invoke-interface {v0, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 420
    new-instance p1, Lorg/xml/sax/InputSource;

    invoke-direct {p1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 421
    invoke-virtual {v8}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 422
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 414
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 423
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBitmap(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    .line 429
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object p0

    .line 431
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p0

    .line 432
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p0

    .line 433
    new-instance v9, Lorg/telegram/messenger/SvgHelper$SVGHandler;

    if-eqz p3, :cond_0

    const/4 p3, -0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    move-object v5, p3

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move-object v2, v9

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/SvgHelper$SVGHandler;-><init>(IILjava/lang/Integer;ZFLorg/telegram/messenger/SvgHelper$1;)V

    .line 434
    invoke-interface {p0, v9}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 435
    new-instance p1, Lorg/xml/sax/InputSource;

    invoke-direct {p1, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 436
    invoke-virtual {v9}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 429
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 438
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    .line 445
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 446
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 447
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 448
    new-instance v9, Lorg/telegram/messenger/SvgHelper$SVGHandler;

    if-eqz p3, :cond_0

    const/4 p3, -0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    move-object v5, p3

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move-object v2, v9

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/SvgHelper$SVGHandler;-><init>(IILjava/lang/Integer;ZFLorg/telegram/messenger/SvgHelper$1;)V

    .line 449
    invoke-interface {v1, v9}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 450
    new-instance p1, Lorg/xml/sax/InputSource;

    new-instance p2, Ljava/io/StringReader;

    invoke-direct {p2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v1, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 451
    invoke-virtual {v9}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 453
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getBitmapByPathOnly(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
    .locals 2

    .line 505
    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper;->doPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p0

    .line 506
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 507
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    int-to-float p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 508
    invoke-virtual {v1, p3, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 509
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 p2, -0x1

    .line 510
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 511
    invoke-virtual {v1, p0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 514
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getColorByName(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 918
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p0, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "magenta"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v0, "white"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x7

    goto :goto_1

    :sswitch_2
    const-string v0, "green"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "black"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "gray"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "cyan"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "blue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "red"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 p0, 0x1

    goto :goto_1

    :sswitch_8
    const-string/jumbo v0, "yellow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 p0, 0x0

    :goto_1
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const p0, -0xff01

    .line 934
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 936
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p0, -0xff0100

    .line 926
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    const/high16 p0, -0x1000000

    .line 920
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    const p0, -0x777778

    .line 922
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    const p0, -0xff0001

    .line 932
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_6
    const p0, -0xffff01

    .line 928
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7
    const/high16 p0, -0x10000

    .line 924
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_8
    const/16 p0, -0x100

    .line 930
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2bc39b8c -> :sswitch_8
        0x1b891 -> :sswitch_7
        0x2e305a -> :sswitch_6
        0x2ed323 -> :sswitch_5
        0x308a63 -> :sswitch_4
        0x5978fff -> :sswitch_3
        0x5e0cf03 -> :sswitch_2
        0x6bdcc29 -> :sswitch_1
        0x316858a9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDrawable(ILjava/lang/Integer;)Lorg/telegram/messenger/SvgHelper$SvgDrawable;
    .locals 9

    .line 475
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 476
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 478
    new-instance v8, Lorg/telegram/messenger/SvgHelper$SVGHandler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v1, v8

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/SvgHelper$SVGHandler;-><init>(IILjava/lang/Integer;ZFLorg/telegram/messenger/SvgHelper$1;)V

    .line 479
    invoke-interface {v0, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 480
    new-instance p1, Lorg/xml/sax/InputSource;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 481
    invoke-virtual {v8}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->getDrawable()Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 483
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDrawable(Ljava/lang/String;)Lorg/telegram/messenger/SvgHelper$SvgDrawable;
    .locals 9

    .line 460
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 463
    new-instance v8, Lorg/telegram/messenger/SvgHelper$SVGHandler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/SvgHelper$SVGHandler;-><init>(IILjava/lang/Integer;ZFLorg/telegram/messenger/SvgHelper$1;)V

    .line 464
    invoke-interface {v0, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 465
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 466
    invoke-virtual {v8}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->getDrawable()Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 468
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDrawableByPath(Ljava/lang/String;II)Lorg/telegram/messenger/SvgHelper$SvgDrawable;
    .locals 4

    .line 490
    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper;->doPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p0

    .line 491
    new-instance v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    invoke-direct {v0}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;-><init>()V

    .line 492
    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->commands:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->paints:Ljava/util/HashMap;

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iput p1, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->width:I

    .line 495
    iput p2, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 498
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;
    .locals 1

    const/4 v0, 0x0

    .line 887
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/SvgHelper;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private static getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 891
    invoke-static {p0, p1}, Lorg/telegram/messenger/SvgHelper;->getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    const-string p1, "px"

    .line 895
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 896
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p1, "mm"

    .line 897
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 900
    :cond_2
    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private static getHexAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Integer;
    .locals 1

    .line 905
    invoke-static {p0, p1}, Lorg/telegram/messenger/SvgHelper;->getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x1

    .line 910
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 912
    :catch_0
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper;->getColorByName(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static getNumberParseAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lorg/telegram/messenger/SvgHelper$NumberParse;
    .locals 3

    .line 867
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 869
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 870
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper;->parseNumbers(Ljava/lang/String;)Lorg/telegram/messenger/SvgHelper$NumberParse;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 3

    .line 877
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 879
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 880
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseNumbers(Ljava/lang/String;)Lorg/telegram/messenger/SvgHelper$NumberParse;
    .locals 11

    .line 520
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 522
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v0, :cond_5

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    .line 529
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    .line 552
    :sswitch_0
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 553
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 554
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    .line 555
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_1
    new-instance p0, Lorg/telegram/messenger/SvgHelper$NumberParse;

    invoke-direct {p0, v1, v4}, Lorg/telegram/messenger/SvgHelper$NumberParse;-><init>(Ljava/util/ArrayList;I)V

    return-object p0

    :sswitch_1
    const/16 v8, 0x2d

    if-ne v7, v8, :cond_2

    add-int/lit8 v9, v4, -0x1

    .line 565
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x65

    if-ne v9, v10, :cond_2

    goto :goto_1

    .line 568
    :cond_2
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 569
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 570
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 571
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v7, v8, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 585
    :cond_5
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 588
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 594
    :cond_6
    new-instance p0, Lorg/telegram/messenger/SvgHelper$NumberParse;

    invoke-direct {p0, v1, v5}, Lorg/telegram/messenger/SvgHelper$NumberParse;-><init>(Ljava/util/ArrayList;I)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0x20 -> :sswitch_1
        0x29 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2d -> :sswitch_1
        0x41 -> :sswitch_0
        0x43 -> :sswitch_0
        0x48 -> :sswitch_0
        0x4c -> :sswitch_0
        0x4d -> :sswitch_0
        0x51 -> :sswitch_0
        0x53 -> :sswitch_0
        0x54 -> :sswitch_0
        0x56 -> :sswitch_0
        0x5a -> :sswitch_0
        0x61 -> :sswitch_0
        0x63 -> :sswitch_0
        0x68 -> :sswitch_0
        0x6c -> :sswitch_0
        0x6d -> :sswitch_0
        0x71 -> :sswitch_0
        0x73 -> :sswitch_0
        0x74 -> :sswitch_0
        0x76 -> :sswitch_0
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method private static parseTransform(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 9

    const-string v0, "matrix("

    .line 598
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper;->parseNumbers(Ljava/lang/String;)Lorg/telegram/messenger/SvgHelper$NumberParse;

    move-result-object p0

    .line 600
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 601
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/16 v7, 0x9

    new-array v7, v7, [F

    .line 603
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v7, v5

    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v7, v4

    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v7, v2

    .line 604
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v4, 0x3

    aput v2, v7, v4

    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v7, v8

    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    aput p0, v7, v2

    aput v6, v7, v3

    aput v6, v7, v1

    const/16 p0, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v7, p0

    .line 602
    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->setValues([F)V

    return-object v0

    :cond_0
    const-string/jumbo v0, "translate("

    .line 609
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    .line 610
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper;->parseNumbers(Ljava/lang/String;)Lorg/telegram/messenger/SvgHelper$NumberParse;

    move-result-object p0

    .line 611
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 612
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 614
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 615
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 617
    :cond_1
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 618
    invoke-virtual {p0, v0, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object p0

    :cond_2
    const-string/jumbo v0, "scale("

    .line 621
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 622
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper;->parseNumbers(Ljava/lang/String;)Lorg/telegram/messenger/SvgHelper$NumberParse;

    move-result-object p0

    .line 623
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 624
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 626
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_3

    .line 627
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 629
    :cond_3
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 630
    invoke-virtual {p0, v0, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-object p0

    :cond_4
    const-string/jumbo v0, "skewX("

    .line 633
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 634
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper;->parseNumbers(Ljava/lang/String;)Lorg/telegram/messenger/SvgHelper$NumberParse;

    move-result-object p0

    .line 635
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 636
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 637
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    float-to-double v1, p0

    .line 638
    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float p0, v1

    invoke-virtual {v0, p0, v6}, Landroid/graphics/Matrix;->postSkew(FF)Z

    return-object v0

    :cond_5
    const-string/jumbo v0, "skewY("

    .line 641
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 642
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper;->parseNumbers(Ljava/lang/String;)Lorg/telegram/messenger/SvgHelper$NumberParse;

    move-result-object p0

    .line 643
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 644
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 645
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    float-to-double v1, p0

    .line 646
    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float p0, v1

    invoke-virtual {v0, v6, p0}, Landroid/graphics/Matrix;->postSkew(FF)Z

    return-object v0

    :cond_6
    const-string/jumbo v0, "rotate("

    .line 649
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 650
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper;->parseNumbers(Ljava/lang/String;)Lorg/telegram/messenger/SvgHelper$NumberParse;

    move-result-object p0

    .line 651
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 652
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 655
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_7

    .line 656
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 657
    invoke-static {p0}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_7
    const/4 p0, 0x0

    .line 659
    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 660
    invoke-virtual {v1, v6, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 661
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    neg-float v0, v6

    neg-float p0, p0

    .line 662
    invoke-virtual {v1, v0, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v1

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method
