.class public Lorg/telegram/ui/Cells/SharedAudioCell;
.super Landroid/widget/FrameLayout;
.source "SharedAudioCell.java"

# interfaces
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private TAG:I

.field private buttonPressed:Z

.field private buttonState:I

.field private buttonX:I

.field private buttonY:I

.field private captionLayout:Landroid/text/StaticLayout;

.field captionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private captionTextPaint:Landroid/text/TextPaint;

.field private captionY:I

.field private checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private checkForButtonPress:Z

.field private currentAccount:I

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private dateLayout:Landroid/text/StaticLayout;

.field private dateLayoutX:I

.field private description2TextPaint:Landroid/text/TextPaint;

.field private descriptionLayout:Landroid/text/StaticLayout;

.field descriptionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private descriptionY:I

.field private dotSpan:Landroid/text/SpannableStringBuilder;

.field enterAlpha:F

.field globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private hasMiniProgress:I

.field private isInPlaylist:Z

.field private isInPlaylistMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private miniButtonPressed:Z

.field private miniButtonState:I

.field private needDivider:Z

.field private optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field showName:Z

.field showNameProgress:F

.field showReorderIcon:Z

.field showReorderIconProgress:F

.field private titleLayout:Landroid/text/StaticLayout;

.field titleLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private titleY:I

.field private togglePlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private viewType:I


