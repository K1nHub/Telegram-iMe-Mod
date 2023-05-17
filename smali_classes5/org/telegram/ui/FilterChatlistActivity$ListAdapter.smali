.class Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "FilterChatlistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FilterChatlistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/FilterChatlistActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/FilterChatlistActivity;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 730
    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterChatlistActivity;->access$1900(Lorg/telegram/ui/FilterChatlistActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 737
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-static {v1}, Lorg/telegram/ui/FilterChatlistActivity;->access$1100(Lorg/telegram/ui/FilterChatlistActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-static {v1}, Lorg/telegram/ui/FilterChatlistActivity;->access$2000(Lorg/telegram/ui/FilterChatlistActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    goto :goto_1

    .line 739
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-static {v1}, Lorg/telegram/ui/FilterChatlistActivity;->access$2100(Lorg/telegram/ui/FilterChatlistActivity;)I

    move-result v1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x3

    return p1

    .line 741
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-static {v1}, Lorg/telegram/ui/FilterChatlistActivity;->access$1300(Lorg/telegram/ui/FilterChatlistActivity;)I

    move-result v1

    if-lt p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-static {v1}, Lorg/telegram/ui/FilterChatlistActivity;->access$2200(Lorg/telegram/ui/FilterChatlistActivity;)I

    move-result v1

    if-ge p1, v1, :cond_3

    const/4 p1, 0x4

    return p1

    .line 743
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-static {v1}, Lorg/telegram/ui/FilterChatlistActivity;->access$2300(Lorg/telegram/ui/FilterChatlistActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-static {v1}, Lorg/telegram/ui/FilterChatlistActivity;->access$1700(Lorg/telegram/ui/FilterChatlistActivity;)I

    move-result v1

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_0
    const/4 p1, 0x5

    return p1

    :cond_6
    :goto_1
    const/4 p1, 0x2

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 751
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 635
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 637
    iget-object p2, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/FilterChatlistActivity$HintInnerCell;

    invoke-static {p2, p1}, Lorg/telegram/ui/FilterChatlistActivity;->access$902(Lorg/telegram/ui/FilterChatlistActivity;Lorg/telegram/ui/FilterChatlistActivity$HintInnerCell;)Lorg/telegram/ui/FilterChatlistActivity$HintInnerCell;

    .line 638
    iget-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/FilterChatlistActivity;->access$1000(Lorg/telegram/ui/FilterChatlistActivity;Z)V

    goto/16 :goto_7

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 640
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 641
    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-static {v2}, Lorg/telegram/ui/FilterChatlistActivity;->access$1100(Lorg/telegram/ui/FilterChatlistActivity;)I

    move-result v2

    if-ne p2, v2, :cond_1

    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    goto :goto_0

    :cond_1
    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider:I

    :goto_0
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 642
    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterChatlistActivity;->access$1100(Lorg/telegram/ui/FilterChatlistActivity;)I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 643
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 644
    iget-object p2, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    iget-object v0, p2, Lorg/telegram/ui/FilterChatlistActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;

    if-eqz v0, :cond_3

    invoke-static {p2}, Lorg/telegram/ui/FilterChatlistActivity;->access$1200(Lorg/telegram/ui/FilterChatlistActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 647
    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->FilterInviteHint:I

    const-string v0, "FilterInviteHint"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 645
    :cond_3
    :goto_1
    sget p2, Lorg/telegram/messenger/R$string;->FilterInviteHintNo:I

    const-string v0, "FilterInviteHintNo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_4
    const/16 p2, 0xc

    .line 650
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto/16 :goto_7

    :cond_5
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_7

    .line 653
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;

    .line 654
    iget-object p2, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    iget-object p2, p2, Lorg/telegram/ui/FilterChatlistActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;->url:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v3, v1}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->setLink(Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_7
    const/4 v2, 0x4

    if-ne v0, v2, :cond_13

    .line 656
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .line 657
    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterChatlistActivity;->access$1400(Lorg/telegram/ui/FilterChatlistActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-static {v2}, Lorg/telegram/ui/FilterChatlistActivity;->access$1300(Lorg/telegram/ui/FilterChatlistActivity;)I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-ltz p2, :cond_9

    .line 661
    iget-object p2, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 663
    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    move-object v0, v3

    goto :goto_4

    .line 667
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    neg-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 669
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 670
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v0, :cond_b

    .line 671
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 672
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    const-string v2, "Subscribers"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 674
    :cond_a
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    const-string v2, "Members"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 677
    :cond_b
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "ChannelPublic"

    .line 678
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_c
    const-string v0, "MegaPublic"

    .line 680
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_d
    move-object v0, v3

    :goto_3
    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    .line 686
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-static {v2}, Lorg/telegram/ui/FilterChatlistActivity;->access$1200(Lorg/telegram/ui/FilterChatlistActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 687
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setForbiddenCheck(Z)V

    .line 688
    iget-object v2, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-static {v2}, Lorg/telegram/ui/FilterChatlistActivity;->access$1500(Lorg/telegram/ui/FilterChatlistActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    goto :goto_5

    :cond_e
    const/4 v2, 0x1

    .line 690
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setForbiddenCheck(Z)V

    .line 691
    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    .line 692
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_10

    .line 693
    move-object v1, p2

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v1, :cond_f

    .line 694
    sget v1, Lorg/telegram/messenger/R$string;->FilterInviteBot:I

    const-string v2, "FilterInviteBot"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 696
    :cond_f
    sget v1, Lorg/telegram/messenger/R$string;->FilterInviteUser:I

    const-string v2, "FilterInviteUser"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 698
    :cond_10
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_12

    .line 699
    move-object v1, p2

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 700
    sget v1, Lorg/telegram/messenger/R$string;->FilterInviteChannel:I

    const-string v2, "FilterInviteChannel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 702
    :cond_11
    sget v1, Lorg/telegram/messenger/R$string;->FilterInviteGroup:I

    const-string v2, "FilterInviteGroup"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 706
    :cond_12
    :goto_5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 707
    invoke-virtual {p1, p2, v0, v3}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setObject(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_13
    const/4 v2, 0x5

    if-ne v0, v2, :cond_18

    .line 709
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;

    .line 710
    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterChatlistActivity;->access$1600(Lorg/telegram/ui/FilterChatlistActivity;)Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;

    move-result-object v0

    if-ne p1, v0, :cond_14

    .line 711
    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/FilterChatlistActivity;->access$1602(Lorg/telegram/ui/FilterChatlistActivity;Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;)Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;

    .line 713
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterChatlistActivity;->access$1700(Lorg/telegram/ui/FilterChatlistActivity;)I

    move-result v0

    const-string v2, ""

    if-ne p2, v0, :cond_15

    .line 714
    sget p2, Lorg/telegram/messenger/R$string;->InviteLink:I

    const-string v0, "InviteLink"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 715
    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;->setAction(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    goto :goto_7

    .line 717
    :cond_15
    iget-object p2, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/FilterChatlistActivity;->access$1602(Lorg/telegram/ui/FilterChatlistActivity;Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;)Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;

    .line 718
    iget-object p2, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    iget-object v0, p2, Lorg/telegram/ui/FilterChatlistActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;

    if-eqz v0, :cond_17

    invoke-static {p2}, Lorg/telegram/ui/FilterChatlistActivity;->access$1200(Lorg/telegram/ui/FilterChatlistActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_16

    goto :goto_6

    .line 722
    :cond_16
    iget-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/FilterChatlistActivity;->access$1800(Lorg/telegram/ui/FilterChatlistActivity;Z)V

    goto :goto_7

    .line 719
    :cond_17
    :goto_6
    sget p2, Lorg/telegram/messenger/R$string;->FilterInviteHeaderChatsNo:I

    const-string v0, "FilterInviteHeaderChatsNo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 720
    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;->setAction(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    :cond_18
    :goto_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-nez p2, :cond_0

    .line 481
    new-instance p1, Lorg/telegram/ui/FilterChatlistActivity$HintInnerCell;

    iget-object p2, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$raw;->folder_share:I

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/FilterChatlistActivity$HintInnerCell;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 483
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    .line 486
    new-instance p1, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter$1;

    iget-object p2, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-direct {p1, p0, p2, v0}, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 618
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    if-ne p2, p1, :cond_3

    .line 622
    new-instance p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    iget-object p2, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 623
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x5

    if-ne p2, p1, :cond_4

    .line 626
    new-instance p1, Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterChatlistActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;-><init>(Landroid/content/Context;)V

    .line 627
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 630
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
