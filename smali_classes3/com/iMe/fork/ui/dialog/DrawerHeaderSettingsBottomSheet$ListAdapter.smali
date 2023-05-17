.class final Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DrawerHeaderSettingsBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 191
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;->updateRows()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->access$getRowCount$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->access$getAvatarRow$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->access$getArchiveRow$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    goto :goto_1

    .line 214
    :cond_2
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->NOTIFICATIONS_CHECK_CELL:I

    :goto_1
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0, p2}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 226
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    instance-of v1, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_3

    .line 229
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->access$getAvatarRow$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)I

    move-result v0

    if-ne p2, v0, :cond_0

    move v2, v3

    .line 230
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_1

    .line 231
    sget p2, Lorg/telegram/messenger/R$string;->drawer_profile_cell_avatar:I

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->drawer_profile_cell_archive:I

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 232
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->access$getNewSettings(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object v0

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/iMe/fork/models/DrawerHeaderSettings;->isShowAvatar()Z

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/iMe/fork/models/DrawerHeaderSettings;->isShowArchive()Z

    move-result v0

    .line 230
    :goto_1
    invoke-virtual {p1, p2, v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_5

    .line 236
    :cond_3
    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->NOTIFICATIONS_CHECK_CELL:I

    if-ne v0, v1, :cond_8

    instance-of v0, p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    if-eqz v0, :cond_8

    .line 237
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->access$getTitleRow$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)I

    move-result v0

    if-ne p2, v0, :cond_4

    move v2, v3

    .line 238
    :cond_4
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    invoke-static {p2}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->access$getNewSettings(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object p2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Lcom/iMe/fork/models/DrawerHeaderSettings;->getTitle()Lcom/iMe/ui/drawer/DrawerAccountData;

    move-result-object p2

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Lcom/iMe/fork/models/DrawerHeaderSettings;->getSubtitle()Lcom/iMe/ui/drawer/DrawerAccountData;

    move-result-object p2

    .line 239
    :goto_2
    check-cast p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    if-eqz v2, :cond_6

    .line 240
    sget v0, Lorg/telegram/messenger/R$string;->drawer_profile_cell_alert_title:I

    goto :goto_3

    :cond_6
    sget v0, Lorg/telegram/messenger/R$string;->drawer_profile_cell_alert_subtitle:I

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-virtual {p2}, Lcom/iMe/ui/drawer/DrawerAccountData;->getTitle()Ljava/lang/String;

    move-result-object p2

    .line 242
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->access$getNewSettings(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object v1

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/iMe/fork/models/DrawerHeaderSettings;->isShowTitle()Z

    move-result v1

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Lcom/iMe/fork/models/DrawerHeaderSettings;->isShowSubtitle()Z

    move-result v1

    .line 239
    :goto_4
    invoke-virtual {p1, v0, p2, v1, v3}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    :cond_8
    :goto_5
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 219
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;)V

    .line 221
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final updateRows()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->access$setRowCount$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;I)V

    .line 198
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->access$getRowCount$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->access$setRowCount$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->access$setTitleRow$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;I)V

    .line 199
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->access$getRowCount$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->access$setRowCount$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->access$setSubtitleRow$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;I)V

    .line 200
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->access$getRowCount$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->access$setRowCount$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->access$setAvatarRow$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;I)V

    .line 201
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->access$getRowCount$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->access$setRowCount$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->access$setArchiveRow$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;I)V

    return-void
.end method
