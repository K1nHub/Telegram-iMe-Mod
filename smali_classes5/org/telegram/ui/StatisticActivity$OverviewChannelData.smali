.class public Lorg/telegram/ui/StatisticActivity$OverviewChannelData;
.super Ljava/lang/Object;
.source "StatisticActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/StatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverviewChannelData"
.end annotation


# instance fields
.field followersPrimary:Ljava/lang/String;

.field followersSecondary:Ljava/lang/String;

.field followersTitle:Ljava/lang/String;

.field followersUp:Z

.field notificationsPrimary:Ljava/lang/String;

.field notificationsTitle:Ljava/lang/String;

.field sharesPrimary:Ljava/lang/String;

.field sharesSecondary:Ljava/lang/String;

.field sharesTitle:Ljava/lang/String;

.field sharesUp:Z

.field viewsPrimary:Ljava/lang/String;

.field viewsSecondary:Ljava/lang/String;

.field viewsTitle:Ljava/lang/String;

.field viewsUp:Z


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2257
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2258
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->followers:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->current:D

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->previous:D

    sub-double/2addr v3, v5

    double-to-int v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    cmpl-double v9, v5, v7

    if-nez v9, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    int-to-float v9, v2

    double-to-float v5, v5

    div-float/2addr v9, v5

    mul-float v9, v9, v3

    .line 2259
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 2260
    :goto_0
    sget v6, Lorg/telegram/messenger/R$string;->FollowersChartTitle:I

    const-string v9, "FollowersChartTitle"

    invoke-static {v9, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersTitle:Ljava/lang/String;

    .line 2261
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->followers:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->current:D

    double-to-int v6, v9

    const/4 v9, 0x0

    invoke-static {v6, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersPrimary:Ljava/lang/String;

    const-string v6, "%s (%d%s)"

    const-string v10, "%s (%.1f%s)"

    const-string v11, "+"

    const/4 v12, 0x3

    const-string v13, "%"

    const/4 v14, 0x2

    const-string v15, ""

    const/16 v16, 0x1

    if-eqz v2, :cond_5

    cmpl-float v17, v5, v4

    if-nez v17, :cond_1

    goto :goto_3

    :cond_1
    float-to-int v4, v5

    int-to-float v3, v4

    cmpl-float v3, v5, v3

    if-nez v3, :cond_3

    .line 2266
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v12, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_2

    move-object v8, v11

    goto :goto_1

    :cond_2
    move-object v8, v15

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v16

    aput-object v13, v5, v14

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersSecondary:Ljava/lang/String;

    goto :goto_4

    .line 2268
    :cond_3
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v12, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_4

    move-object v8, v11

    goto :goto_2

    :cond_4
    move-object v8, v15

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v9

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v16

    aput-object v13, v4, v14

    invoke-static {v3, v10, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersSecondary:Ljava/lang/String;

    goto :goto_4

    .line 2264
    :cond_5
    :goto_3
    iput-object v15, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersSecondary:Ljava/lang/String;

    :goto_4
    if-ltz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    .line 2270
    :goto_5
    iput-boolean v2, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersUp:Z

    .line 2272
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->shares_per_post:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->current:D

    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->previous:D

    sub-double/2addr v3, v7

    double-to-int v2, v3

    const-wide/16 v3, 0x0

    cmpl-double v5, v7, v3

    if-nez v5, :cond_7

    const/4 v3, 0x0

    goto :goto_6

    :cond_7
    int-to-float v3, v2

    double-to-float v4, v7

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    .line 2273
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 2274
    :goto_6
    sget v4, Lorg/telegram/messenger/R$string;->SharesPerPost:I

    const-string v5, "SharesPerPost"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesTitle:Ljava/lang/String;

    .line 2275
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->shares_per_post:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->current:D

    double-to-int v4, v4

    invoke-static {v4, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesPrimary:Ljava/lang/String;

    if-eqz v2, :cond_c

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-nez v5, :cond_8

    goto :goto_9

    :cond_8
    float-to-int v4, v3

    int-to-float v5, v4

    cmpl-float v5, v3, v5

    if-nez v5, :cond_a

    .line 2280
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v12, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_9

    move-object v8, v11

    goto :goto_7

    :cond_9
    move-object v8, v15

    :goto_7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v16

    aput-object v13, v5, v14

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesSecondary:Ljava/lang/String;

    goto :goto_a

    .line 2282
    :cond_a
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v12, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_b

    move-object v8, v11

    goto :goto_8

    :cond_b
    move-object v8, v15

    :goto_8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v5, v16

    aput-object v13, v5, v14

    invoke-static {v4, v10, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesSecondary:Ljava/lang/String;

    goto :goto_a

    .line 2278
    :cond_c
    :goto_9
    iput-object v15, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesSecondary:Ljava/lang/String;

    :goto_a
    if-ltz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_b

    :cond_d
    const/4 v2, 0x0

    .line 2284
    :goto_b
    iput-boolean v2, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesUp:Z

    .line 2286
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->views_per_post:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->current:D

    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->previous:D

    sub-double/2addr v3, v7

    double-to-int v2, v3

    const-wide/16 v3, 0x0

    cmpl-double v5, v7, v3

    if-nez v5, :cond_e

    const/4 v4, 0x0

    goto :goto_c

    :cond_e
    int-to-float v3, v2

    double-to-float v4, v7

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    .line 2287
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2288
    :goto_c
    sget v3, Lorg/telegram/messenger/R$string;->ViewsPerPost:I

    const-string v5, "ViewsPerPost"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsTitle:Ljava/lang/String;

    .line 2289
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->views_per_post:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->current:D

    double-to-int v3, v7

    invoke-static {v3, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsPrimary:Ljava/lang/String;

    if-eqz v2, :cond_13

    const/4 v3, 0x0

    cmpl-float v3, v4, v3

    if-nez v3, :cond_f

    goto :goto_f

    :cond_f
    float-to-int v3, v4

    int-to-float v5, v3

    cmpl-float v5, v4, v5

    if-nez v5, :cond_11

    .line 2293
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v12, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_10

    goto :goto_d

    :cond_10
    move-object v11, v15

    :goto_d
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v16

    aput-object v13, v5, v14

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsSecondary:Ljava/lang/String;

    goto :goto_10

    .line 2295
    :cond_11
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v12, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_12

    goto :goto_e

    :cond_12
    move-object v11, v15

    :goto_e
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v5, v16

    aput-object v13, v5, v14

    invoke-static {v3, v10, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsSecondary:Ljava/lang/String;

    goto :goto_10

    .line 2291
    :cond_13
    :goto_f
    iput-object v15, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsSecondary:Ljava/lang/String;

    :goto_10
    if-ltz v2, :cond_14

    const/4 v2, 0x1

    goto :goto_11

    :cond_14
    const/4 v2, 0x0

    .line 2297
    :goto_11
    iput-boolean v2, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsUp:Z

    .line 2299
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->enabled_notifications:Lorg/telegram/tgnet/TLRPC$TL_statsPercentValue;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_statsPercentValue;->part:D

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_statsPercentValue;->total:D

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    double-to-float v1, v2

    .line 2300
    sget v2, Lorg/telegram/messenger/R$string;->EnabledNotifications:I

    const-string v3, "EnabledNotifications"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->notificationsTitle:Ljava/lang/String;

    float-to-int v2, v1

    int-to-float v3, v2

    cmpl-float v3, v1, v3

    if-nez v3, :cond_15

    .line 2302
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v9

    aput-object v13, v3, v16

    const-string v2, "%d%s"

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->notificationsPrimary:Ljava/lang/String;

    goto :goto_12

    .line 2304
    :cond_15
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v9

    aput-object v13, v3, v16

    const-string v1, "%.2f%s"

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->notificationsPrimary:Ljava/lang/String;

    :goto_12
    return-void
.end method
