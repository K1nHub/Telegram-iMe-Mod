.class Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "InviteLinkBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InviteLinkBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;)V
    .locals 0

    .line 511
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 839
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget v0, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->rowCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 515
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorHeaderRow:I

    const/4 v2, 0x0

    if-eq p1, v1, :cond_d

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedHeaderRow:I

    if-eq p1, v1, :cond_d

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedHeaderRow:I

    if-ne p1, v1, :cond_0

    goto :goto_3

    .line 517
    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorRow:I

    if-eq p1, v1, :cond_c

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedStartRow:I

    if-lt p1, v1, :cond_1

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedEndRow:I

    if-lt p1, v1, :cond_c

    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedStartRow:I

    if-lt p1, v1, :cond_2

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedEndRow:I

    if-ge p1, v1, :cond_2

    goto :goto_2

    .line 519
    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->dividerRow:I

    if-eq p1, v1, :cond_b

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->divider2Row:I

    if-ne p1, v1, :cond_3

    goto :goto_1

    .line 521
    :cond_3
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->linkActionRow:I

    if-ne p1, v1, :cond_4

    const/4 p1, 0x3

    return p1

    .line 523
    :cond_4
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->linkInfoRow:I

    if-ne p1, v1, :cond_5

    const/4 p1, 0x4

    return p1

    .line 525
    :cond_5
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->loadingRow:I

    if-ne p1, v1, :cond_6

    const/4 p1, 0x5

    return p1

    .line 527
    :cond_6
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->emptyView:I

    if-eq p1, v1, :cond_a

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->emptyView2:I

    if-eq p1, v1, :cond_a

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->emptyView3:I

    if-ne p1, v1, :cond_7

    goto :goto_0

    .line 529
    :cond_7
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->divider3Row:I

    if-ne p1, v1, :cond_8

    const/4 p1, 0x7

    return p1

    .line 531
    :cond_8
    iget v0, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->emptyHintRow:I

    if-ne p1, v0, :cond_9

    const/16 p1, 0x8

    return p1

    :cond_9
    return v2

    :cond_a
    :goto_0
    const/4 p1, 0x6

    return p1

    :cond_b
    :goto_1
    const/4 p1, 0x2

    return p1

    :cond_c
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_d
    :goto_3
    return v2
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 6

    .line 844
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 845
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorRow:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1

    .line 846
    iget-object p1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->admin_id:J

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$3300(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-wide v0, p1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long p1, v4, v0

    if-nez p1, :cond_0

    return v2

    :cond_0
    return v3

    .line 850
    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedStartRow:I

    if-lt p1, v1, :cond_2

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedEndRow:I

    if-lt p1, v1, :cond_3

    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedStartRow:I

    if-lt p1, v1, :cond_4

    iget v0, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedEndRow:I

    if-ge p1, v0, :cond_4

    :cond_3
    return v3

    :cond_4
    return v2
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    .line 694
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    const/4 v3, 0x1

    if-eq v0, v3, :cond_a

    const/4 p2, 0x3

    if-eq v0, p2, :cond_9

    const/4 p2, 0x4

    if-eq v0, p2, :cond_2

    const/16 p2, 0x8

    if-eq v0, p2, :cond_0

    goto/16 :goto_6

    .line 826
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;

    .line 827
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    if-lez v0, :cond_1

    .line 828
    iget-object p2, p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;->textView:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "PeopleCanJoinViaLinkCount"

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    iget-object p1, p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 831
    :cond_1
    iget-object p1, p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 784
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;

    .line 785
    invoke-virtual {p1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;->cancelTimer()V

    .line 786
    iput-boolean v2, p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;->timer:Z

    const-string p2, "windowBackgroundWhiteGrayText4"

    .line 787
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    .line 788
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 789
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    if-eqz v0, :cond_3

    .line 790
    sget p2, Lorg/telegram/messenger/R$string;->LinkIsNoActive:I

    const-string v0, "LinkIsNoActive"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 791
    :cond_3
    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expired:Z

    if-eqz v0, :cond_5

    .line 792
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    if-lez v0, :cond_4

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    if-ne v0, p2, :cond_4

    .line 793
    sget p2, Lorg/telegram/messenger/R$string;->LinkIsExpiredLimitReached:I

    const-string v0, "LinkIsExpiredLimitReached"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 795
    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->LinkIsExpired:I

    const-string v0, "LinkIsExpired"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "windowBackgroundWhiteRedText"

    .line 796
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    goto/16 :goto_6

    .line 799
    :cond_5
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expire_date:I

    if-lez p2, :cond_8

    .line 800
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$3200(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    add-long/2addr v0, v4

    .line 801
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expire_date:I

    int-to-long v4, p2

    mul-long v4, v4, v6

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x0

    cmp-long v8, v4, v0

    if-gez v8, :cond_6

    move-wide v4, v0

    :cond_6
    const-wide/32 v0, 0x5265c00

    cmp-long v8, v4, v0

    if-lez v8, :cond_7

    int-to-long v0, p2

    .line 809
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatDateAudio(JZ)Ljava/lang/String;

    move-result-object p2

    .line 810
    sget v0, Lorg/telegram/messenger/R$string;->LinkExpiresIn:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    const-string p2, "LinkExpiresIn"

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 812
    :cond_7
    div-long/2addr v4, v6

    const-wide/16 v0, 0x3c

    rem-long v6, v4, v0

    long-to-int p2, v6

    .line 813
    div-long/2addr v4, v0

    rem-long v6, v4, v0

    long-to-int v7, v6

    .line 814
    div-long/2addr v4, v0

    long-to-int v0, v4

    .line 815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string v0, "%02d"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    const-string v5, ":%02d"

    invoke-static {v4, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    invoke-static {v4, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 816
    iput-boolean v3, p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;->timer:Z

    .line 817
    invoke-virtual {p1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;->runTimer()V

    .line 818
    sget v0, Lorg/telegram/messenger/R$string;->LinkExpiresInTime:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    const-string p2, "LinkExpiresInTime"

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_8
    const/16 p2, 0xc

    .line 821
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 822
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 775
    :cond_9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/LinkActionView;

    .line 776
    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Components/LinkActionView;->setUsers(ILjava/util/ArrayList;)V

    .line 777
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->setLink(Ljava/lang/String;)V

    .line 778
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->setRevoke(Z)V

    .line 779
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->permanent:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->setPermanent(Z)V

    .line 780
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$3100(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->setCanEdit(Z)V

    .line 781
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$3100(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Z

    move-result p2

    xor-int/2addr p2, v3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->hideRevokeOption(Z)V

    goto/16 :goto_6

    .line 716
    :cond_a
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v4, p1

    check-cast v4, Lorg/telegram/ui/Cells/UserCell;

    .line 720
    iget-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget v0, p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorRow:I

    if-ne p2, v0, :cond_13

    .line 721
    iget-object p2, p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->users:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->admin_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    if-nez p1, :cond_b

    .line 723
    iget-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$3000(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->admin_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    :cond_b
    if-eqz p1, :cond_c

    .line 726
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->date:I

    int-to-long v5, p2

    invoke-static {v5, v6, v2}, Lorg/telegram/messenger/LocaleController;->formatDateAudio(JZ)Ljava/lang/String;

    .line 727
    sget p2, Lorg/telegram/messenger/R$string;->invite_link_created_date:I

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v3, v3, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->date:I

    int-to-long v5, v3

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatImportedDate(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_c
    move-object p2, v1

    .line 729
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v0, :cond_12

    .line 730
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_12

    .line 731
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    iget-wide v7, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v0, v5, v7

    if-nez v0, :cond_11

    .line 732
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 734
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    const-string v3, "ChannelAdmin"

    const-string v5, "ChannelCreator"

    if-eqz v2, :cond_f

    .line 735
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 736
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 737
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    goto :goto_3

    .line 739
    :cond_d
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v2, :cond_e

    .line 740
    sget v0, Lorg/telegram/messenger/R$string;->ChannelCreator:I

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 741
    :cond_e
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-eqz v0, :cond_12

    .line 742
    sget v0, Lorg/telegram/messenger/R$string;->ChannelAdmin:I

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 748
    :cond_f
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-eqz v2, :cond_10

    .line 749
    sget v0, Lorg/telegram/messenger/R$string;->ChannelCreator:I

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v1, v0

    goto :goto_3

    .line 750
    :cond_10
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz v0, :cond_12

    .line 751
    sget v0, Lorg/telegram/messenger/R$string;->ChannelAdmin:I

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_12
    :goto_3
    move-object v5, p1

    move-object v7, p2

    goto :goto_4

    .line 761
    :cond_13
    iget v0, p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedStartRow:I

    .line 762
    iget-object v5, p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedUsers:Ljava/util/ArrayList;

    .line 763
    iget v6, p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedStartRow:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_14

    if-lt p2, v6, :cond_14

    .line 765
    iget-object v5, p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedUsers:Ljava/util/ArrayList;

    move v0, v6

    :cond_14
    sub-int/2addr p2, v0

    .line 767
    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    .line 768
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->users:Ljava/util/HashMap;

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    .line 769
    sget v0, Lorg/telegram/messenger/R$string;->invite_link_joined_date:I

    new-array v3, v3, [Ljava/lang/Object;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->date:I

    int-to-long v5, p1

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatImportedDate(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object v7, p1

    move-object v5, p2

    .line 771
    :goto_4
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Cells/UserCell;->setAdminRole(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 772
    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_6

    .line 696
    :cond_15
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 697
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget v3, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorHeaderRow:I

    if-ne p2, v3, :cond_16

    .line 698
    sget p2, Lorg/telegram/messenger/R$string;->LinkCreatedeBy:I

    const-string v0, "LinkCreatedeBy"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 699
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText2(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 700
    :cond_16
    iget v3, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedHeaderRow:I

    if-ne p2, v3, :cond_19

    .line 701
    iget-object p2, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    if-lez p2, :cond_17

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "PeopleJoined"

    .line 702
    invoke-static {v3, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 704
    :cond_17
    sget p2, Lorg/telegram/messenger/R$string;->NoOneJoined:I

    const-string v0, "NoOneJoined"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 706
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expired:Z

    if-nez v0, :cond_18

    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    if-nez v0, :cond_18

    iget v0, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    if-lez v0, :cond_18

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    if-lez p2, :cond_18

    sub-int/2addr v0, p2

    new-array p2, v2, [Ljava/lang/Object;

    const-string v1, "PeopleJoinedRemaining"

    .line 707
    invoke-static {v1, v0, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText2(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 709
    :cond_18
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText2(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 711
    :cond_19
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedHeaderRow:I

    if-ne p2, v1, :cond_1a

    .line 712
    iget-object p2, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->requested:I

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "JoinRequests"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    :cond_1a
    :goto_6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 10

    .line 541
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p1, "windowBackgroundGrayShadow"

    const/4 v8, -0x2

    const/4 v9, -0x1

    const-string v0, "windowBackgroundGray"

    const/16 v2, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_0

    .line 545
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    const/16 v3, 0x15

    const/16 v4, 0xf

    const/4 v5, 0x1

    const-string v2, "windowBackgroundWhiteBlueHeader"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 546
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/HeaderCell;->getTextView2()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p2

    const-string v0, "windowBackgroundWhiteRedText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 547
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/HeaderCell;->getTextView2()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p2

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 548
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/HeaderCell;->getTextView2()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p2

    const-string v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1

    .line 685
    :pswitch_0
    new-instance p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 677
    :pswitch_1
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {p2, v1, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;I)V

    .line 678
    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {v1, v2, p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 679
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 680
    new-instance v0, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v0, v1, p1, v4, v4}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 681
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 682
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 669
    :pswitch_2
    new-instance p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$2;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$2;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;Landroid/content/Context;)V

    goto :goto_1

    .line 661
    :pswitch_3
    new-instance p1, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    .line 662
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    const/16 p2, 0xa

    .line 663
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 664
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    .line 665
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setPaddingLeft(I)V

    goto :goto_1

    .line 655
    :pswitch_4
    new-instance p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;

    iget-object v2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-direct {p2, v2, v1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Landroid/content/Context;)V

    .line 656
    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v4, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {v1, v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v2, v4, p1}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 657
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 658
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    move-object p1, p2

    goto :goto_1

    .line 558
    :pswitch_5
    new-instance p1, Lorg/telegram/ui/Components/LinkActionView;

    iget-object v3, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v2, v3, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v3}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$2300(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)J

    move-result-wide v4

    const/4 v6, 0x0

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$2400(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Z

    move-result v7

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/LinkActionView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheet;JZZ)V

    .line 560
    new-instance p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$1;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->setDelegate(Lorg/telegram/ui/Components/LinkActionView$Delegate;)V

    .line 652
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p2, v9, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 555
    :pswitch_6
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, v1, v2, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;II)V

    goto :goto_1

    .line 552
    :pswitch_7
    new-instance p1, Lorg/telegram/ui/Cells/UserCell;

    invoke-direct {p1, v1, v2, v4, v3}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 688
    :goto_1
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p2, v9, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 689
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
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
