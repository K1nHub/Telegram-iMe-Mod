.class Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "LimitReachedBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->createAdapter()Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;


# direct methods
.method public static synthetic $r8$lambda$BOXlLQhlvXsn0obsx4L2MdDQkyo(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->lambda$onCreateViewHolder$1(Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GP4ysbNHw4vO_Pt5CnlEFyhNPgA(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->lambda$onCreateViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jTbtZ2Qrdso3mNN7UdEzHZRN5_M(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->lambda$onCreateViewHolder$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l_fPPI14yXNlG94s1tqWEj1jf20(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->lambda$onCreateViewHolder$2(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V
    .locals 0

    .line 977
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Landroid/view/View;)V
    .locals 3

    .line 1031
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostPagerBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private static synthetic lambda$onCreateViewHolder$1(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 1032
    invoke-virtual {p0}, Landroid/widget/TextView;->performClick()Z

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$2(Landroid/view/View;)V
    .locals 0

    .line 1054
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$3(Landroid/view/View;)V
    .locals 0

    .line 1064
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->statisticClickRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1065
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1198
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 1171
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1173
    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dividerRow:I

    if-ne v1, p1, :cond_1

    const/4 p1, 0x2

    return p1

    .line 1175
    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatsTitleRow:I

    if-ne v1, p1, :cond_2

    const/4 p1, 0x3

    return p1

    .line 1177
    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadingRow:I

    const/4 v2, 0x5

    if-ne v1, p1, :cond_3

    return v2

    .line 1179
    :cond_3
    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->emptyViewDividerRow:I

    if-ne v1, p1, :cond_4

    const/4 p1, 0x6

    return p1

    .line 1181
    :cond_4
    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v0

    if-ne v0, p1, :cond_5

    const/4 p1, 0x7

    return p1

    .line 1183
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->bottomRow:I

    if-ne v1, p1, :cond_6

    const/16 p1, 0x8

    return p1

    .line 1186
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeatures:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeaturesStartRow:I

    if-lt p1, v0, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_7

    const/16 p1, 0x9

    return p1

    .line 1189
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget p1, p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-eq p1, v2, :cond_9

    const/16 v0, 0xb

    if-ne p1, v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 p1, 0x1

    return p1

    :cond_9
    :goto_0
    const/4 p1, 0x4

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .line 980
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v2, 0x0

    const/16 v3, 0xb

    if-ne v1, v3, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 983
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 1120
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    const/16 v3, 0x9

    if-eq v0, v3, :cond_9

    const/4 v3, 0x3

    const/16 v4, 0xb

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto/16 :goto_3

    .line 1122
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .line 1123
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v5, 0x5

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v3, v5, :cond_2

    .line 1124
    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v3, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    sub-int v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1125
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v4, v4, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    sub-int v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1126
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    int-to-float p2, p2

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v5, v5, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatEndRow:I

    int-to-float v5, v5

    sub-float/2addr v5, v6

    cmpl-float p2, p2, v5

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p1, v0, v4, v3, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setObject(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 1127
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    goto/16 :goto_3

    :cond_2
    if-ne v3, v4, :cond_c

    .line 1129
    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v3, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    sub-int v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 1130
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v0, v4, v4}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;[Z[Z)Ljava/lang/String;

    move-result-object v3

    .line 1131
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    int-to-float p2, p2

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v5, v5, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatEndRow:I

    int-to-float v5, v5

    sub-float/2addr v5, v6

    cmpl-float p2, p2, v5

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {p1, v0, v4, v3, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setObject(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 1132
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    goto/16 :goto_3

    .line 1143
    :cond_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 1144
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v0, p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-ne v0, v4, :cond_7

    .line 1145
    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1146
    sget p2, Lorg/telegram/messenger/R$string;->ChannelInviteViaLink:I

    const-string v0, "ChannelInviteViaLink"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1148
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, v1, :cond_6

    .line 1149
    sget p2, Lorg/telegram/messenger/R$string;->ChannelInviteViaLinkRestricted2:I

    const-string v0, "ChannelInviteViaLinkRestricted2"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1151
    :cond_6
    sget p2, Lorg/telegram/messenger/R$string;->ChannelInviteViaLinkRestricted3:I

    const-string v0, "ChannelInviteViaLinkRestricted3"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_7
    const/4 p2, 0x2

    if-ne v0, p2, :cond_8

    .line 1155
    sget p2, Lorg/telegram/messenger/R$string;->YourPublicCommunities:I

    const-string v0, "YourPublicCommunities"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1157
    :cond_8
    sget p2, Lorg/telegram/messenger/R$string;->LastActiveCommunities:I

    const-string v0, "LastActiveCommunities"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1161
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeaturesStartRow:I

    sub-int/2addr p2, v1

    .line 1162
    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeatures:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    if-ltz p2, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_c

    .line 1163
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->set(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;)V

    goto :goto_3

    .line 1136
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    sub-int/2addr p2, v0

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1137
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    .line 1138
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/AdminedChannelCell;->getCurrentChannel()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1139
    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Cells/AdminedChannelCell;->setChannel(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 1140
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-ne v0, p2, :cond_b

    goto :goto_2

    :cond_b
    move v1, v2

    :goto_2
    invoke-virtual {p1, v3, v1}, Lorg/telegram/ui/Cells/AdminedChannelCell;->setChecked(ZZ)V

    :cond_c
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 16

    move-object/from16 v0, p0

    .line 990
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0x12

    const/4 v4, 0x6

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch p2, :pswitch_data_0

    .line 1074
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    new-instance v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-direct {v3, v4, v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;)V

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2002(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    move-result-object v2

    goto/16 :goto_3

    .line 1040
    :pswitch_0
    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_3

    .line 993
    :pswitch_1
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 994
    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v8}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v9, v4

    invoke-virtual {v5, v8, v7, v9, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 995
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 997
    new-instance v4, Lorg/telegram/ui/Components/LoginOrView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/LoginOrView;-><init>(Landroid/content/Context;)V

    .line 999
    new-instance v8, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v8, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    .line 1000
    sget v1, Lorg/telegram/messenger/R$string;->BoostingStoriesByGifting:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 1001
    new-instance v9, Landroid/text/SpannableStringBuilder;

    sget v10, Lorg/telegram/messenger/R$string;->BoostingStoriesByGiftingLink:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1002
    new-instance v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$1;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$1;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;)V

    .line 1013
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/16 v12, 0x21

    .line 1002
    invoke-virtual {v9, v10, v7, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1014
    new-instance v10, Landroid/text/SpannableString;

    const-string v11, ">"

    invoke-direct {v10, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1015
    iget-object v13, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {v13}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lorg/telegram/messenger/R$drawable;->msg_arrowright:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 1016
    new-instance v14, Landroid/graphics/PorterDuffColorFilter;

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v15, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1017
    new-instance v2, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-direct {v2, v13}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 1018
    invoke-virtual {v2, v15}, Lorg/telegram/ui/Components/ColoredImageSpan;->setColorKey(I)V

    .line 1019
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;->setSize(I)V

    const/16 v3, 0xb

    .line 1020
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;->setWidth(I)V

    const/4 v3, 0x5

    .line 1021
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTranslateX(F)V

    .line 1022
    invoke-virtual {v10}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v10, v2, v7, v3, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object v1, v2, v7

    const-string v1, " "

    aput-object v1, v2, v6

    .line 1023
    invoke-static {v11, v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 1024
    invoke-virtual {v8, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1025
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    if-eqz v1, :cond_0

    .line 1026
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1028
    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1030
    :goto_0
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1031
    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;)V

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1032
    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$$ExternalSyntheticLambda0;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1033
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    const/4 v9, -0x1

    const/16 v10, 0x30

    const/16 v11, 0xc

    const/16 v12, 0xc

    const/16 v13, 0xc

    const/16 v14, 0x8

    invoke-static/range {v9 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1034
    invoke-static/range {v9 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v10, -0x2

    const/16 v11, 0xc

    const/16 v13, 0xc

    const/4 v14, 0x4

    .line 1035
    invoke-static/range {v9 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v5

    goto/16 :goto_3

    .line 1043
    :pswitch_2
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {v8}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1044
    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v8}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v9, v4

    invoke-virtual {v2, v8, v7, v9, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1045
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1046
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v8, 0xd

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v10, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->statisticClickRunnable:Ljava/lang/Runnable;

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x32

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v4, v1, v9, v3, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 1047
    invoke-virtual {v4, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1048
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1049
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/4 v10, 0x0

    const/16 v11, 0xb

    const/4 v12, 0x0

    const/16 v13, 0xb

    const/4 v14, 0x0

    .line 1050
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1051
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v8}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    invoke-static {v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    const/16 v9, 0x4c

    invoke-static {v8, v9}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v8

    invoke-static {v1, v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1052
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1053
    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1056
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->statisticClickRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 1057
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1058
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_stats:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1059
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v8}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    invoke-static {v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1060
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v1, v3, v8, v10, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/16 v3, 0x14

    .line 1061
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-static {v5, v9}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-static {v3, v7, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v5, 0x28

    const/16 v6, 0x28

    const/16 v7, 0x15

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/16 v10, 0xf

    const/4 v11, 0x0

    .line 1062
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1063
    new-instance v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1068
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    .line 1069
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_3

    .line 1106
    :pswitch_3
    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$3;

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$3;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;Landroid/content/Context;)V

    goto :goto_3

    .line 1098
    :pswitch_4
    new-instance v2, Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1099
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v1, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    const/16 v1, 0x16

    goto :goto_2

    :cond_3
    const/16 v1, 0x15

    :goto_2
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 1100
    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    .line 1101
    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIgnoreHeightCheck(Z)V

    const/16 v1, 0xa

    .line 1102
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setItemsCount(I)V

    goto :goto_3

    .line 1095
    :pswitch_5
    new-instance v2, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-direct {v2, v1, v6, v5, v7}, Lorg/telegram/ui/Cells/GroupCreateUserCell;-><init>(Landroid/content/Context;IIZ)V

    goto :goto_3

    .line 1091
    :pswitch_6
    new-instance v2, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 1092
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v2, v7, v7, v7, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 1088
    :pswitch_7
    new-instance v2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/16 v3, 0xc

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-direct {v2, v1, v3, v4}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;II)V

    goto :goto_3

    .line 1077
    :pswitch_8
    new-instance v2, Lorg/telegram/ui/Cells/AdminedChannelCell;

    new-instance v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$2;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$2;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;)V

    const/16 v4, 0x9

    invoke-direct {v2, v1, v3, v6, v4}, Lorg/telegram/ui/Cells/AdminedChannelCell;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;ZI)V

    .line 1114
    :goto_3
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1115
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
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
