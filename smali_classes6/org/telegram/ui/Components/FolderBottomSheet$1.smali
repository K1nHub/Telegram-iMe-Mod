.class Lorg/telegram/ui/Components/FolderBottomSheet$1;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "FolderBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FolderBottomSheet;->createAdapter()Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/FolderBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FolderBottomSheet;)V
    .locals 0

    .line 916
    iput-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1047
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$2300(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1035
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$2000(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1037
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$1800(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$2100(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$1700(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 1039
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$2200(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$1400(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x3

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 926
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$200(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$300(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 951
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    .line 953
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .line 955
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$200(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$300(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 956
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$800(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$800(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$200(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v3

    sub-int/2addr p2, v3

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Peer;

    goto :goto_0

    .line 957
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$900(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$1000(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 958
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$1100(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$1100(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$900(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v3

    sub-int/2addr p2, v3

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Peer;

    goto :goto_0

    :cond_1
    move-object p2, v2

    :goto_0
    const-wide/16 v3, 0x0

    if-eqz p2, :cond_5

    .line 965
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v0, :cond_3

    .line 966
    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 967
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 969
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    if-eqz v2, :cond_2

    .line 970
    iget-boolean v0, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_2

    .line 971
    sget v0, Lorg/telegram/messenger/R$string;->FilterInviteBot:I

    const-string v5, "FilterInviteBot"

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 973
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->FilterInviteUser:I

    const-string v5, "FilterInviteUser"

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 975
    :cond_3
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    if-eqz v0, :cond_4

    .line 976
    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    neg-long v3, v3

    .line 977
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    :goto_1
    move-object v0, v2

    move-object v2, p2

    move-object p2, v0

    goto :goto_2

    .line 978
    :cond_4
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v0, :cond_5

    .line 979
    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    neg-long v3, v3

    .line 980
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    goto :goto_1

    :cond_5
    move-object p2, v2

    move-object v0, p2

    .line 983
    :goto_2
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_9

    .line 984
    move-object p2, v2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 985
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 986
    iget v5, p2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v5, :cond_7

    .line 987
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 988
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    const-string v5, "Subscribers"

    invoke-static {v5, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 990
    :cond_6
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    const-string v5, "Members"

    invoke-static {v5, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 993
    :cond_7
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 994
    sget p2, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    const-string v5, "ChannelPublic"

    invoke-static {v5, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 996
    :cond_8
    sget p2, Lorg/telegram/messenger/R$string;->MegaPublic:I

    const-string v5, "MegaPublic"

    invoke-static {v5, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    :goto_3
    move-object v8, v0

    move-object v0, p2

    move-object p2, v8

    .line 1000
    :cond_9
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1001
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/CheckBox2;->getCheckBoxBase()Lorg/telegram/ui/Components/CheckBoxBase;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$1200(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/high16 v6, 0x3f000000    # 0.5f

    goto :goto_4

    :cond_a
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/CheckBoxBase;->setAlpha(F)V

    .line 1002
    iget-object v5, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$1300(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p1, v3, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    .line 1003
    invoke-virtual {p1, v2, p2, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setObject(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_b
    const/4 v3, 0x3

    const-string v4, ""

    if-ne v0, v3, :cond_d

    .line 1005
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;

    .line 1006
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$1400(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-ne p2, v0, :cond_c

    .line 1007
    sget p2, Lorg/telegram/messenger/R$string;->FolderLinkHeaderAlready:I

    const-string v0, "FolderLinkHeaderAlready"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 1008
    invoke-virtual {p1, v4, v2}, Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;->setAction(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 1010
    :cond_c
    iget-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$1502(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;)Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;

    .line 1011
    iget-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$1600(Lorg/telegram/ui/Components/FolderBottomSheet;Z)V

    goto/16 :goto_6

    :cond_d
    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    .line 1014
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1015
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1016
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$1700(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-eq p2, v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$1800(Lorg/telegram/ui/Components/FolderBottomSheet;)I

    move-result v0

    if-eq p2, v0, :cond_10

    iget-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$800(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_10

    iget-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$800(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_5

    .line 1020
    :cond_e
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 1021
    iget-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$1900(Lorg/telegram/ui/Components/FolderBottomSheet;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 1022
    sget p2, Lorg/telegram/messenger/R$string;->FolderLinkHintRemove:I

    const-string v0, "FolderLinkHintRemove"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1024
    :cond_f
    sget p2, Lorg/telegram/messenger/R$string;->FolderLinkHint:I

    const-string v0, "FolderLinkHint"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_10
    :goto_5
    const/16 p2, 0xc

    .line 1017
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 1018
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_11
    if-nez v0, :cond_12

    .line 1028
    iget-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$402(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;)Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;

    .line 1029
    iget-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/FolderBottomSheet;->updateCount(Z)V

    :cond_12
    :goto_6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 934
    iget-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    new-instance v1, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;

    iget-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$500(Lorg/telegram/ui/Components/FolderBottomSheet;)Lorg/telegram/tgnet/TLRPC$chatlist_ChatlistInvite;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatlists_chatlistInviteAlready;

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$600(Lorg/telegram/ui/Components/FolderBottomSheet;)Lorg/telegram/tgnet/TLRPC$TL_chatlists_chatlistUpdates;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    move p1, v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$700(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, p1, v0}, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;-><init>(Lorg/telegram/ui/Components/FolderBottomSheet;Landroid/content/Context;ZLjava/lang/String;)V

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$402(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;)Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-ne p2, v0, :cond_3

    .line 936
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 937
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    .line 939
    new-instance p2, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1, v0, p1, p1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 940
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    move-object p1, p2

    goto :goto_0

    :cond_4
    const/4 p1, 0x3

    if-ne p2, p1, :cond_5

    .line 943
    new-instance p1, Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;-><init>(Landroid/content/Context;)V

    .line 944
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 946
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
