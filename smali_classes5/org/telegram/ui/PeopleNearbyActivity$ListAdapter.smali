.class Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "PeopleNearbyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PeopleNearbyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PeopleNearbyActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PeopleNearbyActivity;Landroid/content/Context;)V
    .locals 0

    .line 901
    iput-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 902
    iput-object p2, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private formatDistance(Lorg/telegram/tgnet/TLRPC$TL_peerLocated;)Ljava/lang/String;
    .locals 1

    .line 968
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;->distance:I

    int-to-float p1, p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatDistance(FI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 913
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$200(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1049
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$900(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x5

    return p1

    .line 1051
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1500(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1700(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1200(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_2

    .line 1053
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1100(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1400(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 1055
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1300(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1600(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1000(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    const/4 p1, 0x3

    return p1

    :cond_6
    :goto_2
    const/4 p1, 0x2

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 907
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 973
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_d

    if-eq v0, v5, :cond_a

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 1030
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/PeopleNearbyActivity$HeaderCellProgress;

    .line 1031
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1100(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 1032
    sget p2, Lorg/telegram/messenger/R$string;->PeopleNearbyHeader:I

    const-string v0, "PeopleNearbyHeader"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1033
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1400(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    if-ne p2, v0, :cond_14

    .line 1034
    sget p2, Lorg/telegram/messenger/R$string;->ChatsNearbyHeader:I

    const-string v0, "ChatsNearbyHeader"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1014
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ManageChatTextCell;

    const-string v0, "windowBackgroundWhiteBlueIcon"

    const-string v1, "windowBackgroundWhiteBlueButton"

    .line 1015
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1500(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 1017
    sget p2, Lorg/telegram/messenger/R$string;->NearbyCreateGroup:I

    const-string v0, "NearbyCreateGroup"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_groups_create:I

    iget-object v1, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v1}, Lorg/telegram/ui/PeopleNearbyActivity;->access$600(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v1

    if-eq v1, v2, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p1, p2, v3, v0, v4}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_2

    .line 1018
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1700(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    if-ne p2, v0, :cond_9

    .line 1019
    iget-object p2, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/UserConfig;->sharingMyLocationUntil:I

    iget-object v1, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    if-le v0, v1, :cond_5

    move v0, v5

    goto :goto_0

    :cond_5
    move v0, v4

    :goto_0
    invoke-static {p2, v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$3002(Lorg/telegram/ui/PeopleNearbyActivity;Z)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1020
    sget p2, Lorg/telegram/messenger/R$string;->StopShowingMe:I

    const-string v0, "StopShowingMe"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_nearby_off:I

    iget-object v1, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v1}, Lorg/telegram/ui/PeopleNearbyActivity;->access$300(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v1

    if-eq v1, v2, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {p1, p2, v3, v0, v4}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    const-string p2, "windowBackgroundWhiteRedText5"

    .line 1021
    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1023
    :cond_7
    sget p2, Lorg/telegram/messenger/R$string;->MakeMyselfVisible:I

    const-string v0, "MakeMyselfVisible"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_nearby:I

    iget-object v1, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v1}, Lorg/telegram/ui/PeopleNearbyActivity;->access$300(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v1

    if-eq v1, v2, :cond_8

    move v4, v5

    :cond_8
    invoke-virtual {p1, p2, v3, v0, v4}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_2

    .line 1025
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1200(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    if-ne p2, v0, :cond_14

    .line 1026
    iget-object p2, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {p2}, Lorg/telegram/ui/PeopleNearbyActivity;->access$500(Lorg/telegram/ui/PeopleNearbyActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x5

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "ShowVotes"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {p1, p2, v3, v0, v4}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_2

    .line 1004
    :cond_a
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 1005
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1300(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    const-string v1, "windowBackgroundGrayShadow"

    if-ne p2, v0, :cond_b

    .line 1006
    iget-object p2, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 1007
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1600(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    if-ne p2, v0, :cond_c

    .line 1008
    iget-object p2, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 1009
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1000(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    if-ne p2, v0, :cond_14

    .line 1010
    iget-object p2, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 975
    :cond_d
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    .line 976
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 977
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$300(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    if-lt p2, v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$400(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    if-ge p2, v0, :cond_10

    .line 978
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$300(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    sub-int v0, p2, v0

    .line 979
    iget-object v1, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v1}, Lorg/telegram/ui/PeopleNearbyActivity;->access$500(Lorg/telegram/ui/PeopleNearbyActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;

    .line 980
    iget-object v1, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 982
    invoke-direct {p0, v0}, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->formatDistance(Lorg/telegram/tgnet/TLRPC$TL_peerLocated;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v6}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1200(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v6

    if-ne v6, v2, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v2}, Lorg/telegram/ui/PeopleNearbyActivity;->access$400(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v2

    sub-int/2addr v2, v5

    if-eq p2, v2, :cond_f

    :cond_e
    move v4, v5

    :cond_f
    invoke-virtual {p1, v1, v3, v0, v4}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 984
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$600(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    if-lt p2, v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$700(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    if-ge p2, v0, :cond_14

    .line 985
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$600(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    sub-int/2addr p2, v0

    .line 986
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$800(Lorg/telegram/ui/PeopleNearbyActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;

    .line 988
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v6, v2, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    if-eqz v6, :cond_11

    .line 989
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    goto :goto_1

    .line 991
    :cond_11
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 993
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 995
    invoke-direct {p0, v0}, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->formatDistance(Lorg/telegram/tgnet/TLRPC$TL_peerLocated;)Ljava/lang/String;

    move-result-object v0

    .line 996
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v6, :cond_12

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    new-array v0, v4, [Ljava/lang/Object;

    const-string v7, "Members"

    .line 997
    invoke-static {v7, v6, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    const-string v0, "%1$s, %2$s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 999
    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v1}, Lorg/telegram/ui/PeopleNearbyActivity;->access$800(Lorg/telegram/ui/PeopleNearbyActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    if-eq p2, v1, :cond_13

    move v4, v5

    :cond_13
    invoke-virtual {p1, v2, v3, v0, v4}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_14
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const/4 p1, 0x2

    const/4 v0, 0x0

    const-string v1, "windowBackgroundWhite"

    if-eqz p2, :cond_4

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 v3, 0x4

    if-eq p2, v3, :cond_0

    .line 951
    new-instance p1, Lorg/telegram/ui/PeopleNearbyActivity$HintInnerCell;

    iget-object p2, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/PeopleNearbyActivity$HintInnerCell;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;Landroid/content/Context;)V

    .line 952
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 936
    :cond_0
    new-instance p2, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter$1;

    iget-object v3, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v3}, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;Landroid/content/Context;)V

    .line 942
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 943
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p2, v0, v0, p1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 944
    invoke-virtual {p2, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p1, 0x11

    .line 945
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setGravity(I)V

    const-string p1, "windowBackgroundWhiteGrayText3"

    .line 946
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 932
    :cond_1
    new-instance p1, Lorg/telegram/ui/PeopleNearbyActivity$HeaderCellProgress;

    iget-object p2, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/PeopleNearbyActivity$HeaderCellProgress;-><init>(Landroid/content/Context;)V

    .line 933
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 928
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/ManageChatTextCell;

    iget-object p2, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ManageChatTextCell;-><init>(Landroid/content/Context;)V

    .line 929
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 925
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 921
    :cond_4
    new-instance p2, Lorg/telegram/ui/Cells/ManageChatUserCell;

    iget-object v2, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x6

    invoke-direct {p2, v2, v3, p1, v0}, Lorg/telegram/ui/Cells/ManageChatUserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 922
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    move-object p1, p2

    .line 955
    :goto_1
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 956
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 961
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$2600(Lorg/telegram/ui/PeopleNearbyActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 962
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/PeopleNearbyActivity$HeaderCellProgress;

    .line 963
    invoke-static {p1}, Lorg/telegram/ui/PeopleNearbyActivity$HeaderCellProgress;->access$2400(Lorg/telegram/ui/PeopleNearbyActivity$HeaderCellProgress;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$2900(Lorg/telegram/ui/PeopleNearbyActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1042
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz v0, :cond_0

    .line 1043
    check-cast p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->recycle()V

    :cond_0
    return-void
.end method
