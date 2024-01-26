.class Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ReactionsDoubleTapManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;Landroid/content/Context;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->this$0:Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    iput-object p2, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->this$0:Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    iget v1, v0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->rowCount:I

    iget v2, v0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->premiumReactionRow:I

    if-gez v2, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ForkCommonController;->isQuickReactionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->this$0:Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    invoke-static {v0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->access$300(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->this$0:Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    invoke-static {v0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->access$700(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 201
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    return p1

    .line 204
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->this$0:Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    iget v1, v0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->previewRow:I

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 207
    :cond_1
    iget v1, v0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->infoRow:I

    if-eq p1, v1, :cond_5

    invoke-static {v0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->access$200(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->this$0:Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    iget v0, v0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->premiumReactionRow:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 213
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_4

    const/4 p1, 0x4

    return p1

    :cond_4
    return v1

    :cond_5
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 105
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

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
    .locals 4

    .line 159
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->getItemViewType(I)I

    move-result v0

    .line 161
    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 162
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 163
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 164
    sget p2, Lorg/telegram/messenger/R$string;->Enable:I

    const-string v0, "Enable"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->this$0:Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ForkCommonController;->isQuickReactionEnabled()Z

    move-result v0

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 166
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->this$0:Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    invoke-static {v0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->access$200(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->this$0:Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ForkCommonController;->isQuickReactionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object p2, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->this$0:Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 169
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    const/4 p2, 0x0

    .line 170
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->this$0:Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 173
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->this$0:Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    invoke-static {v0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->access$200(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 175
    sget p2, Lorg/telegram/messenger/R$string;->quick_reaction_settings_enable_item_hint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->this$0:Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    invoke-static {p2}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->access$100(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 181
    :cond_3
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->getItemViewType(I)I

    move-result v0

    if-eq v0, v3, :cond_4

    goto :goto_0

    .line 183
    :cond_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/AvailableReactionCell;

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->this$0:Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    invoke-static {v0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->access$300(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->this$0:Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    iget v1, v1, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->reactionsStartRow:I

    sub-int/2addr p2, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->this$0:Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    invoke-static {v0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->access$400(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getDoubleTapReaction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 187
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->this$0:Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    invoke-static {v1}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->access$500(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getDoubleTapReaction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->this$0:Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    invoke-static {v1}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->access$600(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/AvailableReactionCell;->bind(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;ZI)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 113
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne p2, p1, :cond_0

    .line 114
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_0
    const/4 p1, 0x4

    const/4 v0, 0x2

    if-eqz p2, :cond_4

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    if-eq p2, p1, :cond_1

    .line 150
    new-instance p1, Lorg/telegram/ui/Cells/AvailableReactionCell;

    iget-object p2, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->val$context:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0, v0}, Lorg/telegram/ui/Cells/AvailableReactionCell;-><init>(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 137
    :cond_1
    new-instance p1, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2$1;

    iget-object p2, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2$1;-><init>(Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;Landroid/content/Context;)V

    .line 146
    iget-object p2, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->val$context:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 132
    :cond_2
    new-instance p1, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;

    iget-object p2, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->this$0:Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    iget-object v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;-><init>(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 133
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;->update(Z)V

    goto :goto_0

    .line 126
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 127
    iget-object p2, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->this$0:Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    sget v0, Lorg/telegram/messenger/R$string;->DoubleTapPreviewRational:I

    const-string v1, "DoubleTapPreviewRational"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->access$102(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p2, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->val$context:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 118
    :cond_4
    new-instance p2, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    iget-object v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->this$0:Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    invoke-static {v2}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->access$000(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    invoke-direct {p2, v1, v2, v0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;I)V

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_5

    .line 120
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 122
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;->this$0:Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    iput-object p1, p2, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object p1, p2

    .line 154
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
