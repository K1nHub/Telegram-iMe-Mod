.class Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "PrivacyUsersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PrivacyUsersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PrivacyUsersActivity;


# direct methods
.method public static synthetic $r8$lambda$DXME1vB3-IQoSUDKei0-QZteOpY(Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->lambda$onCreateViewHolder$0(Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/PrivacyUsersActivity;Landroid/content/Context;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 404
    iput-object p2, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 427
    iget-object p2, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {p2, v0, p1}, Lorg/telegram/ui/PrivacyUsersActivity;->access$1200(Lorg/telegram/ui/PrivacyUsersActivity;Ljava/lang/Long;Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->access$100(Lorg/telegram/ui/PrivacyUsersActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 554
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->access$1000(Lorg/telegram/ui/PrivacyUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    return p1

    .line 556
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->access$900(Lorg/telegram/ui/PrivacyUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x3

    return p1

    .line 558
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->access$1100(Lorg/telegram/ui/PrivacyUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 560
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->access$600(Lorg/telegram/ui/PrivacyUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->access$700(Lorg/telegram/ui/PrivacyUsersActivity;)I

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
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 414
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

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

    .line 459
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    if-eq v0, v3, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    .line 540
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 541
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->access$900(Lorg/telegram/ui/PrivacyUsersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_16

    .line 542
    iget-object p2, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyUsersActivity;->access$200(Lorg/telegram/ui/PrivacyUsersActivity;)I

    move-result p2

    if-ne p2, v3, :cond_1

    .line 543
    iget-object p2, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->totalBlockedCount:I

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "BlockedUsersCount"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 545
    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyExceptions:I

    const-string v0, "PrivacyExceptions"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 527
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ManageChatTextCell;

    .line 528
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(II)V

    .line 530
    iget-object p2, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyUsersActivity;->access$800(Lorg/telegram/ui/PrivacyUsersActivity;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 531
    sget p2, Lorg/telegram/messenger/R$string;->EmpryUsersPlaceholder:I

    const-string v0, "EmpryUsersPlaceholder"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_contact_add:I

    invoke-virtual {p1, p2, v1, v0, v2}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_4

    .line 533
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyUsersActivity;->access$200(Lorg/telegram/ui/PrivacyUsersActivity;)I

    move-result p2

    if-ne p2, v3, :cond_4

    .line 534
    sget p2, Lorg/telegram/messenger/R$string;->BlockUser:I

    const-string v0, "BlockUser"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_contact_add:I

    invoke-virtual {p1, p2, v1, v0, v2}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_4

    .line 536
    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyAddAnException:I

    const-string v0, "PrivacyAddAnException"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_contact_add:I

    iget-object v4, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/PrivacyUsersActivity;->access$400(Lorg/telegram/ui/PrivacyUsersActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p1, p2, v1, v0, v2}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_4

    .line 506
    :cond_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->access$600(Lorg/telegram/ui/PrivacyUsersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_9

    .line 508
    iget-object p2, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyUsersActivity;->access$200(Lorg/telegram/ui/PrivacyUsersActivity;)I

    move-result p2

    if-ne p2, v3, :cond_7

    .line 509
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 510
    sget p2, Lorg/telegram/messenger/R$string;->BlockedUsersInfo:I

    const-string v0, "BlockedUsersInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    const/16 p2, 0x8

    .line 512
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 513
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 515
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyUsersActivity;->access$300(Lorg/telegram/ui/PrivacyUsersActivity;)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_8

    .line 516
    iget-object p2, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 518
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 520
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->access$700(Lorg/telegram/ui/PrivacyUsersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_16

    const/16 p2, 0xc

    .line 521
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    const-string p2, ""

    .line 522
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object p2, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 461
    :cond_a
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    .line 463
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->access$200(Lorg/telegram/ui/PrivacyUsersActivity;)I

    move-result v0

    if-ne v0, v3, :cond_b

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->blockePeers:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-object v4, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/PrivacyUsersActivity;->access$300(Lorg/telegram/ui/PrivacyUsersActivity;)I

    move-result v4

    sub-int v4, p2, v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J

    move-result-wide v4

    goto :goto_1

    .line 466
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->access$400(Lorg/telegram/ui/PrivacyUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/PrivacyUsersActivity;->access$300(Lorg/telegram/ui/PrivacyUsersActivity;)I

    move-result v4

    sub-int v4, p2, v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 468
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_11

    .line 470
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    const-string v6, "NumberUnknown"

    if-nez v0, :cond_d

    .line 473
    sget v0, Lorg/telegram/messenger/R$string;->common_id:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v2

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 474
    sget v1, Lorg/telegram/messenger/R$string;->NumberUnknown:I

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/PrivacyUsersActivity;->access$500(Lorg/telegram/ui/PrivacyUsersActivity;)I

    move-result v5

    sub-int/2addr v5, v3

    if-eq p2, v5, :cond_c

    move v2, v3

    :cond_c
    invoke-virtual {p1, v4, v0, v1, v2}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_4

    .line 479
    :cond_d
    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v4, :cond_e

    .line 480
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lorg/telegram/messenger/R$string;->Bot:I

    const-string v6, "Bot"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 481
    :cond_e
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_f

    .line 482
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 484
    :cond_f
    sget v4, Lorg/telegram/messenger/R$string;->NumberUnknown:I

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 486
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/PrivacyUsersActivity;->access$500(Lorg/telegram/ui/PrivacyUsersActivity;)I

    move-result v5

    sub-int/2addr v5, v3

    if-eq p2, v5, :cond_10

    move v2, v3

    :cond_10
    invoke-virtual {p1, v0, v1, v4, v2}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_4

    .line 489
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 492
    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v4, :cond_12

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "Members"

    .line 493
    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 494
    :cond_12
    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz v4, :cond_13

    .line 495
    sget v4, Lorg/telegram/messenger/R$string;->MegaLocation:I

    const-string v5, "MegaLocation"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 496
    :cond_13
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 497
    sget v4, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    const-string v5, "MegaPrivate"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 499
    :cond_14
    sget v4, Lorg/telegram/messenger/R$string;->MegaPublic:I

    const-string v5, "MegaPublic"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 501
    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/PrivacyUsersActivity;->access$500(Lorg/telegram/ui/PrivacyUsersActivity;)I

    move-result v5

    sub-int/2addr v5, v3

    if-eq p2, v5, :cond_15

    move v2, v3

    :cond_15
    invoke-virtual {p1, v0, v1, v4, v2}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_16
    :goto_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 441
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v2, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v4, 0x15

    const/16 v5, 0xb

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZ)V

    .line 442
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/16 p2, 0x2b

    .line 443
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setHeight(I)V

    goto :goto_0

    .line 447
    :cond_0
    new-instance p2, Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 448
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsDeleteAllException:I

    const-string v0, "NotificationsDeleteAllException"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    const/4 p1, -0x1

    .line 449
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 451
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    move-object p1, p2

    goto :goto_0

    .line 436
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/ManageChatTextCell;

    iget-object p2, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ManageChatTextCell;-><init>(Landroid/content/Context;)V

    .line 437
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 433
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 423
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    iget-object p2, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x7

    const/4 v2, 0x6

    invoke-direct {p1, p2, v1, v2, v0}, Lorg/telegram/ui/Cells/ManageChatUserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 424
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 425
    new-instance p2, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setDelegate(Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;)V

    .line 454
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
