.class public Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChannelWallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelWallpaperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelWallpaperActivity;


# direct methods
.method public static synthetic $r8$lambda$JFMj2rdS7nI2BEOF5vnNbFmxHKU(Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->lambda$onCreateViewHolder$1(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vR90mOxBCqDCRZQKpO9dN8i8FSA(Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;Ljava/lang/String;Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;Lorg/telegram/tgnet/TLRPC$WallPaper;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->lambda$onCreateViewHolder$0(Ljava/lang/String;Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChannelWallpaperActivity;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Ljava/lang/String;Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;Lorg/telegram/tgnet/TLRPC$WallPaper;)V
    .locals 2

    .line 265
    iget-object p3, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaperNoFile;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_wallPaperNoFile;-><init>()V

    iput-object v0, p3, Lorg/telegram/ui/ChannelWallpaperActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 266
    iget-object p3, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    iget-object p3, p3, Lorg/telegram/ui/ChannelWallpaperActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    const-wide/16 v0, 0x0

    iput-wide v0, p3, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    .line 267
    iget v0, p3, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p3, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    .line 268
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;-><init>()V

    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    .line 269
    iget-object p3, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    iget-object p3, p3, Lorg/telegram/ui/ChannelWallpaperActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iput-object p1, p3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->emoticon:Ljava/lang/String;

    const/4 p3, 0x0

    .line 270
    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->setSelectedEmoticon(Ljava/lang/String;Z)V

    .line 271
    iget-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelWallpaperActivity;->access$400(Lorg/telegram/ui/ChannelWallpaperActivity;)Lorg/telegram/messenger/Utilities$Callback3;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 272
    iget-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelWallpaperActivity;->access$400(Lorg/telegram/ui/ChannelWallpaperActivity;)Lorg/telegram/messenger/Utilities$Callback3;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    iget-object p3, p2, Lorg/telegram/ui/ChannelWallpaperActivity;->currentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v0, p2, Lorg/telegram/ui/ChannelWallpaperActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object p2, p2, Lorg/telegram/ui/ChannelWallpaperActivity;->galleryWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-interface {p1, p3, v0, p2}, Lorg/telegram/messenger/Utilities$Callback3;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 274
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChannelWallpaperActivity;->updateRows()V

    .line 275
    iget-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$1(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 244
    iget-object p2, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    iget-object v2, p2, Lorg/telegram/ui/ChannelWallpaperActivity;->galleryWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iput-object v2, p2, Lorg/telegram/ui/ChannelWallpaperActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 245
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->setSelectedEmoticon(Ljava/lang/String;Z)V

    .line 246
    iget-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelWallpaperActivity;->access$400(Lorg/telegram/ui/ChannelWallpaperActivity;)Lorg/telegram/messenger/Utilities$Callback3;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 247
    iget-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelWallpaperActivity;->access$400(Lorg/telegram/ui/ChannelWallpaperActivity;)Lorg/telegram/messenger/Utilities$Callback3;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    iget-object v0, p2, Lorg/telegram/ui/ChannelWallpaperActivity;->currentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v1, p2, Lorg/telegram/ui/ChannelWallpaperActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object p2, p2, Lorg/telegram/ui/ChannelWallpaperActivity;->galleryWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-interface {p1, v0, v1, p2}, Lorg/telegram/messenger/Utilities$Callback3;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 249
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChannelWallpaperActivity;->updateRows()V

    return-void

    .line 253
    :cond_1
    new-instance v2, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter$1;

    new-instance v3, Lorg/telegram/ui/WallpapersListActivity$EmojiWallpaper;

    invoke-direct {v3, p2}, Lorg/telegram/ui/WallpapersListActivity$EmojiWallpaper;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, p0, v3, v0}, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter$1;-><init>(Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    iget-object v3, v0, Lorg/telegram/ui/ChannelWallpaperActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iput-object v3, v2, Lorg/telegram/ui/ThemePreviewActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    .line 260
    iget-object v0, v0, Lorg/telegram/ui/ChannelWallpaperActivity;->toggleThemeDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ThemePreviewActivity;->setOnSwitchDayNightDelegate(Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;)V

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelWallpaperActivity;->access$500(Lorg/telegram/ui/ChannelWallpaperActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ThemePreviewActivity;->setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const v0, 0x3e4ccccd    # 0.2f

    .line 262
    invoke-virtual {v2, v1, v1, v0}, Lorg/telegram/ui/ThemePreviewActivity;->setInitialModes(ZZF)V

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    iget-wide v3, v0, Lorg/telegram/ui/ChannelWallpaperActivity;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ThemePreviewActivity;->setDialogId(J)V

    .line 264
    new-instance v0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;Ljava/lang/String;Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;)V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ThemePreviewActivity;->setDelegate(Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;)V

    .line 277
    new-instance p1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {p1}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 p2, 0x1

    .line 278
    iput-boolean p2, p1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    .line 279
    iput-boolean v1, p1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    .line 280
    iput-boolean p2, p1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->occupyNavigationBar:Z

    .line 281
    iget-object p2, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-virtual {p2, v2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    iget v0, v0, Lorg/telegram/ui/ChannelWallpaperActivity;->rowsCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    iget v1, v0, Lorg/telegram/ui/ChannelWallpaperActivity;->galleryRow:I

    if-eq p1, v1, :cond_2

    iget v1, v0, Lorg/telegram/ui/ChannelWallpaperActivity;->removeRow:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    iget v0, v0, Lorg/telegram/ui/ChannelWallpaperActivity;->themesRow:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 334
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    iget v1, v0, Lorg/telegram/ui/ChannelWallpaperActivity;->galleryRow:I

    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    .line 305
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/Cells/TextCell;

    sget v0, Lorg/telegram/messenger/R$string;->ChooseFromGallery2:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_background:I

    iget-object v3, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    iget v3, v3, Lorg/telegram/ui/ChannelWallpaperActivity;->removeRow:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p2, v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 306
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto :goto_0

    .line 307
    :cond_1
    iget v1, v0, Lorg/telegram/ui/ChannelWallpaperActivity;->removeRow:I

    if-ne p2, v1, :cond_2

    .line 308
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/Cells/TextCell;

    sget v0, Lorg/telegram/messenger/R$string;->ChannelWallpaperRemove:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {p2, v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 309
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto :goto_0

    .line 310
    :cond_2
    iget v1, v0, Lorg/telegram/ui/ChannelWallpaperActivity;->infoRow:I

    if-ne p2, v1, :cond_3

    .line 311
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v0, Lorg/telegram/messenger/R$string;->ChannelWallpaperInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 313
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    iget-object v2, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelWallpaperActivity;->access$300(Lorg/telegram/ui/ChannelWallpaperActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 314
    :cond_3
    iget v1, v0, Lorg/telegram/ui/ChannelWallpaperActivity;->themesRow:I

    if-ne p2, v1, :cond_4

    .line 315
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

    iget-object p2, v0, Lorg/telegram/ui/ChannelWallpaperActivity;->galleryWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->setGalleryWallpaper(Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    if-nez p2, :cond_0

    .line 235
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelWallpaperActivity;->access$000(Lorg/telegram/ui/ChannelWallpaperActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 236
    iget-object p2, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 239
    new-instance p1, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

    iget-object p2, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelWallpaperActivity;->access$100(Lorg/telegram/ui/ChannelWallpaperActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelWallpaperActivity;->access$200(Lorg/telegram/ui/ChannelWallpaperActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, p2, v0, v1, v2}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;-><init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 240
    iget-object p2, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChannelWallpaperActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-static {p2}, Lorg/telegram/messenger/ChatThemeController;->getWallpaperEmoticon(Lorg/telegram/tgnet/TLRPC$WallPaper;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->setSelectedEmoticon(Ljava/lang/String;Z)V

    .line 241
    iget-object p2, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChannelWallpaperActivity;->galleryWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->setGalleryWallpaper(Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    .line 242
    new-instance p2, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->setOnEmoticonSelected(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 283
    iget-object p2, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 286
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 288
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 321
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

    if-eqz v1, :cond_0

    .line 322
    check-cast v0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

    iget-object v1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChannelWallpaperActivity;->galleryWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->setGalleryWallpaper(Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    .line 324
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
