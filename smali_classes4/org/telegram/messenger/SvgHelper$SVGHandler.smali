.class Lorg/telegram/messenger/SvgHelper$SVGHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SvgHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/SvgHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SVGHandler"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private boundsMode:Z

.field private canvas:Landroid/graphics/Canvas;

.field private desiredHeight:I

.field private desiredWidth:I

.field private drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

.field private globalScale:F

.field private globalStyles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/SvgHelper$StyleSet;",
            ">;"
        }
    .end annotation
.end field

.field private paint:Landroid/graphics/Paint;

.field private paintColor:Ljava/lang/Integer;

.field pushed:Z

.field private rect:Landroid/graphics/RectF;

.field private rectTmp:Landroid/graphics/RectF;

.field private scale:F

.field private styles:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>(IILjava/lang/Integer;ZF)V
    .locals 3

    .line 1115
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1104
    iput v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->scale:F

    .line 1105
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    .line 1106
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->rect:Landroid/graphics/RectF;

    .line 1107
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->rectTmp:Landroid/graphics/RectF;

    .line 1109
    iput v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->globalScale:F

    const/4 v0, 0x0

    .line 1111
    iput-boolean v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->pushed:Z

    .line 1113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->globalStyles:Ljava/util/HashMap;

    .line 1116
    iput p5, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->globalScale:F

    .line 1117
    iput p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->desiredWidth:I

    .line 1118
    iput p2, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->desiredHeight:I

    .line 1119
    iput-object p3, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paintColor:Ljava/lang/Integer;

    if-eqz p4, :cond_0

    .line 1121
    new-instance p1, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    invoke-direct {p1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/Integer;ZFLorg/telegram/messenger/SvgHelper$1;)V
    .locals 0

    .line 1097
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/SvgHelper$SVGHandler;-><init>(IILjava/lang/Integer;ZF)V

    return-void
.end method

.method private doColor(Lorg/telegram/messenger/SvgHelper$Properties;Ljava/lang/Integer;Z)V
    .locals 1

    .line 1197
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paintColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1198
    iget-object p2, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    const v0, 0xffffff

    .line 1200
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    and-int/2addr p2, v0

    const/high16 v0, -0x1000000

    or-int/2addr p2, v0

    .line 1201
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    const-string p2, "opacity"

    .line 1203
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/SvgHelper$Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    const-string p2, "fill-opacity"

    goto :goto_1

    :cond_1
    const-string p2, "stroke-opacity"

    .line 1205
    :goto_1
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/SvgHelper$Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    :cond_2
    if-nez p2, :cond_3

    .line 1208
    iget-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    .line 1210
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    const/high16 p3, 0x437f0000    # 255.0f

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_2
    return-void
.end method

.method private doFill(Lorg/telegram/messenger/SvgHelper$Properties;)Z
    .locals 5

    const-string v0, "display"

    .line 1136
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SvgHelper$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "fill"

    .line 1139
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SvgHelper$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string/jumbo v4, "url(#"

    .line 1140
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x5

    .line 1141
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    return v1

    .line 1144
    :cond_1
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SvgHelper$Properties;->getHex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1146
    invoke-direct {p0, p1, v2, v3}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doColor(Lorg/telegram/messenger/SvgHelper$Properties;Ljava/lang/Integer;Z)V

    .line 1147
    iget-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return v3

    .line 1149
    :cond_2
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SvgHelper$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "stroke"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SvgHelper$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 1150
    iget-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1151
    iget-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paintColor:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 1152
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 1154
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return v3

    :cond_4
    return v1
.end method

