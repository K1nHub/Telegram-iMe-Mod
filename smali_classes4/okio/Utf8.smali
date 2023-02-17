.class public final Lokio/Utf8;
.super Ljava/lang/Object;
.source "Utf8.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtf8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utf8.kt\nokio/Utf8\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 -Util.kt\nokio/-Util\n*L\n1#1,549:1\n393#1,9:553\n127#1:562\n402#1,18:564\n434#1,4:583\n127#1:587\n440#1,10:589\n127#1:599\n450#1,5:600\n127#1:605\n455#1,22:606\n492#1,4:629\n127#1:633\n498#1,2:635\n127#1:637\n502#1,10:638\n127#1:648\n512#1,5:649\n127#1:654\n517#1,5:655\n127#1:660\n522#1,26:661\n393#1,9:688\n127#1:697\n402#1,18:699\n434#1,4:718\n127#1:722\n440#1,10:724\n127#1:734\n450#1,5:735\n127#1:740\n455#1,22:741\n492#1,4:764\n127#1:768\n498#1,2:770\n127#1:772\n502#1,10:773\n127#1:783\n512#1,5:784\n127#1:789\n517#1,5:790\n127#1:795\n522#1,26:796\n127#1:822\n127#1:824\n127#1:826\n127#1:828\n127#1:830\n127#1:832\n127#1:834\n127#1:836\n127#1:838\n1#2:550\n66#3:551\n60#3:552\n66#3:563\n60#3:582\n66#3:588\n60#3:628\n66#3:634\n60#3:687\n66#3:698\n60#3:717\n66#3:723\n60#3:763\n66#3:769\n66#3:823\n66#3:825\n66#3:827\n66#3:829\n66#3:831\n66#3:833\n66#3:835\n66#3:837\n66#3:839\n*E\n*S KotlinDebug\n*F\n+ 1 Utf8.kt\nokio/Utf8\n*L\n225#1,9:553\n225#1:562\n225#1,18:564\n229#1,4:583\n229#1:587\n229#1,10:589\n229#1:599\n229#1,5:600\n229#1:605\n229#1,22:606\n233#1,4:629\n233#1:633\n233#1,2:635\n233#1:637\n233#1,10:638\n233#1:648\n233#1,5:649\n233#1:654\n233#1,5:655\n233#1:660\n233#1,26:661\n273#1,9:688\n273#1:697\n273#1,18:699\n277#1,4:718\n277#1:722\n277#1,10:724\n277#1:734\n277#1,5:735\n277#1:740\n277#1,22:741\n281#1,4:764\n281#1:768\n281#1,2:770\n281#1:772\n281#1,10:773\n281#1:783\n281#1,5:784\n281#1:789\n281#1,5:790\n281#1:795\n281#1,26:796\n401#1:822\n437#1:824\n449#1:826\n454#1:828\n495#1:830\n499#1:832\n511#1:834\n516#1:836\n521#1:838\n127#1:551\n223#1:552\n225#1:563\n227#1:582\n229#1:588\n231#1:628\n233#1:634\n271#1:687\n273#1:698\n275#1:717\n277#1:723\n279#1:763\n281#1:769\n401#1:823\n437#1:825\n449#1:827\n454#1:829\n495#1:831\n499#1:833\n511#1:835\n516#1:837\n521#1:839\n*E\n"
.end annotation


# direct methods
.method public static final size(Ljava/lang/String;II)J
    .locals 10

    const-string v0, "$this$utf8Size"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_d

    if-lt p2, p1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_c

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p2, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_b

    const-wide/16 v1, 0x0

    :goto_3
    if-ge p1, p2, :cond_a

    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    const-wide/16 v5, 0x1

    if-ge v3, v4, :cond_3

    add-long/2addr v1, v5

    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    const/16 v4, 0x800

    if-ge v3, v4, :cond_4

    const/4 v3, 0x2

    :goto_5
    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_4

    :cond_4
    const v4, 0xd800

    if-lt v3, v4, :cond_9

    const v4, 0xdfff

    if-le v3, v4, :cond_5

    goto :goto_8

    :cond_5
    add-int/lit8 v7, p1, 0x1

    if-ge v7, p2, :cond_6

    .line 100
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    const v9, 0xdbff

    if-gt v3, v9, :cond_8

    const v3, 0xdc00

    if-lt v8, v3, :cond_8

    if-le v8, v4, :cond_7

    goto :goto_7

    :cond_7
    const/4 v3, 0x4

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-int/lit8 p1, p1, 0x2

    goto :goto_3

    :cond_8
    :goto_7
    add-long/2addr v1, v5

    move p1, v7

    goto :goto_3

    :cond_9
    :goto_8
    const/4 v3, 0x3

    goto :goto_5

    :cond_a
    return-wide v1

    .line 80
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " < "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "beginIndex < 0: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic size$default(Ljava/lang/String;IIILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1
    invoke-static {p0, p1, p2}, Lokio/Utf8;->size(Ljava/lang/String;II)J

    move-result-wide p0

    return-wide p0
.end method
