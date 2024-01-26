.class Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;
.super Landroid/widget/LinearLayout;
.source "LimitReachedBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderView"
.end annotation


# instance fields
.field boostCounterView:Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;

.field description:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

.field title:Landroid/widget/TextView;

.field titleLinearLayout:Landroid/widget/LinearLayout;


# direct methods
.method public static synthetic $r8$lambda$VxfZhUcJMF2YHit7kVBYXFAUJfA(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;)V
    .locals 35

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 1256
    iput-object v10, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    .line 1257
    invoke-direct {v9, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x1

    .line 1258
    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1259
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v0

    const/4 v13, 0x6

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v1

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v14, 0x0

    invoke-virtual {v9, v0, v14, v1, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1261
    iget v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3200(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    .line 1262
    iget v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1264
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v0

    .line 1265
    iget v1, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v8, 0x2

    const/16 v13, 0x18

    const/16 v15, 0x14

    const/16 v7, 0x12

    const/16 v6, 0x13

    if-ne v1, v6, :cond_0

    .line 1266
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move/from16 v23, v0

    move-object/from16 v24, v1

    goto/16 :goto_3

    :cond_0
    if-ne v1, v7, :cond_2

    .line 1268
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v1

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    const-string v6, "MoreBoosts"

    if-nez v1, :cond_1

    .line 1269
    sget v1, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsDescription:I

    new-array v7, v12, [Ljava/lang/Object;

    .line 1271
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v5

    iget v5, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    new-array v4, v12, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v2

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v14

    invoke-static {v6, v5, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v14

    const-string v2, "ChannelNeedBoostsDescription"

    .line 1269
    invoke-static {v2, v1, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1274
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsDescriptionNextLevel:I

    new-array v2, v8, [Ljava/lang/Object;

    .line 1276
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v4

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v5

    iget v5, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    sub-int/2addr v4, v5

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v7

    iget v7, v7, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v8

    iget v8, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v14

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v14

    .line 1277
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v4

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    add-int/2addr v4, v12

    new-array v5, v14, [Ljava/lang/Object;

    const-string v6, "BoostStories"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v12

    const-string v4, "ChannelNeedBoostsDescriptionNextLevel"

    .line 1274
    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-ne v1, v15, :cond_3

    .line 1281
    sget v1, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForColorDescription:I

    new-array v2, v12, [Ljava/lang/Object;

    .line 1283
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->channelColorLevelMin()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v14

    .line 1281
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_3
    if-ne v1, v13, :cond_4

    .line 1286
    sget v1, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForProfileColorDescription:I

    new-array v2, v12, [Ljava/lang/Object;

    .line 1288
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->channelColorLevelMin()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v14

    .line 1286
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x19

    if-ne v1, v2, :cond_5

    .line 1291
    sget v1, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForEmojiStatusDescription:I

    new-array v2, v12, [Ljava/lang/Object;

    .line 1293
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->channelEmojiStatusLevelMin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v14

    .line 1291
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x1a

    if-ne v1, v2, :cond_6

    .line 1296
    sget v1, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForReplyIconDescription:I

    new-array v2, v12, [Ljava/lang/Object;

    .line 1298
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->channelBgIconLevelMin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v14

    .line 1296
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x1b

    if-ne v1, v2, :cond_7

    .line 1301
    sget v1, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForProfileIconDescription:I

    new-array v2, v12, [Ljava/lang/Object;

    .line 1303
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->channelProfileIconLevelMin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v14

    .line 1301
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x16

    if-ne v1, v2, :cond_8

    .line 1306
    sget v1, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForWallpaperDescription:I

    new-array v2, v12, [Ljava/lang/Object;

    .line 1308
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->channelWallpaperLevelMin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v14

    .line 1306
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x17

    if-ne v1, v2, :cond_9

    .line 1311
    sget v1, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForCustomWallpaperDescription:I

    new-array v2, v12, [Ljava/lang/Object;

    .line 1313
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->channelCustomWallpaperLevelMin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v14

    .line 1311
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x15

    if-ne v1, v2, :cond_a

    .line 1316
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v1

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v14

    const-string v4, "ReactionReachLvlForReaction"

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0xb

    if-ne v1, v2, :cond_12

    .line 1319
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1320
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1321
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v12, :cond_b

    .line 1322
    sget v0, Lorg/telegram/messenger/R$string;->InviteChannelRestrictedUsers2One:I

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    const-string v2, "InviteChannelRestrictedUsers2One"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1324
    :cond_b
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v14

    const-string v2, "InviteChannelRestrictedUsers2"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1327
    :cond_c
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v12, :cond_d

    .line 1328
    sget v0, Lorg/telegram/messenger/R$string;->InviteRestrictedUsers2One:I

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    const-string v2, "InviteRestrictedUsers2One"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1330
    :cond_d
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v14

    const-string v2, "InviteRestrictedUsers2"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1334
    :cond_e
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1335
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v12, :cond_f

    .line 1336
    sget v0, Lorg/telegram/messenger/R$string;->InviteChannelRestrictedUsersOne:I

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    const-string v2, "InviteChannelRestrictedUsersOne"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1338
    :cond_f
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v14

    const-string v2, "InviteChannelRestrictedUsers"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1341
    :cond_10
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v12, :cond_11

    .line 1342
    sget v0, Lorg/telegram/messenger/R$string;->InviteRestrictedUsersOne:I

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    const-string v2, "InviteRestrictedUsersOne"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1344
    :cond_11
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v14

    const-string v2, "InviteRestrictedUsers"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object/from16 v24, v1

    move/from16 v23, v12

    goto :goto_3

    :cond_12
    if-eqz v0, :cond_13

    .line 1350
    iget-object v1, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto/16 :goto_0

    .line 1352
    :cond_13
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_2

    :cond_14
    iget-object v1, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    :goto_2
    iget-object v1, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    goto/16 :goto_0

    .line 1355
    :goto_3
    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget v8, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1356
    iget v5, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1357
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v0

    .line 1360
    iget v2, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v4, 0x3

    const/4 v6, 0x7

    if-ne v2, v4, :cond_16

    .line 1361
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v12

    goto :goto_6

    :cond_16
    if-ne v2, v6, :cond_17

    .line 1363
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getActivatedAccountsCount()I

    move-result v0

    goto :goto_6

    :cond_17
    if-nez v2, :cond_1b

    .line 1366
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v14}, Lorg/telegram/messenger/MessagesController;->getDialogs(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1367
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v14

    move v7, v4

    :goto_4
    if-ge v7, v2, :cond_1a

    .line 1368
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v1, v25

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 1369
    instance-of v12, v1, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    if-eqz v12, :cond_18

    goto :goto_5

    .line 1372
    :cond_18
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->pinned:Z

    if-eqz v1, :cond_19

    add-int/lit8 v4, v4, 0x1

    :cond_19
    :goto_5
    add-int/lit8 v7, v7, 0x1

    const/4 v12, 0x1

    goto :goto_4

    :cond_1a
    move v0, v4

    .line 1379
    :cond_1b
    :goto_6
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_8

    :cond_1c
    if-gez v0, :cond_1d

    move v0, v8

    .line 1386
    :cond_1d
    iget v1, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-ne v1, v6, :cond_1f

    if-le v0, v8, :cond_1e

    sub-int v1, v0, v8

    int-to-float v1, v1

    sub-int v2, v5, v8

    int-to-float v2, v2

    goto :goto_7

    :cond_1e
    const/high16 v7, 0x3f000000    # 0.5f

    goto :goto_9

    :cond_1f
    int-to-float v1, v0

    int-to-float v2, v5

    :goto_7
    div-float/2addr v1, v2

    move v7, v1

    goto :goto_9

    :cond_20
    :goto_8
    move v0, v5

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_9
    int-to-float v1, v8

    int-to-float v2, v5

    div-float v6, v1, v2

    .line 1397
    iget v1, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v4, 0x12

    if-eq v1, v4, :cond_22

    if-eq v1, v15, :cond_22

    if-eq v1, v13, :cond_22

    const/16 v2, 0x19

    if-eq v1, v2, :cond_23

    const/16 v12, 0x16

    if-eq v1, v12, :cond_23

    const/16 v12, 0x17

    if-eq v1, v12, :cond_23

    const/16 v12, 0x13

    if-eq v1, v12, :cond_23

    const/16 v12, 0x15

    if-eq v1, v12, :cond_23

    const/16 v4, 0x1a

    const/16 v12, 0x1b

    if-eq v1, v4, :cond_24

    if-ne v1, v12, :cond_21

    goto :goto_a

    :cond_21
    move/from16 v20, v14

    goto :goto_b

    :cond_22
    const/16 v2, 0x19

    :cond_23
    const/16 v4, 0x1a

    const/16 v12, 0x1b

    :cond_24
    :goto_a
    const/16 v20, 0x1

    :goto_b
    if-eqz v20, :cond_25

    move/from16 v22, v14

    goto :goto_c

    :cond_25
    move/from16 v22, v0

    .line 1413
    :goto_c
    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView$1;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v26

    move-object v0, v1

    move-object v12, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/16 v18, 0x12

    move/from16 v4, v22

    const/16 v13, 0x13

    move v15, v7

    move-object/from16 v7, v26

    move/from16 v18, v8

    const/4 v13, 0x2

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView$1;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;Landroid/content/Context;IIIFLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    iput-object v12, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    const/16 v5, 0x8

    if-eqz v20, :cond_27

    .line 1423
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 1424
    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->boostedNow:Z

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    goto :goto_d

    :cond_26
    move v2, v14

    :goto_d
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setBoosts(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    goto :goto_f

    .line 1427
    :cond_27
    invoke-virtual {v12, v15}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setBagePosition(F)V

    .line 1428
    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget v1, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setType(I)V

    .line 1429
    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v23, :cond_28

    .line 1431
    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setPremiumLocked()V

    goto :goto_f

    .line 1433
    :cond_28
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1434
    :cond_29
    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1435
    iget v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2a

    .line 1436
    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    const-string v1, "2 GB"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 1438
    :cond_2a
    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1440
    :goto_e
    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1445
    :cond_2b
    :goto_f
    iget v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-eq v0, v13, :cond_2c

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2d

    .line 1446
    :cond_2c
    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setDelayedAnimation()V

    .line 1449
    :cond_2d
    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    const/16 v27, -0x1

    const/16 v28, -0x2

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, -0x4

    const/16 v32, 0x0

    const/16 v33, -0x4

    const/16 v34, 0x0

    invoke-static/range {v27 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1451
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    .line 1452
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1453
    iget v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2e

    .line 1454
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x12

    :goto_10
    const/16 v2, 0x16

    goto/16 :goto_12

    :cond_2e
    const/16 v1, 0x12

    if-ne v0, v1, :cond_30

    .line 1456
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v0

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    if-nez v0, :cond_2f

    .line 1457
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingEnableStories:I

    const-string v3, "BoostingEnableStories"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 1459
    :cond_2f
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingIncreaseLevel:I

    const-string v3, "BoostingIncreaseLevel"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_30
    const/16 v2, 0x15

    if-ne v0, v2, :cond_31

    .line 1462
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ReactionCustomReactions:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_31
    const/16 v2, 0x14

    if-ne v0, v2, :cond_32

    .line 1464
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingEnableColor:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_32
    const/16 v2, 0x18

    if-ne v0, v2, :cond_33

    .line 1466
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingEnableProfileColor:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_33
    const/16 v2, 0x1a

    if-ne v0, v2, :cond_34

    .line 1468
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingEnableLinkIcon:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_34
    const/16 v2, 0x1b

    if-ne v0, v2, :cond_35

    .line 1470
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingEnableProfileIcon:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_35
    const/16 v2, 0x19

    if-ne v0, v2, :cond_36

    .line 1472
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingEnableEmojiStatus:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    :cond_36
    const/16 v2, 0x16

    if-eq v0, v2, :cond_3b

    const/16 v3, 0x17

    if-ne v0, v3, :cond_37

    goto :goto_11

    :cond_37
    const/16 v3, 0xb

    if-ne v0, v3, :cond_39

    .line 1476
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1477
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelInviteViaLink:I

    const-string v4, "ChannelInviteViaLink"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 1479
    :cond_38
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelInviteViaLinkRestricted:I

    const-string v4, "ChannelInviteViaLinkRestricted"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    :cond_39
    const/4 v3, 0x6

    if-ne v0, v3, :cond_3a

    .line 1482
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->FileTooLarge:I

    const-string v4, "FileTooLarge"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 1484
    :cond_3a
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->LimitReached:I

    const-string v4, "LimitReached"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 1474
    :cond_3b
    :goto_11
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingEnableWallpaper:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1486
    :goto_12
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1487
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1488
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1490
    iget v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v4, 0x13

    if-ne v0, v4, :cond_40

    .line 1491
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v0, v11, v4}, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->boostCounterView:Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;

    .line 1492
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->boostCount:I

    invoke-virtual {v0, v4, v14}, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->setCount(IZ)V

    .line 1493
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1494
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    .line 1495
    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1496
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 1497
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    iget-object v6, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    const/4 v7, -0x2

    invoke-static {v7, v7, v4, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1498
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->boostCounterView:Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/16 v14, 0x30

    const/4 v15, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1499
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    const/16 v15, 0xc

    if-eqz v23, :cond_3c

    move/from16 v16, v5

    goto :goto_13

    :cond_3c
    move/from16 v16, v2

    :goto_13
    const/16 v17, 0xc

    const/16 v18, 0x9

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_16

    .line 1501
    :cond_3d
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    const/4 v15, -0x2

    const/16 v16, -0x2

    const/16 v17, 0x1

    const/16 v18, 0x0

    if-eqz v23, :cond_3e

    move/from16 v19, v5

    goto :goto_14

    :cond_3e
    move/from16 v19, v2

    :goto_14
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1503
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1504
    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1505
    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 1507
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0xe

    .line 1508
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1509
    new-instance v5, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 1510
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 1511
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)J

    move-result-wide v6

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    .line 1512
    new-instance v6, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v6}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 1513
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v7

    invoke-virtual {v6, v7, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    .line 1514
    invoke-virtual {v5, v4, v6}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    const/16 v6, 0x1c

    .line 1515
    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1516
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz v4, :cond_3f

    .line 1518
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3f
    const/4 v4, 0x1

    .line 1520
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1521
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1522
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v6, 0x41500000    # 13.0f

    .line 1523
    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1524
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/16 v14, 0x10

    const/16 v15, 0x24

    const/16 v16, 0x0

    const/16 v17, 0xc

    const/16 v18, 0x0

    .line 1525
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v13, 0x1c

    const/16 v14, 0x50

    const/16 v15, 0x12

    const/16 v17, 0x12

    .line 1527
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1529
    new-instance v2, Landroid/animation/LayoutTransition;

    invoke-direct {v2}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v4, 0x64

    .line 1530
    invoke-virtual {v2, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 v4, 0x4

    .line 1531
    invoke-virtual {v2, v4}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 1532
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1533
    iget-object v2, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->boostCounterView:Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;

    const/4 v13, -0x2

    const/16 v14, 0x30

    const/16 v15, -0x1e

    const/16 v16, 0x2

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v13, 0x26

    const/16 v14, 0x11

    const/4 v15, 0x0

    const/16 v16, -0x4

    const/16 v17, 0x0

    const/16 v18, 0xc

    .line 1535
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1536
    invoke-static {v0}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 1537
    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView$$ExternalSyntheticLambda0;

    invoke-direct {v2, v9}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_16

    .line 1543
    :cond_40
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v23, :cond_41

    move/from16 v16, v5

    goto :goto_15

    :cond_41
    move/from16 v16, v2

    :goto_15
    const/16 v17, 0x0

    const/16 v18, 0xa

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1545
    :goto_16
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    .line 1546
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1547
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1548
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1549
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v2

    iget-object v4, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v4

    const v5, 0x3f8ccccd    # 1.1f

    mul-float/2addr v4, v5

    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1550
    iget v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-ne v0, v1, :cond_42

    .line 1551
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$6000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_17

    .line 1553
    :cond_42
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$6100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1555
    :goto_17
    iget v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_43

    .line 1556
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/4 v3, 0x1

    const/16 v4, 0x18

    const/4 v5, -0x2

    const/16 v6, 0x18

    const/16 v7, 0x11

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_18

    .line 1558
    :cond_43
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/4 v3, 0x1

    const/16 v4, 0x18

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/16 v7, 0x18

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1560
    :goto_18
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updatePremiumButtonText()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2

    .line 1538
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1539
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method


# virtual methods
.method public recreateTitleAndDescription()V
    .locals 12

    .line 1564
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1566
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1567
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1568
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1569
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1570
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->boostCounterView:Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1572
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    .line 1573
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1574
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 1575
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    const/4 v7, -0x2

    invoke-static {v7, v7, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1576
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->boostCounterView:Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1577
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/4 v6, 0x1

    const/16 v7, 0x19

    const/16 v8, 0x16

    const/16 v9, 0xc

    const/16 v10, 0x9

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1579
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1580
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1581
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    const-string v4, "fonts/rmedium.ttf"

    .line 1582
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1583
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1584
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$6200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1585
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1586
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x16

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1589
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1590
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    .line 1591
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1592
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v4

    const v5, 0x3f8ccccd    # 1.1f

    mul-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1593
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1594
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$6300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1595
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/4 v4, 0x1

    const/16 v5, 0x18

    const/4 v6, -0x2

    const/16 v7, 0x18

    const/16 v8, 0x11

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
