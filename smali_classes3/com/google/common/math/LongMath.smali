.class public final Lcom/google/common/math/LongMath;
.super Ljava/lang/Object;
.source "LongMath.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static divide(JJLjava/math/RoundingMode;)J
    .locals 9

    .line 387
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    div-long v0, p0, p2

    mul-long v2, p2, v0

    sub-long v2, p0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v0

    :cond_0
    xor-long/2addr p0, p2

    const/16 v7, 0x3f

    shr-long/2addr p0, v7

    long-to-int p0, p0

    const/4 p1, 0x1

    or-int/2addr p0, p1

    .line 404
    sget-object v7, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p4}, Ljava/math/RoundingMode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x0

    packed-switch v7, :pswitch_data_0

    .line 434
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 423
    :pswitch_0
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 424
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    sub-long/2addr p2, v2

    sub-long/2addr v2, p2

    cmp-long p2, v2, v4

    if-nez p2, :cond_1

    .line 428
    sget-object p2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p4, p2, :cond_4

    sget-object p2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p4, p2, :cond_3

    const-wide/16 p2, 0x1

    and-long/2addr p2, v0

    cmp-long p2, p2, v4

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_1
    if-lez p2, :cond_3

    goto :goto_1

    :pswitch_1
    if-lez p0, :cond_3

    goto :goto_1

    :pswitch_2
    if-gez p0, :cond_3

    goto :goto_1

    :pswitch_3
    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    move p1, v8

    .line 406
    :goto_0
    invoke-static {p1}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :cond_3
    :pswitch_4
    move p1, v8

    :cond_4
    :goto_1
    :pswitch_5
    if-eqz p1, :cond_5

    int-to-long p0, p0

    add-long/2addr v0, p0

    :cond_5
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
