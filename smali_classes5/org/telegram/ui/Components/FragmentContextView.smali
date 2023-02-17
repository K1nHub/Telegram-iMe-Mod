.class public Lorg/telegram/ui/Components/FragmentContextView;
.super Landroid/widget/FrameLayout;
.source "FragmentContextView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/messenger/voip/VoIPService$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;
    }
.end annotation


# instance fields
.field private final account:I

.field private additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

.field private animationIndex:I

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private applyingView:Landroid/view/View;

.field private avatars:Lorg/telegram/ui/Components/AvatarsImageView;

.field private chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

.field private checkCallAfterAnimation:Z

.field private checkImportAfterAnimation:Z

.field private checkLocationRunnable:Ljava/lang/Runnable;

.field private checkPlayerAfterAnimation:Z

.field private closeButton:Landroid/widget/ImageView;

.field collapseProgress:F

.field collapseTransition:Z

.field private currentProgress:I

.field private currentStyle:I

.field private delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

.field drawOverlay:Z

.field extraHeight:F

.field private firstLocationsLoaded:Z

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private gradientPaint:Landroid/graphics/Paint;

.field private gradientTextPaint:Landroid/text/TextPaint;

.field private gradientWidth:I

.field private importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private isLocation:Z

.field private isMusic:Z

.field private isMuted:Z

.field private joinButton:Landroid/widget/TextView;

.field private joinButtonFlicker:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

.field private lastLocationSharingCount:I

.field private lastMessageObject:Lorg/telegram/messenger/MessageObject;

.field private lastString:Ljava/lang/String;

.field private linearGradient:Landroid/graphics/LinearGradient;

.field private matrix:Landroid/graphics/Matrix;

.field micAmplitude:F

.field private muteButton:Lorg/telegram/ui/Components/RLottieImageView;

.field private muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private openMusicButton:Landroid/widget/ImageView;

.field private playButton:Landroid/widget/ImageView;

.field private playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

.field private playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private rect:Landroid/graphics/RectF;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scheduleRunnableScheduled:Z

.field private selector:Landroid/view/View;

.field private shadow:Landroid/view/View;

.field private silentButton:Landroid/widget/FrameLayout;

.field private silentButtonImage:Landroid/widget/ImageView;

.field speakerAmplitude:F

.field private speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

.field private supportsCalls:Z

.field private supportsVoices:Z

.field private timeLayout:Landroid/text/StaticLayout;

.field private titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

.field protected topPadding:F

.field private final updateScheduleTimeRunnable:Ljava/lang/Runnable;

.field private visible:Z

.field wasDraw:Z


