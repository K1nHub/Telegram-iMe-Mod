.class public Lorg/telegram/ui/StatisticActivity$OverviewChatData;
.super Ljava/lang/Object;
.source "StatisticActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/StatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverviewChatData"
.end annotation


# instance fields
.field membersPrimary:Ljava/lang/String;

.field membersSecondary:Ljava/lang/String;

.field membersTitle:Ljava/lang/String;

.field membersUp:Z

.field messagesPrimary:Ljava/lang/String;

.field messagesSecondary:Ljava/lang/String;

.field messagesTitle:Ljava/lang/String;

.field messagesUp:Z

.field postingMembersPrimary:Ljava/lang/String;

.field postingMembersSecondary:Ljava/lang/String;

.field postingMembersTitle:Ljava/lang/String;

.field postingMembersUp:Z

.field viewingMembersPrimary:Ljava/lang/String;

.field viewingMembersSecondary:Ljava/lang/String;

.field viewingMembersTitle:Ljava/lang/String;

.field viewingMembersUp:Z


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2331
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2332
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->members:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->current:D

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->previous:D

    sub-double/2addr v3, v5

    double-to-int v2, v3

    const-wide/16 v3, 0x0

    cmpl-double v7, v5, v3

    const/high16 v8, 0x42c80000    # 100.0f

    const/4 v9, 0x0

    if-nez v7, :cond_0

    move v5, v9

    goto :goto_0

    :cond_0
    int-to-float v7, v2

    double-to-float v5, v5

    div-float/2addr v7, v5

    mul-float/2addr v7, v8

    .line 2333
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 2334
    :goto_0
    sget v6, Lorg/telegram/messenger/R$string;->MembersOverviewTitle:I

    const-string v7, "MembersOverviewTitle"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->membersTitle:Ljava/lang/String;

    .line 2335
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->members:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->current:D

    double-to-int v6, v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->membersPrimary:Ljava/lang/String;

    const-string v6, "+"

    const/4 v10, 0x1

    const-string v11, ""

    if-eqz v2, :cond_5

    cmpl-float v12, v5, v9

    if-nez v12, :cond_1

    goto :goto_3

    :cond_1
    float-to-int v12, v5

    int-to-float v13, v12

    cmpl-float v13, v5, v13

    const-string v14, "%"

    const/4 v15, 0x2

    const/4 v9, 0x3

    if-nez v13, :cond_3

    .line 2340
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v9, [Ljava/lang/Object;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_2

    move-object v8, v6

    goto :goto_1

    :cond_2
    move-object v8, v11

    :goto_1
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v10

    aput-object v14, v9, v15

    const-string v8, "%s (%d%s)"

    invoke-static {v5, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->membersSecondary:Ljava/lang/String;

    goto :goto_4

    .line 2342
    :cond_3
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v9, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_4

    move-object v13, v6

    goto :goto_2

    :cond_4
    move-object v13, v11

    :goto_2
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v9, v10

    aput-object v14, v9, v15

    const-string v5, "%s (%.1f%s)"

    invoke-static {v8, v5, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->membersSecondary:Ljava/lang/String;

    goto :goto_4

    .line 2338
    :cond_5
    :goto_3
    iput-object v11, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->membersSecondary:Ljava/lang/String;

    :goto_4
    if-ltz v2, :cond_6

    move v2, v10

    goto :goto_5

    :cond_6
    move v2, v7

    .line 2344
    :goto_5
    iput-boolean v2, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->membersUp:Z

    .line 2346
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->viewers:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->current:D

    iget-wide v12, v2, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->previous:D

    sub-double/2addr v8, v12

    double-to-int v2, v8

    cmpl-double v5, v12, v3

    if-nez v5, :cond_7

    const/4 v5, 0x0

    goto :goto_6

    :cond_7
    int-to-float v5, v2

    double-to-float v8, v12

    div-float/2addr v5, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v5, v8

    .line 2347
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 2348
    :goto_6
    sget v8, Lorg/telegram/messenger/R$string;->ViewingMembers:I

    const-string v9, "ViewingMembers"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->viewingMembersTitle:Ljava/lang/String;

    .line 2349
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->viewers:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->current:D

    double-to-int v8, v8

    invoke-static {v8, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->viewingMembersPrimary:Ljava/lang/String;

    const-string v8, "%s"

    if-eqz v2, :cond_a

    const/4 v9, 0x0

    cmpl-float v5, v5, v9

    if-nez v5, :cond_8

    goto :goto_8

    .line 2354
    :cond_8
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v10, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_9

    move-object v13, v6

    goto :goto_7

    :cond_9
    move-object v13, v11

    :goto_7
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v7

    invoke-static {v5, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->viewingMembersSecondary:Ljava/lang/String;

    goto :goto_9

    .line 2352
    :cond_a
    :goto_8
    iput-object v11, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->viewingMembersSecondary:Ljava/lang/String;

    :goto_9
    if-ltz v2, :cond_b

    move v2, v10

    goto :goto_a

    :cond_b
    move v2, v7

    .line 2356
    :goto_a
    iput-boolean v2, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->viewingMembersUp:Z

    .line 2359
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->posters:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    iget-wide v12, v2, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->current:D

    iget-wide v14, v2, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->previous:D

    sub-double/2addr v12, v14

    double-to-int v2, v12

    cmpl-double v5, v14, v3

    if-nez v5, :cond_c

    const/4 v5, 0x0

    goto :goto_b

    :cond_c
    int-to-float v5, v2

    double-to-float v9, v14

    div-float/2addr v5, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v5, v9

    .line 2360
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 2361
    :goto_b
    sget v9, Lorg/telegram/messenger/R$string;->PostingMembers:I

    const-string v12, "PostingMembers"

    invoke-static {v12, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->postingMembersTitle:Ljava/lang/String;

    .line 2362
    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->posters:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    iget-wide v12, v9, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->current:D

    double-to-int v9, v12

    invoke-static {v9, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->postingMembersPrimary:Ljava/lang/String;

    if-eqz v2, :cond_f

    const/4 v9, 0x0

    cmpl-float v5, v5, v9

    if-nez v5, :cond_d

    goto :goto_d

    .line 2366
    :cond_d
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v10, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_e

    move-object v13, v6

    goto :goto_c

    :cond_e
    move-object v13, v11

    :goto_c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v7

    invoke-static {v5, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->postingMembersSecondary:Ljava/lang/String;

    goto :goto_e

    .line 2364
    :cond_f
    :goto_d
    iput-object v11, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->postingMembersSecondary:Ljava/lang/String;

    :goto_e
    if-ltz v2, :cond_10

    move v2, v10

    goto :goto_f

    :cond_10
    move v2, v7

    .line 2368
    :goto_f
    iput-boolean v2, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->postingMembersUp:Z

    .line 2370
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->messages:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    iget-wide v12, v2, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->current:D

    iget-wide v14, v2, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->previous:D

    sub-double/2addr v12, v14

    double-to-int v2, v12

    cmpl-double v3, v14, v3

    if-nez v3, :cond_11

    const/4 v9, 0x0

    goto :goto_10

    :cond_11
    int-to-float v3, v2

    double-to-float v4, v14

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    .line 2371
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 2372
    :goto_10
    sget v3, Lorg/telegram/messenger/R$string;->MessagesOverview:I

    const-string v4, "MessagesOverview"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->messagesTitle:Ljava/lang/String;

    .line 2373
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->messages:Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_statsAbsValueAndPrev;->current:D

    double-to-int v1, v3

    invoke-static {v1, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->messagesPrimary:Ljava/lang/String;

    if-eqz v2, :cond_14

    const/4 v1, 0x0

    cmpl-float v1, v9, v1

    if-nez v1, :cond_12

    goto :goto_12

    .line 2377
    :cond_12
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v10, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_13

    goto :goto_11

    :cond_13
    move-object v6, v11

    :goto_11
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v8, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->messagesSecondary:Ljava/lang/String;

    goto :goto_13

    .line 2375
    :cond_14
    :goto_12
    iput-object v11, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->messagesSecondary:Ljava/lang/String;

    :goto_13
    if-ltz v2, :cond_15

    move v7, v10

    .line 2379
    :cond_15
    iput-boolean v7, v0, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->messagesUp:Z

    return-void
.end method
