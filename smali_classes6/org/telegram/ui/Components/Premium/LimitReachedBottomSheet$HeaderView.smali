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


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 527
    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 528
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x6

    .line 529
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 531
    iget v5, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$700(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    .line 532
    iget v5, v5, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 534
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    .line 535
    iget v8, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v9, 0xb

    if-ne v8, v9, :cond_7

    .line 537
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 538
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 539
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v3, :cond_0

    .line 540
    sget v6, Lorg/telegram/messenger/R$string;->InviteChannelRestrictedUsers2One:I

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v10}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v7

    const-string v10, "InviteChannelRestrictedUsers2One"

    invoke-static {v10, v6, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 542
    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v7

    const-string v10, "InviteChannelRestrictedUsers2"

    invoke-static {v10, v6, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 545
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v3, :cond_2

    .line 546
    sget v6, Lorg/telegram/messenger/R$string;->InviteRestrictedUsers2One:I

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v10}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v7

    const-string v10, "InviteRestrictedUsers2One"

    invoke-static {v10, v6, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 548
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v7

    const-string v10, "InviteRestrictedUsers2"

    invoke-static {v10, v6, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 552
    :cond_3
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 553
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v3, :cond_4

    .line 554
    sget v6, Lorg/telegram/messenger/R$string;->InviteChannelRestrictedUsersOne:I

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v10}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v7

    const-string v10, "InviteChannelRestrictedUsersOne"

    invoke-static {v10, v6, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 556
    :cond_4
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v7

    const-string v10, "InviteChannelRestrictedUsers"

    invoke-static {v10, v6, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 559
    :cond_5
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v3, :cond_6

    .line 560
    sget v6, Lorg/telegram/messenger/R$string;->InviteRestrictedUsersOne:I

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v10}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v7

    const-string v10, "InviteRestrictedUsersOne"

    invoke-static {v10, v6, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 562
    :cond_6
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v7

    const-string v10, "InviteRestrictedUsers"

    invoke-static {v10, v6, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    move-object v8, v6

    move v6, v3

    goto :goto_2

    :cond_7
    if-eqz v6, :cond_8

    .line 568
    iget-object v8, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget-object v8, v8, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto :goto_2

    .line 570
    :cond_8
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_1

    :cond_9
    iget-object v8, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget-object v8, v8, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    goto :goto_2

    :cond_a
    :goto_1
    iget-object v8, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget-object v8, v8, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    .line 573
    :goto_2
    iget-object v10, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget v11, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 574
    iget v10, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 575
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v12

    .line 578
    iget v14, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v15, 0x3

    const/4 v13, 0x7

    if-ne v14, v15, :cond_b

    .line 579
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v12

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v3

    goto :goto_3

    :cond_b
    if-ne v14, v13, :cond_c

    .line 581
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getActivatedAccountsCount()I

    move-result v12

    .line 583
    :cond_c
    :goto_3
    iget v14, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-nez v14, :cond_10

    .line 585
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v12

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-virtual {v12, v7}, Lorg/telegram/messenger/MessagesController;->getDialogs(I)Ljava/util/ArrayList;

    move-result-object v12

    .line 586
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v3, v7

    move v15, v3

    :goto_4
    if-ge v3, v14, :cond_f

    .line 587
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 588
    instance-of v7, v9, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    if-eqz v7, :cond_d

    goto :goto_5

    .line 591
    :cond_d
    iget-boolean v7, v9, Lorg/telegram/tgnet/TLRPC$Dialog;->pinned:Z

    if-eqz v7, :cond_e

    add-int/lit8 v15, v15, 0x1

    :cond_e
    :goto_5
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x0

    const/16 v9, 0xb

    goto :goto_4

    :cond_f
    move v12, v15

    .line 598
    :cond_10
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_7

    :cond_11
    if-gez v12, :cond_12

    move v12, v11

    .line 605
    :cond_12
    iget v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-ne v3, v13, :cond_14

    if-le v12, v11, :cond_13

    sub-int v3, v12, v11

    int-to-float v3, v3

    sub-int v7, v10, v11

    int-to-float v7, v7

    goto :goto_6

    :cond_13
    const/high16 v13, 0x3f000000    # 0.5f

    goto :goto_8

    :cond_14
    int-to-float v3, v12

    int-to-float v7, v10

    :goto_6
    div-float v13, v3, v7

    goto :goto_8

    :cond_15
    :goto_7
    const/high16 v13, 0x3f800000    # 1.0f

    move v12, v10

    .line 614
    :goto_8
    new-instance v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-direct {v3, v2, v5, v12, v10}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;-><init>(Landroid/content/Context;III)V

    iput-object v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    .line 615
    invoke-virtual {v3, v13}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setBagePosition(F)V

    .line 616
    iget-object v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget v5, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setType(I)V

    .line 617
    iget-object v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v6, :cond_16

    .line 619
    iget-object v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setPremiumLocked()V

    goto :goto_a

    .line 621
    :cond_16
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 622
    :cond_17
    iget-object v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 623
    iget v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-ne v3, v4, :cond_18

    .line 624
    iget-object v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    const-string v7, "2 GB"

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 626
    :cond_18
    iget-object v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    :goto_9
    iget-object v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 632
    :cond_19
    :goto_a
    iget v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v7, 0x2

    if-eq v3, v7, :cond_1a

    const/4 v7, 0x5

    if-ne v3, v7, :cond_1b

    .line 633
    :cond_1a
    iget-object v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setDelayedAnimation()V

    .line 637
    :cond_1b
    iget-object v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "fonts/rmedium.ttf"

    .line 640
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 641
    iget v7, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v9, 0xb

    if-ne v7, v9, :cond_1d

    .line 642
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 643
    sget v1, Lorg/telegram/messenger/R$string;->ChannelInviteViaLink:I

    const-string v4, "ChannelInviteViaLink"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 645
    :cond_1c
    sget v1, Lorg/telegram/messenger/R$string;->ChannelInviteViaLinkRestricted:I

    const-string v4, "ChannelInviteViaLinkRestricted"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_1d
    if-ne v7, v4, :cond_1e

    .line 648
    sget v1, Lorg/telegram/messenger/R$string;->FileTooLarge:I

    const-string v4, "FileTooLarge"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 650
    :cond_1e
    sget v1, Lorg/telegram/messenger/R$string;->LimitReached:I

    const-string v4, "LimitReached"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b
    const/high16 v1, 0x41a00000    # 20.0f

    const/4 v4, 0x1

    .line 652
    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v1, "windowBackgroundWhiteBlackText"

    .line 653
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v6, :cond_1f

    goto :goto_c

    :cond_1f
    const/16 v5, 0x16

    :goto_c
    move v13, v5

    const/4 v14, 0x0

    const/16 v15, 0xa

    .line 654
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 657
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v4, 0x1

    .line 658
    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 659
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 660
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/16 v9, 0x18

    const/16 v10, 0x18

    .line 661
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