# direct methods
.method public static synthetic $r8$lambda$1iPHxrrUax0ePfffr0s4DpiwQZw(Lorg/telegram/ui/Components/FragmentContextView;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->openSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6DawHIkSySOXeV8bGH-z7BLcFVQ(Lorg/telegram/ui/Components/FragmentContextView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$new$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$9hLE--gfqs2dtIo7Z_Khb-0GnxQ(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$new$9(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JW2Tr-5xsHtOV6fOQQFMYi-R5QY(Lorg/telegram/ui/Components/FragmentContextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LmChpKTxNyv6qaRPnuebAGkeCJg(Lorg/telegram/ui/Components/FragmentContextView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$new$12(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MUdVuRMqe9OE8ovh1MJc5J_U_MM(Lorg/telegram/ui/Components/FragmentContextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rqj_IpBoiNVlZidyHyk73cP1p9w(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$new$11(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TUxOCkrYoHhFIb6xXxpNsxg9uUE(Lorg/telegram/ui/Components/FragmentContextView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$new$10(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ezbcsOkFnFs_Fkdon47rQ4ZLcgA(Lorg/telegram/ui/Components/FragmentContextView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$new$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gEBswwOP1CE3bXpoNzrfiE2E9wY(Lorg/telegram/ui/Components/FragmentContextView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$startJoinFlickerAnimation$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$iqc7SkijkBQLYxmTSrxF9LdvHDs(Lorg/telegram/ui/Components/FragmentContextView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$new$5(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lQSkbeXIVjGnrThhseUchuJ5KPA(Lorg/telegram/ui/Components/FragmentContextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mEQSH11WpS5BxQ2aaHeBjiuyLVk(Lorg/telegram/ui/Components/FragmentContextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rxYgyMENSMOEGshKYCnhOJlXpSI(Lorg/telegram/ui/Components/FragmentContextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$si2yRRcOGUeCAKnWp-Mt6Fzox-4(Lorg/telegram/messenger/LocationController$SharingLocationInfo;JLorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$openSharingLocation$13(Lorg/telegram/messenger/LocationController$SharingLocationInfo;JLorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$skDMfVyL4sFq5kxWwCBli_MuyfE(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v9, p5

    .line 290
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    .line 120
    iput-boolean v10, v0, Lorg/telegram/ui/Components/FragmentContextView;->supportsVoices:Z

    const/4 v11, 0x4

    new-array v3, v11, [Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 173
    iput-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v3, -0x1

    .line 182
    iput v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentProgress:I

    .line 187
    iput v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    .line 191
    iput-boolean v10, v0, Lorg/telegram/ui/Components/FragmentContextView;->supportsCalls:Z

    .line 200
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->rect:Landroid/graphics/RectF;

    .line 202
    new-instance v4, Lorg/telegram/ui/Components/FragmentContextView$1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/FragmentContextView$1;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->updateScheduleTimeRunnable:Ljava/lang/Runnable;

    .line 230
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    .line 238
    iput v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->lastLocationSharingCount:I

    .line 239
    new-instance v4, Lorg/telegram/ui/Components/FragmentContextView$2;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/FragmentContextView$2;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->checkLocationRunnable:Ljava/lang/Runnable;

    .line 246
    iput v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    .line 291
    iput-object v9, v0, Lorg/telegram/ui/Components/FragmentContextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 293
    iput-object v8, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 294
    instance-of v4, v8, Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v4, :cond_0

    .line 295
    move-object v4, v8

    check-cast v4, Lorg/telegram/ui/Components/ChatActivityInterface;

    iput-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    .line 298
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v4, :cond_1

    .line 299
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 301
    :goto_0
    iput-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->applyingView:Landroid/view/View;

    .line 302
    iput-boolean v10, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 303
    iput-boolean v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->isLocation:Z

    const/4 v13, 0x0

    if-nez v1, :cond_2

    .line 306
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 307
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v13}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 310
    :cond_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 311
    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView$3;

    invoke-direct {v1, v0, v7, v4}, Lorg/telegram/ui/Components/FragmentContextView$3;-><init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v14, -0x1

    const/16 v15, 0x24

    const/16 v16, 0x33

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 359
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->selector:Landroid/view/View;

    .line 362
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->shadow:Landroid/view/View;

    .line 365
    sget v3, Lorg/telegram/messenger/R$drawable;->blockpanel_shadow:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 366
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->shadow:Landroid/view/View;

    const/4 v15, 0x2

    const/16 v18, 0x24

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    .line 369
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 370
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "inappPlayerPlayPause"

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 371
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/PlayPauseDrawable;

    const/16 v14, 0xe

    invoke-direct {v3, v14}, Lorg/telegram/ui/Components/PlayPauseDrawable;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 372
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const v16, 0x19ffffff

    const/16 v6, 0x15

    if-lt v15, v6, :cond_3

    .line 373
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    and-int v3, v3, v16

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v3, v10, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 375
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    const/16 v5, 0x24

    const/16 v3, 0x33

    invoke-static {v5, v5, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v1, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    new-instance v11, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda3;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    new-instance v1, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 387
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 388
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 389
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v11, Lorg/telegram/messenger/R$raw;->import_progress:I

    const/16 v3, 0x1e

    invoke-virtual {v1, v11, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 390
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v3, 0x16

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 391
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v18, 0x16

    const/16 v19, 0x16

    const/16 v20, 0x33

    const/16 v21, 0x7

    const/16 v22, 0x7

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView$4;

    invoke-direct {v1, v0, v7, v7}, Lorg/telegram/ui/Components/FragmentContextView$4;-><init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/16 v18, -0x1

    const/16 v19, 0x24

    const/16 v21, 0x23

    const/16 v22, 0x0

    const/16 v23, 0x24

    .line 421
    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView$5;

    invoke-direct {v1, v0, v7, v7}, Lorg/telegram/ui/Components/FragmentContextView$5;-><init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/16 v22, 0xa

    .line 437
    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    new-instance v1, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButtonFlicker:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/high16 v3, 0x40000000    # 2.0f

    .line 440
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setProgress(F)V

    .line 441
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButtonFlicker:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    iput-boolean v13, v1, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->repeatEnabled:Z

    .line 442
    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView$6;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/FragmentContextView$6;-><init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    .line 462
    sget v3, Lorg/telegram/messenger/R$string;->VoipChatJoin:I

    const-string v4, "VoipChatJoin"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    const-string v3, "featuredStickers_buttonText"

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 464
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    const/16 v11, 0x10

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const-string v4, "featuredStickers_addButton"

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    const-string v5, "featuredStickers_addButtonPressed"

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 465
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v10, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 466
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 467
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 468
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v1, v4, v13, v5, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 469
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    const/16 v19, -0x2

    const/16 v20, 0x1c

    const/16 v21, 0x35

    const/16 v22, 0x0

    const/16 v23, 0xa

    const/16 v24, 0xe

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButton:Landroid/widget/FrameLayout;

    .line 473
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButtonImage:Landroid/widget/ImageView;

    .line 474
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_mute:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 475
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButtonImage:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const-string v5, "inappPlayerClose"

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v11

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v11, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 476
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButton:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButtonImage:Landroid/widget/ImageView;

    const/16 v11, 0x14

    invoke-static {v11, v11, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-lt v15, v6, :cond_4

    .line 478
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButton:Landroid/widget/FrameLayout;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    and-int v3, v3, v16

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3, v10, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 480
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButton:Landroid/widget/FrameLayout;

    sget v3, Lorg/telegram/messenger/R$string;->Unmute:I

    const-string v4, "Unmute"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButton:Landroid/widget/FrameLayout;

    sget-object v3, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda9;->INSTANCE:Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda9;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButton:Landroid/widget/FrameLayout;

    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 485
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButton:Landroid/widget/FrameLayout;

    const/16 v21, 0x24

    const/16 v22, 0x24

    const/16 v23, 0x35

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x24

    const/16 v27, 0x0

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v2, :cond_7

    .line 488
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    const/16 v21, 0x0

    const-string v1, "dialogTextBlack"

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v22

    move-object v1, v4

    move-object/from16 v2, p1

    const/16 v11, 0x33

    move-object v11, v4

    move/from16 v4, v21

    move-object/from16 p4, v5

    move/from16 v5, v22

    const/16 v18, 0x15

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v11, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 489
    invoke-virtual {v11, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 490
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 491
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 492
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowSubmenuByMove(Z)V

    .line 493
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrPlayerSpeed:I

    const-string v3, "AccDescrPlayerSpeed"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda13;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 511
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_speed_0_5:I

    sget v4, Lorg/telegram/messenger/R$string;->SpeedSlow:I

    const-string v5, "SpeedSlow"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v10, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v2

    aput-object v2, v1, v13

    .line 512
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_speed_1:I

    sget v4, Lorg/telegram/messenger/R$string;->SpeedNormal:I

    const-string v5, "SpeedNormal"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v2

    aput-object v2, v1, v10

    .line 513
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_speed_1_5:I

    sget v4, Lorg/telegram/messenger/R$string;->SpeedFast:I

    const-string v6, "SpeedFast"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v2

    aput-object v2, v1, v5

    .line 514
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_speed_2:I

    sget v4, Lorg/telegram/messenger/R$string;->SpeedVeryFast:I

    const-string v5, "SpeedVeryFast"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v2, v5, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v2

    aput-object v2, v1, v6

    .line 515
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_5

    .line 516
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v13, v10, v13, v13}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 518
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalXOffset(I)V

    .line 519
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v29, 0x24

    const/16 v30, 0x24

    const/16 v31, 0x35

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x24

    const/16 v35, 0x0

    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda10;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 534
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePlaybackButton()V

    .line 536
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->openMusicButton:Landroid/widget/ImageView;

    .line 537
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 538
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->openMusicButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_cloud_filter_music:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 539
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_6

    .line 540
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->openMusicButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v13, v10, v13, v13}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 542
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->openMusicButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static/range {p4 .. p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 543
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->openMusicButton:Landroid/widget/ImageView;

    invoke-static/range {p4 .. p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    and-int v2, v2, v16

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2, v10, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->openMusicButton:Landroid/widget/ImageView;

    const/16 v29, 0x24

    const/16 v30, 0x24

    const/16 v31, 0x35

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x24

    const/16 v35, 0x0

    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->openMusicButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_7
    move-object/from16 p4, v5

    const/16 v18, 0x15

    .line 560
    :goto_1
    new-instance v1, Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-direct {v1, v7, v13}, Lorg/telegram/ui/Components/AvatarsImageView;-><init>(Landroid/content/Context;Z)V

    iput-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    .line 561
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->setAvatarsTextSize(I)V

    .line 562
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    new-instance v2, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->setDelegate(Ljava/lang/Runnable;)V

    .line 563
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 564
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v2, 0x6c

    const/16 v3, 0x33

    const/16 v4, 0x24

    invoke-static {v2, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    new-instance v1, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v2, Lorg/telegram/messenger/R$raw;->voice_muted:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v27

    const/16 v3, 0x14

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v28

    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v24, v1

    move/from16 v25, v2

    invoke-direct/range {v24 .. v30}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 568
    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView$7;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/FragmentContextView$7;-><init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    .line 657
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v3, "returnToCallText"

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v1, 0x15

    if-lt v15, v1, :cond_8

    .line 659
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    move-object/from16 v3, p4

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    and-int v4, v4, v16

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4, v10, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_8
    move-object/from16 v3, p4

    .line 661
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 662
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 663
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 664
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v17, 0x24

    const/16 v18, 0x24

    const/16 v19, 0x35

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x2

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v4, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    .line 700
    sget v4, Lorg/telegram/messenger/R$drawable;->miniplayer_close:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 701
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-lt v15, v1, :cond_9

    .line 703
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    and-int v2, v2, v16

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2, v10, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 705
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 706
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    const/16 v10, 0x24

    const/16 v11, 0x24

    const/16 v12, 0x35

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0, v9}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/FragmentContextView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, v9, v8}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/FragmentContextView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 282
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/FragmentContextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    .line 286
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/FragmentContextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/text/TextPaint;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->gradientTextPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/FragmentContextView;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/FragmentContextView;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->gradientWidth:I

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/FragmentContextView;I)I
    .locals 0

    .line 94
    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->gradientWidth:I

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/LinearGradient;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->linearGradient:Landroid/graphics/LinearGradient;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/FragmentContextView;Landroid/graphics/LinearGradient;)Landroid/graphics/LinearGradient;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->linearGradient:Landroid/graphics/LinearGradient;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/Paint;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->gradientPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/Matrix;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/RectF;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/FragmentContextView;Ljava/lang/String;)I
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/voip/CellFlickerDrawable;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->joinButtonFlicker:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/FragmentContextView;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/FragmentContextView;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/RLottieDrawable;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/FragmentContextView;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->scheduleRunnableScheduled:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Components/FragmentContextView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/FragmentContextView;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/FragmentContextView;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/FragmentContextView;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkCallAfterAnimation:Z

    return p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/FragmentContextView;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkCallAfterAnimation:Z

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/FragmentContextView;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayerAfterAnimation:Z

    return p0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Components/FragmentContextView;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayerAfterAnimation:Z

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/FragmentContextView;Z)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayer(Z)V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/FragmentContextView;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkImportAfterAnimation:Z

    return p0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/Components/FragmentContextView;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkImportAfterAnimation:Z

    return p1
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Components/FragmentContextView;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ChatActivityInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/FragmentContextView;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->startJoinFlickerAnimation()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/text/StaticLayout;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->timeLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/FragmentContextView;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->timeLayout:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/FragmentContextView;)Ljava/lang/Runnable;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->updateScheduleTimeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/FragmentContextView;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkLocationString()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/FragmentContextView;)Ljava/lang/Runnable;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkLocationRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AvatarsImageView;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    return-object p0
.end method

.method private checkLiveLocation(Z)V
    .locals 11

    .line 1380
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 1382
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 1387
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v0, Lorg/telegram/ui/DialogsActivity;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 1388
    invoke-static {}, Lorg/telegram/messenger/LocationController;->getLocationsCount()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1390
    :cond_3
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/LocationController;->isSharingLocation(J)Z

    move-result v0

    :goto_0
    const/4 v2, 0x0

    const-wide/16 v4, 0xc8

    const-string/jumbo v6, "topPadding"

    const/4 v7, 0x0

    if-nez v0, :cond_7

    const/4 v0, -0x1

    .line 1393
    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastLocationSharingCount:I

    .line 1394
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkLocationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1395
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v0, :cond_14

    .line 1396
    iput-boolean v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz p1, :cond_5

    .line 1398
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    .line 1399
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 1401
    :cond_4
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    goto/16 :goto_7

    .line 1403
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_6

    .line 1404
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1405
    iput-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1407
    :cond_6
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v1, [Landroid/animation/Animator;

    new-array v1, v1, [F

    aput v7, v1, v3

    .line 1408
    invoke-static {p0, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1409
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1410
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/FragmentContextView$8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FragmentContextView$8;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1419
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_7

    :cond_7
    const/4 v0, 0x2

    .line 1423
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->updateStyle(I)V

    .line 1424
    iget-object v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    new-instance v9, Lorg/telegram/ui/Components/ShareLocationDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v1}, Lorg/telegram/ui/Components/ShareLocationDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_8

    .line 1425
    iget v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    cmpl-float v7, v8, v7

    if-nez v7, :cond_8

    .line 1426
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    .line 1428
    :cond_8
    iget-boolean v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-nez v7, :cond_b

    if-nez p1, :cond_a

    .line 1430
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_9

    .line 1431
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1432
    iput-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1434
    :cond_9
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    new-array v7, v1, [F

    .line 1435
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v3

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1436
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1437
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/FragmentContextView$9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/FragmentContextView$9;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1445
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 1447
    :cond_a
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 1448
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 1451
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p1, p1, Lorg/telegram/ui/DialogsActivity;

    if-eqz p1, :cond_13

    .line 1452
    sget p1, Lorg/telegram/messenger/R$string;->LiveLocationContext:I

    const-string v2, "LiveLocationContext"

    invoke-static {v2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1455
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x5

    if-ge v4, v5, :cond_c

    .line 1457
    invoke-static {v4}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1459
    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_f

    .line 1460
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    .line 1461
    iget-object v4, v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    .line 1462
    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1463
    iget-object v2, v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 1464
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    .line 1465
    sget v4, Lorg/telegram/messenger/R$string;->AttachLiveLocationIsSharing:I

    const-string v5, "AttachLiveLocationIsSharing"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 1467
    :cond_d
    iget-object v2, v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1469
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_2

    :cond_e
    const-string v2, ""

    .line 1473
    :goto_2
    sget v4, Lorg/telegram/messenger/R$string;->AttachLiveLocationIsSharingChat:I

    const-string v5, "AttachLiveLocationIsSharingChat"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 1476
    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Chats"

    invoke-static {v5, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1477
    sget v4, Lorg/telegram/messenger/R$string;->AttachLiveLocationIsSharingChats:I

    const-string v5, "AttachLiveLocationIsSharingChats"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_3
    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object v2, v5, v1

    .line 1479
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1480
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1481
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_12

    .line 1483
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v1, :cond_10

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v5

    goto :goto_5

    :cond_10
    invoke-virtual {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v5

    :goto_5
    if-nez v5, :cond_11

    goto :goto_6

    .line 1487
    :cond_11
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1490
    :cond_12
    new-instance v0, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    const-string v5, "inappPlayerPerformer"

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v0, v1, v3, v5}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;II)V

    .line 1491
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v2

    const/16 v1, 0x12

    invoke-virtual {v4, v0, v2, p1, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1492
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p1, v4, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_7

    .line 1494
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkLocationRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1495
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkLocationString()V

    :cond_14
    :goto_7
    return-void
.end method

.method private checkLocationString()V
    .locals 15

    .line 1501
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 1504
    :cond_0
    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v0

    .line 1505
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    .line 1506
    invoke-static {v2}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocationController;->locationsCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1507
    iget-boolean v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->firstLocationsLoaded:Z

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 1508
    invoke-static {v2}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lorg/telegram/messenger/LocationController;->loadLiveLocations(J)V

    .line 1509
    iput-boolean v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->firstLocationsLoaded:Z

    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_5

    .line 1515
    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    .line 1516
    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1517
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_6

    .line 1518
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Message;

    .line 1519
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v13, :cond_2

    goto :goto_1

    .line 1522
    :cond_2
    iget v14, v12, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->period:I

    add-int/2addr v14, v13

    if-le v14, v9, :cond_4

    .line 1523
    invoke-static {v12}, Lorg/telegram/messenger/MessageObject;->getFromChatId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v12

    if-nez v4, :cond_3

    cmp-long v14, v12, v7

    if-eqz v14, :cond_3

    .line 1525
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    :cond_3
    add-int/lit8 v11, v11, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    const/4 v11, 0x0

    .line 1531
    :cond_6
    iget v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastLocationSharingCount:I

    if-ne v3, v11, :cond_7

    return-void

    .line 1534
    :cond_7
    iput v11, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastLocationSharingCount:I

    .line 1536
    sget v3, Lorg/telegram/messenger/R$string;->LiveLocationContext:I

    const-string v7, "LiveLocationContext"

    invoke-static {v7, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x2

    if-nez v11, :cond_8

    move-object v0, v3

    goto/16 :goto_2

    :cond_8
    sub-int/2addr v11, v5

    .line 1542
    invoke-static {v2}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/LocationController;->isSharingLocation(J)Z

    move-result v0

    const-string v1, "AndOther"

    const/4 v2, 0x3

    const-string v8, "%1$s - %2$s %3$s"

    const-string v9, "%1$s - %2$s"

    if-eqz v0, :cond_b

    const-string v0, "ChatYourSelfName"

    if-eqz v11, :cond_a

    if-ne v11, v5, :cond_9

    if-eqz v4, :cond_9

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v3, v0, v6

    .line 1545
    sget v1, Lorg/telegram/messenger/R$string;->SharingYouAndOtherName:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    const-string v4, "SharingYouAndOtherName"

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v6

    .line 1547
    sget v4, Lorg/telegram/messenger/R$string;->ChatYourSelfName:I

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v1, v11, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_a
    new-array v1, v7, [Ljava/lang/Object;

    aput-object v3, v1, v6

    .line 1550
    sget v2, Lorg/telegram/messenger/R$string;->ChatYourSelfName:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v9, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_b
    if-eqz v11, :cond_c

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v3, v0, v6

    .line 1554
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v11, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_c
    new-array v0, v7, [Ljava/lang/Object;

    aput-object v3, v0, v6

    .line 1556
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1560
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    .line 1563
    :cond_d
    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastString:Ljava/lang/String;

    .line 1564
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1565
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v7, :cond_10

    .line 1567
    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v0, :cond_e

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    goto :goto_4

    :cond_e
    invoke-virtual {v4}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v4

    :goto_4
    if-nez v4, :cond_f

    goto :goto_5

    .line 1571
    :cond_f
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_10
    if-ltz v1, :cond_11

    .line 1574
    new-instance v0, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    const-string v5, "inappPlayerPerformer"

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v0, v4, v6, v5}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;II)V

    .line 1575
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    const/16 v4, 0x12

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1577
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v0, v2, v6}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    :cond_12
    :goto_6
    return-void
.end method

.method private checkPlayer(Z)V
    .locals 13

    .line 1581
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 1584
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 1585
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    if-nez p1, :cond_4

    if-eqz v2, :cond_4

    .line 1587
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 p1, 0x1

    .line 1591
    :cond_4
    iget-boolean v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    const-wide/16 v3, 0xc8

    const-string/jumbo v5, "topPadding"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v0, :cond_1b

    .line 1592
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    if-eqz v9, :cond_1b

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v9

    if-nez v9, :cond_1b

    iget-boolean v9, p0, Lorg/telegram/ui/Components/FragmentContextView;->supportsVoices:Z

    if-nez v9, :cond_5

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v9

    if-nez v9, :cond_1b

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v9

    if-eqz v9, :cond_5

    goto/16 :goto_b

    .line 1654
    :cond_5
    iget v9, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eqz v9, :cond_6

    iget-object v10, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v10, :cond_6

    if-nez p1, :cond_6

    .line 1655
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayerAfterAnimation:Z

    return-void

    .line 1659
    :cond_6
    invoke-direct {p0, v8}, Lorg/telegram/ui/Components/FragmentContextView;->updateStyle(I)V

    if-eqz p1, :cond_7

    .line 1660
    iget v10, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    cmpl-float v10, v10, v6

    if-nez v10, :cond_7

    .line 1661
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePaddings()V

    .line 1662
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0, v10}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    .line 1663
    iget-object v10, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    if-eqz v10, :cond_7

    .line 1664
    invoke-interface {v10, v1, v1}, Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;->onAnimation(ZZ)V

    .line 1665
    iget-object v10, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    invoke-interface {v10, v8, v1}, Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;->onAnimation(ZZ)V

    .line 1668
    :cond_7
    iget-boolean v10, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-nez v10, :cond_c

    if-nez p1, :cond_b

    .line 1670
    iget-object v10, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v10, :cond_8

    .line 1671
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1672
    iput-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1674
    :cond_8
    iget v10, p0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    invoke-static {v10}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v10

    iget v11, p0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    invoke-virtual {v10, v11, v7}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v7

    iput v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    .line 1675
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1676
    iget-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_9

    .line 1677
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 1679
    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1681
    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    if-eqz v7, :cond_a

    .line 1682
    invoke-interface {v7, v1, v1}, Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;->onAnimation(ZZ)V

    .line 1684
    :cond_a
    iget-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v10, v1, [Landroid/animation/Animator;

    new-array v11, v1, [F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v12

    int-to-float v12, v12

    aput v12, v11, v8

    invoke-static {p0, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v10, v8

    invoke-virtual {v7, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1685
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1686
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/Components/FragmentContextView$11;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/FragmentContextView$11;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1708
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1710
    :cond_b
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 1711
    invoke-virtual {p0, v8}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 1713
    :cond_c
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1714
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v8, v4}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(ZZ)V

    .line 1715
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$string;->AccActionPlay:I

    const-string v5, "AccActionPlay"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1717
    :cond_d
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v1, v4}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(ZZ)V

    .line 1718
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$string;->AccActionPause:I

    const-string v5, "AccActionPause"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1720
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v3, v0, :cond_e

    if-eqz v9, :cond_26

    .line 1721
    :cond_e
    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1723
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x2c

    const/4 v7, 0x2

    if-nez v3, :cond_14

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v3

    if-eqz v3, :cond_f

    goto/16 :goto_6

    .line 1742
    :cond_f
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    .line 1743
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_11

    .line 1744
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result v3

    const/16 v9, 0x258

    if-lt v3, v9, :cond_10

    .line 1745
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1746
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1747
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v3, v8, v8, v4, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1748
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePlaybackButton()V

    goto :goto_2

    .line 1750
    :cond_10
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1751
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1752
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_2

    .line 1755
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1757
    :goto_2
    new-instance v3, Landroid/text/SpannableStringBuilder;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%s - %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_19

    .line 1759
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v4, :cond_12

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v5

    goto :goto_4

    :cond_12
    invoke-virtual {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v5

    :goto_4
    if-nez v5, :cond_13

    goto :goto_5

    .line 1763
    :cond_13
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1724
    :cond_14
    :goto_6
    iput-boolean v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    .line 1725
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_15

    .line 1726
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1727
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1729
    :cond_15
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v3, v8, v8, v4, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1730
    new-instance v3, Landroid/text/SpannableStringBuilder;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%s %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v7, :cond_18

    .line 1733
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v4, :cond_16

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v5

    goto :goto_8

    :cond_16
    invoke-virtual {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v5

    :goto_8
    if-nez v5, :cond_17

    goto :goto_9

    .line 1737
    :cond_17
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1740
    :cond_18
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePlaybackButton()V

    .line 1766
    :cond_19
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->fixOpenMusicButtonPaddings()V

    .line 1767
    new-instance v4, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    const-string v6, "inappPlayerPerformer"

    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v4, v5, v8, v6}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;II)V

    .line 1768
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x12

    invoke-virtual {v3, v4, v8, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1769
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez p1, :cond_1a

    if-eqz v2, :cond_1a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    if-eqz p1, :cond_1a

    goto :goto_a

    :cond_1a
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_e

    .line 1593
    :cond_1b
    :goto_b
    iput-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1594
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->supportsCalls:Z

    if-eqz v0, :cond_1c

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isHangingUp()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v0

    const/16 v2, 0xf

    if-eq v0, v2, :cond_1c

    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_c

    :cond_1c
    const/4 v0, 0x0

    .line 1595
    :goto_c
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v2

    if-nez v2, :cond_1e

    if-nez v0, :cond_1e

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v2, :cond_1e

    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1596
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1597
    invoke-virtual {v0}, Lorg/telegram/messenger/ChatObject$Call;->shouldShowPanel()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_d

    :cond_1d
    const/4 v0, 0x0

    :cond_1e
    :goto_d
    if-eqz v0, :cond_1f

    .line 1600
    invoke-virtual {p0, v8}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    return-void

    .line 1603
    :cond_1f
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_25

    .line 1604
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSubMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1605
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    .line 1607
    :cond_20
    iput-boolean v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz p1, :cond_22

    .line 1609
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_21

    .line 1610
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 1612
    :cond_21
    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    goto :goto_e

    .line 1614
    :cond_22
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_23

    .line 1615
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1616
    iput-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1618
    :cond_23
    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    invoke-virtual {p1, v0, v7}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    .line 1619
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v1, [Landroid/animation/Animator;

    new-array v2, v1, [F

    aput v6, v2, v8

    .line 1620
    invoke-static {p0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v8

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1621
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1622
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    if-eqz p1, :cond_24

    .line 1623
    invoke-interface {p1, v1, v8}, Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;->onAnimation(ZZ)V

    .line 1625
    :cond_24
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/FragmentContextView$10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FragmentContextView$10;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1648
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_e

    .line 1651
    :cond_25
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    :cond_26
    :goto_e
    return-void
.end method

.method private checkVisibility()V
    .locals 5

    .line 907
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isLocation:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 908
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v0, Lorg/telegram/ui/DialogsActivity;

    if-eqz v3, :cond_0

    .line 909
    invoke-static {}, Lorg/telegram/messenger/LocationController;->getLocationsCount()I

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_0

    .line 911
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/LocationController;->isSharingLocation(J)Z

    move-result v2

    goto/16 :goto_0

    .line 914
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isHangingUp()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v0

    const/16 v3, 0xf

    if-eq v0, v3, :cond_2

    .line 916
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->startJoinFlickerAnimation()V

    goto :goto_0

    .line 917
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v3}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/SendMessagesHelper;->getImportingHistory(J)Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 919
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ChatObject$Call;->shouldShowPanel()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v0

    if-nez v0, :cond_4

    .line 921
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->startJoinFlickerAnimation()V

    goto :goto_0

    .line 923
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 924
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    .line 930
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_6

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInMenuMode()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    :cond_6
    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    const/16 v1, 0x8

    .line 934
    :goto_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    return-void
.end method

.method private fixOpenMusicButtonPaddings()V
    .locals 12

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->openMusicButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->supportsVoices:Z

    if-eqz v0, :cond_4

    .line 146
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    const/16 v1, 0x24

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x24

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 147
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    add-int/lit8 v5, v0, 0x2c

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v4, v3, v3, v5, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 148
    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->openMusicButton:Landroid/widget/ImageView;

    const/16 v5, 0x24

    const/16 v6, 0x24

    const/16 v7, 0x35

    const/4 v8, 0x0

    const/4 v9, 0x0

    add-int/lit8 v10, v0, 0x24

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->openMusicButton:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 2377
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2378
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private getTitleTextColor()I
    .locals 2

    .line 2368
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "inappPlayerPerformer"

    .line 2369
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "inappPlayerTitle"

    .line 2373
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    const-string/jumbo v0, "returnToCallText"

    .line 2371
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private isPlayingVoice()Z
    .locals 1

    .line 1903
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1904
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 377
    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-nez p1, :cond_1

    .line 378
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 379
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0

    .line 381
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 470
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->callOnClick()Z

    return-void
.end method

.method private synthetic lambda$new$10(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 3

    .line 709
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayer()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 713
    :cond_0
    iget p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p2, v0, :cond_4

    .line 714
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 715
    sget p1, Lorg/telegram/messenger/R$string;->StopLiveLocationAlertToTitle:I

    const-string v0, "StopLiveLocationAlertToTitle"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 716
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p1, p1, Lorg/telegram/ui/DialogsActivity;

    if-eqz p1, :cond_1

    .line 717
    sget p1, Lorg/telegram/messenger/R$string;->StopLiveLocationAlertAllText:I

    const-string v0, "StopLiveLocationAlertAllText"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 719
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 720
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 722
    sget v0, Lorg/telegram/messenger/R$string;->StopLiveLocationAlertToGroupText:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object p1, v1, v2

    const-string p1, "StopLiveLocationAlertToGroupText"

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 724
    sget p1, Lorg/telegram/messenger/R$string;->StopLiveLocationAlertToUserText:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "StopLiveLocationAlertToUserText"

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 726
    :cond_3
    sget p1, Lorg/telegram/messenger/R$string;->AreYouSure:I

    const-string v0, "AreYouSure"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 729
    :goto_0
    sget p1, Lorg/telegram/messenger/R$string;->Stop:I

    const-string v0, "Stop"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 738
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v0, "Cancel"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 739
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 740
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 p2, -0x1

    .line 741
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_5

    const-string p2, "dialogTextRed2"

    .line 743
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 746
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    :cond_5
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$11(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 824
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->checkImport(Z)V

    return-void
.end method

.method private synthetic lambda$new$12(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 751
    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const-wide/16 v3, 0x0

    if-nez v2, :cond_5

    .line 752
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    .line 753
    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v5, :cond_12

    if-eqz v2, :cond_12

    .line 754
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 755
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/LaunchActivity;

    if-eqz v2, :cond_12

    .line 756
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v3, Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_4

    .line 760
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v1, :cond_1

    .line 761
    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v3

    .line 763
    :cond_1
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_2

    .line 764
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lorg/telegram/ui/Components/ChatActivityInterface;->scrollToMessageId(IIZIZI)V

    goto/16 :goto_4

    .line 766
    :cond_2
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    .line 767
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 768
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 769
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v3

    const-string v4, "enc_id"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 770
    :cond_3
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "user_id"

    .line 771
    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    neg-long v3, v3

    const-string v5, "chat_id"

    .line 773
    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 775
    :goto_0
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    const-string v3, "message_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 776
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_4

    :cond_5
    const/4 v5, 0x1

    if-ne v2, v5, :cond_6

    .line 781
    new-instance v1, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "voip"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 782
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    :cond_6
    const/4 v6, 0x2

    const/4 v7, 0x5

    const/4 v8, 0x0

    if-ne v2, v6, :cond_b

    .line 785
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 786
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v6, :cond_7

    .line 787
    invoke-interface {v6}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v5

    .line 788
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    goto :goto_2

    .line 789
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/LocationController;->getLocationsCount()I

    move-result v6

    if-ne v6, v5, :cond_9

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_9

    .line 791
    invoke-static {v5}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    .line 792
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 793
    invoke-static {v5}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    .line 794
    iget-wide v5, v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    .line 795
    iget-object v2, v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    goto :goto_2

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_9
    move-wide v5, v3

    :goto_2
    cmp-long v7, v5, v3

    if-eqz v7, :cond_a

    .line 801
    invoke-static {v2}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->openSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    goto/16 :goto_4

    .line 803
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v3, Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda14;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-direct {v3, v4, v5, v1}, Lorg/telegram/ui/Components/SharingLocationsAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SharingLocationsAlert$SharingLocationsAlertDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_4

    :cond_b
    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    .line 806
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_12

    .line 807
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/telegram/ui/LaunchActivity;

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->getAccount()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/GroupCallActivity;->create(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    const/4 v3, 0x4

    if-ne v2, v3, :cond_10

    .line 810
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_d

    return-void

    .line 813
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v1

    if-nez v1, :cond_e

    return-void

    .line 817
    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v1, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v1, :cond_f

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-nez v1, :cond_f

    goto :goto_3

    :cond_f
    const/4 v5, 0x0

    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v14

    iget-object v15, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v16

    invoke-static/range {v9 .. v16}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/String;ZLjava/lang/Boolean;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/AccountInstance;)V

    goto :goto_4

    :cond_10
    if-ne v2, v7, :cond_12

    .line 819
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    move-object/from16 v3, p2

    check-cast v3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/SendMessagesHelper;->getImportingHistory(J)Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    move-result-object v2

    if-nez v2, :cond_11

    return-void

    .line 823
    :cond_11
    new-instance v2, Lorg/telegram/ui/Components/ImportingAlert;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v5, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v3, v4, v5, v1}, Lorg/telegram/ui/Components/ImportingAlert;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 824
    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnHideListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 825
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 826
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/FragmentContextView;->checkImport(Z)V

    :cond_12
    :goto_4
    return-void
.end method

.method private static synthetic lambda$new$2(Landroid/view/View;)V
    .locals 1

    .line 482
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->updateSilent(Z)V

    return-void
.end method

.method private synthetic lambda$new$3(I)V
    .locals 3

    .line 495
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 497
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 499
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 501
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    goto :goto_0

    .line 503
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    const v2, 0x3fe66666    # 1.8f

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    .line 505
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result p1

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_3

    .line 507
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedChanged(F)V

    .line 509
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePlaybackButton()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 3

    .line 521
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    .line 523
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v1, 0x3a83126f    # 0.001f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    .line 524
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    goto :goto_0

    .line 526
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->getFastPlaybackSpeed(Z)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    move v0, v1

    .line 528
    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedChanged(F)V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)Z
    .locals 0

    .line 531
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 2

    .line 546
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_2

    .line 547
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 550
    :cond_0
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isMusicIntroShown:Z

    if-eqz p1, :cond_1

    .line 551
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v0, Lorg/fork/ui/fragment/MusicActivity;

    invoke-direct {v0}, Lorg/fork/ui/fragment/MusicActivity;-><init>()V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 553
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v0, Lorg/telegram/ui/ActionIntroActivity;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$7()V
    .locals 1

    const/4 v0, 0x1

    .line 562
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->updateAvatars(Z)V

    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 4

    .line 667
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 671
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 675
    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_2

    .line 676
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->getAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    .line 677
    iget-object v0, p1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    .line 678
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 679
    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-eqz v0, :cond_2

    .line 680
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->can_self_unmute:Z

    if-nez v2, :cond_2

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    if-eqz v0, :cond_2

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 685
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    const/4 v2, 0x0

    .line 686
    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    .line 687
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xf

    goto :goto_0

    :cond_3
    const/16 v0, 0x1d

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 688
    iget-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    if-eqz p1, :cond_4

    .line 689
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_1

    .line 691
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 694
    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 695
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->updateState(Z)V

    .line 696
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->performHapticFeedback(II)Z

    return-void
.end method

.method private synthetic lambda$new$9(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 730
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p2, p1, Lorg/telegram/ui/DialogsActivity;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x5

    if-ge p1, p2, :cond_1

    .line 732
    invoke-static {p1}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/LocationController;->removeAllLocationSharings()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 735
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {p2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/LocationController;->removeSharingLocation(J)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$openSharingLocation$13(Lorg/telegram/messenger/LocationController$SharingLocationInfo;JLorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V
    .locals 12

    move-object v0, p0

    .line 896
    iget-object v0, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p3

    move-wide v3, p1

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$startJoinFlickerAnimation$14()V
    .locals 2

    .line 2141
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->joinButtonFlicker:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setProgress(F)V

    .line 2142
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method private openSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 887
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 890
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    .line 891
    iget-object v1, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 893
    new-instance v1, Lorg/telegram/ui/LocationActivity;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/telegram/ui/LocationActivity;-><init>(I)V

    .line 894
    iget-object v2, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/LocationActivity;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 895
    iget-object v2, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    .line 896
    new-instance v4, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda15;

    invoke-direct {v4, p1, v2, v3}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/LocationController$SharingLocationInfo;J)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/LocationActivity;->setDelegate(Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;)V

    .line 897
    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startJoinFlickerAnimation()V
    .locals 3

    .line 2139
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->joinButtonFlicker:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->getProgress()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2140
    new-instance v0, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private updateAvatars(Z)V
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2149
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 2150
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2151
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iput-object v0, v1, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    .line 2156
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    iget-object v2, v1, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget-object v2, v2, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_f

    .line 2158
    iget v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 2159
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v1, :cond_1

    .line 2160
    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v1

    .line 2161
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v3

    goto :goto_0

    .line 2164
    :cond_1
    iget v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    move-object v1, v0

    :goto_0
    move v4, v3

    move-object v3, v0

    goto :goto_2

    .line 2168
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2169
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    .line 2170
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v3, :cond_3

    move-object v3, v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 2171
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/voip/VoIPService;->getAccount()I

    move-result v4

    goto :goto_2

    .line 2175
    :cond_4
    iget v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    move-object v1, v0

    move v4, v3

    move-object v3, v1

    :goto_2
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_6

    .line 2179
    iget-object v3, v1, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_8

    if-ge v8, v3, :cond_5

    .line 2181
    iget-object v9, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    iget-object v10, v1, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v9, v8, v4, v10}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    goto :goto_4

    .line 2183
    :cond_5
    iget-object v9, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v9, v8, v4, v0}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    .line 2187
    iget-object v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v8, v6, v4, v3}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    const/4 v3, 0x1

    :goto_5
    if-ge v3, v5, :cond_8

    .line 2189
    iget-object v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v8, v3, v4, v0}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v5, :cond_8

    .line 2193
    iget-object v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v8, v3, v4, v0}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2196
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    .line 2198
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-ne v0, v2, :cond_10

    if-eqz v1, :cond_10

    .line 2199
    iget-object v0, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v0, :cond_9

    goto :goto_7

    :cond_9
    iget-object v0, v1, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_7
    const/16 v0, 0xa

    if-nez v6, :cond_a

    goto :goto_8

    :cond_a
    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x18

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x20

    add-int/2addr v0, v6

    :goto_8
    const/4 v2, 0x0

    if-eqz p1, :cond_b

    .line 2202
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2203
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-eq v3, p1, :cond_c

    .line 2204
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v3

    int-to-float p1, p1

    add-float/2addr v3, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v3, p1

    .line 2205
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2206
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2207
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v3, 0xdc

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2208
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    goto :goto_9

    .line 2211
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2212
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2213
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2214
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2216
    :cond_c
    :goto_9
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/4 v2, -0x1

    const/16 v3, 0x14

    const/16 v4, 0x33

    const/4 v6, 0x5

    invoke-virtual {v1}, Lorg/telegram/messenger/ChatObject$Call;->isScheduled()Z

    move-result v5

    const/16 v9, 0x5a

    const/16 v10, 0x24

    if-eqz v5, :cond_d

    const/16 v7, 0x5a

    goto :goto_a

    :cond_d
    const/16 v7, 0x24

    :goto_a
    const/4 v8, 0x0

    move v5, v0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2217
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/4 v2, -0x1

    const/16 v3, 0x14

    const/16 v4, 0x33

    const/16 v6, 0x19

    invoke-virtual {v1}, Lorg/telegram/messenger/ChatObject$Call;->isScheduled()Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v7, 0x5a

    goto :goto_b

    :cond_e
    const/16 v7, 0x24

    :goto_b
    const/4 v8, 0x0

    move v5, v0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    .line 2220
    :cond_f
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AvatarsImageView;->updateAfterTransitionEnd()V

    :cond_10
    :goto_c
    return-void
.end method

.method private updateCallTitle()V
    .locals 7

    .line 2332
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2333
    iget v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_9

    .line 2334
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v1

    .line 2335
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isSwitchingStream()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 2336
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v1, Lorg/telegram/messenger/R$string;->VoipGroupConnecting:I

    const-string v2, "VoipGroupConnecting"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 2337
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 2338
    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2339
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 2341
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v3, v1, v5

    if-nez v3, :cond_6

    .line 2342
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2343
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2344
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v1, Lorg/telegram/messenger/R$string;->VoipChannelViewVoiceChat:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 2346
    :cond_4
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2347
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v1, Lorg/telegram/messenger/R$string;->VoipChannelViewVoiceChat:I

    const-string v2, "VoipChannelViewVoiceChat"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 2349
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v1, Lorg/telegram/messenger/R$string;->VoipGroupViewVoiceChat:I

    const-string v2, "VoipGroupViewVoiceChat"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 2353
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 2356
    :cond_7
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2357
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 2358
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_8

    .line 2359
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v1, Lorg/telegram/messenger/R$string;->ReturnToCall:I

    const-string v2, "ReturnToCall"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2361
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_0
    return-void
.end method

.method private updatePaddings()V
    .locals 2

    .line 2314
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2315
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v1, v0

    .line 2317
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2318
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v1, v0

    .line 2319
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2320
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 2322
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    return-void
.end method

.method private updatePlaybackButton()V
    .locals 8

    .line 840
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    return-void

    .line 843
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result v0

    .line 844
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->getFastPlaybackSpeed(Z)F

    move-result v1

    const v2, 0x3fe66666    # 1.8f

    sub-float v3, v1, v2

    .line 845
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3fc00000    # 1.5f

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 846
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->voice_mini_2_0:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_0

    :cond_1
    sub-float/2addr v1, v4

    .line 847
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_2

    .line 848
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->voice_mini_1_5:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_0

    .line 850
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->voice_mini_0_5:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 852
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->updateColors()V

    const/4 v1, 0x0

    .line 853
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    array-length v3, v3

    if-ge v1, v3, :cond_8

    if-nez v1, :cond_3

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float v3, v0, v3

    .line 854
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_6

    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v0, v3

    .line 855
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_6

    :cond_4
    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    sub-float v3, v0, v4

    .line 856
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_6

    :cond_5
    const/4 v3, 0x3

    if-ne v1, v3, :cond_7

    sub-float v3, v0, v2

    .line 857
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_7

    .line 858
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v3, v3, v1

    const-string v6, "inappPlayerPlayPause"

    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v7, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    goto :goto_2

    .line 860
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v3, v3, v1

    const-string v6, "actionBarDefaultSubmenuItem"

    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    const-string v7, "actionBarDefaultSubmenuItemIcon"

    invoke-direct {p0, v7}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method private updateStyle(I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 968
    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-ne v2, v1, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_2

    .line 972
    :cond_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->removeParent(Landroid/view/View;)V

    .line 973
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 974
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/voip/VoIPService;->unregisterStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    .line 977
    :cond_2
    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    .line 978
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v1, v5, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const/4 v2, 0x0

    if-eq v1, v5, :cond_4

    .line 980
    iput-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->timeLayout:Landroid/text/StaticLayout;

    .line 983
    :cond_4
    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v8, 0x33

    if-eqz v7, :cond_5

    .line 984
    iget v9, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Components/AvatarsImageView;->setStyle(I)V

    .line 985
    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v9, 0x6c

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v10

    invoke-static {v9, v10, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 987
    :cond_5
    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v9, -0x1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v10

    const/16 v11, 0x33

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 988
    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextView;->shadow:Landroid/view/View;

    const/4 v9, -0x1

    const/4 v10, 0x2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v13

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 990
    iget v7, v0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    const/4 v9, 0x0

    cmpl-float v10, v7, v9

    if-lez v10, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v10

    int-to-float v10, v10

    cmpl-float v7, v7, v10

    if-eqz v7, :cond_6

    .line 991
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePaddings()V

    .line 992
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    .line 995
    :cond_6
    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextView;->openMusicButton:Landroid/widget/ImageView;

    const/16 v10, 0x8

    if-eqz v7, :cond_8

    if-nez v1, :cond_7

    .line 996
    iget-boolean v11, v0, Lorg/telegram/ui/Components/FragmentContextView;->supportsVoices:Z

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    goto :goto_1

    :cond_7
    const/16 v11, 0x8

    :goto_1
    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    const/4 v7, 0x5

    const-string v11, "AccDescrClosePlayer"

    const/high16 v12, 0x41700000    # 15.0f

    const/16 v13, 0x13

    const-string v14, "inappPlayerTitle"

    const/4 v15, 0x2

    const-string v9, "inappPlayerBackground"

    if-ne v1, v7, :cond_d

    .line 1000
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->selector:Landroid/view/View;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1001
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1002
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v15, :cond_b

    .line 1005
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v1, :cond_9

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v3

    :goto_3
    if-nez v3, :cond_a

    goto :goto_4

    .line 1009
    :cond_a
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 1010
    invoke-direct {v0, v14}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1011
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1012
    invoke-virtual {v3, v4, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1014
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v14}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1015
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1016
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1017
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1018
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1019
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1020
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1021
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1022
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 1023
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrClosePlayer:I

    invoke-static {v11, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1024
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_c

    .line 1025
    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1026
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1028
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/4 v2, -0x1

    const/16 v3, 0x24

    const/16 v4, 0x33

    const/16 v5, 0x23

    const/4 v6, 0x0

    const/16 v7, 0x24

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_17

    :cond_d
    if-eqz v1, :cond_20

    if-ne v1, v15, :cond_e

    goto/16 :goto_13

    :cond_e
    const-string v7, "fonts/rmedium.ttf"

    if-ne v1, v5, :cond_15

    .line 1067
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->selector:Landroid/view/View;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1068
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1069
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1070
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1071
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v1, 0x0

    :goto_5
    const-string v3, "inappPlayerPerformer"

    if-ge v1, v15, :cond_11

    .line 1074
    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v1, :cond_f

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v5

    goto :goto_6

    :cond_f
    invoke-virtual {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v5

    :goto_6
    if-nez v5, :cond_10

    goto :goto_7

    .line 1078
    :cond_10
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 1079
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1080
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1081
    invoke-virtual {v5, v4, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1083
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1084
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1086
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1087
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->stopAnimation()V

    .line 1090
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v1, :cond_12

    .line 1091
    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v1, :cond_12

    goto :goto_8

    :cond_12
    const/4 v4, 0x0

    .line 1094
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    if-nez v4, :cond_13

    const/4 v3, 0x0

    goto :goto_9

    :cond_13
    const/16 v3, 0x8

    :goto_9
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1095
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v10, :cond_14

    .line 1096
    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/FragmentContextView;->updateAvatars(Z)V

    goto :goto_a

    .line 1098
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/16 v3, 0x24

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1099
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1102
    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1103
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1104
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_26

    .line 1105
    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1106
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_17

    :cond_15
    if-eq v1, v4, :cond_16

    if-ne v1, v3, :cond_26

    .line 1109
    :cond_16
    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->selector:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1110
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->updateCallTitle()V

    .line 1112
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    move-result v5

    .line 1113
    iget-object v8, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    if-nez v5, :cond_17

    const/4 v9, 0x0

    goto :goto_b

    :cond_17
    const/16 v9, 0x8

    :goto_b
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    if-ne v1, v3, :cond_18

    .line 1115
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 1116
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    .line 1119
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v10, :cond_19

    .line 1120
    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/FragmentContextView;->updateAvatars(Z)V

    goto :goto_c

    .line 1122
    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1123
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1125
    :goto_c
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    if-nez v5, :cond_1a

    const/4 v3, 0x0

    goto :goto_d

    :cond_1a
    const/16 v3, 0x8

    :goto_d
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1126
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_e

    :cond_1b
    const/4 v1, 0x0

    :goto_e
    iput-boolean v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    .line 1127
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_1c

    const/16 v1, 0xf

    goto :goto_f

    :cond_1c
    const/16 v1, 0x1d

    :goto_f
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 1128
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getCustomEndFrame()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3, v6, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 1129
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 1130
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1131
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1132
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1133
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->stopAnimation()V

    .line 1134
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->addParent(Landroid/view/View;)V

    .line 1135
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->invalidate()V

    const/4 v1, 0x0

    :goto_10
    const-string/jumbo v3, "returnToCallText"

    if-ge v1, v15, :cond_1f

    .line 1138
    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v1, :cond_1d

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v5

    goto :goto_11

    :cond_1d
    invoke-virtual {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v5

    :goto_11
    if-nez v5, :cond_1e

    goto :goto_12

    .line 1142
    :cond_1e
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 1143
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1144
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x41600000    # 14.0f

    .line 1145
    invoke-virtual {v5, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1148
    :cond_1f
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1149
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1150
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1151
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1152
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1154
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/16 v13, 0x11

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x2

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1155
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/16 v3, 0x70

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v4, v6, v3, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1156
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_26

    .line 1157
    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1158
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 1030
    :cond_20
    :goto_13
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->selector:Landroid/view/View;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1031
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1032
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1034
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1035
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1036
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1037
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1038
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1039
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1040
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieImageView;->stopAnimation()V

    .line 1041
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v15, :cond_23

    .line 1043
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v2, :cond_21

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    goto :goto_15

    :cond_21
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v3

    :goto_15
    if-nez v3, :cond_22

    goto :goto_16

    .line 1047
    :cond_22
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 1048
    invoke-direct {v0, v14}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1049
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1050
    invoke-virtual {v3, v4, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1052
    :cond_23
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v2, v14}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    if-nez v1, :cond_25

    .line 1054
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    const/16 v12, 0x24

    const/16 v13, 0x24

    const/16 v14, 0x33

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1055
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/4 v12, -0x1

    const/16 v15, 0x23

    const/16 v17, 0x24

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1056
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_24

    .line 1057
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1058
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1060
    :cond_24
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrClosePlayer:I

    invoke-static {v11, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 1062
    :cond_25
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    const/16 v2, 0x24

    const/16 v3, 0x24

    const/16 v4, 0x33

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1063
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/4 v2, -0x1

    const/16 v5, 0x33

    const/16 v7, 0x24

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1064
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrStopLiveLocation:I

    const-string v3, "AccDescrStopLiveLocation"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_26
    :goto_17
    return-void
.end method


# virtual methods
.method public checkCall(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 1908
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    .line 1909
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v2, :cond_1

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isHangingUp()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    .line 1912
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-nez p1, :cond_3

    if-eqz v2, :cond_3

    .line 1914
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move/from16 v2, p1

    .line 1920
    :goto_0
    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->isShowing()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 1924
    :cond_5
    sget-boolean v4, Lorg/telegram/ui/GroupCallActivity;->groupCallUiVisible:Z

    if-nez v4, :cond_6

    iget-boolean v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->supportsCalls:Z

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isHangingUp()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    if-eqz v1, :cond_7

    .line 1925
    iget-object v6, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v6, :cond_7

    iget-object v6, v6, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallDiscarded;

    if-eqz v6, :cond_7

    const/4 v4, 0x0

    .line 1929
    :cond_7
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v6

    if-nez v6, :cond_4

    sget-boolean v6, Lorg/telegram/ui/GroupCallActivity;->groupCallUiVisible:Z

    if-nez v6, :cond_4

    iget-boolean v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->supportsCalls:Z

    if-eqz v6, :cond_4

    if-nez v4, :cond_4

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v6, :cond_4

    .line 1930
    invoke-interface {v6}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1931
    invoke-virtual {v6}, Lorg/telegram/messenger/ChatObject$Call;->shouldShowPanel()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v4, 0x1

    const/4 v6, 0x1

    :goto_2
    const-wide/16 v7, 0xdc

    const/4 v9, 0x0

    const-string/jumbo v10, "topPadding"

    const/16 v11, 0x8

    const/4 v12, -0x1

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x4

    if-nez v4, :cond_10

    .line 1939
    iget-boolean v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v1, :cond_d

    if-eqz v2, :cond_8

    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v4, v12, :cond_9

    :cond_8
    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v4, v15, :cond_9

    if-eq v4, v13, :cond_9

    if-ne v4, v3, :cond_d

    .line 1940
    :cond_9
    iput-boolean v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v2, :cond_b

    .line 1942
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eq v1, v11, :cond_a

    .line 1943
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 1945
    :cond_a
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    goto :goto_3

    .line 1947
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_c

    .line 1948
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1949
    iput-object v14, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1951
    :cond_c
    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    .line 1952
    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    iget v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    invoke-virtual {v4, v6, v14}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    .line 1953
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v6, v3, [Landroid/animation/Animator;

    new-array v3, v3, [F

    aput v9, v3, v5

    .line 1954
    invoke-static {v0, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v6, v5

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1955
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1956
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1957
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/Components/FragmentContextView$14;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/FragmentContextView$14;-><init>(Lorg/telegram/ui/Components/FragmentContextView;I)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1977
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_d
    if-eqz v1, :cond_f

    .line 1979
    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v1, v12, :cond_e

    if-eq v1, v15, :cond_e

    if-eq v1, v13, :cond_e

    if-ne v1, v3, :cond_f

    .line 1980
    :cond_e
    iput-boolean v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 1981
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    :cond_f
    :goto_3
    if-eqz v2, :cond_2a

    .line 1984
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v1, :cond_2a

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->openedWithLivestream()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1985
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$raw;->linkbroken:I

    sget v3, Lorg/telegram/messenger/R$string;->InviteExpired:I

    const-string v4, "InviteExpired"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_12

    :cond_10
    if-eqz v6, :cond_11

    const/4 v4, 0x4

    goto :goto_4

    .line 1991
    :cond_11
    iget-object v4, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v4, :cond_12

    const/4 v4, 0x3

    goto :goto_4

    :cond_12
    const/4 v4, 0x1

    .line 1996
    :goto_4
    iget v13, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v4, v13, :cond_13

    iget-object v11, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v11, :cond_13

    if-nez v2, :cond_13

    .line 1997
    iput-boolean v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->checkCallAfterAnimation:Z

    return-void

    :cond_13
    if-eq v4, v13, :cond_15

    .line 2000
    iget-boolean v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v4, :cond_15

    if-nez v2, :cond_15

    .line 2001
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_14

    .line 2002
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2003
    iput-object v14, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 2005
    :cond_14
    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    .line 2006
    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    invoke-virtual {v2, v4, v14}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    .line 2007
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v3, [Landroid/animation/Animator;

    new-array v3, v3, [F

    aput v9, v3, v5

    .line 2008
    invoke-static {v0, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2009
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2010
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2011
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/Components/FragmentContextView$15;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/FragmentContextView$15;-><init>(Lorg/telegram/ui/Components/FragmentContextView;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2022
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_15
    if-eqz v6, :cond_23

    if-ne v13, v15, :cond_16

    .line 2026
    iget-boolean v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_5

    :cond_16
    const/4 v1, 0x0

    .line 2027
    :goto_5
    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/FragmentContextView;->updateStyle(I)V

    .line 2029
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v4}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v4

    .line 2030
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v6}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 2031
    invoke-virtual {v4}, Lorg/telegram/messenger/ChatObject$Call;->isScheduled()Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 2032
    iget-object v9, v0, Lorg/telegram/ui/Components/FragmentContextView;->gradientPaint:Landroid/graphics/Paint;

    if-nez v9, :cond_17

    .line 2033
    new-instance v9, Landroid/text/TextPaint;

    invoke-direct {v9, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v9, v0, Lorg/telegram/ui/Components/FragmentContextView;->gradientTextPaint:Landroid/text/TextPaint;

    .line 2034
    invoke-virtual {v9, v12}, Landroid/text/TextPaint;->setColor(I)V

    .line 2035
    iget-object v9, v0, Lorg/telegram/ui/Components/FragmentContextView;->gradientTextPaint:Landroid/text/TextPaint;

    const/16 v11, 0xe

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v9, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2036
    iget-object v9, v0, Lorg/telegram/ui/Components/FragmentContextView;->gradientTextPaint:Landroid/text/TextPaint;

    const-string v11, "fonts/rmedium.ttf"

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2038
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, v0, Lorg/telegram/ui/Components/FragmentContextView;->gradientPaint:Landroid/graphics/Paint;

    .line 2039
    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 2041
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v9, v0, Lorg/telegram/ui/Components/FragmentContextView;->matrix:Landroid/graphics/Matrix;

    .line 2043
    :cond_17
    iget-object v9, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2044
    iget-object v9, v4, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_18

    .line 2045
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-object v9, v4, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    invoke-virtual {v6, v9, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_6

    .line 2047
    :cond_18
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 2048
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v9, Lorg/telegram/messenger/R$string;->VoipChannelScheduledVoiceChat:I

    const-string v11, "VoipChannelScheduledVoiceChat"

    invoke-static {v11, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_6

    .line 2050
    :cond_19
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v9, Lorg/telegram/messenger/R$string;->VoipGroupScheduledVoiceChat:I

    const-string v11, "VoipGroupScheduledVoiceChat"

    invoke-static {v11, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    .line 2053
    :goto_6
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-object v4, v4, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCall;->schedule_date:I

    int-to-long v11, v4

    invoke-static {v11, v12, v15}, Lorg/telegram/messenger/LocaleController;->formatStartsTime(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    .line 2054
    iget-boolean v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->scheduleRunnableScheduled:Z

    if-nez v4, :cond_21

    .line 2055
    iput-boolean v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->scheduleRunnableScheduled:Z

    .line 2056
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->updateScheduleTimeRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_b

    .line 2059
    :cond_1a
    iput-object v14, v0, Lorg/telegram/ui/Components/FragmentContextView;->timeLayout:Landroid/text/StaticLayout;

    .line 2060
    iget-object v9, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2061
    iget-object v9, v4, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1b

    .line 2062
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-object v9, v4, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    invoke-virtual {v6, v9, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_7

    .line 2063
    :cond_1b
    iget-object v9, v4, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v9, :cond_1c

    .line 2064
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v9, Lorg/telegram/messenger/R$string;->VoipChannelVoiceChat:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_7

    .line 2065
    :cond_1c
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 2066
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v9, Lorg/telegram/messenger/R$string;->VoipChannelVoiceChat:I

    const-string v11, "VoipChannelVoiceChat"

    invoke-static {v11, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_7

    .line 2068
    :cond_1d
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v9, Lorg/telegram/messenger/R$string;->VoipGroupVoiceChat:I

    const-string v11, "VoipGroupVoiceChat"

    invoke-static {v11, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    .line 2070
    :goto_7
    iget-object v4, v4, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v6, v4, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    if-nez v6, :cond_1f

    .line 2071
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v4, :cond_1e

    sget v4, Lorg/telegram/messenger/R$string;->ViewersWatchingNobody:I

    goto :goto_8

    :cond_1e
    sget v4, Lorg/telegram/messenger/R$string;->MembersTalkingNobody:I

    :goto_8
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_a

    .line 2073
    :cond_1f
    iget-object v9, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v4, :cond_20

    const-string v4, "ViewersWatching"

    goto :goto_9

    :cond_20
    const-string v4, "Participants"

    :goto_9
    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v4, v6, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    .line 2075
    :goto_a
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2078
    :cond_21
    :goto_b
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    iget-object v4, v4, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget-boolean v4, v4, Lorg/telegram/ui/Components/AvatarsDrawable;->wasDraw:Z

    if-eqz v4, :cond_22

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    goto :goto_c

    :cond_22
    const/4 v1, 0x0

    :goto_c
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->updateAvatars(Z)V

    goto :goto_f

    :cond_23
    if-eqz v1, :cond_25

    .line 2080
    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_25

    const/4 v1, 0x3

    if-ne v13, v1, :cond_24

    const/4 v4, 0x1

    goto :goto_d

    :cond_24
    const/4 v4, 0x0

    .line 2081
    :goto_d
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->updateAvatars(Z)V

    .line 2082
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->updateStyle(I)V

    goto :goto_f

    :cond_25
    if-ne v13, v3, :cond_26

    const/4 v1, 0x1

    goto :goto_e

    :cond_26
    const/4 v1, 0x0

    .line 2084
    :goto_e
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->updateAvatars(Z)V

    .line 2085
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->updateStyle(I)V

    .line 2088
    :goto_f
    iget-boolean v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-nez v1, :cond_2a

    if-nez v2, :cond_29

    .line 2090
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_27

    .line 2091
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2092
    iput-object v14, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 2094
    :cond_27
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 2095
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_28

    .line 2096
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_10

    .line 2098
    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2100
    :goto_10
    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    .line 2101
    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    new-array v6, v3, [I

    sget v9, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    aput v9, v6, v5

    invoke-virtual {v2, v4, v6}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    .line 2102
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v3, [Landroid/animation/Animator;

    new-array v6, v3, [F

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v6, v5

    invoke-static {v0, v10, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2103
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2104
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2105
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/Components/FragmentContextView$16;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/FragmentContextView$16;-><init>(Lorg/telegram/ui/Components/FragmentContextView;I)V

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2126
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_11

    .line 2128
    :cond_29
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePaddings()V

    .line 2129
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    .line 2130
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->startJoinFlickerAnimation()V

    .line 2132
    :goto_11
    iput-boolean v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 2133
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    :cond_2a
    :goto_12
    return-void
.end method

.method public checkImport(Z)V
    .locals 9

    .line 1775
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v0, v1, :cond_14

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto/16 :goto_1

    .line 1778
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->getImportingHistory(J)Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    move-result-object v0

    .line 1779
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    if-nez p1, :cond_2

    if-eqz v2, :cond_2

    .line 1781
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 p1, 0x1

    .line 1786
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v2

    .line 1787
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v3}, Lorg/telegram/ui/Components/ChatActivityInterface;->shouldShowImport()Z

    move-result v3

    if-nez v3, :cond_3

    instance-of v3, v2, Lorg/telegram/ui/Components/ImportingAlert;

    if-eqz v3, :cond_4

    check-cast v2, Lorg/telegram/ui/Components/ImportingAlert;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    move-object v0, v4

    :cond_4
    const-string/jumbo v2, "topPadding"

    const/4 v3, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-nez v0, :cond_c

    .line 1792
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    const/4 v7, -0x1

    const/16 v8, 0x8

    if-eqz v0, :cond_a

    if-eqz p1, :cond_5

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v0, v7, :cond_6

    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-ne v0, v5, :cond_a

    .line 1793
    :cond_6
    iput-boolean v6, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz p1, :cond_8

    .line 1795
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eq p1, v8, :cond_7

    .line 1796
    invoke-virtual {p0, v8}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 1798
    :cond_7
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    goto/16 :goto_1

    .line 1800
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_9

    .line 1801
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1802
    iput-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1804
    :cond_9
    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    .line 1805
    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    invoke-virtual {v0, v5, v4}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    .line 1806
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v1, [Landroid/animation/Animator;

    new-array v1, v1, [F

    aput v3, v1, v6

    .line 1807
    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1808
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1809
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1810
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView$12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/FragmentContextView$12;-><init>(Lorg/telegram/ui/Components/FragmentContextView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1830
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1

    .line 1832
    :cond_a
    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq p1, v7, :cond_b

    if-ne p1, v5, :cond_14

    .line 1833
    :cond_b
    iput-boolean v6, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 1834
    invoke-virtual {p0, v8}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1837
    :cond_c
    iget v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v7, v5, :cond_d

    iget-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_d

    if-nez p1, :cond_d

    .line 1838
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkImportAfterAnimation:Z

    return-void

    .line 1841
    :cond_d
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->updateStyle(I)V

    if-eqz p1, :cond_e

    .line 1842
    iget v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    cmpl-float v3, v5, v3

    if-nez v3, :cond_e

    .line 1843
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePaddings()V

    .line 1844
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    .line 1845
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    if-eqz v3, :cond_e

    .line 1846
    invoke-interface {v3, v1, v1}, Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;->onAnimation(ZZ)V

    .line 1847
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    invoke-interface {v3, v6, v1}, Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;->onAnimation(ZZ)V

    .line 1850
    :cond_e
    iget-boolean v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-nez v3, :cond_13

    if-nez p1, :cond_12

    .line 1852
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_f

    .line 1853
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1854
    iput-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1856
    :cond_f
    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    invoke-virtual {p1, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    .line 1857
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1858
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_10

    .line 1859
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 1861
    :cond_10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1863
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    if-eqz p1, :cond_11

    .line 1864
    invoke-interface {p1, v1, v1}, Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;->onAnimation(ZZ)V

    .line 1866
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v1, [Landroid/animation/Animator;

    new-array v4, v1, [F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1867
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1868
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/FragmentContextView$13;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/FragmentContextView$13;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1890
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 1892
    :cond_12
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 1893
    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 1895
    :cond_13
    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentProgress:I

    iget v0, v0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadProgress:I

    if-eq p1, v0, :cond_14

    .line 1896
    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentProgress:I

    .line 1897
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v2, Lorg/telegram/messenger/R$string;->ImportUploading:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v6

    const-string v0, "ImportUploading"

    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    :cond_14
    :goto_1
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 12

    .line 1289
    sget p2, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 1290
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkLiveLocation(Z)V

    goto/16 :goto_7

    .line 1291
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->liveLocationsCacheChanged:I

    if-ne p1, p2, :cond_1

    .line 1292
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz p1, :cond_1a

    .line 1293
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 1294
    iget-object p3, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {p3}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v0

    cmp-long p3, v0, p1

    if-nez p3, :cond_1a

    .line 1295
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkLocationString()V

    goto/16 :goto_7

    .line 1298
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq p1, p2, :cond_17

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-eq p1, p2, :cond_17

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-eq p1, p2, :cond_17

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didEndCall:I

    if-ne p1, p2, :cond_2

    goto/16 :goto_6

    .line 1303
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    if-eq p1, p2, :cond_14

    sget v4, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    if-eq p1, v4, :cond_14

    sget v4, Lorg/telegram/messenger/NotificationCenter;->groupCallVisibilityChanged:I

    if-ne p1, v4, :cond_3

    goto/16 :goto_5

    .line 1325
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupCallTypingsUpdated:I

    if-ne p1, p2, :cond_9

    .line 1326
    iget-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz p1, :cond_1a

    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-ne p1, v2, :cond_1a

    .line 1327
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1329
    invoke-virtual {p1}, Lorg/telegram/messenger/ChatObject$Call;->isScheduled()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1330
    iget-object p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->schedule_date:I

    int-to-long v4, p1

    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatStartsTime(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 1331
    :cond_4
    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget p2, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    if-nez p2, :cond_6

    .line 1332
    iget-object p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz p1, :cond_5

    sget p1, Lorg/telegram/messenger/R$string;->ViewersWatchingNobody:I

    goto :goto_0

    :cond_5
    sget p1, Lorg/telegram/messenger/R$string;->MembersTalkingNobody:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 1334
    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz p1, :cond_7

    const-string p1, "ViewersWatching"

    goto :goto_1

    :cond_7
    const-string p1, "Participants"

    :goto_1
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    .line 1337
    :cond_8
    :goto_2
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->updateAvatars(Z)V

    goto/16 :goto_7

    .line 1339
    :cond_9
    sget p2, Lorg/telegram/messenger/NotificationCenter;->historyImportProgressChanged:I

    if-ne p1, p2, :cond_c

    .line 1340
    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq p1, v3, :cond_a

    if-eq p1, v1, :cond_a

    if-ne p1, v2, :cond_b

    .line 1341
    :cond_a
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    .line 1343
    :cond_b
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkImport(Z)V

    goto/16 :goto_7

    .line 1344
    :cond_c
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingSpeedChanged:I

    if-ne p1, p2, :cond_d

    .line 1345
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePlaybackButton()V

    goto/16 :goto_7

    .line 1346
    :cond_d
    sget p2, Lorg/telegram/messenger/NotificationCenter;->webRtcMicAmplitudeEvent:I

    const/4 v1, 0x0

    if-ne p1, p2, :cond_10

    .line 1347
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_3

    .line 1350
    :cond_e
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p2, 0x457a0000    # 4000.0f

    mul-float p1, p1, p2

    const p2, 0x4604d000    # 8500.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->micAmplitude:F

    goto :goto_4

    .line 1348
    :cond_f
    :goto_3
    iput v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->micAmplitude:F

    .line 1352
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 1353
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->speakerAmplitude:F

    iget p3, p0, Lorg/telegram/ui/Components/FragmentContextView;->micAmplitude:F

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setAmplitude(F)V

    goto/16 :goto_7

    .line 1355
    :cond_10
    sget p2, Lorg/telegram/messenger/NotificationCenter;->webRtcSpeakerAmplitudeEvent:I

    if-ne p1, p2, :cond_1a

    .line 1356
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p2, 0x41700000    # 15.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x42a00000    # 80.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1357
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->speakerAmplitude:F

    .line 1358
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1359
    :cond_11
    iput v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->micAmplitude:F

    .line 1361
    :cond_12
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1362
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->speakerAmplitude:F

    iget p3, p0, Lorg/telegram/ui/Components/FragmentContextView;->micAmplitude:F

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setAmplitude(F)V

    .line 1364
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_7

    .line 1304
    :cond_14
    :goto_5
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    .line 1305
    iget p3, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-ne p3, v1, :cond_1a

    .line 1306
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p3

    if-eqz p3, :cond_1a

    .line 1307
    iget-object v1, p3, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_1a

    if-ne p1, p2, :cond_15

    .line 1309
    invoke-virtual {p3, p0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    .line 1311
    :cond_15
    invoke-virtual {p3}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result p1

    if-eq p1, v3, :cond_1a

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1a

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1a

    const/4 p2, 0x5

    if-ne p1, p2, :cond_16

    goto :goto_7

    .line 1315
    :cond_16
    iget-object p1, p3, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {p3}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-eqz p1, :cond_1a

    .line 1316
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->can_self_unmute:Z

    if-nez p2, :cond_1a

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    if-eqz p1, :cond_1a

    invoke-virtual {p3}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 1317
    invoke-virtual {p3, v3, v0, v0}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    .line 1318
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v4, v6

    .line 1319
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1320
    iget-object p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_7

    .line 1299
    :cond_17
    :goto_6
    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq p1, v3, :cond_18

    if-eq p1, v1, :cond_18

    if-ne p1, v2, :cond_19

    .line 1300
    :cond_18
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    .line 1302
    :cond_19
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayer(Z)V

    :cond_1a
    :goto_7
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v8, p0

    .line 2238
    iget-boolean v0, v8, Lorg/telegram/ui/Components/FragmentContextView;->drawOverlay:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2242
    iget v1, v8, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v2, 0x3

    const/4 v9, 0x1

    if-eq v1, v2, :cond_2

    if-ne v1, v9, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v4, p1

    goto/16 :goto_2

    .line 2243
    :cond_2
    :goto_0
    sget-object v0, Lorg/telegram/ui/GroupCallActivity;->groupCallInstance:Lorg/telegram/ui/GroupCallActivity;

    if-nez v0, :cond_3

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->getState()I

    move-result v0

    .line 2244
    :cond_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v0

    iget-boolean v1, v8, Lorg/telegram/ui/Components/FragmentContextView;->wasDraw:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->updateState(Z)V

    .line 2246
    iget v0, v8, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 2248
    iget-boolean v0, v8, Lorg/telegram/ui/Components/FragmentContextView;->collapseTransition:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2249
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget v2, v8, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    sub-float/2addr v0, v2

    iget v2, v8, Lorg/telegram/ui/Components/FragmentContextView;->extraHeight:F

    add-float v12, v0, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v13, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v14, v0

    const/16 v16, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, v8, Lorg/telegram/ui/Components/FragmentContextView;->collapseProgress:F

    sub-float/2addr v0, v1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v17

    move-object/from16 v15, p1

    invoke-virtual/range {v10 .. v17}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->draw(FFFFLandroid/graphics/Canvas;Lorg/telegram/ui/Components/FragmentContextView;F)V

    goto :goto_1

    .line 2251
    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v8, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    sub-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v5, v1

    int-to-float v5, v5

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->draw(FFFFLandroid/graphics/Canvas;Lorg/telegram/ui/Components/FragmentContextView;F)V

    .line 2253
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, v8, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    sub-float/2addr v0, v1

    .line 2254
    iget-boolean v1, v8, Lorg/telegram/ui/Components/FragmentContextView;->collapseTransition:Z

    if-eqz v1, :cond_5

    .line 2255
    iget v1, v8, Lorg/telegram/ui/Components/FragmentContextView;->extraHeight:F

    add-float/2addr v0, v1

    .line 2257
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_6

    return-void

    .line 2261
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x0

    .line 2262
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v4, p1

    invoke-virtual {v4, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 2263
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->invalidate()V

    const/4 v0, 0x1

    .line 2265
    :goto_2
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_7

    .line 2267
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2269
    :cond_7
    iput-boolean v9, v8, Lorg/telegram/ui/Components/FragmentContextView;->wasDraw:Z

    return-void
.end method

.method public getStyleHeight()I
    .locals 2

    .line 1372
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x30

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    :goto_0
    return v0
.end method

.method public getTopPadding()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 902
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    return v0
.end method

.method public invalidate()V
    .locals 2

    .line 2280
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2281
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2282
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2283
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public isCallStyle()Z
    .locals 3

    .line 2289
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isCallTypeVisible()Z
    .locals 3

    .line 1376
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPlayer()Z
    .locals 1

    .line 129
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .line 1208
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1209
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isLocation:Z

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 1210
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    invoke-virtual {v0, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1211
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->liveLocationsCacheChanged:I

    invoke-virtual {v0, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1212
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz v0, :cond_0

    .line 1213
    invoke-direct {v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkVisibility()V

    .line 1215
    :cond_0
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->checkLiveLocation(Z)V

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v0, v4, :cond_2

    .line 1218
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v4, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1219
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v4, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1220
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v4, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1221
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-virtual {v4, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1222
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->groupCallTypingsUpdated:I

    invoke-virtual {v4, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1223
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->historyImportProgressChanged:I

    invoke-virtual {v4, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1225
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->messagePlayingSpeedChanged:I

    invoke-virtual {v0, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1226
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    invoke-virtual {v0, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1227
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didEndCall:I

    invoke-virtual {v0, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1228
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->webRtcSpeakerAmplitudeEvent:I

    invoke-virtual {v0, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1229
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->webRtcMicAmplitudeEvent:I

    invoke-virtual {v0, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1230
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->groupCallVisibilityChanged:I

    invoke-virtual {v0, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1231
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz v0, :cond_3

    .line 1232
    invoke-direct {v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkVisibility()V

    .line 1235
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isHangingUp()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v0

    if-eq v0, v1, :cond_4

    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1236
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    goto :goto_1

    .line 1237
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v4}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/SendMessagesHelper;->getImportingHistory(J)Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1238
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->checkImport(Z)V

    goto :goto_1

    .line 1239
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ChatObject$Call;->shouldShowPanel()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1240
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    goto :goto_1

    .line 1242
    :cond_6
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    .line 1243
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayer(Z)V

    .line 1244
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePlaybackButton()V

    .line 1247
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_7

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInMenuMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1248
    iput-boolean v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    const/16 v0, 0x8

    .line 1249
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 1254
    :cond_7
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_9

    if-ne v0, v3, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    .line 1267
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->scheduleRunnableScheduled:Z

    if-nez v0, :cond_d

    .line 1268
    iput-boolean v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->scheduleRunnableScheduled:Z

    .line 1269
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->updateScheduleTimeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    .line 1255
    :cond_9
    :goto_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->addParent(Landroid/view/View;)V

    .line 1256
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1257
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    .line 1259
    :cond_a
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    .line 1260
    :goto_4
    iget-boolean v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    if-eq v4, v0, :cond_d

    .line 1261
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    .line 1262
    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_c

    goto :goto_5

    :cond_c
    const/16 v1, 0x1d

    :goto_5
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 1263
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getCustomEndFrame()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 1264
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 1273
    :cond_d
    :goto_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    .line 1274
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePaddings()V

    .line 1275
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    .line 1278
    :cond_e
    iput v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->speakerAmplitude:F

    .line 1279
    iput v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->micAmplitude:F

    return-void
.end method

.method public onAudioSettingsChanged()V
    .locals 4

    .line 259
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 260
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    if-eq v3, v0, :cond_2

    .line 261
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    .line 262
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    goto :goto_1

    :cond_1
    const/16 v0, 0x1d

    :goto_1
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getCustomEndFrame()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 265
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->updateState(Z)V

    .line 267
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 268
    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->micAmplitude:F

    .line 269
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setAmplitude(F)V

    :cond_3
    return-void
.end method

.method public synthetic onCameraFirstFrameAvailable()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onCameraFirstFrameAvailable(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    return-void
.end method

.method public synthetic onCameraSwitch(Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onCameraSwitch(Lorg/telegram/messenger/voip/VoIPService$StateListener;Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .line 1165
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1166
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1167
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 1168
    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1170
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->scheduleRunnableScheduled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1171
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->updateScheduleTimeRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1172
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->scheduleRunnableScheduled:Z

    .line 1174
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 1175
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    const/4 v0, 0x0

    .line 1176
    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    .line 1177
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isLocation:Z

    if-eqz v0, :cond_2

    .line 1178
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1179
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->liveLocationsCacheChanged:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    .line 1182
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1183
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1184
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1185
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1186
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->groupCallTypingsUpdated:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1187
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->historyImportProgressChanged:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1189
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingSpeedChanged:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1190
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1191
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didEndCall:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1192
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->webRtcSpeakerAmplitudeEvent:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1193
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->webRtcMicAmplitudeEvent:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1194
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->groupCallVisibilityChanged:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1197
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 1198
    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->removeParent(Landroid/view/View;)V

    .line 1200
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1201
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->unregisterStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    .line 1203
    :cond_6
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->wasDraw:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1284
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result p2

    add-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public synthetic onMediaStateUpdated(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onMediaStateUpdated(Lorg/telegram/messenger/voip/VoIPService$StateListener;II)V

    return-void
.end method

.method public synthetic onScreenOnChange(Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onScreenOnChange(Lorg/telegram/messenger/voip/VoIPService$StateListener;Z)V

    return-void
.end method

.method public synthetic onSignalBarsCountChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onSignalBarsCountChanged(Lorg/telegram/messenger/voip/VoIPService$StateListener;I)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 2328
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->updateCallTitle()V

    return-void
.end method

.method public synthetic onVideoAvailableChange(Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onVideoAvailableChange(Lorg/telegram/messenger/voip/VoIPService$StateListener;Z)V

    return-void
.end method

.method protected playbackSpeedChanged(F)V
    .locals 0

    return-void
.end method

.method public setAdditionalContextView(Lorg/telegram/ui/Components/FragmentContextView;)V
    .locals 0

    .line 883
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    return-void
.end method

.method public setCollapseTransition(ZFF)V
    .locals 0

    .line 2231
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->collapseTransition:Z

    .line 2232
    iput p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->extraHeight:F

    .line 2233
    iput p3, p0, Lorg/telegram/ui/Components/FragmentContextView;->collapseProgress:F

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;)V
    .locals 0

    .line 836
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    return-void
.end method

.method public setDrawOverlay(Z)V
    .locals 0

    .line 2275
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->drawOverlay:Z

    return-void
.end method

.method public setSupportsCalls(Z)V
    .locals 0

    .line 832
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->supportsCalls:Z

    return-void
.end method

.method public setSupportsVoices(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->supportsVoices:Z

    return-void
.end method

.method public setTopPadding(F)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 939
    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    .line 940
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 941
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->applyingView:Landroid/view/View;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p1

    .line 943
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 944
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 946
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 947
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    float-to-int v2, v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .line 2294
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2295
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePaddings()V

    .line 2296
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 2298
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->wasDraw:Z

    .line 2301
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2302
    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz p1, :cond_2

    .line 2303
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    .line 2304
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-interface {v1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setMusicPlaying(Z)V

    goto :goto_0

    .line 2306
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setMusicPlaying(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 866
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_1

    .line 868
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 869
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const-string v0, "inappPlayerPlayPause"

    goto :goto_0

    :cond_0
    const-string v0, "inappPlayerClose"

    .line 874
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 875
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 876
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    const v2, 0x19ffffff

    and-int/2addr v0, v2

    const/4 v2, 0x1

    const/16 v3, 0xe

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
