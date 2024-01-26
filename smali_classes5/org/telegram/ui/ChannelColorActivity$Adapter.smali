.class Lorg/telegram/ui/ChannelColorActivity$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChannelColorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelColorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelColorActivity;


# direct methods
.method public static synthetic $r8$lambda$2cI-oARPGxJSKazdzpSL0KqufeM(Lorg/telegram/ui/ChannelColorActivity$Adapter;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelColorActivity$Adapter;->lambda$onCreateViewHolder$2(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hP-xh8PEakF0juTj2Opr12-vtW0(Lorg/telegram/ui/ChannelColorActivity$Adapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelColorActivity$Adapter;->lambda$onCreateViewHolder$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hhm1IOf0Hs21ic7sy3To5-qw9zE(Lorg/telegram/ui/ChannelColorActivity$Adapter;Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelColorActivity$Adapter;->lambda$onCreateViewHolder$1(Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;Landroid/view/View;I)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/ChannelColorActivity;)V
    .locals 0

    .line 832
    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/ui/ChannelColorActivity$1;)V
    .locals 0

    .line 832
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelColorActivity$Adapter;-><init>(Lorg/telegram/ui/ChannelColorActivity;)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 853
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object v0, p1, Lorg/telegram/ui/ChannelColorActivity;->galleryWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iput-object v0, p1, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    goto :goto_0

    .line 855
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_wallPaperNoFile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_wallPaperNoFile;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    .line 857
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    .line 858
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    .line 859
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->emoticon:Ljava/lang/String;

    .line 861
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChannelColorActivity;->updateButton(Z)V

    .line 862
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChannelColorActivity;->updateMessagesPreview(Z)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$1(Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;Landroid/view/View;I)V
    .locals 5

    .line 877
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->toColorId(I)I

    move-result p3

    iput p3, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    .line 878
    iget-object p3, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lorg/telegram/ui/ChannelColorActivity;->updateButton(Z)V

    .line 879
    iget-object p3, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p3, v0}, Lorg/telegram/ui/ChannelColorActivity;->updateMessagesPreview(Z)V

    .line 880
    iget-object p3, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p3, v0}, Lorg/telegram/ui/ChannelColorActivity;->updateProfilePreview(Z)V

    .line 882
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    iget-object v0, p1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    const/16 v1, 0x18

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    const/4 v2, 0x0

    const/16 v3, 0x30

    if-ge p3, v0, :cond_0

    .line 883
    iget-object p1, p1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p3, v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr p3, p2

    neg-int p2, p3

    invoke-virtual {p1, p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 884
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr p3, v0

    iget-object v0, p1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget-object v4, p1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_1

    .line 885
    iget-object p3, p1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr v0, p2

    iget-object p2, p1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    iget-object p1, p1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    invoke-virtual {p3, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$2(Ljava/lang/Integer;)V
    .locals 1

    .line 903
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    .line 904
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChannelColorActivity;->updateButton(Z)V

    .line 905
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChannelColorActivity;->updateProfilePreview(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1033
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$4100(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1012
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$3500(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1014
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$3600(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 1016
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$3700(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 1018
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$3800(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 1020
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$3900(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    const/4 p1, 0x4

    return p1

    .line 1022
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$2100(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$2300(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$2500(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    goto :goto_1

    .line 1024
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$4000(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$2000(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x7

    return p1

    :cond_7
    :goto_0
    const/4 p1, 0x5

    return p1

    :cond_8
    :goto_1
    const/4 p1, 0x6

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1038
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

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

    .line 919
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_12

    const/4 v3, 0x3

    if-eq v0, v3, :cond_11

    const/4 v3, 0x4

    if-eq v0, v3, :cond_10

    const/4 v3, 0x5

    if-eq v0, v3, :cond_e

    const/4 v3, 0x6

    if-eq v0, v3, :cond_7

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 959
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 960
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 961
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$2700(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 962
    sget v0, Lorg/telegram/messenger/R$string;->ChannelReplyInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 963
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$2800(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 964
    sget v0, Lorg/telegram/messenger/R$string;->ChannelWallpaper2Info:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 965
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$2900(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 966
    sget v0, Lorg/telegram/messenger/R$string;->ChannelProfileInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 967
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$3000(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 968
    sget v0, Lorg/telegram/messenger/R$string;->ChannelEmojiStatusInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 969
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$3100(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    if-ne p2, v0, :cond_5

    const-string v0, ""

    .line 970
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0xc

    .line 971
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 973
    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelColorActivity;->access$3000(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v1

    if-ne p2, v1, :cond_6

    sget p2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    goto :goto_1

    :cond_6
    sget p2, Lorg/telegram/messenger/R$drawable;->greydivider:I

    :goto_1
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelColorActivity;->access$3200(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v0, p2, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 932
    :cond_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;

    .line 933
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setDivider(Z)V

    .line 934
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$2100(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    if-ne p2, v0, :cond_9

    .line 935
    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelColorActivity;->access$2200(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v0, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setAdaptiveEmojiColor(IIZ)V

    .line 936
    sget p2, Lorg/telegram/messenger/R$string;->ChannelReplyLogo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setText(Ljava/lang/CharSequence;)V

    .line 937
    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v0, p2, Lorg/telegram/ui/ChannelColorActivity;->currentLevel:I

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->channelBgIconLevelMin:I

    if-ge v0, p2, :cond_8

    .line 938
    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->channelBgIconLevelMin:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setLockLevel(I)V

    .line 940
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-wide v0, p2, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyEmoji:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setEmoji(JZ)V

    goto/16 :goto_3

    .line 941
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$2300(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    if-ne p2, v0, :cond_c

    .line 942
    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelColorActivity;->access$2400(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v0, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setAdaptiveEmojiColor(IIZ)V

    .line 943
    sget p2, Lorg/telegram/messenger/R$string;->ChannelProfileLogo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setText(Ljava/lang/CharSequence;)V

    .line 944
    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelColorActivity;->access$2000(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result p2

    if-ltz p2, :cond_a

    goto :goto_2

    :cond_a
    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setDivider(Z)V

    .line 945
    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v0, p2, Lorg/telegram/ui/ChannelColorActivity;->currentLevel:I

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->channelProfileIconLevelMin:I

    if-ge v0, p2, :cond_b

    .line 946
    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->channelProfileIconLevelMin:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setLockLevel(I)V

    .line 948
    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-wide v0, p2, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileEmoji:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setEmoji(JZ)V

    goto/16 :goto_3

    .line 949
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$2500(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    if-ne p2, v0, :cond_13

    .line 950
    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelColorActivity;->access$2600(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v0, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setAdaptiveEmojiColor(IIZ)V

    .line 951
    sget p2, Lorg/telegram/messenger/R$string;->ChannelEmojiStatus:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setText(Ljava/lang/CharSequence;)V

    .line 952
    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v0, p2, Lorg/telegram/ui/ChannelColorActivity;->currentLevel:I

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->channelEmojiStatusLevelMin:I

    if-ge v0, p2, :cond_d

    .line 953
    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->channelEmojiStatusLevelMin:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setLockLevel(I)V

    .line 955
    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {p2}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setEmoji(JZ)V

    goto/16 :goto_3

    .line 921
    :cond_e
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    .line 922
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$2000(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    if-ne p2, v0, :cond_f

    .line 923
    sget p2, Lorg/telegram/messenger/R$string;->ChannelProfileColorReset:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto :goto_3

    .line 925
    :cond_f
    sget p2, Lorg/telegram/messenger/R$string;->ChannelWallpaper:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    .line 926
    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v0, p2, Lorg/telegram/ui/ChannelColorActivity;->currentLevel:I

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->channelWallpaperLevelMin:I

    if-ge v0, p2, :cond_13

    .line 927
    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->channelWallpaperLevelMin:I

    invoke-virtual {p1, v2, p2}, Lorg/telegram/ui/Cells/TextCell;->setLockLevel(ZI)V

    goto :goto_3

    .line 984
    :cond_10
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget p2, p2, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->setSelected(IZ)V

    goto :goto_3

    .line 988
    :cond_11
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;

    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget p2, p2, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->setSelected(IZ)V

    goto :goto_3

    .line 976
    :cond_12
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;

    .line 977
    iget-object p2, p1, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->backgroundView:Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$3300(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v1, v1, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    invoke-virtual {p2, v0, v1, v2}, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->setColor(IIZ)V

    .line 978
    iget-object p2, p1, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v0, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    invoke-virtual {p2, v0, v2}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setColor(IZ)V

    .line 979
    iget-object p2, p1, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-wide v0, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileEmoji:J

    invoke-virtual {p2, v0, v1, v2}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setEmoji(JZ)V

    .line 980
    iget-object p2, p1, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, v2}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setStatusEmoji(JZ)V

    .line 981
    iget-object p1, p1, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget p2, p2, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->overrideAvatarColor(I)V

    :cond_13
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    const/4 p1, 0x4

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 839
    new-instance p2, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelColorActivity;->access$1000(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v3

    const/4 v4, 0x3

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-wide v5, v1, Lorg/telegram/ui/ChannelColorActivity;->dialogId:J

    invoke-static {v1}, Lorg/telegram/ui/ChannelColorActivity;->access$1100(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 840
    iput-boolean v0, p2, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->customAnimation:Z

    .line 841
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 842
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 844
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iput-object p1, p2, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 845
    iget-object v0, p1, Lorg/telegram/ui/ChannelColorActivity;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lorg/telegram/ui/ChannelColorActivity;->access$1200(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-static {v2}, Lorg/telegram/ui/ChannelColorActivity;->access$500(Lorg/telegram/ui/ChannelColorActivity;)Z

    move-result v2

    invoke-static {v0, v1, v3, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawable(Landroid/graphics/drawable/Drawable;ILorg/telegram/tgnet/TLRPC$WallPaper;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/ChannelColorActivity;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->setOverrideBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p2, v1, :cond_2

    .line 848
    new-instance p2, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$1300(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelColorActivity;->access$1400(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, p1, v2, v0, v1}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;-><init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 849
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-static {p1}, Lorg/telegram/messenger/ChatThemeController;->getWallpaperEmoticon(Lorg/telegram/tgnet/TLRPC$WallPaper;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->setSelectedEmoticon(Ljava/lang/String;Z)V

    .line 850
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChannelColorActivity;->galleryWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->setGalleryWallpaper(Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    .line 851
    new-instance p1, Lorg/telegram/ui/ChannelColorActivity$Adapter$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChannelColorActivity$Adapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChannelColorActivity$Adapter;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->setOnEmoticonSelected(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 864
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x5

    if-ne p2, v1, :cond_3

    .line 867
    new-instance p2, Lorg/telegram/ui/Cells/TextCell;

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 868
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x6

    if-ne p2, v1, :cond_4

    .line 871
    new-instance p2, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$1500(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 872
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x3

    if-ne p2, v1, :cond_5

    .line 875
    new-instance p2, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$1600(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelColorActivity;->access$1700(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 876
    iget-object p1, p2, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/ChannelColorActivity$Adapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/ChannelColorActivity$Adapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChannelColorActivity$Adapter;Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 888
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    :cond_5
    if-ne p2, p1, :cond_6

    .line 900
    new-instance p2, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelColorActivity;->access$1800(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelColorActivity;->access$1900(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {p2, p1, v0, v1, v3}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 901
    invoke-virtual {p2, v2}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->setDivider(Z)V

    .line 902
    new-instance p1, Lorg/telegram/ui/ChannelColorActivity$Adapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChannelColorActivity$Adapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChannelColorActivity$Adapter;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->setOnColorClick(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 907
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_6
    if-ne p2, v0, :cond_7

    .line 910
    new-instance p2, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;-><init>(Lorg/telegram/ui/ChannelColorActivity;Landroid/content/Context;)V

    goto :goto_0

    .line 912
    :cond_7
    new-instance p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 914
    :goto_0
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 6

    .line 995
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;

    if-eqz v1, :cond_0

    .line 996
    check-cast v0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;

    .line 997
    iget-object v1, v0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v2, v2, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setColor(IZ)V

    .line 998
    iget-object v1, v0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-wide v4, v2, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileEmoji:J

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setEmoji(JZ)V

    .line 999
    iget-object v1, v0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setStatusEmoji(JZ)V

    .line 1000
    iget-object v0, v0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v1, v1, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->overrideAvatarColor(I)V

    goto :goto_0

    .line 1001
    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    if-eqz v1, :cond_1

    .line 1002
    check-cast v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    .line 1003
    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChannelColorActivity;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->setOverrideBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1005
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ChannelColorActivity;->access$3400(Lorg/telegram/ui/ChannelColorActivity;Landroid/view/View;)V

    .line 1007
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
