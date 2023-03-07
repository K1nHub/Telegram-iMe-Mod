.class public final Lcom/smedialink/storage/data/utils/extentions/DateExtKt;
.super Ljava/lang/Object;
.source "DateExt.kt"


# direct methods
.method public static final isDayAgo(J)Z
    .locals 3

    .line 7
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/32 p0, 0x5265c00

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isDaysAgo(IJ)Z
    .locals 4

    .line 9
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v0

    sub-long/2addr v0, p1

    int-to-long p0, p0

    const-wide/32 v2, 0x5265c00

    mul-long p0, p0, v2

    cmp-long p2, v0, p0

    if-lez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isMinutesAgo(IJ)Z
    .locals 4

    .line 5
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v0

    sub-long/2addr v0, p1

    int-to-long p0, p0

    const-wide/32 v2, 0xea60

    mul-long p0, p0, v2

    cmp-long p2, v0, p0

    if-lez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final now()J
    .locals 2

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