.method private doStroke(Lorg/telegram/messenger/SvgHelper$Properties;)Z
    .locals 3

    const-string v0, "display"

    .line 1163
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SvgHelper$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "stroke"

    .line 1166
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SvgHelper$Properties;->getHex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1168
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doColor(Lorg/telegram/messenger/SvgHelper$Properties;Ljava/lang/Integer;Z)V

    const-string v0, "stroke-width"

    .line 1169
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SvgHelper$Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1172
    iget-object v1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_1
    const-string v0, "stroke-linecap"

    .line 1174
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SvgHelper$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "round"

    .line 1175
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1176
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0

    :cond_2
    const-string v2, "square"

    .line 1177
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1178
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0

    :cond_3
    const-string v2, "butt"

    .line 1179
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1180
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_4
    :goto_0
    const-string v0, "stroke-linejoin"

    .line 1182
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SvgHelper$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "miter"

    .line 1183
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1184
    iget-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_1

    .line 1185
    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1186
    iget-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_1

    :cond_6
    const-string v0, "bevel"

    .line 1187
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1188
    iget-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1190
    :cond_7
    :goto_1
    iget-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x1

    return p1

    :cond_8
    return v1
.end method

.method private popTransform()V
    .locals 2

    .line 1232
    iget-boolean v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->pushed:Z

    if-eqz v0, :cond_1

    .line 1233
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1234
    invoke-static {v0, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->access$600(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;)V

    goto :goto_0

    .line 1236
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method private pushTransform(Lorg/xml/sax/Attributes;)V
    .locals 1

    const-string/jumbo v0, "transform"

    .line 1218
    invoke-static {v0, p1}, Lorg/telegram/messenger/SvgHelper;->access$200(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1219
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->pushed:Z

    if-eqz v0, :cond_2

    .line 1221
    invoke-static {p1}, Lorg/telegram/messenger/SvgHelper;->access$500(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object p1

    .line 1222
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v0, :cond_1

    .line 1223
    invoke-static {v0, p1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->access$600(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;)V

    goto :goto_1

    .line 1225
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 1226
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 1477
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->styles:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 1478
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1484
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "clipPath"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string p1, "style"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string p1, "defs"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, p3

    goto :goto_0

    :sswitch_3
    const-string p1, "g"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 1486
    :pswitch_0
    iget-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->styles:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_8

    .line 1487
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\}"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move p2, v0

    .line 1488
    :goto_1
    array-length v1, p1

    const/4 v2, 0x0

    if-ge p2, v1, :cond_7

    .line 1489
    aget-object v1, p1, p2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\t"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, p2

    .line 1490
    aget-object v1, p1, p2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    aget-object v1, p1, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2e

    if-eq v1, v3, :cond_4

    goto :goto_2

    .line 1493
    :cond_4
    aget-object v1, p1, p2

    const/16 v3, 0x7b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_5

    goto :goto_2

    .line 1497
    :cond_5
    aget-object v3, p1, p2

    invoke-virtual {v3, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1498
    aget-object v4, p1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1499
    iget-object v4, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->globalStyles:Ljava/util/HashMap;

    new-instance v5, Lorg/telegram/messenger/SvgHelper$StyleSet;

    invoke-direct {v5, v1, v2}, Lorg/telegram/messenger/SvgHelper$StyleSet;-><init>(Ljava/lang/String;Lorg/telegram/messenger/SvgHelper$1;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1501
    :cond_7
    iput-object v2, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->styles:Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1509
    :pswitch_1
    iput-boolean v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->boundsMode:Z

    :cond_8
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_3
        0x2efd0e -> :sswitch_2
        0x68b1db1 -> :sswitch_1
        0x36b25395 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1515
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDrawable()Lorg/telegram/messenger/SvgHelper$SvgDrawable;
    .locals 1

    .line 1519
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    return-object v0
.end method

.method public startDocument()V
    .locals 0

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    .line 1243
    iget-boolean v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->boundsMode:Z

    const-string v4, "style"

    if-eqz v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 1246
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x3

    const-string v7, "polygon"

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "clipPath"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "polyline"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "rect"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v4, "path"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_5
    const-string v4, "line"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_6
    const-string v4, "defs"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_7
    const-string v4, "svg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_8
    const-string v4, "g"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_0

    :cond_9
    move v3, v6

    goto :goto_0

    :sswitch_9
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_0

    :cond_a
    move v3, v9

    goto :goto_0

    :sswitch_a
    const-string v4, "circle"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_0

    :cond_b
    move v3, v10

    goto :goto_0

    :sswitch_b
    const-string v4, "ellipse"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_0

    :cond_c
    move v3, v8

    :goto_0
    const-string v4, "rx"

    const-string v5, "cy"

    const-string v11, "cx"

    const-string v12, "height"

    const-string/jumbo v13, "width"

    const/4 v14, 0x0

    const/4 v15, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_f

    .line 1290
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->styles:Ljava/lang/StringBuilder;

    goto/16 :goto_f

    :pswitch_1
    const-string/jumbo v1, "x"

    .line 1298
    invoke-static {v1, v2}, Lorg/telegram/messenger/SvgHelper;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    if-nez v1, :cond_d

    .line 1300
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_d
    const-string/jumbo v3, "y"

    .line 1302
    invoke-static {v3, v2}, Lorg/telegram/messenger/SvgHelper;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    if-nez v3, :cond_e

    .line 1304
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 1306
    :cond_e
    invoke-static {v13, v2}, Lorg/telegram/messenger/SvgHelper;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v5

    .line 1307
    invoke-static {v12, v2}, Lorg/telegram/messenger/SvgHelper;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v6

    .line 1308
    invoke-static {v4, v2, v15}, Lorg/telegram/messenger/SvgHelper;->access$800(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    .line 1309
    invoke-direct {v0, v2}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1310
    new-instance v7, Lorg/telegram/messenger/SvgHelper$Properties;

    iget-object v8, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->globalStyles:Ljava/util/HashMap;

    invoke-direct {v7, v2, v8, v15}, Lorg/telegram/messenger/SvgHelper$Properties;-><init>(Lorg/xml/sax/Attributes;Ljava/util/HashMap;Lorg/telegram/messenger/SvgHelper$1;)V

    .line 1311
    invoke-direct {v0, v7}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doFill(Lorg/telegram/messenger/SvgHelper$Properties;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1312
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v2, :cond_10

    if-eqz v4, :cond_f

    .line 1314
    new-instance v8, Lorg/telegram/messenger/SvgHelper$RoundRect;

    new-instance v9, Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v13

    add-float/2addr v12, v13

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float/2addr v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-direct {v8, v9, v10}, Lorg/telegram/messenger/SvgHelper$RoundRect;-><init>(Landroid/graphics/RectF;F)V

    iget-object v9, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v2, v8, v9}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->access$1000(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 1316
    :cond_f
    new-instance v8, Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float/2addr v11, v12

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v13

    add-float/2addr v12, v13

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v9, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v2, v8, v9}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->access$1000(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_10
    if-eqz v4, :cond_11

    .line 1320
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v11

    add-float/2addr v10, v11

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float/2addr v11, v12

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1321
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v8, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v10

    iget-object v11, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1323
    :cond_11
    iget-object v12, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float v15, v2, v8

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float v16, v2, v8

    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    move-object/from16 v17, v2

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1327
    :cond_12
    :goto_1
    invoke-direct {v0, v7}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doStroke(Lorg/telegram/messenger/SvgHelper$Properties;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1328
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v2, :cond_14

    if-eqz v4, :cond_13

    .line 1330
    new-instance v7, Lorg/telegram/messenger/SvgHelper$RoundRect;

    new-instance v8, Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v1, v5

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v3, v5

    invoke-direct {v8, v9, v10, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {v7, v8, v1}, Lorg/telegram/messenger/SvgHelper$RoundRect;-><init>(Landroid/graphics/RectF;F)V

    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v2, v7, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->access$1000(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 1332
    :cond_13
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v1, v5

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v3, v5

    invoke-direct {v4, v7, v8, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v2, v4, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->access$1000(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_14
    if-eqz v4, :cond_15

    .line 1336
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v1, v5

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v3, v5

    invoke-virtual {v2, v7, v8, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1337
    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 1339
    :cond_15
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float v9, v1, v4

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float v10, v1, v3

    iget-object v11, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1343
    :cond_16
    :goto_2
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->popTransform()V

    goto/16 :goto_f

    :pswitch_2
    const-string v1, "d"

    .line 1452
    invoke-static {v1, v2}, Lorg/telegram/messenger/SvgHelper;->access$200(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/SvgHelper;->doPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    .line 1453
    invoke-direct {v0, v2}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1454
    new-instance v3, Lorg/telegram/messenger/SvgHelper$Properties;

    iget-object v4, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->globalStyles:Ljava/util/HashMap;

    invoke-direct {v3, v2, v4, v15}, Lorg/telegram/messenger/SvgHelper$Properties;-><init>(Lorg/xml/sax/Attributes;Ljava/util/HashMap;Lorg/telegram/messenger/SvgHelper$1;)V

    .line 1455
    invoke-direct {v0, v3}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doFill(Lorg/telegram/messenger/SvgHelper$Properties;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1456
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v2, :cond_17

    .line 1457
    iget-object v4, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v2, v1, v4}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->access$1000(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 1459
    :cond_17
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v4, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1462
    :cond_18
    :goto_3
    invoke-direct {v0, v3}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doStroke(Lorg/telegram/messenger/SvgHelper$Properties;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1463
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v2, :cond_19

    .line 1464
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->access$1000(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 1466
    :cond_19
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1469
    :cond_1a
    :goto_4
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->popTransform()V

    goto/16 :goto_f

    :pswitch_3
    const-string/jumbo v1, "x1"

    .line 1347
    invoke-static {v1, v2}, Lorg/telegram/messenger/SvgHelper;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v3, "x2"

    .line 1348
    invoke-static {v3, v2}, Lorg/telegram/messenger/SvgHelper;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    const-string/jumbo v4, "y1"

    .line 1349
    invoke-static {v4, v2}, Lorg/telegram/messenger/SvgHelper;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v4

    const-string/jumbo v5, "y2"

    .line 1350
    invoke-static {v5, v2}, Lorg/telegram/messenger/SvgHelper;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v5

    .line 1351
    new-instance v6, Lorg/telegram/messenger/SvgHelper$Properties;

    iget-object v7, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->globalStyles:Ljava/util/HashMap;

    invoke-direct {v6, v2, v7, v15}, Lorg/telegram/messenger/SvgHelper$Properties;-><init>(Lorg/xml/sax/Attributes;Ljava/util/HashMap;Lorg/telegram/messenger/SvgHelper$1;)V

    .line 1352
    invoke-direct {v0, v6}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doStroke(Lorg/telegram/messenger/SvgHelper$Properties;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 1353
    invoke-direct {v0, v2}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1354
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v2, :cond_1b

    .line 1355
    new-instance v6, Lorg/telegram/messenger/SvgHelper$Line;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v6, v1, v4, v3, v5}, Lorg/telegram/messenger/SvgHelper$Line;-><init>(FFFF)V

    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v2, v6, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->access$1000(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 1357
    :cond_1b
    iget-object v7, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iget-object v12, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1359
    :goto_5
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->popTransform()V

    goto/16 :goto_f

    .line 1287
    :pswitch_4
    iput-boolean v10, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->boundsMode:Z

    goto/16 :goto_f

    .line 1248
    :pswitch_5
    invoke-static {v13, v2}, Lorg/telegram/messenger/SvgHelper;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    .line 1249
    invoke-static {v12, v2}, Lorg/telegram/messenger/SvgHelper;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    if-eqz v1, :cond_1c

    if-nez v3, :cond_1d

    :cond_1c
    const-string/jumbo v4, "viewBox"

    .line 1251
    invoke-static {v4, v2}, Lorg/telegram/messenger/SvgHelper;->access$200(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    const-string v1, " "

    .line 1253
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1254
    aget-object v2, v1, v9

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 1255
    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object v1, v2

    :cond_1d
    if-eqz v1, :cond_1e

    if-nez v3, :cond_1f

    .line 1259
    :cond_1e
    iget v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->desiredWidth:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 1260
    iget v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->desiredHeight:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 1262
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 1263
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    if-eqz v1, :cond_21

    if-nez v2, :cond_20

    goto :goto_6

    .line 1267
    :cond_20
    iget v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->desiredWidth:I

    if-eqz v3, :cond_22

    iget v4, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->desiredHeight:I

    if-eqz v4, :cond_22

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    int-to-float v4, v4

    int-to-float v2, v2

    div-float/2addr v4, v2

    .line 1268
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->scale:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_7

    .line 1265
    :cond_21
    :goto_6
    iget v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->desiredWidth:I

    .line 1266
    iget v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->desiredHeight:I

    .line 1272
    :cond_22
    :goto_7
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-nez v3, :cond_23

    .line 1273
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->bitmap:Landroid/graphics/Bitmap;

    .line 1274
    invoke-virtual {v1, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1275
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    .line 1276
    iget v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->scale:F

    cmpl-float v3, v2, v14

    if-eqz v3, :cond_32

    .line 1277
    iget v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->globalScale:F

    mul-float v4, v3, v2

    mul-float/2addr v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_f

    .line 1280
    :cond_23
    iput v1, v3, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->width:I

    .line 1281
    iput v2, v3, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->height:I

    goto/16 :goto_f

    :pswitch_6
    const-string v1, "id"

    .line 1293
    invoke-static {v1, v2}, Lorg/telegram/messenger/SvgHelper;->access$200(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bounds"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1294
    iput-boolean v10, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->boundsMode:Z

    goto/16 :goto_f

    :pswitch_7
    const-string v3, "points"

    .line 1417
    invoke-static {v3, v2}, Lorg/telegram/messenger/SvgHelper;->access$1100(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lorg/telegram/messenger/SvgHelper$NumberParse;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 1419
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 1420
    invoke-static {v3}, Lorg/telegram/messenger/SvgHelper$NumberParse;->access$100(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1421
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v10, :cond_32

    .line 1422
    invoke-direct {v0, v2}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1423
    new-instance v5, Lorg/telegram/messenger/SvgHelper$Properties;

    iget-object v6, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->globalStyles:Ljava/util/HashMap;

    invoke-direct {v5, v2, v6, v15}, Lorg/telegram/messenger/SvgHelper$Properties;-><init>(Lorg/xml/sax/Attributes;Ljava/util/HashMap;Lorg/telegram/messenger/SvgHelper$1;)V

    .line 1424
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v4, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1425
    :goto_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_24

    .line 1426
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-int/lit8 v6, v9, 0x1

    .line 1427
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 1428
    invoke-virtual {v4, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v9, v9, 0x2

    goto :goto_8

    .line 1430
    :cond_24
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1431
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 1433
    :cond_25
    invoke-direct {v0, v5}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doFill(Lorg/telegram/messenger/SvgHelper$Properties;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1434
    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v1, :cond_26

    .line 1435
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v1, v4, v2}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->access$1000(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto :goto_9

    .line 1437
    :cond_26
    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1440
    :cond_27
    :goto_9
    invoke-direct {v0, v5}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doStroke(Lorg/telegram/messenger/SvgHelper$Properties;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1441
    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v1, :cond_28

    .line 1442
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v1, v4, v2}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->access$1000(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto :goto_a

    .line 1444
    :cond_28
    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1447
    :cond_29
    :goto_a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->popTransform()V

    goto/16 :goto_f

    .line 1364
    :pswitch_8
    invoke-static {v11, v2}, Lorg/telegram/messenger/SvgHelper;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    .line 1365
    invoke-static {v5, v2}, Lorg/telegram/messenger/SvgHelper;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "r"

    .line 1366
    invoke-static {v4, v2}, Lorg/telegram/messenger/SvgHelper;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v4

    if-eqz v1, :cond_32

    if-eqz v3, :cond_32

    if-eqz v4, :cond_32

    .line 1368
    invoke-direct {v0, v2}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1369
    new-instance v5, Lorg/telegram/messenger/SvgHelper$Properties;

    iget-object v6, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->globalStyles:Ljava/util/HashMap;

    invoke-direct {v5, v2, v6, v15}, Lorg/telegram/messenger/SvgHelper$Properties;-><init>(Lorg/xml/sax/Attributes;Ljava/util/HashMap;Lorg/telegram/messenger/SvgHelper$1;)V

    .line 1370
    invoke-direct {v0, v5}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doFill(Lorg/telegram/messenger/SvgHelper$Properties;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1371
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v2, :cond_2a

    .line 1372
    new-instance v6, Lorg/telegram/messenger/SvgHelper$Circle;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lorg/telegram/messenger/SvgHelper$Circle;-><init>(FFF)V

    iget-object v7, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v2, v6, v7}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->access$1000(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto :goto_b

    .line 1374
    :cond_2a
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v9, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1377
    :cond_2b
    :goto_b
    invoke-direct {v0, v5}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doStroke(Lorg/telegram/messenger/SvgHelper$Properties;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1378
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v2, :cond_2c

    .line 1379
    new-instance v5, Lorg/telegram/messenger/SvgHelper$Circle;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-direct {v5, v1, v3, v4}, Lorg/telegram/messenger/SvgHelper$Circle;-><init>(FFF)V

    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v2, v5, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->access$1000(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto :goto_c

    .line 1381
    :cond_2c
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1384
    :cond_2d
    :goto_c
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->popTransform()V

    goto/16 :goto_f

    .line 1389
    :pswitch_9
    invoke-static {v11, v2}, Lorg/telegram/messenger/SvgHelper;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    .line 1390
    invoke-static {v5, v2}, Lorg/telegram/messenger/SvgHelper;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    .line 1391
    invoke-static {v4, v2}, Lorg/telegram/messenger/SvgHelper;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "ry"

    .line 1392
    invoke-static {v5, v2}, Lorg/telegram/messenger/SvgHelper;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v5

    if-eqz v1, :cond_32

    if-eqz v3, :cond_32

    if-eqz v4, :cond_32

    if-eqz v5, :cond_32

    .line 1394
    invoke-direct {v0, v2}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1395
    new-instance v6, Lorg/telegram/messenger/SvgHelper$Properties;

    iget-object v7, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->globalStyles:Ljava/util/HashMap;

    invoke-direct {v6, v2, v7, v15}, Lorg/telegram/messenger/SvgHelper$Properties;-><init>(Lorg/xml/sax/Attributes;Ljava/util/HashMap;Lorg/telegram/messenger/SvgHelper$1;)V

    .line 1396
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v1, v4

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v7, v8, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1397
    invoke-direct {v0, v6}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doFill(Lorg/telegram/messenger/SvgHelper$Properties;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1398
    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v1, :cond_2e

    .line 1399
    new-instance v2, Lorg/telegram/messenger/SvgHelper$Oval;

    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->rect:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/SvgHelper$Oval;-><init>(Landroid/graphics/RectF;)V

    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->access$1000(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto :goto_d

    .line 1401
    :cond_2e
    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->rect:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1404
    :cond_2f
    :goto_d
    invoke-direct {v0, v6}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doStroke(Lorg/telegram/messenger/SvgHelper$Properties;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1405
    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v1, :cond_30

    .line 1406
    new-instance v2, Lorg/telegram/messenger/SvgHelper$Oval;

    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->rect:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/SvgHelper$Oval;-><init>(Landroid/graphics/RectF;)V

    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->access$1000(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto :goto_e

    .line 1408
    :cond_30
    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->rect:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1411
    :cond_31
    :goto_e
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->popTransform()V

    :cond_32
    :goto_f
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x62bbe422 -> :sswitch_b
        -0x51134330 -> :sswitch_a
        -0x17b1aac6 -> :sswitch_9
        0x67 -> :sswitch_8
        0x1be64 -> :sswitch_7
        0x2efd0e -> :sswitch_6
        0x32aff4 -> :sswitch_5
        0x346425 -> :sswitch_4
        0x3559e4 -> :sswitch_3
        0x68b1db1 -> :sswitch_2
        0x217e81c0 -> :sswitch_1
        0x36b25395 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method