# direct methods
.method public static synthetic $r8$lambda$0h3N3HpWuvwQX3k7CxN7_T88vvQ(Lorg/telegram/ui/Cells/SharedAudioCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q_VAaX4vZNL4hcDOu3Yov5r2fhU(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->lambda$onSubItemClick$1(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$R4AYuEZPo44YKwj7AyPYAZDEO9U(Lorg/telegram/ui/Cells/SharedAudioCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->lambda$onSubItemClick$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$WyKfPY7F7YIeUCclegZ55By0yz0(Lorg/telegram/ui/Cells/SharedAudioCell;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Cells/SharedAudioCell;->lambda$onSubItemClick$0(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$YKcXOdHqKWF5nInDa9I_72VJUIM(Lorg/telegram/ui/Cells/SharedAudioCell;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->onSubItemClick(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mWx8axiDyYsxmWu0rNDCrwh4oxI(Lorg/telegram/ui/Cells/SharedAudioCell;Ljava/util/ArrayList;Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Cells/SharedAudioCell;->lambda$onSubItemClick$2(Ljava/util/ArrayList;Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 299
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Cells/SharedAudioCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 307
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x9

    .line 260
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleY:I

    const/16 v3, 0x1d

    .line 264
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionY:I

    .line 268
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->captionY:I

    .line 276
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v3, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    const/4 v3, 0x1

    .line 295
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->showName:Z

    const/4 v4, 0x0

    .line 296
    iput v4, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    const/high16 v5, 0x3f800000    # 1.0f

    .line 836
    iput v5, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->enterAlpha:F

    .line 308
    iput-object v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 309
    iput v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->viewType:I

    .line 310
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 311
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 313
    new-instance v5, Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {v5, v0, v2}, Lorg/telegram/ui/Components/RadialProgress2;-><init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const-string v6, "chat_inLoader"

    const-string v7, "chat_inLoaderSelected"

    const-string v8, "chat_inMediaIcon"

    const-string v9, "chat_inMediaIconSelected"

    .line 314
    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/telegram/ui/Components/RadialProgress2;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget v5, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->TAG:I

    const/4 v5, 0x0

    .line 317
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 319
    new-instance v6, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v7, 0x16

    move-object/from16 v9, p1

    invoke-direct {v6, v9, v7, v2}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v2, 0x4

    .line 320
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhite"

    const-string v10, "checkboxCheck"

    invoke-virtual {v6, v7, v8, v10}, Lorg/telegram/ui/Components/CheckBox2;->setColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 323
    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 324
    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v14, 0x5

    if-eqz v10, :cond_0

    const/4 v8, 0x5

    :cond_0
    or-int/lit8 v17, v8, 0x30

    if-eqz v10, :cond_1

    const/16 v18, 0x0

    goto :goto_0

    :cond_1
    const v8, 0x42186666    # 38.1f

    const v18, 0x42186666    # 38.1f

    :goto_0
    const v19, 0x42006666    # 32.1f

    if-eqz v10, :cond_2

    const/high16 v4, 0x40c00000    # 6.0f

    const/high16 v20, 0x40c00000    # 6.0f

    goto :goto_1

    :cond_2
    const/16 v20, 0x0

    :goto_1
    const/16 v21, 0x0

    const/16 v15, 0x18

    const/high16 v16, 0x41c00000    # 24.0f

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    sget v4, Lcom/smedialink/common/IdFabric$ViewTypes;->SHARED_AUDIO_CELL_MUSIC:I

    if-ne v1, v4, :cond_3

    .line 328
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_tone_on:I

    invoke-static {v4, v6}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->isInPlaylistMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 329
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v6, "windowBackgroundWhiteGrayText3"

    invoke-direct {v0, v6}, Lorg/telegram/ui/Cells/SharedAudioCell;->getThemedColor(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x0

    move-object v8, v4

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZ)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 330
    invoke-direct {v0, v6}, Lorg/telegram/ui/Cells/SharedAudioCell;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 331
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 332
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 333
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowSubmenuByMove(Z)V

    .line 334
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowedFromBottom(Z)V

    .line 335
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lcom/smedialink/common/IdFabric$Menu;->TOGGLE_MUSIC_PLAYLIST:I

    invoke-virtual {v4, v6, v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->togglePlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 336
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_forward:I

    sget v7, Lorg/telegram/messenger/R$string;->Forward:I

    const-string v8, "Forward"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v3, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 337
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lcom/smedialink/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    sget v7, Lorg/telegram/messenger/R$drawable;->fork_forward_cloud:I

    sget v8, Lorg/telegram/messenger/R$string;->chat_message_popup_option_forward_cloud:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 338
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v6, 0x2

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_shareout:I

    sget v8, Lorg/telegram/messenger/R$string;->ShareFile:I

    const-string v9, "ShareFile"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 339
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_download:I

    sget v7, Lorg/telegram/messenger/R$string;->SaveToMusic:I

    const-string v8, "SaveToMusic"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v14, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 340
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_message:I

    sget v7, Lorg/telegram/messenger/R$string;->ShowInChat:I

    const-string v8, "ShowInChat"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 341
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v4, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/SharedAudioCell;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v4, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Cells/SharedAudioCell;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 350
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v6, 0x30

    const/16 v7, 0x30

    const/16 v8, 0x35

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    const/16 v2, 0xd

    if-ne v1, v3, :cond_4

    .line 354
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->description2TextPaint:Landroid/text/TextPaint;

    .line 355
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 357
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v4, "."

    invoke-direct {v1, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->dotSpan:Landroid/text/SpannableStringBuilder;

    .line 358
    new-instance v4, Lorg/telegram/ui/Components/DotDividerSpan;

    invoke-direct {v4}, Lorg/telegram/ui/Components/DotDividerSpan;-><init>()V

    invoke-virtual {v1, v4, v5, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 361
    :cond_4
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->captionTextPaint:Landroid/text/TextPaint;

    .line 362
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 303
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Cells/SharedAudioCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private checkAudioMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 552
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 553
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/16 v2, 0x24

    .line 555
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 557
    iget v3, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v3, :cond_0

    const/16 v3, 0x1b

    .line 558
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 559
    iget v6, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonX:I

    add-int v7, v6, v3

    if-lt v0, v7, :cond_0

    add-int/2addr v6, v3

    add-int/2addr v6, v2

    if-gt v0, v6, :cond_0

    iget v6, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonY:I

    add-int v7, v6, v3

    if-lt v1, v7, :cond_0

    add-int/2addr v6, v3

    add-int/2addr v6, v2

    if-gt v1, v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 561
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    .line 563
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonPressed:Z

    .line 564
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1, v4, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setPressed(ZZ)V

    .line 565
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_1
    const/4 p1, 0x1

    goto/16 :goto_4

    .line 567
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->checkForButtonPress:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RadialProgress2;->getProgressRect()Landroid/graphics/RectF;

    move-result-object p1

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 568
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 569
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonPressed:Z

    .line 570
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1, v4, v5}, Lorg/telegram/ui/Components/RadialProgress2;->setPressed(ZZ)V

    .line 571
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_1

    .line 574
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 575
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonPressed:Z

    if-eqz p1, :cond_3

    .line 576
    iput-boolean v5, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonPressed:Z

    .line 577
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->playSoundEffect(I)V

    .line 578
    invoke-direct {p0, v4}, Lorg/telegram/ui/Cells/SharedAudioCell;->didPressedMiniButton(Z)V

    .line 579
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_2

    .line 580
    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonPressed:Z

    if-eqz p1, :cond_4

    .line 581
    iput-boolean v5, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonPressed:Z

    .line 582
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->playSoundEffect(I)V

    .line 583
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->didPressedButton()V

    .line 584
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 586
    :cond_4
    :goto_2
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    .line 587
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 588
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 589
    iput-boolean v5, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonPressed:Z

    .line 590
    iput-boolean v5, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonPressed:Z

    .line 591
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_3

    .line 592
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    if-nez v2, :cond_7

    .line 593
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonPressed:Z

    if-eqz p1, :cond_7

    .line 594
    iput-boolean v5, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonPressed:Z

    .line 595
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_7
    :goto_3
    const/4 p1, 0x0

    .line 598
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonPressed:Z

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setPressed(ZZ)V

    if-nez p1, :cond_9

    .line 599
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonPressed:Z

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    :cond_9
    :goto_5
    return v4
.end method

.method private didPressedMiniButton(Z)V
    .locals 4

    .line 620
    iget p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 621
    iput v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    .line 622
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 623
    iget p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1, v2, v3, v1, v0}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 624
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMiniIconForCurrentState()I

    move-result v2

    invoke-virtual {p1, v2, v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setMiniIcon(IZZ)V

    .line 625
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_2

    .line 627
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 628
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 630
    :cond_1
    iput v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    .line 631
    iget p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 632
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMiniIconForCurrentState()I

    move-result v2

    invoke-virtual {p1, v2, v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setMiniIcon(IZZ)V

    .line 633
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method private drawInternal(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 896
    iget v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->viewType:I

    const/4 v11, 0x1

    if-ne v1, v11, :cond_0

    .line 897
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->description2TextPaint:Landroid/text/TextPaint;

    const-string v2, "windowBackgroundWhiteGrayText3"

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/SharedAudioCell;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 899
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->dateLayout:Landroid/text/StaticLayout;

    const/4 v12, 0x0

    const/16 v13, 0x8

    if-eqz v1, :cond_3

    .line 900
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 901
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->dateLayoutX:I

    :goto_1
    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleY:I

    int-to-float v2, v2

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 902
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->dateLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 903
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 906
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayout:Landroid/text/StaticLayout;

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v1, :cond_7

    .line 907
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v15

    .line 908
    iget v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    cmpl-float v2, v1, v14

    if-eqz v2, :cond_4

    .line 909
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    int-to-float v3, v15

    mul-float v3, v3, v1

    float-to-int v1, v3

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 911
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 912
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x8

    goto :goto_2

    :cond_5
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->dateLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleY:I

    int-to-float v2, v2

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 913
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 914
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayout:Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 915
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 916
    iget v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    cmpl-float v1, v1, v14

    if-eqz v1, :cond_7

    .line 917
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v15}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 921
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_9

    .line 922
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->captionTextPaint:Landroid/text/TextPaint;

    const-string v2, "windowBackgroundWhiteBlackText"

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/SharedAudioCell;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 923
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 924
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    goto :goto_4

    :cond_8
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    :goto_4
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->captionY:I

    int-to-float v2, v2

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 925
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 926
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 929
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_d

    .line 930
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    const-string v2, "windowBackgroundWhiteGrayText2"

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/SharedAudioCell;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 931
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v15

    .line 932
    iget v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    cmpl-float v2, v1, v14

    if-eqz v2, :cond_a

    .line 933
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    int-to-float v3, v15

    mul-float v3, v3, v1

    float-to-int v1, v3

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 935
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 936
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_b

    goto :goto_5

    :cond_b
    sget v13, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    :goto_5
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionY:I

    int-to-float v2, v2

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 938
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->isInPlaylist:Z

    if-eqz v1, :cond_c

    .line 939
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->isInPlaylistMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v12, v12, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 940
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->isInPlaylistMarkDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v3, "chat_inLoader"

    invoke-direct {v0, v3}, Lorg/telegram/ui/Cells/SharedAudioCell;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 941
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->isInPlaylistMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/16 v1, 0x14

    .line 942
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 945
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 946
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 947
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 948
    iget v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    cmpl-float v1, v1, v14

    if-eqz v1, :cond_d

    .line 949
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v15}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 953
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonPressed:Z

    if-eqz v2, :cond_e

    const-string v2, "chat_inAudioSelectedProgress"

    goto :goto_6

    :cond_e
    const-string v2, "chat_inAudioProgress"

    :goto_6
    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/SharedAudioCell;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressColor(I)V

    .line 954
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadialProgress2;->setOverlayImageAlpha(F)V

    .line 955
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    .line 957
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->needDivider:Z

    if-eqz v1, :cond_f

    const/16 v1, 0x48

    .line 958
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v1, v11

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v1, v11

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_f
    return-void
.end method

.method private drawReorder(Landroid/graphics/Canvas;)V
    .locals 7

    .line 874
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIcon:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIconProgress:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_3

    :cond_0
    const v2, 0x3dda740e

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 875
    iget v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIconProgress:F

    cmpl-float v5, v4, v3

    if-eqz v5, :cond_1

    add-float/2addr v4, v2

    .line 876
    iput v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIconProgress:F

    .line 877
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 878
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIconProgress:F

    cmpl-float v4, v0, v1

    if-eqz v4, :cond_2

    sub-float/2addr v0, v2

    .line 879
    iput v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIconProgress:F

    .line 880
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 882
    :cond_2
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIconProgress:F

    invoke-static {v0, v3, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIconProgress:F

    .line 884
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 885
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    .line 887
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 888
    iget v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIconProgress:F

    int-to-float v3, v0

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    int-to-float v4, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 889
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 890
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 891
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method private getIconForCurrentState()I
    .locals 2

    .line 688
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private getMiniIconForCurrentState()I
    .locals 1

    .line 677
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    if-gez v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x3

    return v0
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 832
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 833
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 2

    .line 342
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->isInPlaylist:Z

    if-eqz p1, :cond_0

    .line 343
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->togglePlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v0, Lorg/telegram/messenger/R$string;->music_player_remove_from_playlist:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_tone_off:I

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 345
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->togglePlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v0, Lorg/telegram/messenger/R$string;->music_player_add_to_playlist:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_tone_add:I

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 347
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$onSubItemClick$0(J)V
    .locals 12

    .line 110
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-wide v3, p1

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/ForwardingMessagesParams;Z)I

    return-void
.end method

.method private static synthetic lambda$onSubItemClick$1(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    return-object p0
.end method

.method private synthetic lambda$onSubItemClick$2(Ljava/util/ArrayList;Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    .line 129
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v15, 0x1

    if-gt v1, v15, :cond_4

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v3, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    iget v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    if-nez p5, :cond_4

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/ui/DialogsActivity;->isCustomMultiForward()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 140
    :cond_0
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v3, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    .line 141
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v5, "scrollToTopOnResume"

    .line 142
    invoke-virtual {v1, v5, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 144
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v3

    const-string v4, "enc_id"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "user_id"

    .line 146
    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    neg-long v3, v3

    const-string v5, "chat_id"

    .line 148
    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 150
    :goto_0
    iget v3, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 151
    new-instance v3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v1, p2

    .line 152
    invoke-virtual {v1, v3, v15, v2}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 153
    invoke-virtual {v3, v15, v12}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForForward(ZLjava/util/ArrayList;)V

    goto :goto_3

    .line 155
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    goto :goto_3

    .line 130
    :cond_4
    :goto_1
    invoke-virtual {v13, v12}, Lorg/telegram/ui/DialogsActivity;->getSelectedMessages(Ljava/util/ArrayList;)V

    const/4 v11, 0x0

    .line 131
    :goto_2
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_6

    .line 132
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v3, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    if-eqz p5, :cond_5

    .line 134
    iget v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v16

    invoke-interface/range {p5 .. p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    iget-boolean v1, v13, Lorg/telegram/ui/DialogsActivity;->notify:Z

    iget v2, v13, Lorg/telegram/ui/DialogsActivity;->scheduleDate:I

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-wide/from16 v18, v3

    move/from16 v27, v1

    move/from16 v28, v2

    invoke-virtual/range {v16 .. v31}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)V

    .line 136
    :cond_5
    iget v1, v0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v7, v13, Lorg/telegram/ui/DialogsActivity;->notify:Z

    iget v8, v13, Lorg/telegram/ui/DialogsActivity;->scheduleDate:I

    const/4 v9, 0x0

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/ui/DialogsActivity;->getForwardingParams()Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v10

    const/16 v16, 0x1

    move-object/from16 v2, p1

    move/from16 v17, v11

    move/from16 v11, v16

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/ForwardingMessagesParams;Z)I

    add-int/lit8 v11, v17, 0x1

    goto :goto_2

    .line 138
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    :goto_3
    return v15
.end method

.method private synthetic lambda$onSubItemClick$3()V
    .locals 2

    const/4 v0, 0x0

    .line 241
    invoke-static {p0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->AUDIO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private onSubItemClick(I)V
    .locals 7

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/LaunchActivity;

    .line 99
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->TOGGLE_MUSIC_PLAYLIST:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 100
    iget p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {p1}, Lorg/fork/controller/MusicController;->getInstance(I)Lorg/fork/controller/MusicController;

    move-result-object p1

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    .line 102
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->isInPlaylist:Z

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v2, v3, v0}, Lorg/fork/controller/MusicController;->removePlaylistMessage(JLjava/util/List;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v2, v3, v0}, Lorg/fork/controller/MusicController;->addPlaylistMessage(JLjava/util/List;)V

    .line 107
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->isInPlaylist:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->isInPlaylist:Z

    .line 108
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_7

    .line 109
    :cond_2
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    if-ne p1, v0, :cond_4

    .line 110
    new-instance p1, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/SharedAudioCell;)V

    .line 111
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    if-eqz v0, :cond_3

    .line 112
    invoke-virtual {v2}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 113
    new-instance v1, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-direct {v1, v0, p1}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_7

    .line 115
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;->didSelectCloudDialog(J)V

    goto/16 :goto_7

    :cond_4
    if-ne p1, v1, :cond_6

    .line 118
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    if-eq p1, v0, :cond_5

    .line 119
    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 121
    :cond_5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "onlySelect"

    .line 122
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x3

    const-string v1, "dialogsType"

    .line 123
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    new-instance v0, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v1, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda4;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->setCustomForwardDelegate(Lorg/telegram/ui/DialogsActivity$CustomForwardDelegate;)V

    .line 128
    new-instance v1, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, v2}, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Cells/SharedAudioCell;Ljava/util/ArrayList;Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 160
    invoke-virtual {v2, v0}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto/16 :goto_7

    :cond_6
    const/4 v0, 0x2

    const/4 v3, 0x0

    if-ne p1, v0, :cond_c

    .line 165
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 166
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    move-object p1, v3

    :cond_8
    if-nez p1, :cond_9

    .line 172
    iget p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object p1

    .line 175
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v4, 0x18

    const-string v5, "android.intent.extra.STREAM"

    if-lt v3, v4, :cond_a

    .line 180
    :try_start_1
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".provider"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 183
    :catch_0
    :try_start_2
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 186
    :cond_a
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_1
    const-string p1, "ShareFile"

    .line 189
    sget v1, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {p1, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x1f4

    invoke-virtual {v2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_7

    .line 191
    :cond_b
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "AppName"

    .line 192
    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v0, "OK"

    .line 193
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v0, "PleaseDownload"

    .line 194
    sget v1, Lorg/telegram/messenger/R$string;->PleaseDownload:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 195
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception p1

    .line 198
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_c
    const/4 v0, 0x4

    if-ne p1, v0, :cond_11

    .line 201
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    if-eq p1, v0, :cond_d

    .line 202
    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 205
    :cond_d
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    .line 207
    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 208
    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v0

    const-string v1, "enc_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 209
    :cond_e
    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "user_id"

    .line 210
    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    .line 212
    :cond_f
    iget v3, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 213
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v4, :cond_10

    const-string v4, "migrated_to"

    .line 214
    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 215
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    neg-long v0, v0

    :cond_10
    neg-long v0, v0

    const-string v3, "chat_id"

    .line 217
    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 219
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    const-string v1, "message_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 221
    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v0, v3, v3}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    goto/16 :goto_7

    :cond_11
    const/4 v1, 0x5

    if-ne p1, v1, :cond_19

    .line 223
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_13

    const/16 v1, 0x1c

    if-le p1, v1, :cond_12

    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-eqz p1, :cond_13

    :cond_12
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, p1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_13

    .line 224
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 227
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 229
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object p1

    :cond_14
    move-object v4, p1

    .line 231
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz p1, :cond_15

    .line 232
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    .line 233
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_3

    :cond_15
    move-object v3, p1

    :goto_3
    if-eqz v3, :cond_17

    .line 238
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_16

    goto :goto_4

    :cond_16
    move-object v1, v3

    goto :goto_5

    .line 239
    :cond_17
    :goto_4
    iget p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    :goto_5
    const/4 v3, 0x3

    .line 241
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto :goto_6

    :cond_18
    const-string p1, ""

    :goto_6
    move-object v5, p1

    new-instance v6, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/SharedAudioCell;)V

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_19
    :goto_7
    return-void
.end method


# virtual methods
.method public didPressedButton()V
    .locals 7

    .line 638
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_2

    .line 639
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    if-nez v0, :cond_0

    .line 640
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iput-boolean v4, v0, Lorg/telegram/messenger/MessageObject;->putInDownloadsStore:Z

    .line 641
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v5, v6, v4, v3}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 643
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/SharedAudioCell;->needPlayMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 644
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->hasMiniProgress:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    if-eq v0, v4, :cond_1

    .line 645
    iput v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    .line 646
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMiniIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setMiniIcon(IZZ)V

    .line 649
    :cond_1
    iput v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    .line 650
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 651
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_2
    if-ne v0, v4, :cond_3

    .line 654
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 656
    iput v3, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    .line 657
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 658
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_3
    const/4 v5, 0x4

    if-ne v0, v2, :cond_4

    .line 661
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iput-boolean v4, v0, Lorg/telegram/messenger/MessageObject;->putInDownloadsStore:Z

    .line 663
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 664
    iput v5, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    .line 665
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 666
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_4
    if-ne v0, v5, :cond_5

    .line 668
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 669
    iput v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    .line 670
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 671
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_5
    :goto_0
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 828
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 844
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showName:Z

    const v1, 0x3dda740e

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    cmpl-float v5, v4, v3

    if-eqz v5, :cond_0

    add-float/2addr v4, v1

    .line 845
    iput v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    .line 846
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 847
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    cmpl-float v4, v0, v2

    if-eqz v4, :cond_1

    sub-float/2addr v0, v1

    .line 848
    iput v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    .line 849
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 851
    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    invoke-static {v0, v3, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    .line 852
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->enterAlpha:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v0, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 853
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v8, v0

    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->enterAlpha:F

    sub-float/2addr v3, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v3, v3, v0

    float-to-int v9, v3

    const/16 v10, 0x1f

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 854
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 855
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateColors()V

    .line 856
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateGradient()V

    .line 857
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 858
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 859
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v6, v1

    iget v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->enterAlpha:F

    mul-float v1, v1, v0

    float-to-int v7, v1

    const/16 v8, 0x1f

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 860
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->drawInternal(Landroid/graphics/Canvas;)V

    .line 861
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 862
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->drawReorder(Landroid/graphics/Canvas;)V

    .line 863
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 865
    :cond_2
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->drawInternal(Landroid/graphics/Canvas;)V

    .line 866
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->drawReorder(Landroid/graphics/Canvas;)V

    .line 867
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method public getMessage()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 539
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getObserverTag()I
    .locals 1

    .line 804
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->TAG:I

    return v0
.end method

.method public initStreamingIcons()V
    .locals 1

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadialProgress2;->initMiniIcons()V

    return-void
.end method

.method protected needPlayMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 512
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 513
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadialProgress2;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 514
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    .line 515
    iget v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 516
    iget v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 517
    iget v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 519
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/text/Layout;

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayout:Landroid/text/StaticLayout;

    aput-object v4, v3, v0

    invoke-static {v0, p0, v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 520
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v3, v2, [Landroid/text/Layout;

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    aput-object v4, v3, v0

    invoke-static {v0, p0, v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 521
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v2, v2, [Landroid/text/Layout;

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayout:Landroid/text/StaticLayout;

    aput-object v3, v2, v0

    invoke-static {v0, p0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 526
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 527
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 528
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadialProgress2;->onDetachedFromWindow()V

    .line 529
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 530
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 531
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 533
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 535
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    return-void
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    const/4 p1, 0x1

    .line 773
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 813
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 814
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 815
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMusicInfo:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "AccDescrMusicInfo"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 817
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 820
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 821
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 822
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 548
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 23

    move-object/from16 v7, p0

    const/4 v0, 0x0

    .line 368
    iput-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    .line 369
    iput-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayout:Landroid/text/StaticLayout;

    .line 370
    iput-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayout:Landroid/text/StaticLayout;

    .line 372
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 373
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x1c

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 375
    iget-object v1, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0x30

    if-eqz v1, :cond_0

    .line 376
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    move v1, v0

    .line 382
    iget v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->viewType:I

    const/16 v3, 0x14

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v5, :cond_1

    .line 383
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v8, v0

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v10

    .line 384
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->description2TextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    .line 385
    iget-object v11, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->description2TextPaint:Landroid/text/TextPaint;

    const/4 v14, 0x0

    const/4 v15, 0x1

    move v12, v0

    move v13, v0

    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->generateStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIII)Landroid/text/StaticLayout;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->dateLayout:Landroid/text/StaticLayout;

    sub-int v8, v1, v0

    .line 386
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->dateLayoutX:I

    const/16 v8, 0xc

    .line 387
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v0, v8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v8, 0xa

    const/16 v9, 0x20

    const/4 v10, 0x4

    .line 392
    :try_start_0
    iget v11, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->viewType:I

    if-ne v11, v5, :cond_3

    iget-object v11, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 393
    :cond_2
    iget-object v11, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {v11}, Lorg/telegram/ui/FilteredSearchView;->createFromInfoString(Lorg/telegram/messenger/MessageObject;)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_1

    .line 395
    :cond_3
    iget-object v11, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    .line 397
    :goto_1
    iget-object v12, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v12, v12, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v13, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_4

    move-object v11, v12

    .line 401
    :cond_4
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    sub-int v13, v1, v0

    int-to-float v13, v13

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v11, v12, v13, v14}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 402
    new-instance v11, Landroid/text/StaticLayout;

    sget-object v17, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v12, v1

    sub-int v18, v12, v0

    sget-object v19, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v15, v11

    invoke-direct/range {v15 .. v22}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v11, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayout:Landroid/text/StaticLayout;

    .line 403
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v12, v5, [Landroid/text/Layout;

    aput-object v11, v12, v6

    invoke-static {v6, v7, v0, v12}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->titleLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 405
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 408
    :goto_2
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 409
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const-string v11, "\n"

    const-string v12, " "

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v11, " +"

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v11}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v11

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v0, v11, v3, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 410
    iget-object v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v11, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v3, v11}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 412
    iget-object v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v11, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionTextPaint:Landroid/text/TextPaint;

    const/16 v12, 0x82

    invoke-static {v0, v3, v1, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionTextPaint:Landroid/text/TextPaint;

    int-to-float v11, v1

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v3, v11, v12}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 413
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v15, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionTextPaint:Landroid/text/TextPaint;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int v16, v1, v3

    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v0

    invoke-direct/range {v13 .. v20}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayout:Landroid/text/StaticLayout;

    .line 415
    :cond_5
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v3, v5, [Landroid/text/Layout;

    iget-object v11, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayout:Landroid/text/StaticLayout;

    aput-object v11, v3, v6

    invoke-static {v6, v7, v0, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 418
    :cond_6
    :try_start_1
    iget v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->viewType:I

    if-ne v0, v5, :cond_9

    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 419
    :cond_7
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result v0

    invoke-static {v0, v6}, Lorg/telegram/messenger/AndroidUtilities;->formatDuration(IZ)Ljava/lang/String;

    move-result-object v0

    .line 420
    iget v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->viewType:I

    if-ne v3, v5, :cond_8

    iget-object v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->description2TextPaint:Landroid/text/TextPaint;

    goto :goto_3

    :cond_8
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    :goto_3
    move-object v13, v3

    int-to-float v3, v1

    .line 421
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v13, v3, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 422
    new-instance v0, Landroid/text/StaticLayout;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int v14, v1, v3

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    goto :goto_5

    .line 424
    :cond_9
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 425
    iget-object v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v8, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v3, v8}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_a

    move-object v0, v3

    .line 429
    :cond_a
    iget v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->viewType:I

    if-ne v3, v5, :cond_b

    .line 430
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->dotSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {v3}, Lorg/telegram/ui/FilteredSearchView;->createFromInfoString(Lorg/telegram/messenger/MessageObject;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 432
    :cond_b
    iget v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->viewType:I

    if-ne v3, v5, :cond_c

    iget-object v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->description2TextPaint:Landroid/text/TextPaint;

    goto :goto_4

    :cond_c
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    :goto_4
    move-object v13, v3

    int-to-float v3, v1

    .line 433
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v13, v3, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 434
    new-instance v0, Landroid/text/StaticLayout;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int v14, v1, v3

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    .line 436
    :goto_5
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v1, v5, [Landroid/text/Layout;

    iget-object v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayout:Landroid/text/StaticLayout;

    aput-object v3, v1, v6

    invoke-static {v6, v7, v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 438
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 441
    :goto_6
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/16 v1, 0x38

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iget-object v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayout:Landroid/text/StaticLayout;

    const/16 v8, 0x12

    if-nez v3, :cond_d

    goto :goto_7

    :cond_d
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    :goto_7
    add-int/2addr v1, v6

    iget-boolean v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->needDivider:Z

    add-int/2addr v1, v3

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    const/16 v0, 0x34

    .line 443
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 444
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_e

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v1, v0

    goto :goto_8

    :cond_e
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 445
    :goto_8
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonX:I

    const/4 v4, 0x6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iput v4, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonY:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x32

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressRect(IIII)V

    .line 447
    iget-object v2, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 449
    iget-object v2, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_f

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    .line 450
    invoke-virtual/range {v1 .. v6}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 454
    :cond_f
    iget-object v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionLayout:Landroid/text/StaticLayout;

    const/16 v1, 0x1d

    if-eqz v0, :cond_10

    .line 455
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->captionY:I

    .line 456
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionY:I

    goto :goto_9

    .line 458
    :cond_10
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/SharedAudioCell;->descriptionY:I

    :goto_9
    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 0

    long-to-float p1, p2

    long-to-float p2, p4

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    .line 784
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 785
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 786
    iget p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->hasMiniProgress:I

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 787
    iget p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    if-eq p1, p3, :cond_1

    .line 788
    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    goto :goto_0

    .line 791
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    const/4 p4, 0x4

    if-eq p1, p4, :cond_1

    .line 792
    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;JJZ)V
    .locals 0

    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 2

    .line 778
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    const/4 p1, 0x0

    .line 779
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 604
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    .line 605
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 607
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->checkAudioMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 608
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 609
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonPressed:Z

    .line 610
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonPressed:Z

    .line 612
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/Components/RadialProgress2;->setPressed(ZZ)V

    .line 613
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonPressed:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setPressed(ZZ)V

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public setCheckForButtonPress(Z)V
    .locals 0

    .line 507
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->checkForButtonPress:Z

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 2

    .line 500
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 503
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method public setEnterAnimationAlpha(F)V
    .locals 1

    .line 963
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->enterAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 964
    iput p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->enterAlpha:F

    .line 965
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setGlobalGradientView(Lorg/telegram/ui/Components/FlickerLoadingView;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 4

    .line 463
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->needDivider:Z

    .line 464
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 466
    iget p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->viewType:I

    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->SHARED_AUDIO_CELL_MUSIC:I

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    .line 467
    iget p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {p2}, Lorg/fork/controller/MusicController;->getInstance(I)Lorg/fork/controller/MusicController;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lorg/fork/controller/MusicController;->getPlaylistForDialog(J)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->isInPlaylist:Z

    .line 468
    iget p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getChatId()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lorg/telegram/messenger/MessagesController;->isChatNoForwards(J)Z

    move-result p2

    const/4 v0, 0x5

    const/4 v2, 0x2

    if-eqz p2, :cond_0

    .line 469
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 470
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p2, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 471
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 472
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v0, Lcom/smedialink/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_0

    .line 474
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 475
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p2, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 476
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 477
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 478
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v0, Lcom/smedialink/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 482
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 484
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v3, 0x168

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v0

    .line 485
    :goto_1
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    if-nez v3, :cond_5

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSizeProgressive;

    if-eqz v3, :cond_3

    goto :goto_2

    .line 488
    :cond_3
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessageObject;->getArtworkUrl(Z)Ljava/lang/String;

    move-result-object p1

    .line 489
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 490
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setImageOverlay(Ljava/lang/String;)V

    goto :goto_3

    .line 492
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1, v0, v0, v0}, Lorg/telegram/ui/Components/RadialProgress2;->setImageOverlay(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    goto :goto_3

    .line 486
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, v2, p2, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setImageOverlay(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    :goto_3
    const/4 p1, 0x0

    .line 495
    invoke-virtual {p0, p1, p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    .line 496
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public showName(ZZ)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 983
    :goto_0
    iput p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showNameProgress:F

    .line 985
    :cond_1
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showName:Z

    if-ne p2, p1, :cond_2

    return-void

    .line 988
    :cond_2
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showName:Z

    .line 989
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public showReorderIcon(ZZ)V
    .locals 1

    .line 971
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIcon:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 974
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIcon:Z

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 976
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIconProgress:F

    .line 978
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public updateButtonState(ZZ)V
    .locals 10

    .line 699
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 700
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 703
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-boolean v2, v1, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 704
    :goto_1
    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    long-to-int v1, v8

    if-eqz v1, :cond_4

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    .line 705
    :goto_2
    iput v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->hasMiniProgress:I

    const/4 v2, 0x1

    goto :goto_3

    .line 708
    :cond_4
    iput v3, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->hasMiniProgress:I

    .line 709
    iput v7, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    .line 711
    :goto_3
    iget v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->hasMiniProgress:I

    const/4 v5, 0x0

    if-eqz v1, :cond_b

    .line 712
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "chat_outLoader"

    goto :goto_4

    :cond_5
    const-string v2, "chat_inLoader"

    :goto_4
    invoke-direct {p0, v2}, Lorg/telegram/ui/Cells/SharedAudioCell;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadialProgress2;->setMiniProgressBackgroundColor(I)V

    .line 713
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v1, :cond_6

    .line 714
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_5

    .line 717
    :cond_6
    iput v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    goto :goto_6

    .line 715
    :cond_7
    :goto_5
    iput v3, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    .line 719
    :goto_6
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getIconForCurrentState()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 720
    iget v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->hasMiniProgress:I

    if-ne v1, v4, :cond_8

    .line 721
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 722
    iput v7, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    .line 723
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMiniIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setMiniIcon(IZZ)V

    goto/16 :goto_a

    .line 725
    :cond_8
    iget v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v0, v2, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 726
    iget v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 727
    iput v3, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    .line 728
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMiniIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setMiniIcon(IZZ)V

    goto/16 :goto_a

    .line 730
    :cond_9
    iput v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->miniButtonState:I

    .line 731
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMiniIconForCurrentState()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setMiniIcon(IZZ)V

    .line 732
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 734
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    goto/16 :goto_a

    .line 736
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1, v5, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    goto/16 :goto_a

    :cond_b
    if-eqz v2, :cond_e

    .line 741
    iget v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 742
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v0, :cond_c

    .line 743
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_7

    .line 746
    :cond_c
    iput v4, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    goto :goto_8

    .line 744
    :cond_d
    :goto_7
    iput v3, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    .line 748
    :goto_8
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 749
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 750
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_a

    .line 752
    :cond_e
    iget v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v0, v2, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 753
    iget v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 755
    iput v6, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    .line 756
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, v5, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    goto :goto_9

    :cond_f
    const/4 v1, 0x4

    .line 758
    iput v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->buttonState:I

    .line 759
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 761
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    goto :goto_9

    .line 763
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, v5, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 766
    :goto_9
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 767
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_a
    return-void
.end method
