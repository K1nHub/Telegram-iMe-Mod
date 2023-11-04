.class Lorg/telegram/ui/PeerColorActivity$3;
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
.method public static synthetic $r8$lambda$5p-CvyKcs2Pxh1ONgHNYZBMvsio(Lorg/telegram/ui/PeerColorActivity$3;Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PeerColorActivity$3;->lambda$onCreateViewHolder$0(Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;Landroid/view/View;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$3;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iput-object p2, p0, Lorg/telegram/ui/PeerColorActivity$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;Landroid/view/View;I)V
    .locals 6

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$3;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->toColorId(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/PeerColorActivity;->access$702(Lorg/telegram/ui/PeerColorActivity;I)I

    .line 220
    invoke-virtual {p1, p3}, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->setSelectedPosition(I)V

    .line 221
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x18

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x40

    if-ge v0, v2, :cond_1

    if-nez p3, :cond_0

    .line 222
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    neg-int p2, p2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    neg-int p3, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    neg-int p2, p2

    :goto_0
    invoke-virtual {p1, p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_2

    .line 223
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v2, v1

    if-le v0, v2, :cond_3

    .line 224
    iget-object v0, p1, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_2

    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    sub-int/2addr p3, p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p3, p2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    :goto_1
    invoke-virtual {p1, p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 226
    :cond_3
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$3;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$1000(Lorg/telegram/ui/PeerColorActivity;)V

    .line 227
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$3;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$900(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 228
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$3;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$900(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_4
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$3;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iget v0, v0, Lorg/telegram/ui/PeerColorActivity;->rowCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$3;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity;->previewRow:I

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 279
    :cond_0
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity;->infoRow:I

    const/4 v2, 0x2

    if-eq p1, v1, :cond_4

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity;->info2Row:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 282
    :cond_1
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity;->colorPickerRow:I

    const/4 v3, 0x1

    if-ne p1, v1, :cond_2

    return v3

    .line 285
    :cond_2
    iget v0, v0, Lorg/telegram/ui/PeerColorActivity;->iconRow:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 288
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity$3;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_4

    const/4 p1, 0x4

    return p1

    :cond_4
    :goto_0
    return v2
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 192
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 256
    invoke-virtual {p0, p2}, Lorg/telegram/ui/PeerColorActivity$3;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 258
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$3;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity;->infoRow:I

    if-ne p2, v1, :cond_2

    .line 260
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

    .line 261
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$3;->val$context:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 262
    :cond_2
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity;->info2Row:I

    if-ne p2, v1, :cond_4

    .line 263
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

    .line 264
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$3;->val$context:Landroid/content/Context;

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

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    if-eq p2, p1, :cond_0

    .line 210
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$3;->val$context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 239
    :cond_0
    new-instance p1, Lorg/telegram/ui/PeerColorActivity$3$1;

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$3;->val$context:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PeerColorActivity$3$1;-><init>(Lorg/telegram/ui/PeerColorActivity$3;Landroid/content/Context;)V

    .line 248
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$3;->val$context:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 234
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$3;->this$0:Lorg/telegram/ui/PeerColorActivity;

    new-instance p2, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$3;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$3;->val$context:Landroid/content/Context;

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;-><init>(Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;)V

    invoke-static {p1, p2}, Lorg/telegram/ui/PeerColorActivity;->access$902(Lorg/telegram/ui/PeerColorActivity;Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;)Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;

    move-result-object p1

    const/4 p2, 0x0

    .line 235
    invoke-virtual {p1, p2}, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->update(Z)V

    goto :goto_0

    .line 214
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$3;->this$0:Lorg/telegram/ui/PeerColorActivity;

    new-instance p2, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$3;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/PeerColorActivity;->access$600(Lorg/telegram/ui/PeerColorActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$3;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p1, p2}, Lorg/telegram/ui/PeerColorActivity;->access$502(Lorg/telegram/ui/PeerColorActivity;Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;)Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;

    move-result-object p1

    .line 215
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$3;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 216
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$3;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity;->access$700(Lorg/telegram/ui/PeerColorActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->setSelected(I)V

    .line 217
    iget-object p2, p1, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->access$800(Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;)I

    move-result v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 218
    new-instance p2, Lorg/telegram/ui/PeerColorActivity$3$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/PeerColorActivity$3$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PeerColorActivity$3;Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    goto :goto_0

    .line 201
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$3;->this$0:Lorg/telegram/ui/PeerColorActivity;

    new-instance v6, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$3;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$3;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$300(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$3;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$400(Lorg/telegram/ui/PeerColorActivity;)J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;IJ)V

    invoke-static {p2, v6}, Lorg/telegram/ui/PeerColorActivity;->access$202(Lorg/telegram/ui/PeerColorActivity;Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    move-result-object p2

    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    .line 203
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 205
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$3;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iput-object p1, p2, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object p1, p2

    .line 251
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
