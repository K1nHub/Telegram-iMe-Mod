.class Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ProfileNotificationsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileNotificationsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ProfileNotificationsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ProfileNotificationsActivity;Landroid/content/Context;)V
    .locals 0

    .line 643
    iput-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 644
    iput-object p2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1300(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 955
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1700(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1800(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1900(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2000(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto/16 :goto_5

    .line 957
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2200(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2400(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2500(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2300(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2700(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1500(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto/16 :goto_4

    .line 959
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2800(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2900(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$3000(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$3100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_3

    .line 961
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$4000(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 963
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$3400(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$3500(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_2

    .line 965
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$4100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    const/4 p1, 0x5

    return p1

    .line 967
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$4200(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$4300(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    goto :goto_1

    .line 969
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$3900(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1400(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    goto :goto_0

    :cond_7
    return v1

    :cond_8
    :goto_0
    const/4 p1, 0x7

    return p1

    :cond_9
    :goto_1
    const/4 p1, 0x6

    return p1

    :cond_a
    :goto_2
    const/4 p1, 0x4

    return p1

    :cond_b
    :goto_3
    const/4 p1, 0x2

    return p1

    :cond_c
    :goto_4
    const/4 p1, 0x1

    return p1

    :cond_d
    :goto_5
    return v1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    .line 654
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1400(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 655
    iget-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result p1

    return p1

    .line 656
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1500(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    return v2

    .line 659
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return v2

    .line 663
    :pswitch_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result p1

    return p1

    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 721
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_d

    .line 892
    :pswitch_0
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 893
    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$3800(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 894
    iget-object v4, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$3900(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 895
    sget v2, Lorg/telegram/messenger/R$string;->Notifications:I

    const-string v3, "Notifications"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v3

    invoke-virtual {v1, v2, v3, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_d

    .line 896
    :cond_0
    iget-object v4, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1400(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v4

    if-ne v2, v4, :cond_38

    .line 897
    iget-object v2, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v4

    iget-object v2, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v2

    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v2

    .line 898
    sget v4, Lorg/telegram/messenger/R$string;->MessagePreview:I

    const-string v5, "MessagePreview"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content_preview_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v4, v2, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_d

    .line 903
    :pswitch_1
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    if-lez v2, :cond_1

    move v3, v7

    goto :goto_0

    :cond_1
    move v3, v6

    .line 904
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v7

    if-ge v2, v4, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {v1, v3, v6}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setTopBottom(ZZ)V

    goto/16 :goto_d

    .line 881
    :pswitch_2
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/UserCell2;

    .line 883
    iget-object v2, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 884
    iget-object v2, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$3600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    goto :goto_1

    .line 886
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$3700(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v3

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    :goto_1
    const/4 v3, 0x0

    .line 888
    invoke-virtual {v1, v2, v3, v3, v6}, Lorg/telegram/ui/Cells/UserCell2;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto/16 :goto_d

    .line 859
    :pswitch_3
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/RadioCell;

    .line 860
    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$3300(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 861
    iget-object v5, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v8

    iget-object v5, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v5

    invoke-static {v8, v9, v5}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v5

    .line 862
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "popup_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_6

    .line 864
    iget-object v5, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "popupGroup"

    goto :goto_2

    :cond_4
    const-string v5, "popupAll"

    :goto_2
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v5, v7

    goto :goto_3

    :cond_5
    move v5, v4

    .line 871
    :cond_6
    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$3400(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 872
    sget v2, Lorg/telegram/messenger/R$string;->PopupEnabled:I

    const-string v3, "PopupEnabled"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-ne v5, v7, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {v1, v2, v6, v7}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    .line 873
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 874
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$3500(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_38

    .line 875
    sget v2, Lorg/telegram/messenger/R$string;->PopupDisabled:I

    const-string v3, "PopupDisabled"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-ne v5, v4, :cond_9

    goto :goto_4

    :cond_9
    move v7, v6

    :goto_4
    invoke-virtual {v1, v2, v7, v6}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    .line 876
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 836
    :pswitch_4
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextColorCell;

    .line 837
    iget-object v2, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v2

    iget-object v4, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v2

    .line 838
    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$3200(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 840
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "color_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    const v7, -0xffff01

    if-eqz v4, :cond_a

    .line 841
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_5

    .line 843
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "GroupLed"

    .line 844
    invoke-interface {v3, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_5

    :cond_b
    const-string v2, "MessagesLed"

    .line 846
    invoke-interface {v3, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_5
    move v3, v6

    :goto_6
    const/16 v4, 0x9

    if-ge v3, v4, :cond_d

    .line 850
    sget-object v4, Lorg/telegram/ui/Cells/TextColorCell;->colorsToSave:[I

    aget v4, v4, v3

    if-ne v4, v2, :cond_c

    .line 851
    sget-object v2, Lorg/telegram/ui/Cells/TextColorCell;->colors:[I

    aget v2, v2, v3

    goto :goto_7

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 855
    :cond_d
    :goto_7
    sget v3, Lorg/telegram/messenger/R$string;->NotificationsLedColor:I

    const-string v4, "NotificationsLedColor"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_d

    .line 815
    :pswitch_5
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 816
    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2800(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v3

    const-string v4, "windowBackgroundGrayShadow"

    if-ne v2, v3, :cond_e

    .line 817
    sget v2, Lorg/telegram/messenger/R$string;->ProfilePopupNotificationInfo:I

    const-string v3, "ProfilePopupNotificationInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 818
    iget-object v2, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    .line 819
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2900(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_f

    .line 820
    sget v2, Lorg/telegram/messenger/R$string;->NotificationsLedInfo:I

    const-string v3, "NotificationsLedInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 821
    iget-object v2, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    .line 822
    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$3000(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_11

    .line 823
    iget-object v2, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v2

    if-ne v2, v5, :cond_10

    const-string v2, ""

    .line 824
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 826
    :cond_10
    sget v2, Lorg/telegram/messenger/R$string;->PriorityInfo:I

    const-string v3, "PriorityInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 828
    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    .line 829
    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$3100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_38

    .line 830
    sget v2, Lorg/telegram/messenger/R$string;->VoipRingtoneInfo:I

    const-string v3, "VoipRingtoneInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 831
    iget-object v2, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    .line 736
    :pswitch_6
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 737
    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v8

    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v3

    invoke-static {v8, v9, v3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v3

    .line 738
    iget-object v8, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 739
    iget-object v9, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1500(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v9

    if-ne v2, v9, :cond_12

    .line 740
    sget v2, Lorg/telegram/messenger/R$string;->ResetCustomNotifications:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 741
    iget-object v2, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    const-string v3, "dialogTextRed"

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto/16 :goto_d

    .line 743
    :cond_12
    iget-object v9, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    const-string v10, "windowBackgroundWhiteBlackText"

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 744
    iget-object v9, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2200(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v9

    const-string v10, "NoSound"

    if-ne v2, v9, :cond_17

    .line 745
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sound_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$string;->SoundDefault:I

    const-string v5, "SoundDefault"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 746
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sound_document_id_"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v11, 0x0

    invoke-interface {v8, v3, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v3, v8, v11

    if-eqz v3, :cond_14

    .line 748
    iget-object v2, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lorg/telegram/messenger/ringtone/RingtoneDataStore;

    invoke-virtual {v2, v8, v9}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->getDocument(J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    if-nez v2, :cond_13

    .line 750
    sget v2, Lorg/telegram/messenger/R$string;->CustomSound:I

    const-string v3, "CustomSound"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 752
    :cond_13
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->file_name_fixed:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/ui/NotificationsSoundActivity;->trimTitle(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 754
    :cond_14
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 755
    sget v2, Lorg/telegram/messenger/R$string;->NoSound:I

    invoke-static {v10, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_15
    const-string v3, "Default"

    .line 756
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 757
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 759
    :cond_16
    :goto_9
    sget v3, Lorg/telegram/messenger/R$string;->Sound:I

    const-string v4, "Sound"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_d

    .line 760
    :cond_17
    iget-object v9, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2300(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v9

    if-ne v2, v9, :cond_19

    .line 761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ringtone_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->DefaultRingtone:I

    const-string v4, "DefaultRingtone"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 762
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 763
    sget v2, Lorg/telegram/messenger/R$string;->NoSound:I

    invoke-static {v10, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 765
    :cond_18
    sget v3, Lorg/telegram/messenger/R$string;->VoipSettingsRingtone:I

    const-string v4, "VoipSettingsRingtone"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_d

    .line 766
    :cond_19
    iget-object v9, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2400(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v9

    const-string v10, "Long"

    const-string v11, "VibrationDisabled"

    const-string v12, "Short"

    const-string v13, "VibrationDefault"

    const/4 v14, 0x4

    const-string v15, "Vibrate"

    if-ne v2, v9, :cond_26

    .line 767
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "vibrate_"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_23

    if-ne v2, v14, :cond_1a

    goto/16 :goto_a

    :cond_1a
    if-ne v2, v7, :cond_1d

    .line 771
    sget v2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v15, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->Short:I

    invoke-static {v12, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2500(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v4

    if-ne v4, v5, :cond_1b

    iget-object v4, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v4

    if-eq v4, v5, :cond_1c

    :cond_1b
    move v6, v7

    :cond_1c
    invoke-virtual {v1, v2, v3, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_d

    :cond_1d
    if-ne v2, v4, :cond_20

    .line 773
    sget v2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v15, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->VibrationDisabled:I

    invoke-static {v11, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2500(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v4

    if-ne v4, v5, :cond_1e

    iget-object v4, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v4

    if-eq v4, v5, :cond_1f

    :cond_1e
    move v6, v7

    :cond_1f
    invoke-virtual {v1, v2, v3, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_d

    :cond_20
    const/4 v3, 0x3

    if-ne v2, v3, :cond_38

    .line 775
    sget v2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v15, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->Long:I

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2500(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v4

    if-ne v4, v5, :cond_21

    iget-object v4, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v4

    if-eq v4, v5, :cond_22

    :cond_21
    move v6, v7

    :cond_22
    invoke-virtual {v1, v2, v3, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_d

    .line 769
    :cond_23
    :goto_a
    sget v2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v15, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->VibrationDefault:I

    invoke-static {v13, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2500(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v4

    if-ne v4, v5, :cond_24

    iget-object v4, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v4

    if-eq v4, v5, :cond_25

    :cond_24
    move v6, v7

    :cond_25
    invoke-virtual {v1, v2, v3, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_d

    .line 777
    :cond_26
    iget-object v9, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v9

    if-ne v2, v9, :cond_2c

    .line 778
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "priority_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "NotificationsImportance"

    if-nez v2, :cond_27

    .line 780
    sget v2, Lorg/telegram/messenger/R$string;->NotificationsImportance:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->NotificationsPriorityHigh:I

    const-string v4, "NotificationsPriorityHigh"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_d

    :cond_27
    if-eq v2, v7, :cond_2b

    if-ne v2, v4, :cond_28

    goto :goto_b

    :cond_28
    const/4 v4, 0x3

    if-ne v2, v4, :cond_29

    .line 784
    sget v2, Lorg/telegram/messenger/R$string;->NotificationsImportance:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->NotificationsPrioritySettings:I

    const-string v4, "NotificationsPrioritySettings"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_d

    :cond_29
    if-ne v2, v14, :cond_2a

    .line 786
    sget v2, Lorg/telegram/messenger/R$string;->NotificationsImportance:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->NotificationsPriorityLow:I

    const-string v4, "NotificationsPriorityLow"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_d

    :cond_2a
    const/4 v4, 0x5

    if-ne v2, v4, :cond_38

    .line 788
    sget v2, Lorg/telegram/messenger/R$string;->NotificationsImportance:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->NotificationsPriorityMedium:I

    const-string v4, "NotificationsPriorityMedium"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_d

    .line 782
    :cond_2b
    :goto_b
    sget v2, Lorg/telegram/messenger/R$string;->NotificationsImportance:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->NotificationsPriorityUrgent:I

    const-string v4, "NotificationsPriorityUrgent"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_d

    .line 790
    :cond_2c
    iget-object v9, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2500(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v9

    if-ne v2, v9, :cond_30

    .line 791
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "smart_max_count_"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 792
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "smart_delay_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0xb4

    invoke-interface {v8, v3, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v8, "SmartNotifications"

    if-nez v2, :cond_2e

    .line 794
    sget v2, Lorg/telegram/messenger/R$string;->SmartNotifications:I

    invoke-static {v8, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->SmartNotificationsDisabled:I

    const-string v4, "SmartNotificationsDisabled"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v4

    if-eq v4, v5, :cond_2d

    move v6, v7

    :cond_2d
    invoke-virtual {v1, v2, v3, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_d

    .line 796
    :cond_2e
    div-int/lit8 v3, v3, 0x3c

    new-array v9, v6, [Ljava/lang/Object;

    const-string v10, "Minutes"

    invoke-static {v10, v3, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 797
    sget v9, Lorg/telegram/messenger/R$string;->SmartNotifications:I

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$string;->SmartNotificationsInfo:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    aput-object v3, v4, v7

    const-string v2, "SmartNotificationsInfo"

    invoke-static {v2, v9, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v3

    if-eq v3, v5, :cond_2f

    move v6, v7

    :cond_2f
    invoke-virtual {v1, v8, v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_d

    .line 799
    :cond_30
    iget-object v5, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2700(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v5

    if-ne v2, v5, :cond_38

    .line 800
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calls_vibrate_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_34

    if-ne v2, v14, :cond_31

    goto :goto_c

    :cond_31
    if-ne v2, v7, :cond_32

    .line 804
    sget v2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v15, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->Short:I

    invoke-static {v12, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_d

    :cond_32
    if-ne v2, v4, :cond_33

    .line 806
    sget v2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v15, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->VibrationDisabled:I

    invoke-static {v11, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_d

    :cond_33
    const/4 v3, 0x3

    if-ne v2, v3, :cond_38

    .line 808
    sget v2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v15, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->Long:I

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_d

    .line 802
    :cond_34
    :goto_c
    sget v2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v15, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->VibrationDefault:I

    invoke-static {v13, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_d

    .line 723
    :pswitch_7
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 724
    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1700(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_35

    .line 725
    sget v2, Lorg/telegram/messenger/R$string;->General:I

    const-string v3, "General"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 726
    :cond_35
    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1800(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_36

    .line 727
    sget v2, Lorg/telegram/messenger/R$string;->ProfilePopupNotification:I

    const-string v3, "ProfilePopupNotification"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 728
    :cond_36
    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1900(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_37

    .line 729
    sget v2, Lorg/telegram/messenger/R$string;->NotificationsLed:I

    const-string v3, "NotificationsLed"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 730
    :cond_37
    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2000(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_38

    .line 731
    sget v2, Lorg/telegram/messenger/R$string;->VoipNotificationSettings:I

    const-string v3, "VoipNotificationSettings"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    :cond_38
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const-string p1, "windowBackgroundWhite"

    packed-switch p2, :pswitch_data_0

    .line 711
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1600(Lorg/telegram/ui/ProfileNotificationsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 712
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 707
    :pswitch_0
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1600(Lorg/telegram/ui/ProfileNotificationsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_1

    .line 703
    :pswitch_1
    new-instance p2, Lorg/telegram/ui/Cells/UserCell2;

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    const/4 v1, 0x4

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1600(Lorg/telegram/ui/ProfileNotificationsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {p2, v0, v1, v2, v3}, Lorg/telegram/ui/Cells/UserCell2;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 704
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 699
    :pswitch_2
    new-instance p2, Lorg/telegram/ui/Cells/RadioCell;

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1600(Lorg/telegram/ui/ProfileNotificationsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 700
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 695
    :pswitch_3
    new-instance p2, Lorg/telegram/ui/Cells/TextColorCell;

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1600(Lorg/telegram/ui/ProfileNotificationsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Cells/TextColorCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 696
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 692
    :pswitch_4
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1600(Lorg/telegram/ui/ProfileNotificationsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    .line 688
    :pswitch_5
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1600(Lorg/telegram/ui/ProfileNotificationsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 689
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 684
    :pswitch_6
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1600(Lorg/telegram/ui/ProfileNotificationsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 685
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    move-object p1, p2

    .line 715
    :goto_1
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 716
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 912
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    .line 943
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 944
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1400(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 945
    iget-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result p1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 947
    :cond_1
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 938
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/RadioCell;

    .line 939
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/RadioCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 933
    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextColorCell;

    .line 934
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/TextColorCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 928
    :cond_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 929
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 919
    :cond_5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 920
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1500(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v3

    if-ne p1, v3, :cond_6

    .line 921
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 923
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result p1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 914
    :cond_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 915
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setEnabled(ZLjava/util/ArrayList;)V

    :goto_0
    return-void
.end method
