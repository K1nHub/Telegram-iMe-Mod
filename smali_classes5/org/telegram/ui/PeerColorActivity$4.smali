.class Lorg/telegram/ui/PeerColorActivity$4;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "PeerColorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PeerColorActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PeerColorActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$dgb5jziquYSWfiLcFcPQxfsS_XU(Lorg/telegram/ui/PeerColorActivity$4;Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PeerColorActivity$4;->lambda$onCreateViewHolder$0(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;Ljava/lang/Integer;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iput-object p2, p0, Lorg/telegram/ui/PeerColorActivity$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;Ljava/lang/Integer;)V
    .locals 2

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/PeerColorActivity;->access$802(Lorg/telegram/ui/PeerColorActivity;I)I

    .line 237
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->setSelected(I)V

    .line 238
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$1000(Lorg/telegram/ui/PeerColorActivity;)V

    .line 239
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$900(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 240
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$900(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iget v0, v0, Lorg/telegram/ui/PeerColorActivity;->rowCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 296
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity;->previewRow:I

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 299
    :cond_0
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity;->infoRow:I

    const/4 v2, 0x2

    if-eq p1, v1, :cond_5

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity;->info2Row:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 302
    :cond_1
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity;->colorPickerRow:I

    const/4 v3, 0x1

    if-ne p1, v1, :cond_2

    return v3

    .line 305
    :cond_2
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity;->iconRow:I

    if-ne p1, v1, :cond_3

    const/4 p1, 0x3

    return p1

    .line 308
    :cond_3
    iget v0, v0, Lorg/telegram/ui/PeerColorActivity;->buttonRow:I

    if-ne p1, v0, :cond_4

    const/4 p1, 0x5

    return p1

    .line 311
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity$4;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_5

    const/4 p1, 0x4

    return p1

    :cond_5
    :goto_0
    return v2
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 210
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 276
    invoke-virtual {p0, p2}, Lorg/telegram/ui/PeerColorActivity$4;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 278
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity;->infoRow:I

    if-ne p2, v1, :cond_2

    .line 280
    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$000(Lorg/telegram/ui/PeerColorActivity;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Lorg/telegram/messenger/R$string;->ChannelColorHint:I

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->UserColorHint:I

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$4;->val$context:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 282
    :cond_2
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity;->info2Row:I

    if-ne p2, v1, :cond_4

    .line 283
    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$000(Lorg/telegram/ui/PeerColorActivity;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget p2, Lorg/telegram/messenger/R$string;->ChannelReplyIconHint:I

    goto :goto_1

    :cond_3
    sget p2, Lorg/telegram/messenger/R$string;->UserReplyIconHint:I

    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$4;->val$context:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    const/4 p1, 0x4

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    .line 228
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$4;->val$context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 246
    :cond_0
    new-instance p1, Lorg/telegram/ui/PeerColorActivity$4$1;

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$4;->val$context:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PeerColorActivity$4$1;-><init>(Lorg/telegram/ui/PeerColorActivity$4;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 259
    :cond_1
    new-instance p1, Lorg/telegram/ui/PeerColorActivity$4$2;

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$4;->val$context:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PeerColorActivity$4$2;-><init>(Lorg/telegram/ui/PeerColorActivity$4;Landroid/content/Context;)V

    .line 268
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$4;->val$context:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 254
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    new-instance p2, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$4;->val$context:Landroid/content/Context;

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;-><init>(Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;)V

    invoke-static {p1, p2}, Lorg/telegram/ui/PeerColorActivity;->access$902(Lorg/telegram/ui/PeerColorActivity;Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;)Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;

    move-result-object p1

    const/4 p2, 0x0

    .line 255
    invoke-virtual {p1, p2}, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->update(Z)V

    goto :goto_0

    .line 232
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    new-instance p2, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/PeerColorActivity;->access$700(Lorg/telegram/ui/PeerColorActivity;)I

    move-result v1

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;-><init>(Landroid/content/Context;I)V

    invoke-static {p1, p2}, Lorg/telegram/ui/PeerColorActivity;->access$602(Lorg/telegram/ui/PeerColorActivity;Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    move-result-object p1

    .line 233
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 234
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity;->access$800(Lorg/telegram/ui/PeerColorActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->setSelected(I)V

    .line 235
    new-instance p2, Lorg/telegram/ui/PeerColorActivity$4$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/PeerColorActivity$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PeerColorActivity$4;Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->setOnColorClick(Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    .line 219
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    new-instance v6, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$4;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$400(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$500(Lorg/telegram/ui/PeerColorActivity;)J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;IJ)V

    invoke-static {p2, v6}, Lorg/telegram/ui/PeerColorActivity;->access$302(Lorg/telegram/ui/PeerColorActivity;Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    move-result-object p2

    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_5

    .line 221
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 223
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iput-object p1, p2, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object p1, p2

    .line 271
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
