.class Lorg/telegram/ui/ChatLinkActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChatLinkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatLinkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ChatLinkActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChatLinkActivity;Landroid/content/Context;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 847
    iput-object p2, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 858
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$1300(Lorg/telegram/ui/ChatLinkActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$1400(Lorg/telegram/ui/ChatLinkActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 861
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$1500(Lorg/telegram/ui/ChatLinkActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1012
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$2400(Lorg/telegram/ui/ChatLinkActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    return p1

    .line 1014
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$2500(Lorg/telegram/ui/ChatLinkActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$2600(Lorg/telegram/ui/ChatLinkActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 1016
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$2100(Lorg/telegram/ui/ChatLinkActivity;)I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$2200(Lorg/telegram/ui/ChatLinkActivity;)I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 p1, 0x0

    return p1

    .line 1018
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$2700(Lorg/telegram/ui/ChatLinkActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 852
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
    .locals 9

    .line 967
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_3

    const/4 p2, 0x2

    if-eq v0, p2, :cond_0

    goto/16 :goto_1

    .line 986
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ManageChatTextCell;

    .line 987
    iget-object p2, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatLinkActivity;->access$1000(Lorg/telegram/ui/ChatLinkActivity;)Z

    move-result p2

    const-string v0, "windowBackgroundWhiteRedText5"

    if-eqz p2, :cond_2

    .line 988
    iget-object p2, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatLinkActivity;->access$1100(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    iget-wide v6, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    cmp-long p2, v6, v1

    if-eqz p2, :cond_1

    .line 989
    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    sget p2, Lorg/telegram/messenger/R$string;->DiscussionUnlinkGroup:I

    const-string v0, "DiscussionUnlinkGroup"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_remove:I

    invoke-virtual {p1, p2, v5, v0, v3}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_1
    const-string p2, "windowBackgroundWhiteBlueIcon"

    const-string v0, "windowBackgroundWhiteBlueButton"

    .line 992
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    sget p2, Lorg/telegram/messenger/R$string;->DiscussionCreateGroup:I

    const-string v0, "DiscussionCreateGroup"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    invoke-virtual {p1, p2, v5, v0, v4}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 996
    :cond_2
    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    sget p2, Lorg/telegram/messenger/R$string;->DiscussionUnlinkChannel:I

    const-string v0, "DiscussionUnlinkChannel"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_remove:I

    invoke-virtual {p1, p2, v5, v0, v3}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 976
    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 977
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$2300(Lorg/telegram/ui/ChatLinkActivity;)I

    move-result v0

    if-ne p2, v0, :cond_9

    .line 978
    iget-object p2, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatLinkActivity;->access$1000(Lorg/telegram/ui/ChatLinkActivity;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 979
    sget p2, Lorg/telegram/messenger/R$string;->DiscussionChannelHelp2:I

    const-string v0, "DiscussionChannelHelp2"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 981
    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->DiscussionGroupHelp2:I

    const-string v0, "DiscussionGroupHelp2"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 969
    :cond_5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    .line 970
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 971
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$1200(Lorg/telegram/ui/ChatLinkActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v6, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatLinkActivity;->access$2100(Lorg/telegram/ui/ChatLinkActivity;)I

    move-result v6

    sub-int v6, p2, v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 973
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v6, v5

    goto :goto_0

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatLinkActivity;->access$2200(Lorg/telegram/ui/ChatLinkActivity;)I

    move-result v7

    sub-int/2addr v7, v4

    if-ne p2, v7, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatLinkActivity;->access$1100(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    iget-wide v7, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    cmp-long p2, v7, v1

    if-eqz p2, :cond_8

    :cond_7
    move v3, v4

    :cond_8
    invoke-virtual {p1, v0, v5, v6, v3}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_9
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const-string p1, "windowBackgroundWhite"

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p2, :cond_4

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3

    if-eq p2, v1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    .line 959
    new-instance p1, Lorg/telegram/ui/ChatLinkActivity$HintInnerCell;

    iget-object p2, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ChatLinkActivity$HintInnerCell;-><init>(Lorg/telegram/ui/ChatLinkActivity;Landroid/content/Context;)V

    goto :goto_2

    .line 881
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatLinkActivity;->access$1000(Lorg/telegram/ui/ChatLinkActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatLinkActivity;->access$1200(Lorg/telegram/ui/ChatLinkActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatLinkActivity;->access$1600(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 882
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    new-instance v0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;

    iget-object v1, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, p1}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/ChatLinkActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-static {p2, v0}, Lorg/telegram/ui/ChatLinkActivity;->access$1702(Lorg/telegram/ui/ChatLinkActivity;Lorg/telegram/ui/Components/JoinToSendSettingsView;)Lorg/telegram/ui/Components/JoinToSendSettingsView;

    move-result-object p1

    goto :goto_2

    .line 877
    :cond_2
    new-instance p2, Lorg/telegram/ui/Cells/ManageChatTextCell;

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/ManageChatTextCell;-><init>(Landroid/content/Context;)V

    .line 878
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 873
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 874
    iget-object p2, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    const-string v1, "windowBackgroundGrayShadow"

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 869
    :cond_4
    new-instance p2, Lorg/telegram/ui/Cells/ManageChatUserCell;

    iget-object v2, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x6

    invoke-direct {p2, v2, v3, v1, v0}, Lorg/telegram/ui/Cells/ManageChatUserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 870
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    move-object p1, p2

    .line 962
    :goto_2
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1005
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz v0, :cond_0

    .line 1006
    check-cast p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->recycle()V

    :cond_0
    return-void
.end method
