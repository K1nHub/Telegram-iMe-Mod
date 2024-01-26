.class Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;
.source "SaveToGallerySettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SaveToGallerySettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;Lorg/telegram/ui/SaveToGallerySettingsActivity$1;)V
    .locals 0

    .line 343
    invoke-direct {p0, p1}, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    iget-object v0, v0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 568
    iget-object v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    iget-object v0, v0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    .line 573
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 574
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    .line 504
    iget-object v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    iget-object v0, v0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    iget v0, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 505
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    .line 506
    iget-object p2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    iget-object p2, p2, Lorg/telegram/ui/SaveToGallerySettingsActivity;->exceptionsDialogs:Landroid/util/LongSparseArray;

    invoke-virtual {p2}, Landroid/util/LongSparseArray;->size()I

    move-result p2

    if-lez p2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextCell;->setNeedDivider(Z)V

    goto/16 :goto_3

    .line 507
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    iget-object v0, v0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    iget v0, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_3

    .line 508
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 509
    iget-object v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->getSettings()Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;

    move-result-object v0

    .line 510
    iget-object v3, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    iget v3, v3, Lorg/telegram/ui/SaveToGallerySettingsActivity;->savePhotosRow:I

    if-ne p2, v3, :cond_2

    .line 511
    sget p2, Lorg/telegram/messenger/R$string;->SaveToGalleryPhotos:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-boolean v0, v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->savePhoto:Z

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 512
    iget-object p2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_lightblue:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_filled_data_photos:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setColorfullIcon(II)V

    goto/16 :goto_3

    .line 514
    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->SaveToGalleryVideos:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-boolean v0, v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->saveVideo:Z

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 515
    iget-object p2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_green:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_filled_data_videos:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setColorfullIcon(II)V

    goto/16 :goto_3

    .line 518
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    iget-object v0, v0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    iget v0, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v3, 0x7

    const/4 v4, 0x2

    if-ne v0, v3, :cond_8

    .line 519
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 520
    iget-object v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    iget v3, v0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->videoDividerRow:I

    if-ne p2, v3, :cond_7

    .line 521
    invoke-virtual {v0}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->getSettings()Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;

    move-result-object p2

    iget-wide v5, p2, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->limitVideo:J

    .line 525
    iget-object p2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    iget-object v0, p2, Lorg/telegram/ui/SaveToGallerySettingsActivity;->dialogException:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    if-eqz v0, :cond_4

    .line 526
    sget p2, Lorg/telegram/messenger/R$string;->SaveToGalleryVideoHintCurrent:I

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "SaveToGalleryVideoHintCurrent"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 527
    :cond_4
    iget p2, p2, Lorg/telegram/ui/SaveToGallerySettingsActivity;->type:I

    if-ne p2, v2, :cond_5

    .line 528
    sget p2, Lorg/telegram/messenger/R$string;->SaveToGalleryVideoHintUser:I

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "SaveToGalleryVideoHintUser"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_5
    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    .line 530
    sget p2, Lorg/telegram/messenger/R$string;->SaveToGalleryVideoHintChannels:I

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "SaveToGalleryVideoHintChannels"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_6
    if-ne p2, v4, :cond_f

    .line 532
    sget p2, Lorg/telegram/messenger/R$string;->SaveToGalleryVideoHintGroup:I

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "SaveToGalleryVideoHintGroup"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 535
    :cond_7
    iget-object v0, v0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    iget-object p2, p2, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 537
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    iget-object v0, v0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    iget v0, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_9

    .line 538
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 539
    iget-object v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    iget-object v0, v0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    iget-object p2, p2, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 540
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    iget-object v0, v0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    iget v0, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne v0, v4, :cond_f

    .line 541
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v5, p1

    check-cast v5, Lorg/telegram/ui/Cells/UserCell;

    .line 542
    iget-object p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    iget-object p1, p1, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    iget-object p1, p1, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;->exception:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v6, p1, Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;->dialogId:J

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v6

    const/4 v0, 0x0

    .line 545
    instance-of v3, v6, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_b

    .line 546
    move-object v0, v6

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 547
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v3, :cond_a

    .line 548
    sget v0, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v3, "SavedMessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 550
    :cond_a
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 552
    :cond_b
    instance-of v3, v6, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_c

    .line 553
    move-object v0, v6

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 554
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :cond_c
    :goto_0
    move-object v7, v0

    .line 556
    invoke-virtual {v5, v2}, Lorg/telegram/ui/Cells/UserCell;->setSelfAsSavedMessages(Z)V

    .line 557
    iget-object v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->access$700(Lorg/telegram/ui/SaveToGallerySettingsActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;->createDescription(I)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    iget-object p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    iget-object p1, p1, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    if-eq p2, p1, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    iget-object p1, p1, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    add-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne p1, v4, :cond_d

    goto :goto_1

    :cond_d
    move v10, v1

    goto :goto_2

    :cond_e
    :goto_1
    move v10, v2

    :goto_2
    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    :cond_f
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 23

    move-object/from16 v6, p0

    const/4 v7, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x2

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    .line 373
    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 374
    iget-object v1, v6, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    iget-object v4, v6, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 350
    :pswitch_1
    new-instance v1, Lorg/telegram/ui/Cells/UserCell2;

    iget-object v2, v6, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    iget-object v4, v6, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v1, v2, v3, v8, v4}, Lorg/telegram/ui/Cells/UserCell2;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 352
    iget-object v2, v6, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    iget-wide v2, v2, Lorg/telegram/ui/SaveToGallerySettingsActivity;->dialogId:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    iget-object v2, v6, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->access$400(Lorg/telegram/ui/SaveToGallerySettingsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v6, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    iget-wide v3, v3, Lorg/telegram/ui/SaveToGallerySettingsActivity;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    goto :goto_0

    .line 355
    :cond_0
    iget-object v2, v6, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->access$500(Lorg/telegram/ui/SaveToGallerySettingsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v6, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    iget-wide v3, v3, Lorg/telegram/ui/SaveToGallerySettingsActivity;->dialogId:J

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 357
    :goto_0
    invoke-virtual {v1, v2, v0, v0, v8}, Lorg/telegram/ui/Cells/UserCell2;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 359
    iget-object v0, v6, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    move-object v0, v1

    goto/16 :goto_4

    .line 401
    :pswitch_2
    new-instance v10, Landroid/widget/LinearLayout;

    iget-object v0, v6, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 402
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 403
    new-instance v11, Lorg/telegram/ui/Components/SeekBarView;

    iget-object v0, v6, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;)V

    .line 404
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 406
    new-instance v3, Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;

    iget-object v2, v6, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;Landroid/content/Context;)V

    const/16 v2, 0xd

    .line 407
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    const-wide/32 v12, 0x80000

    .line 408
    invoke-static {v12, v13, v1, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(JZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x53

    .line 409
    invoke-static {v9, v9, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    new-instance v4, Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;

    iget-object v5, v6, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v4, v5, v14}, Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;Landroid/content/Context;)V

    .line 412
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    const/16 v5, 0x51

    .line 414
    invoke-static {v9, v9, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    new-instance v5, Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;

    iget-object v14, v6, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v5, v14, v15}, Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;Landroid/content/Context;)V

    .line 417
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    const-wide v14, 0xfa000000L

    .line 418
    invoke-static {v14, v15, v1, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(JZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x55

    .line 419
    invoke-static {v9, v9, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v16, -0x1

    const/16 v17, 0x14

    const/16 v18, 0x0

    const/16 v19, 0x15

    const/16 v20, 0xa

    const/16 v21, 0x15

    const/16 v22, 0x0

    .line 422
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v17, 0x26

    const/16 v19, 0x5

    const/16 v20, 0x0

    const/16 v21, 0x5

    const/16 v22, 0x4

    .line 423
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    iget-object v0, v6, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->getSettings()Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;

    move-result-object v0

    move-object/from16 p1, v10

    .line 425
    iget-wide v9, v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->limitVideo:J

    const-wide/16 v17, 0x0

    cmp-long v0, v9, v17

    if-ltz v0, :cond_2

    cmp-long v0, v9, v14

    if-lez v0, :cond_1

    goto :goto_2

    :cond_1
    move-wide v14, v9

    .line 430
    :cond_2
    :goto_2
    invoke-virtual {v11, v1}, Lorg/telegram/ui/Components/SeekBarView;->setReportChanges(Z)V

    .line 431
    new-instance v9, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter$1;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v11

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter$1;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;Lorg/telegram/ui/Components/SeekBarView;Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;)V

    invoke-virtual {v11, v9}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    const-wide/32 v0, 0x6400000

    const v2, 0x3f333333    # 0.7f

    const v3, 0x3e99999a    # 0.3f

    long-to-float v4, v14

    long-to-float v5, v0

    mul-float/2addr v5, v2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    sub-long/2addr v14, v0

    long-to-float v0, v14

    const-wide v4, 0xf3c00000L

    long-to-float v1, v4

    div-float/2addr v0, v1

    mul-float/2addr v3, v0

    add-float/2addr v3, v2

    goto :goto_3

    :cond_3
    sub-long/2addr v14, v12

    long-to-float v0, v14

    const-wide/32 v3, 0x6380000

    long-to-float v1, v3

    div-float/2addr v0, v1

    mul-float v3, v0, v2

    .line 491
    :goto_3
    invoke-virtual {v11, v3}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    .line 492
    iget-object v0, v11, Lorg/telegram/ui/Components/SeekBarView;->delegate:Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/SeekBarView;->getProgress()F

    move-result v1

    invoke-interface {v0, v8, v1}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;->onSeekBarDrag(ZF)V

    .line 495
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 397
    :pswitch_3
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 392
    :pswitch_4
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 394
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_4

    .line 387
    :pswitch_5
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 389
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 380
    :pswitch_6
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 381
    sget v1, Lorg/telegram/messenger/R$string;->NotificationsDeleteAllException:I

    const-string v2, "NotificationsDeleteAllException"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    .line 382
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v0, v7, v1}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 384
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 377
    :pswitch_7
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_4

    .line 362
    :pswitch_8
    new-instance v0, Lorg/telegram/ui/Cells/UserCell;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZZ)V

    .line 363
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 366
    :pswitch_9
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 367
    sget v2, Lorg/telegram/messenger/R$string;->NotificationsAddAnException:I

    const-string v3, "NotificationsAddAnException"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_contact_add:I

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 368
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 370
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 498
    :goto_4
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v7, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
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
    .end packed-switch
.end method
