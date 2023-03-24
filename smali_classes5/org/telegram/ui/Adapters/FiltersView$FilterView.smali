.class public Lorg/telegram/ui/Adapters/FiltersView$FilterView;
.super Landroid/widget/FrameLayout;
.source "FiltersView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/FiltersView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterView"
.end annotation


# instance fields
.field avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field data:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

.field titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 708
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 709
    iput-object p2, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 710
    new-instance p2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x20

    .line 711
    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 713
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->titleView:Landroid/widget/TextView;

    const/4 p1, 0x1

    const/high16 v0, 0x41600000    # 14.0f

    .line 714
    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 715
    iget-object p1, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->titleView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    const/16 v2, 0x10

    const/16 v3, 0x26

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 716
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->updateColors()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Adapters/FiltersView$FilterView;)V
    .locals 0

    .line 698
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->updateColors()V

    return-void
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 773
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 774
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private updateColors()V
    .locals 6

    const/16 v0, 0x1c

    .line 720
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const-string v1, "groupcreate_spanBackground"

    invoke-direct {p0, v1}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 721
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->titleView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-direct {p0, v1}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 722
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v0, :cond_1

    .line 723
    iget-object v1, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->data:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget v1, v1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    const/4 v2, 0x7

    const/4 v3, 0x1

    const-string v4, "avatar_actionBarIconBlue"

    const/4 v5, 0x0

    if-ne v1, v2, :cond_0

    const-string v1, "avatar_backgroundArchived"

    .line 724
    invoke-direct {p0, v1}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 725
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {p0, v4}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    goto :goto_0

    :cond_0
    const-string v1, "avatar_backgroundBlue"

    .line 727
    invoke-direct {p0, v1}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 728
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {p0, v4}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public setData(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 10

    .line 734
    iput-object p1, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->data:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    .line 735
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 736
    iget v0, p1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    const/4 v1, 0x1

    const-string v2, "avatar_actionBarIconBlue"

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/16 v5, 0x10

    const/4 v6, 0x7

    if-ne v0, v6, :cond_0

    .line 737
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget v4, Lorg/telegram/messenger/R$drawable;->chats_archive:I

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawableWithIcon(II)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    .line 738
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    .line 739
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    const-string v4, "avatar_backgroundArchived"

    invoke-direct {p0, v4}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 740
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 741
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 742
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->titleView:Landroid/widget/TextView;

    iget-object p1, p1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 745
    :cond_0
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget v6, p1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->iconResFilled:I

    invoke-static {v0, v6}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawableWithIcon(II)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    const-string v6, "avatar_backgroundBlue"

    .line 746
    invoke-direct {p0, v6}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v0, v6, v3}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 747
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v0, v6, v1}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 748
    iget v0, p1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    const/4 v6, 0x4

    if-ne v0, v6, :cond_3

    .line 749
    iget-object v0, p1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->chat:Lorg/telegram/tgnet/TLObject;

    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v6, :cond_2

    .line 750
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 751
    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 752
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget v4, Lorg/telegram/messenger/R$drawable;->chats_saved:I

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawableWithIcon(II)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v0

    .line 753
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    const-string v4, "avatar_backgroundSaved"

    .line 754
    invoke-direct {p0, v4}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 755
    invoke-direct {p0, v2}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 756
    iget-object v1, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 758
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 759
    iget-object v1, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 761
    :cond_2
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_4

    .line 762
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 763
    iget-object v1, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 764
    iget-object v1, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 767
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 769
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->titleView:Landroid/widget/TextView;

    iget-object p1, p1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
