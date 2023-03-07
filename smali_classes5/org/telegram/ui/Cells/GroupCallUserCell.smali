.class public Lorg/telegram/ui/Cells/GroupCallUserCell;
.super Landroid/widget/FrameLayout;
.source "GroupCallUserCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;,
        Lorg/telegram/ui/Cells/GroupCallUserCell$VerifiedDrawable;
    }
.end annotation


# instance fields
.field private accountInstance:Lorg/telegram/messenger/AccountInstance;

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

.field private checkRaiseRunnable:Ljava/lang/Runnable;

.field private currentCall:Lorg/telegram/messenger/ChatObject$Call;

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private currentIconGray:Z

.field private currentStatus:I

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private dividerPaint:Landroid/graphics/Paint;

.field private fullAboutTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private grayIconColor:Ljava/lang/String;

.field private hasAvatar:Z

.field private isSpeaking:Z

.field private lastMuteColor:I

.field private lastMuted:Z

.field private lastRaisedHand:Z

.field private muteButton:Lorg/telegram/ui/Components/RLottieImageView;

.field private muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private needDivider:Z

.field private participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

.field private premiumDrawable:Landroid/graphics/drawable/Drawable;

.field private progressToAvatarPreview:F

.field private raiseHandCallback:Ljava/lang/Runnable;

.field public rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private selfId:J

.field private shakeHandCallback:Ljava/lang/Runnable;

.field private shakeHandDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private speakingDrawable:Landroid/graphics/drawable/Drawable;

.field private statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private updateRunnable:Ljava/lang/Runnable;

.field private updateRunnableScheduled:Z

.field private updateVoiceRunnable:Ljava/lang/Runnable;

.field private updateVoiceRunnableScheduled:Z

.field private verifiedDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$3dUY0ih2EMhGPsLI0MzZsCTDQ8M(Lorg/telegram/ui/Cells/GroupCallUserCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/GroupCallUserCell;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Wks65hHhbzbC-yE71sZqLFpgAyQ(Lorg/telegram/ui/Cells/GroupCallUserCell;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/GroupCallUserCell;->lambda$applyParticipantChanges$6(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bvPob-xEu18r8vT7Mmouubb3w4M(Lorg/telegram/ui/Cells/GroupCallUserCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/GroupCallUserCell;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$fmEuVsSqErfEdHu7e0e9DjtwqjU(Lorg/telegram/ui/Cells/GroupCallUserCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/GroupCallUserCell;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$pQV-GPIEJzdzhhZoOvvc-Utfxz0(Lorg/telegram/ui/Cells/GroupCallUserCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/GroupCallUserCell;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$w8MPlD0LDDkFX6YCQubAjf4citA(Lorg/telegram/ui/Cells/GroupCallUserCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/GroupCallUserCell;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$xeSJnQdm1GhaDhleJ4wjjxKF0_g(Lorg/telegram/ui/Cells/GroupCallUserCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/GroupCallUserCell;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 257
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x5

    new-array v3, v2, [Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 63
    iput-object v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 95
    new-instance v3, Lorg/telegram/ui/Cells/GroupCallUserCell$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Cells/GroupCallUserCell$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Cells/GroupCallUserCell;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->shakeHandCallback:Ljava/lang/Runnable;

    .line 101
    new-instance v3, Lorg/telegram/ui/Cells/GroupCallUserCell$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Cells/GroupCallUserCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/GroupCallUserCell;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->raiseHandCallback:Ljava/lang/Runnable;

    const-string v3, "voipgroup_mutedIcon"

    .line 128
    iput-object v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->grayIconColor:Ljava/lang/String;

    .line 130
    new-instance v4, Lorg/telegram/ui/Cells/GroupCallUserCell$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/GroupCallUserCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Cells/GroupCallUserCell;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->checkRaiseRunnable:Ljava/lang/Runnable;

    .line 132
    new-instance v4, Lorg/telegram/ui/Cells/GroupCallUserCell$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/GroupCallUserCell$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Cells/GroupCallUserCell;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->updateRunnable:Ljava/lang/Runnable;

    .line 138
    new-instance v4, Lorg/telegram/ui/Cells/GroupCallUserCell$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/GroupCallUserCell$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Cells/GroupCallUserCell;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->updateVoiceRunnable:Ljava/lang/Runnable;

    .line 259
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->dividerPaint:Landroid/graphics/Paint;

    const-string v5, "voipgroup_actionBar"

    .line 260
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    new-instance v4, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v4}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v4, 0x0

    .line 263
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 265
    new-instance v5, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v6, 0x18

    .line 266
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 267
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v7, 0x3

    if-eqz v6, :cond_0

    const/4 v8, 0x5

    goto :goto_0

    :cond_0
    const/4 v8, 0x3

    :goto_0
    or-int/lit8 v11, v8, 0x30

    const/16 v8, 0xb

    if-eqz v6, :cond_1

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    const/16 v12, 0xb

    :goto_1
    const/4 v13, 0x6

    if-eqz v6, :cond_2

    const/16 v14, 0xb

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    const/4 v15, 0x0

    const/16 v9, 0x2e

    const/16 v10, 0x2e

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    new-instance v5, Lorg/telegram/ui/Cells/GroupCallUserCell$1;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Cells/GroupCallUserCell$1;-><init>(Lorg/telegram/ui/Cells/GroupCallUserCell;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v6, 0x1a

    .line 285
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 286
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 287
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/RadialProgressView;->setNoProgress(Z)V

    .line 288
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v9, 0x2e

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_3

    const/4 v12, 0x5

    goto :goto_3

    :cond_3
    const/4 v12, 0x3

    :goto_3
    or-int/lit8 v12, v12, 0x30

    if-eqz v11, :cond_4

    const/4 v13, 0x0

    goto :goto_4

    :cond_4
    const/16 v13, 0xb

    :goto_4
    const/4 v14, 0x6

    if-eqz v11, :cond_5

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    const/4 v15, 0x0

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v8

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v5, v4, v8, v4}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 291
    new-instance v5, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v8, "voipgroup_nameText"

    .line 292
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 293
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v8, "fonts/rmedium.ttf"

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 294
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 295
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v9, 0x6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setDrawablePadding(I)V

    .line 296
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_6

    const/4 v9, 0x5

    goto :goto_6

    :cond_6
    const/4 v9, 0x3

    :goto_6
    or-int/lit8 v9, v9, 0x30

    invoke-virtual {v5, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 297
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v9, -0x1

    const/16 v10, 0x14

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_7

    const/4 v12, 0x5

    goto :goto_7

    :cond_7
    const/4 v12, 0x3

    :goto_7
    or-int/lit8 v12, v12, 0x30

    const/16 v16, 0x36

    const/16 v17, 0x43

    if-eqz v11, :cond_8

    const/16 v13, 0x36

    goto :goto_8

    :cond_8
    const/16 v13, 0x43

    :goto_8
    const/16 v14, 0xa

    if-eqz v11, :cond_9

    const/16 v15, 0x43

    goto :goto_9

    :cond_9
    const/16 v15, 0x36

    :goto_9
    const/16 v18, 0x0

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v18

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    new-instance v5, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v10, 0x14

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    const/16 v11, 0x9

    invoke-direct {v5, v9, v10, v11}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;II)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 300
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v9, Lorg/telegram/messenger/R$drawable;->voice_volume_mini:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->speakingDrawable:Landroid/graphics/drawable/Drawable;

    .line 301
    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    const-string v10, "voipgroup_speakingText"

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v11, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v5, 0x0

    .line 303
    :goto_a
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    array-length v11, v9

    const/16 v12, 0xf

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-ge v5, v11, :cond_16

    .line 305
    new-instance v11, Lorg/telegram/ui/Cells/GroupCallUserCell$2;

    invoke-direct {v11, v0, v1, v5}, Lorg/telegram/ui/Cells/GroupCallUserCell$2;-><init>(Lorg/telegram/ui/Cells/GroupCallUserCell;Landroid/content/Context;I)V

    aput-object v11, v9, v5

    .line 349
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v5

    invoke-virtual {v9, v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 350
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v5

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_a

    const/4 v11, 0x5

    goto :goto_b

    :cond_a
    const/4 v11, 0x3

    :goto_b
    or-int/lit8 v11, v11, 0x30

    invoke-virtual {v9, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    const/4 v9, 0x4

    if-ne v5, v9, :cond_e

    .line 352
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v5

    invoke-virtual {v9, v14}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setBuildFullLayout(Z)V

    .line 353
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v5

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 354
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v5

    const/16 v18, -0x1

    const/16 v19, -0x2

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_b

    const/4 v12, 0x5

    goto :goto_c

    :cond_b
    const/4 v12, 0x3

    :goto_c
    or-int/lit8 v20, v12, 0x30

    if-eqz v11, :cond_c

    const/16 v21, 0x36

    goto :goto_d

    :cond_c
    const/16 v21, 0x43

    :goto_d
    const/16 v22, 0x20

    if-eqz v11, :cond_d

    const/16 v23, 0x43

    goto :goto_e

    :cond_d
    const/16 v23, 0x36

    :goto_e
    const/16 v24, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_13

    :cond_e
    const-string v9, "voipgroup_listeningText"

    if-nez v5, :cond_f

    .line 357
    iget-object v11, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v11, v11, v5

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v11, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 358
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v5

    sget v11, Lorg/telegram/messenger/R$string;->Listening:I

    const-string v12, "Listening"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_f

    :cond_f
    if-ne v5, v14, :cond_10

    .line 360
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v5

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 361
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v5

    sget v11, Lorg/telegram/messenger/R$string;->Speaking:I

    const-string v12, "Speaking"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 362
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v9, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setDrawablePadding(I)V

    goto :goto_f

    :cond_10
    if-ne v5, v13, :cond_11

    .line 364
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v5

    const-string v11, "voipgroup_mutedByAdminIcon"

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 365
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v5

    sget v11, Lorg/telegram/messenger/R$string;->VoipGroupMutedForMe:I

    const-string v12, "VoipGroupMutedForMe"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_f

    :cond_11
    if-ne v5, v7, :cond_12

    .line 367
    iget-object v11, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v11, v11, v5

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v11, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 368
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v5

    sget v11, Lorg/telegram/messenger/R$string;->WantsToSpeak:I

    const-string v12, "WantsToSpeak"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 370
    :cond_12
    :goto_f
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v5

    const/16 v18, -0x1

    const/16 v19, 0x14

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_13

    const/4 v12, 0x5

    goto :goto_10

    :cond_13
    const/4 v12, 0x3

    :goto_10
    or-int/lit8 v20, v12, 0x30

    if-eqz v11, :cond_14

    const/16 v21, 0x36

    goto :goto_11

    :cond_14
    const/16 v21, 0x43

    :goto_11
    const/16 v22, 0x20

    if-eqz v11, :cond_15

    const/16 v23, 0x43

    goto :goto_12

    :cond_15
    const/16 v23, 0x36

    :goto_12
    const/16 v24, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_13
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a

    .line 374
    :cond_16
    new-instance v5, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->fullAboutTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 375
    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setMaxLines(I)V

    .line 376
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->fullAboutTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5, v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 377
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->fullAboutTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 378
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->fullAboutTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->fullAboutTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v15, -0x1

    const/16 v16, 0x3c

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_17

    const/4 v5, 0x5

    goto :goto_14

    :cond_17
    const/4 v5, 0x3

    :goto_14
    or-int/lit8 v17, v5, 0x30

    const/16 v18, 0xe

    const/16 v19, 0x20

    const/16 v20, 0xe

    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    new-instance v3, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v5, Lorg/telegram/messenger/R$raw;->voice_outlined2:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v9, 0x22

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v18

    const/16 v11, 0x20

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v19

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object v15, v3

    move/from16 v16, v5

    invoke-direct/range {v15 .. v21}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 382
    new-instance v3, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v5, Lorg/telegram/messenger/R$raw;->hand_1:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v25

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v26

    const/16 v27, 0x1

    const/16 v28, 0x0

    move-object/from16 v22, v3

    move/from16 v23, v5

    invoke-direct/range {v22 .. v28}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->shakeHandDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 384
    new-instance v3, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    .line 385
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 386
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 387
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_18

    .line 388
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->grayIconColor:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const v3, 0x24ffffff

    and-int/2addr v1, v3

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 389
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->setRippleDrawableForceSoftware(Landroid/graphics/drawable/RippleDrawable;)V

    .line 390
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 392
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 393
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v15, 0x30

    const/16 v16, -0x1

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_19

    const/4 v2, 0x3

    :cond_19
    or-int/lit8 v17, v2, 0x10

    const/16 v18, 0x6

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Lorg/telegram/ui/Cells/GroupCallUserCell$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Cells/GroupCallUserCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/GroupCallUserCell;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    new-instance v1, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0x1d

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;-><init>(II)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    .line 398
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 400
    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/GroupCallUserCell;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/GroupCallUserCell;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/GroupCallUserCell;)[Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/GroupCallUserCell;)F
    .locals 0

    .line 57
    iget p0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->progressToAvatarPreview:F

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Cells/GroupCallUserCell;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/GroupCallUserCell;->applyStatus(I)V

    return-void
.end method

.method static synthetic access$502(Lorg/telegram/ui/Cells/GroupCallUserCell;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private applyParticipantChanges(ZZ)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 618
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v2, :cond_0

    return-void

    .line 621
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/GroupCallUserCell;->isSelfUser()Z

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->raise_hand_rating:J

    cmp-long v3, v8, v4

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 628
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v8, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastVoiceUpdateTime:J

    sub-long/2addr v2, v9

    const-wide/16 v9, 0x1f4

    cmp-long v11, v2, v9

    if-gez v11, :cond_3

    .line 629
    iget-boolean v2, v8, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->hasVoiceDelayed:Z

    goto :goto_2

    .line 635
    :cond_3
    iget-boolean v2, v8, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->hasVoice:Z

    :goto_2
    if-nez p2, :cond_7

    .line 638
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-wide v13, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastSpeakTime:J

    sub-long/2addr v11, v13

    cmp-long v3, v11, v9

    if-gez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 641
    :goto_3
    iget-boolean v8, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->isSpeaking:Z

    if-eqz v8, :cond_5

    if-eqz v3, :cond_5

    if-eqz v2, :cond_7

    .line 642
    :cond_5
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->isSpeaking:Z

    .line 643
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->updateRunnableScheduled:Z

    if-eqz v3, :cond_6

    .line 644
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->updateRunnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 645
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->updateRunnableScheduled:Z

    .line 647
    :cond_6
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->isSpeaking:Z

    if-eqz v3, :cond_7

    .line 648
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->updateRunnable:Ljava/lang/Runnable;

    sub-long/2addr v9, v11

    invoke-static {v3, v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 649
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->updateRunnableScheduled:Z

    .line 654
    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v3, v3, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    iget-object v8, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-eqz v3, :cond_8

    .line 656
    iput-object v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 663
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted_by_you:Z

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/GroupCallUserCell;->isSelfUser()Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x1

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    .line 665
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/GroupCallUserCell;->isSelfUser()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 666
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-boolean v8, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->isSpeaking:Z

    if-eqz v8, :cond_a

    if-nez v2, :cond_b

    :cond_a
    :goto_5
    const/4 v8, 0x1

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    goto :goto_6

    .line 668
    :cond_c
    iget-object v8, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    if-eqz v8, :cond_d

    iget-boolean v8, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->isSpeaking:Z

    if-eqz v8, :cond_a

    if-eqz v2, :cond_a

    :cond_d
    if-eqz v3, :cond_b

    goto :goto_5

    :goto_6
    if-eqz v8, :cond_e

    .line 670
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->can_self_unmute:Z

    .line 671
    :cond_e
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->about:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/2addr v9, v7

    .line 674
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentIconGray:Z

    .line 675
    iget-object v10, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->checkRaiseRunnable:Ljava/lang/Runnable;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 677
    iget-object v10, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-boolean v11, v10, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    const-string v13, "voipgroup_listeningText"

    const/4 v14, 0x2

    const/4 v15, 0x4

    if-eqz v11, :cond_f

    iget-boolean v11, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->isSpeaking:Z

    if-eqz v11, :cond_10

    :cond_f
    if-eqz v3, :cond_1c

    .line 678
    :cond_10
    iget-boolean v2, v10, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->can_self_unmute:Z

    if-eqz v2, :cond_13

    if-eqz v3, :cond_11

    goto :goto_8

    .line 693
    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->grayIconColor:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    .line 694
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentIconGray:Z

    if-eqz v9, :cond_12

    const/4 v3, 0x4

    goto :goto_7

    :cond_12
    const/4 v3, 0x0

    :goto_7
    move v4, v3

    move-object/from16 v18, v13

    goto/16 :goto_e

    :cond_13
    :goto_8
    if-nez v2, :cond_14

    .line 679
    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->raise_hand_rating:J

    cmp-long v2, v10, v4

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    goto :goto_9

    :cond_14
    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_19

    .line 680
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    .line 681
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    iget-object v11, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    move-object/from16 v18, v13

    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastRaiseHandDate:J

    sub-long v16, v16, v12

    cmp-long v11, v12, v4

    if-eqz v11, :cond_16

    const-wide/16 v4, 0x1388

    cmp-long v11, v16, v4

    if-lez v11, :cond_15

    goto :goto_a

    .line 686
    :cond_15
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->checkRaiseRunnable:Ljava/lang/Runnable;

    sub-long v4, v4, v16

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 v3, 0x3

    goto :goto_b

    :cond_16
    :goto_a
    if-eqz v3, :cond_17

    const/4 v3, 0x2

    goto :goto_b

    :cond_17
    if-eqz v9, :cond_18

    const/4 v3, 0x4

    goto :goto_b

    :cond_18
    const/4 v3, 0x0

    :goto_b
    move v4, v3

    move v3, v2

    move v2, v10

    goto :goto_f

    :cond_19
    move-object/from16 v18, v13

    const-string v4, "voipgroup_mutedByAdminIcon"

    .line 689
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    if-eqz v3, :cond_1a

    const/4 v3, 0x2

    goto :goto_c

    :cond_1a
    if-eqz v9, :cond_1b

    const/4 v3, 0x4

    goto :goto_c

    :cond_1b
    const/4 v3, 0x0

    :goto_c
    move/from16 v19, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v19

    goto :goto_f

    :cond_1c
    move-object/from16 v18, v13

    .line 698
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->isSpeaking:Z

    if-eqz v3, :cond_1d

    if-eqz v2, :cond_1d

    const-string v2, "voipgroup_speakingText"

    .line 699
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_f

    .line 702
    :cond_1d
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->grayIconColor:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    if-eqz v9, :cond_1e

    const/4 v3, 0x4

    goto :goto_d

    :cond_1e
    const/4 v3, 0x0

    .line 704
    :goto_d
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentIconGray:Z

    move v4, v3

    :goto_e
    const/4 v3, 0x0

    .line 708
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/GroupCallUserCell;->isSelfUser()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 709
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v15

    iget-object v10, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->grayIconColor:Ljava/lang/String;

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 712
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/GroupCallUserCell;->isSelfUser()Z

    move-result v5

    if-eqz v5, :cond_26

    if-nez v9, :cond_21

    .line 713
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->hasAvatar:Z

    if-nez v5, :cond_21

    .line 714
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_20

    .line 715
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v15

    sget v10, Lorg/telegram/messenger/R$string;->TapToAddPhotoOrBio:I

    const-string v11, "TapToAddPhotoOrBio"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_10

    .line 717
    :cond_20
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v15

    sget v10, Lorg/telegram/messenger/R$string;->TapToAddPhotoOrDescription:I

    const-string v11, "TapToAddPhotoOrDescription"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 719
    :goto_10
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v15

    iget-object v10, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->grayIconColor:Ljava/lang/String;

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto :goto_12

    :cond_21
    if-nez v9, :cond_23

    .line 721
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_22

    .line 722
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v15

    sget v10, Lorg/telegram/messenger/R$string;->TapToAddBio:I

    const-string v11, "TapToAddBio"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_11

    .line 724
    :cond_22
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v15

    sget v10, Lorg/telegram/messenger/R$string;->TapToAddDescription:I

    const-string v11, "TapToAddDescription"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 726
    :goto_11
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v15

    iget-object v10, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->grayIconColor:Ljava/lang/String;

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto :goto_12

    .line 727
    :cond_23
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->hasAvatar:Z

    if-nez v5, :cond_24

    .line 728
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v15

    sget v10, Lorg/telegram/messenger/R$string;->TapToAddPhoto:I

    const-string v11, "TapToAddPhoto"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 729
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v15

    iget-object v10, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->grayIconColor:Ljava/lang/String;

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto :goto_12

    .line 731
    :cond_24
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v15

    sget v10, Lorg/telegram/messenger/R$string;->ThisIsYou:I

    const-string v11, "ThisIsYou"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 732
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v15

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    :goto_12
    if-eqz v9, :cond_25

    .line 735
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->fullAboutTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->about:Ljava/lang/String;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 736
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->fullAboutTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v9, "voipgroup_mutedIcon"

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto :goto_13

    .line 738
    :cond_25
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->fullAboutTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 739
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->fullAboutTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextColor()I

    move-result v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto :goto_13

    :cond_26
    const-string v5, ""

    if-eqz v9, :cond_27

    .line 742
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v15

    iget-object v10, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->about:Ljava/lang/String;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 743
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->fullAboutTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v9, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_13

    .line 745
    :cond_27
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v15

    invoke-virtual {v9, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 746
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->fullAboutTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v9, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 749
    :goto_13
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_29

    .line 750
    iget v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentStatus:I

    if-ne v4, v9, :cond_28

    iget v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->lastMuteColor:I

    if-eq v9, v2, :cond_29

    :cond_28
    const/4 v9, 0x1

    goto :goto_14

    :cond_29
    const/4 v9, 0x0

    :goto_14
    const/4 v10, 0x0

    if-eqz v1, :cond_2a

    if-eqz v9, :cond_2b

    :cond_2a
    if-eqz v5, :cond_2b

    .line 756
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 757
    iput-object v10, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_2b
    if-eqz v1, :cond_2c

    .line 760
    iget v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->lastMuteColor:I

    if-ne v5, v2, :cond_2c

    if-eqz v9, :cond_2e

    :cond_2c
    if-eqz v1, :cond_2d

    .line 762
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 763
    iget v11, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->lastMuteColor:I

    .line 764
    iput v2, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->lastMuteColor:I

    new-array v12, v14, [F

    .line 765
    fill-array-data v12, :array_0

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 766
    new-instance v13, Lorg/telegram/ui/Cells/GroupCallUserCell$$ExternalSyntheticLambda0;

    invoke-direct {v13, v0, v11, v2}, Lorg/telegram/ui/Cells/GroupCallUserCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/GroupCallUserCell;II)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 772
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 774
    :cond_2d
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v11, Landroid/graphics/PorterDuffColorFilter;

    iput v2, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->lastMuteColor:I

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v2, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 775
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v11, 0x24ffffff

    and-int/2addr v2, v11

    invoke-static {v5, v2, v7}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    :cond_2e
    move-object v5, v10

    :goto_15
    if-ne v4, v7, :cond_31

    .line 779
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->getParticipantVolume(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;)I

    move-result v2

    .line 780
    div-int/lit8 v11, v2, 0x64

    const/16 v12, 0x64

    if-eq v11, v12, :cond_30

    .line 782
    iget-object v13, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v13, v13, v7

    iget-object v14, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->speakingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 783
    iget-object v13, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v13, v13, v7

    sget v14, Lorg/telegram/messenger/R$string;->SpeakingWithVolume:I

    new-array v15, v7, [Ljava/lang/Object;

    if-ge v2, v12, :cond_2f

    const/4 v11, 0x1

    :cond_2f
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v15, v6

    const-string v2, "SpeakingWithVolume"

    invoke-static {v2, v14, v15}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_16

    .line 785
    :cond_30
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v7

    invoke-virtual {v2, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 786
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v7

    sget v11, Lorg/telegram/messenger/R$string;->Speaking:I

    const-string v12, "Speaking"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 789
    :cond_31
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/GroupCallUserCell;->isSelfUser()Z

    move-result v2

    const/4 v11, 0x0

    if-eqz v2, :cond_32

    const/4 v2, 0x4

    .line 790
    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/GroupCallUserCell;->applyStatus(I)V

    goto/16 :goto_1e

    :cond_32
    if-eqz v1, :cond_33

    .line 791
    iget v2, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentStatus:I

    if-ne v4, v2, :cond_33

    if-eqz v9, :cond_3d

    :cond_33
    if-eqz v1, :cond_3b

    if-nez v5, :cond_34

    .line 794
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_34
    const/4 v9, -0x2

    if-nez v4, :cond_37

    const/4 v12, 0x0

    .line 800
    :goto_17
    iget-object v13, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    array-length v14, v13

    if-ge v12, v14, :cond_3c

    .line 801
    aget-object v13, v13, v12

    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v15, v7, [F

    if-ne v12, v4, :cond_35

    const/4 v2, 0x0

    goto :goto_18

    :cond_35
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    :goto_18
    aput v2, v15, v6

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v12

    sget-object v13, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v14, v7, [F

    if-ne v12, v4, :cond_36

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_19

    :cond_36
    const/4 v15, 0x0

    :goto_19
    aput v15, v14, v6

    invoke-static {v2, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_17

    :cond_37
    const/4 v2, 0x0

    .line 805
    :goto_1a
    iget-object v12, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    array-length v13, v12

    if-ge v2, v13, :cond_3c

    .line 806
    aget-object v12, v12, v2

    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v14, v7, [F

    if-ne v2, v4, :cond_38

    const/4 v15, 0x0

    goto :goto_1c

    :cond_38
    if-nez v2, :cond_39

    const/4 v15, 0x2

    goto :goto_1b

    :cond_39
    const/4 v15, -0x2

    :goto_1b
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    :goto_1c
    aput v15, v14, v6

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    iget-object v12, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    sget-object v13, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v14, v7, [F

    if-ne v2, v4, :cond_3a

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_1d

    :cond_3a
    const/4 v15, 0x0

    :goto_1d
    aput v15, v14, v6

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 811
    :cond_3b
    invoke-direct {v0, v4}, Lorg/telegram/ui/Cells/GroupCallUserCell;->applyStatus(I)V

    .line 813
    :cond_3c
    iput v4, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentStatus:I

    .line 815
    :cond_3d
    :goto_1e
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    invoke-virtual {v2, v4, v1}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setMuted(IZ)V

    if-eqz v5, :cond_3f

    .line 817
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_3e

    .line 818
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 819
    iput-object v10, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->animatorSet:Landroid/animation/AnimatorSet;

    .line 821
    :cond_3e
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->animatorSet:Landroid/animation/AnimatorSet;

    .line 822
    new-instance v9, Lorg/telegram/ui/Cells/GroupCallUserCell$4;

    invoke-direct {v9, v0, v4}, Lorg/telegram/ui/Cells/GroupCallUserCell$4;-><init>(Lorg/telegram/ui/Cells/GroupCallUserCell;I)V

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 831
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 832
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v12, 0xb4

    invoke-virtual {v2, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 833
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :cond_3f
    if-eqz v1, :cond_40

    .line 836
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->lastMuted:Z

    if-ne v2, v8, :cond_40

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->lastRaisedHand:Z

    if-eq v2, v3, :cond_4a

    :cond_40
    const/16 v2, 0x15

    if-eqz v3, :cond_42

    .line 839
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v9, 0x54

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    move-result v5

    if-eqz v1, :cond_41

    .line 841
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v10, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->raiseHandCallback:Ljava/lang/Runnable;

    const/16 v12, 0x53

    invoke-virtual {v9, v10, v12}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnFinishCallback(Ljava/lang/Runnable;I)V

    goto :goto_20

    .line 843
    :cond_41
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v9, v10, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnFinishCallback(Ljava/lang/Runnable;I)V

    goto :goto_20

    .line 846
    :cond_42
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 847
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v5, v10, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnFinishCallback(Ljava/lang/Runnable;I)V

    if-eqz v8, :cond_43

    .line 848
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->lastRaisedHand:Z

    if-eqz v5, :cond_43

    .line 849
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    move-result v5

    goto :goto_20

    .line 851
    :cond_43
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v8, :cond_44

    const/16 v9, 0x40

    goto :goto_1f

    :cond_44
    const/16 v9, 0x2a

    :goto_1f
    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    move-result v5

    :goto_20
    if-eqz v1, :cond_49

    if-eqz v5, :cond_48

    const/4 v1, 0x3

    if-ne v4, v1, :cond_45

    .line 857
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_21

    :cond_45
    if-eqz v8, :cond_46

    .line 859
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->lastRaisedHand:Z

    if-eqz v1, :cond_46

    if-nez v3, :cond_46

    .line 860
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_21

    :cond_46
    if-eqz v8, :cond_47

    .line 862
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_21

    .line 864
    :cond_47
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 868
    :cond_48
    :goto_21
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_22

    .line 870
    :cond_49
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getCustomEndFrame()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-virtual {v1, v2, v6, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 871
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 873
    :goto_22
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->lastMuted:Z

    .line 874
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->lastRaisedHand:Z

    .line 876
    :cond_4a
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->isSpeaking:Z

    if-nez v1, :cond_4b

    .line 877
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setAmplitude(D)V

    .line 879
    :cond_4b
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->isSpeaking:Z

    if-eqz v2, :cond_4c

    iget v2, v0, Lorg/telegram/ui/Cells/GroupCallUserCell;->progressToAvatarPreview:F

    cmpl-float v2, v2, v11

    if-nez v2, :cond_4c

    const/4 v6, 0x1

    :cond_4c
    invoke-virtual {v1, v6, v0}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private applyStatus(I)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_2

    .line 884
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    array-length v5, v4

    if-ge v2, v5, :cond_6

    .line 886
    aget-object v4, v4, v2

    if-ne v2, p1, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 887
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v2

    if-ne v2, p1, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 890
    :cond_2
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    array-length v5, v4

    if-ge v2, v5, :cond_6

    .line 892
    aget-object v4, v4, v2

    if-ne v2, p1, :cond_3

    const/4 v5, 0x0

    goto :goto_5

    :cond_3
    if-nez v2, :cond_4

    const/4 v5, 0x2

    goto :goto_4

    :cond_4
    const/4 v5, -0x2

    :goto_4
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 893
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v2

    if-ne v2, p1, :cond_5

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_5
    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private synthetic lambda$applyParticipantChanges$6(IILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 767
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 768
    invoke-static {p1, p2, p3, v0}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    .line 769
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 770
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const p3, 0x24ffffff

    and-int/2addr p1, p3

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->shakeHandDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnFinishCallback(Ljava/lang/Runnable;I)V

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnFinishCallback(Ljava/lang/Runnable;I)V

    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 6

    .line 102
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    const/16 v1, 0x21c

    const/16 v2, 0x1a4

    const/16 v3, 0xf0

    const/16 v4, 0x78

    const/16 v5, 0x20

    if-ge v0, v5, :cond_0

    const/4 v1, 0x0

    const/16 v1, 0x78

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v5, 0x40

    if-ge v0, v5, :cond_1

    const/16 v1, 0xf0

    const/16 v2, 0x78

    goto :goto_0

    :cond_1
    const/16 v4, 0x61

    if-ge v0, v4, :cond_2

    const/16 v1, 0x1a4

    const/16 v2, 0xf0

    goto :goto_0

    :cond_2
    const/16 v3, 0x62

    if-ne v0, v3, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x2d0

    const/16 v1, 0x2d0

    const/16 v2, 0x21c

    .line 121
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->shakeHandDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->shakeHandDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->shakeHandCallback:Ljava/lang/Runnable;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnFinishCallback(Ljava/lang/Runnable;I)V

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->shakeHandDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->shakeHandDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    const/4 v0, 0x1

    .line 130
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Cells/GroupCallUserCell;->applyParticipantChanges(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 4

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->isSpeaking:Z

    const/4 v1, 0x1

    .line 134
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Cells/GroupCallUserCell;->applyParticipantChanges(ZZ)V

    .line 135
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setAmplitude(D)V

    .line 136
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->updateRunnableScheduled:Z

    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 1

    const/4 v0, 0x1

    .line 139
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Cells/GroupCallUserCell;->applyParticipantChanges(ZZ)V

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->updateVoiceRunnableScheduled:Z

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 0

    .line 394
    invoke-virtual {p0, p0}, Lorg/telegram/ui/Cells/GroupCallUserCell;->onMuteClick(Lorg/telegram/ui/Cells/GroupCallUserCell;)V

    return-void
.end method


# virtual methods
.method public applyParticipantChanges(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 583
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Cells/GroupCallUserCell;->applyParticipantChanges(ZZ)V

    return-void
.end method

.method public clickMuteButton()Z
    .locals 1

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->callOnClick()Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 905
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->needDivider:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 906
    iget v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->progressToAvatarPreview:F

    const/high16 v2, 0x437f0000    # 255.0f

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v1

    if-eqz v4, :cond_0

    .line 907
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->dividerPaint:Landroid/graphics/Paint;

    sub-float/2addr v3, v0

    mul-float v3, v3, v2

    float-to-int v0, v3

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 909
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->dividerPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getFullAlpha()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float v3, v3, v2

    float-to-int v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 911
    :goto_0
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v2, 0x44

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    move v4, v0

    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    sub-int/2addr v0, v2

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v7, v0

    iget-object v8, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->dividerPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 913
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 914
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 916
    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->update()V

    .line 917
    iget v3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->progressToAvatarPreview:F

    cmpl-float v1, v3, v1

    if-nez v1, :cond_4

    .line 918
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {v1, p1, v0, v2, p0}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->draw(Landroid/graphics/Canvas;FFLandroid/view/View;)V

    .line 921
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->getAvatarScale()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 922
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->getAvatarScale()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 924
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->getAvatarScale()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 925
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->getAvatarScale()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 927
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    .line 1078
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method public getAvatarWavesDrawable()Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    return-object v0
.end method

.method public getClipHeight()I
    .locals 3

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->fullAboutTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->hasAvatar:Z

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->fullAboutTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 414
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 416
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v1

    .line 417
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 419
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .line 451
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getParticipant()Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;
    .locals 1

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    return-object v0
.end method

.method public getPeerId()J
    .locals 2

    .line 1091
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1094
    :cond_0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAvatarSet()Z
    .locals 1

    .line 455
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHandRaised()Z
    .locals 1

    .line 447
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->lastRaisedHand:Z

    return v0
.end method

.method public isSelfUser()Z
    .locals 7

    .line 439
    iget-wide v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->selfId:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    .line 440
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_0

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v6, v4, v0

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 442
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_2

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v0, v0

    cmp-long v6, v4, v0

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 543
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 544
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/GroupCallUserCell;->applyParticipantChanges(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 424
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 425
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->updateRunnableScheduled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->updateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 427
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->updateRunnableScheduled:Z

    .line 429
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->updateVoiceRunnableScheduled:Z

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->updateVoiceRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 431
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->updateVoiceRunnableScheduled:Z

    .line 433
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 434
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 1084
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1085
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-eqz v0, :cond_1

    .line 1086
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    if-eqz v3, :cond_0

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->can_self_unmute:Z

    if-nez v2, :cond_0

    sget v2, Lorg/telegram/messenger/R$string;->VoipUnmute:I

    const-string v3, "VoipUnmute"

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->VoipMute:I

    const-string v3, "VoipMute"

    :goto_0
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 579
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x3a

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onMuteClick(Lorg/telegram/ui/Cells/GroupCallUserCell;)V
    .locals 0

    return-void
.end method

.method public setAboutVisible(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    .line 610
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 612
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setFullAlpha(F)V

    .line 614
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setAboutVisibleProgress(IF)V
    .locals 1

    .line 600
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x4

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 603
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setFullAlpha(F)V

    .line 604
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v0

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setFullLayoutAdditionalWidth(II)V

    .line 605
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setAmplitude(D)V
    .locals 4

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    cmpl-double v2, p1, v0

    if-lez v2, :cond_2

    .line 553
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->updateRunnableScheduled:Z

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->updateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 556
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->isSpeaking:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 557
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->isSpeaking:Z

    .line 558
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/GroupCallUserCell;->applyParticipantChanges(Z)V

    .line 560
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setAmplitude(D)V

    .line 562
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->updateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 563
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->updateRunnableScheduled:Z

    goto :goto_0

    .line 565
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setAmplitude(D)V

    :goto_0
    return-void
.end method

.method public setData(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;Lorg/telegram/messenger/ChatObject$Call;JLorg/telegram/tgnet/TLRPC$FileLocation;Z)V
    .locals 6

    .line 459
    iput-object p3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentCall:Lorg/telegram/messenger/ChatObject$Call;

    .line 460
    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    .line 461
    iput-wide p4, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->selfId:J

    .line 463
    iput-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 465
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide p2

    const/4 p4, 0x0

    const-string p5, "50_50"

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-lez v4, :cond_8

    .line 467
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 468
    iput-object v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 469
    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 471
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {p3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 473
    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getForkCommonController()Lorg/fork/controller/ForkCommonController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled()Z

    move-result p2

    .line 474
    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getForkCommonController()Lorg/fork/controller/ForkCommonController;

    move-result-object p3

    invoke-virtual {p3}, Lorg/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result p3

    .line 476
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz v3, :cond_1

    .line 477
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_0

    new-instance p3, Lorg/telegram/ui/Cells/GroupCallUserCell$VerifiedDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p3, v2}, Lorg/telegram/ui/Cells/GroupCallUserCell$VerifiedDrawable;-><init>(Landroid/content/Context;)V

    :cond_0
    iput-object p3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3, p7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_0

    :cond_1
    if-eqz p3, :cond_2

    if-eqz v2, :cond_2

    .line 478
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    if-eqz v4, :cond_2

    .line 479
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    iget-wide v2, v3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->document_id:J

    invoke-virtual {p2, v2, v3, p7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    if-eqz v2, :cond_3

    .line 480
    iget-object p3, v2, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v2, p3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    if-eqz v2, :cond_3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    iget p3, p3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;->until:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v3, v2

    if-le p3, v3, :cond_3

    .line 481
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    iget-wide v2, p3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;->document_id:J

    invoke-virtual {p2, v2, v3, p7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    .line 482
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p2, :cond_5

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    if-eqz p2, :cond_5

    .line 483
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->premiumDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_4

    .line 484
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$drawable;->msg_premium_liststar:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->premiumDrawable:Landroid/graphics/drawable/Drawable;

    .line 485
    new-instance p2, Lorg/telegram/ui/Cells/GroupCallUserCell$3;

    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->premiumDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xe

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-direct {p2, p0, p3, v3, v2}, Lorg/telegram/ui/Cells/GroupCallUserCell$3;-><init>(Lorg/telegram/ui/Cells/GroupCallUserCell;Landroid/graphics/drawable/Drawable;II)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->premiumDrawable:Landroid/graphics/drawable/Drawable;

    .line 495
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->premiumDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3, p7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 497
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p2, v1, p7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 499
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const-string p3, "premiumGradient1"

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 500
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 501
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    if-eqz p6, :cond_6

    .line 503
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->hasAvatar:Z

    .line 504
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p6}, Lorg/telegram/messenger/ImageLocation;->getForLocal(Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, p2, p5, p3, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 506
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    if-eqz p1, :cond_7

    const/4 p4, 0x1

    .line 507
    :cond_7
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->hasAvatar:Z

    .line 508
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object p4, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p2, p1, p5, p3, p4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 511
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long p2, p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 512
    iput-object v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 513
    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 515
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_d

    .line 516
    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 517
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    if-eqz p2, :cond_a

    .line 518
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_9

    new-instance p3, Lorg/telegram/ui/Cells/GroupCallUserCell$VerifiedDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p3, v2}, Lorg/telegram/ui/Cells/GroupCallUserCell$VerifiedDrawable;-><init>(Landroid/content/Context;)V

    :cond_9
    iput-object p3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3, p7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1

    .line 520
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->rightDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p2, v1, p7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 522
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    if-eqz p6, :cond_b

    .line 524
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->hasAvatar:Z

    .line 525
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p6}, Lorg/telegram/messenger/ImageLocation;->getForLocal(Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, p2, p5, p3, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_2

    .line 527
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageLocation;->getForChat(Lorg/telegram/tgnet/TLRPC$Chat;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    if-eqz p1, :cond_c

    const/4 p4, 0x1

    .line 528
    :cond_c
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->hasAvatar:Z

    .line 529
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object p4, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p2, p1, p5, p3, p4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 533
    :cond_d
    :goto_2
    invoke-virtual {p0, p7}, Lorg/telegram/ui/Cells/GroupCallUserCell;->applyParticipantChanges(Z)V

    return-void
.end method

.method public setDrawAvatar(Z)V
    .locals 2

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    :cond_0
    return-void
.end method

.method public setDrawDivider(Z)V
    .locals 0

    .line 537
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->needDivider:Z

    .line 538
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setGrayIconColor(Ljava/lang/String;I)V
    .locals 2

    .line 587
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->grayIconColor:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 588
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentIconGray:Z

    if-eqz v0, :cond_0

    .line 589
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->lastMuteColor:I

    .line 591
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->grayIconColor:Ljava/lang/String;

    .line 593
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->currentIconGray:Z

    if-eqz p1, :cond_2

    .line 594
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 595
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v0, 0x24ffffff

    and-int/2addr p2, v0

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    :cond_2
    return-void
.end method

.method public setProgressToAvatarPreview(F)V
    .locals 10

    .line 154
    iput p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->progressToAvatarPreview:F

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v2, 0x35

    if-eqz v1, :cond_0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    :goto_0
    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 157
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/GroupCallUserCell;->isSelfUser()Z

    move-result v0

    const/4 v1, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    cmpl-float v0, p1, v5

    if-lez v0, :cond_3

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->fullAboutTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    neg-int v7, v7

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    :goto_1
    int-to-float v7, v7

    sub-float v8, v3, p1

    mul-float v7, v7, v8

    invoke-virtual {v0, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->fullAboutTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->fullAboutTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v4

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    neg-int v2, v2

    :goto_2
    int-to-float v2, v2

    mul-float v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_7

    .line 164
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->fullAboutTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 166
    :goto_3
    iget-object v7, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    array-length v8, v7

    if-ge v0, v8, :cond_7

    .line 167
    aget-object v7, v7, v4

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLineCount()I

    move-result v7

    if-le v7, v1, :cond_5

    .line 168
    iget-object v7, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v0

    const/16 v8, 0x5c

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_4

    const/16 v9, 0x30

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    goto :goto_4

    :cond_4
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    :goto_4
    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setFullLayoutAdditionalWidth(II)V

    .line 169
    iget-object v7, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v0

    invoke-virtual {v7, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setFullAlpha(F)V

    .line 170
    iget-object v7, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 171
    iget-object v7, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    goto :goto_6

    .line 173
    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v0

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    goto :goto_5

    :cond_6
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    neg-int v8, v8

    :goto_5
    int-to-float v8, v8

    mul-float v8, v8, p1

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 174
    iget-object v7, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->statusTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v6, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setFullLayoutAdditionalWidth(II)V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 179
    :cond_7
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    cmpl-float v2, p1, v5

    if-nez v2, :cond_8

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_8
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    iget-boolean v4, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->isSpeaking:Z

    if-eqz v4, :cond_9

    if-nez v2, :cond_9

    goto :goto_8

    :cond_9
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0, v1, p0}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    sub-float/2addr v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 184
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    const v0, 0x3f19999a    # 0.6f

    const v1, 0x3ecccccd    # 0.4f

    mul-float v3, v3, v1

    add-float/2addr v3, v0

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 185
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 187
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setUploadProgress(FZ)V
    .locals 2

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgress(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 197
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    :goto_0
    return-void
.end method
