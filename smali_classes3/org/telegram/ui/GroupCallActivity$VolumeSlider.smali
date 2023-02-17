.class Lorg/telegram/ui/GroupCallActivity$VolumeSlider;
.super Landroid/widget/FrameLayout;
.source "GroupCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeSlider"
.end annotation


# instance fields
.field private captured:Z

.field private colorChangeProgress:F

.field private currentColor:I

.field private currentParticipant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

.field private currentProgress:D

.field private dragging:Z

.field private imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private lastUpdateTime:J

.field private oldColor:I

.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private radii:[F

.field private rect:Landroid/graphics/RectF;

.field private speakerDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private sx:F

.field private sy:F

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;

.field private thumbX:I

.field private volumeAlphas:[F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/GroupCallActivity;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    .line 660
    iput-object v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->this$0:Lorg/telegram/ui/GroupCallActivity;

    .line 661
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 648
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->paint:Landroid/graphics/Paint;

    .line 649
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->paint2:Landroid/graphics/Paint;

    .line 650
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->path:Landroid/graphics/Path;

    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 651
    iput-object v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->radii:[F

    .line 652
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->rect:Landroid/graphics/RectF;

    const/4 v2, 0x3

    new-array v4, v2, [F

    .line 657
    iput-object v4, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->volumeAlphas:[F

    const/4 v4, 0x0

    .line 662
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    move-object/from16 v5, p3

    .line 663
    iput-object v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentParticipant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 664
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/ChatObject;->getParticipantVolume(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x469c4000    # 20000.0f

    div-float/2addr v5, v6

    float-to-double v5, v5

    iput-wide v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentProgress:D

    const/high16 v5, 0x3f800000    # 1.0f

    .line 665
    iput v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->colorChangeProgress:F

    const/16 v6, 0xc

    .line 667
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v0, v7, v4, v6, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 669
    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v9, Lorg/telegram/messenger/R$raw;->speaker:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v7, 0x18

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v6, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->speakerDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 671
    new-instance v6, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 672
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 673
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->speakerDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 674
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-wide v7, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentProgress:D

    const-wide/16 v9, 0x0

    cmpl-double v11, v7, v9

    if-nez v11, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 675
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v11, -0x2

    const/16 v12, 0x28

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v8, 0x5

    if-eqz v7, :cond_1

    const/4 v7, 0x5

    goto :goto_1

    :cond_1
    const/4 v7, 0x3

    :goto_1
    or-int/lit8 v13, v7, 0x10

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->speakerDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v11, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentProgress:D

    cmpl-double v7, v11, v9

    if-nez v7, :cond_2

    const/16 v7, 0x11

    goto :goto_2

    :cond_2
    const/16 v7, 0x22

    :goto_2
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 678
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->speakerDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RLottieDrawable;->getCustomEndFrame()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v6, v7, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 680
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->textView:Landroid/widget/TextView;

    .line 681
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 682
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 683
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 684
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->textView:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 685
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->textView:Landroid/widget/TextView;

    const-string v6, "voipgroup_actionBarItems"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 686
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->textView:Landroid/widget/TextView;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v1, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 687
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentParticipant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->getParticipantVolume(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;)I

    move-result v1

    int-to-double v6, v1

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v11

    .line 688
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->textView:Landroid/widget/TextView;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v14, v3, [Ljava/lang/Object;

    cmpl-double v15, v6, v9

    if-lez v15, :cond_3

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    :cond_3
    double-to-int v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v14, v4

    const-string v6, "%d%%"

    invoke-static {v13, v6, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->textView:Landroid/widget/TextView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v7, 0x2b

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    :goto_3
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v1, v6, v4, v7, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 690
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->textView:Landroid/widget/TextView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_6

    const/4 v2, 0x5

    :cond_6
    or-int/lit8 v2, v2, 0x10

    const/4 v6, -0x2

    invoke-static {v6, v6, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 692
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->paint2:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 693
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->paint2:Landroid/graphics/Paint;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 694
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->paint2:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 695
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->paint2:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 697
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentParticipant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->getParticipantVolume(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;)I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v11

    double-to-int v1, v1

    const/4 v2, 0x0

    .line 698
    :goto_5
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->volumeAlphas:[F

    array-length v7, v6

    if-ge v2, v7, :cond_a

    if-nez v2, :cond_7

    const/4 v7, 0x0

    goto :goto_6

    :cond_7
    if-ne v2, v3, :cond_8

    const/16 v7, 0x32

    goto :goto_6

    :cond_8
    const/16 v7, 0x96

    :goto_6
    if-le v1, v7, :cond_9

    .line 708
    aput v5, v6, v2

    goto :goto_7

    :cond_9
    const/4 v7, 0x0

    .line 710
    aput v7, v6, v2

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    return-void
.end method

.method private onSeekBarDrag(DZ)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 797
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 800
    :cond_0
    iput-wide v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentProgress:D

    .line 801
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentParticipant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    const-wide v4, 0x40d3880000000000L    # 20000.0

    mul-double v1, v1, v4

    double-to-int v1, v1

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->volume:I

    const/4 v1, 0x0

    .line 802
    iput-boolean v1, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->volume_by_admin:Z

    .line 803
    iget v2, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    .line 804
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->getParticipantVolume(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    .line 805
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->textView:Landroid/widget/TextView;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const-wide/16 v8, 0x0

    cmpl-double v10, v2, v8

    if-lez v10, :cond_1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v2, v8

    :goto_0
    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const-string v2, "%d%%"

    invoke-static {v5, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentParticipant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->volume:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/voip/VoIPService;->setParticipantVolume(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;I)V

    const/4 v2, 0x0

    if-eqz p3, :cond_6

    .line 808
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentParticipant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    const-wide/16 v10, 0x0

    cmp-long v5, v3, v10

    if-lez v5, :cond_2

    .line 811
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    goto :goto_1

    .line 813
    :cond_2
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    neg-long v10, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    :goto_1
    move-object v11, v5

    .line 815
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentParticipant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->volume:I

    if-nez v5, :cond_5

    .line 816
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 817
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 818
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5, v2}, Lorg/telegram/ui/GroupCallActivity;->access$802(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 820
    :cond_3
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5, v6}, Lorg/telegram/ui/GroupCallActivity;->access$900(Lorg/telegram/ui/GroupCallActivity;Z)V

    .line 821
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentParticipant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-object v10, v5, Lorg/telegram/ui/GroupCallActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    const/4 v10, 0x5

    :goto_2
    invoke-static {v5, v7, v3, v4, v10}, Lorg/telegram/ui/GroupCallActivity;->access$1000(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;JI)V

    goto :goto_3

    .line 823
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentParticipant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->volume:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/messenger/voip/VoIPService;->editCallMember(Lorg/telegram/tgnet/TLObject;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    .line 826
    :cond_6
    :goto_3
    iget-wide v3, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentProgress:D

    cmpl-double v5, v3, v8

    if-nez v5, :cond_7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 827
    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_8

    if-nez v2, :cond_9

    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c

    if-nez v2, :cond_c

    .line 828
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->speakerDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v4, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentProgress:D

    const/16 v6, 0x11

    cmpl-double v7, v4, v8

    if-nez v7, :cond_a

    const/16 v4, 0x11

    goto :goto_4

    :cond_a
    const/16 v4, 0x22

    :goto_4
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 829
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->speakerDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v4, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentProgress:D

    cmpl-double v7, v4, v8

    if-nez v7, :cond_b

    goto :goto_5

    :cond_b
    const/16 v1, 0x11

    :goto_5
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 830
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->speakerDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 831
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_c
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    .line 837
    iget v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentColor:I

    .line 838
    iget-wide v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentProgress:D

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    const v2, -0x33a8a9

    .line 839
    iput v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentColor:I

    goto :goto_0

    :cond_0
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v8, v2, v4

    if-lez v8, :cond_1

    cmpg-double v4, v2, v6

    if-gez v4, :cond_1

    const v2, -0x365ac5

    .line 841
    iput v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentColor:I

    goto :goto_0

    :cond_1
    cmpl-double v4, v2, v6

    if-ltz v4, :cond_2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_2

    const v2, -0xa84395

    .line 843
    iput v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentColor:I

    goto :goto_0

    :cond_2
    const v2, -0xb25921

    .line 845
    iput v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentColor:I

    :goto_0
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_3

    .line 849
    iget v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentColor:I

    .line 850
    iput v3, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->colorChangeProgress:F

    goto :goto_1

    .line 852
    :cond_3
    iget v4, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->oldColor:I

    iget v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->colorChangeProgress:F

    invoke-static {v4, v1, v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v4

    .line 853
    iget v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentColor:I

    if-eq v1, v5, :cond_4

    .line 854
    iput v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->colorChangeProgress:F

    .line 855
    iput v4, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->oldColor:I

    :cond_4
    move v1, v4

    .line 858
    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 859
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 860
    iget-wide v6, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->lastUpdateTime:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x11

    cmp-long v1, v6, v8

    if-lez v1, :cond_5

    move-wide v6, v8

    .line 864
    :cond_5
    iput-wide v4, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->lastUpdateTime:J

    .line 865
    iget v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->colorChangeProgress:F

    cmpg-float v4, v1, v3

    if-gez v4, :cond_7

    long-to-float v4, v6

    const/high16 v5, 0x43480000    # 200.0f

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 866
    iput v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->colorChangeProgress:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_6

    .line 868
    iput v3, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->colorChangeProgress:F

    goto :goto_2

    .line 870
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 873
    :cond_7
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 874
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->radii:[F

    const/4 v4, 0x7

    const/4 v5, 0x6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v1, v4

    aput v8, v1, v5

    const/4 v4, 0x1

    aput v8, v1, v4

    const/4 v9, 0x0

    aput v8, v1, v9

    .line 875
    iget v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    const/16 v8, 0xc

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    if-ge v1, v8, :cond_8

    iget v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v1, v8

    int-to-float v1, v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v1, v8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_3

    :cond_8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 876
    :goto_3
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->radii:[F

    const/4 v10, 0x3

    const/4 v11, 0x4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v1

    const/4 v1, 0x5

    aput v12, v8, v1

    aput v12, v8, v11

    aput v12, v8, v10

    const/4 v10, 0x2

    aput v12, v8, v10

    .line 877
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->rect:Landroid/graphics/RectF;

    iget v11, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v8, v2, v2, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 878
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->path:Landroid/graphics/Path;

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->rect:Landroid/graphics/RectF;

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->radii:[F

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v11, v12, v13}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 879
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->path:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 880
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->path:Landroid/graphics/Path;

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->paint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    invoke-virtual {v15, v8, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 882
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentParticipant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->getParticipantVolume(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;)I

    move-result v8

    int-to-double v11, v8

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    div-double/2addr v11, v13

    double-to-int v8, v11

    .line 883
    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getLeft()I

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v12

    div-int/2addr v12, v10

    add-int/2addr v11, v12

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v11, v1

    .line 884
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v12

    div-int/2addr v12, v10

    add-int/2addr v1, v12

    const/4 v14, 0x0

    .line 885
    :goto_4
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->volumeAlphas:[F

    array-length v12, v12

    if-ge v14, v12, :cond_10

    if-nez v14, :cond_9

    .line 889
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    const/4 v13, 0x0

    goto :goto_5

    :cond_9
    if-ne v14, v4, :cond_a

    const/16 v12, 0x32

    const/16 v13, 0xa

    .line 892
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    move v12, v13

    const/16 v13, 0x32

    goto :goto_5

    :cond_a
    const/16 v12, 0x96

    const/16 v13, 0xe

    .line 895
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    move v12, v13

    const/16 v13, 0x96

    .line 897
    :goto_5
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->volumeAlphas:[F

    aget v16, v5, v14

    sub-float v16, v3, v16

    mul-float v4, v4, v16

    .line 898
    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->paint2:Landroid/graphics/Paint;

    const/high16 v16, 0x437f0000    # 255.0f

    aget v5, v5, v14

    mul-float v5, v5, v16

    float-to-int v5, v5

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 899
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->rect:Landroid/graphics/RectF;

    int-to-float v9, v11

    sub-float v16, v9, v12

    add-float v10, v16, v4

    int-to-float v2, v1

    sub-float v16, v2, v12

    add-float v3, v16, v4

    add-float/2addr v9, v12

    sub-float/2addr v9, v4

    add-float/2addr v2, v12

    sub-float/2addr v2, v4

    invoke-virtual {v5, v10, v3, v9, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 900
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->rect:Landroid/graphics/RectF;

    const/high16 v3, -0x3db80000    # -50.0f

    const/high16 v4, 0x42c80000    # 100.0f

    const/16 v16, 0x0

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->paint2:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move v9, v13

    move-object v13, v2

    move v2, v14

    move v14, v3

    move v15, v4

    move-object/from16 v17, v5

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v3, 0x43340000    # 180.0f

    if-le v8, v9, :cond_d

    .line 902
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->volumeAlphas:[F

    aget v5, v4, v2

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v9

    if-gez v5, :cond_c

    .line 903
    aget v5, v4, v2

    long-to-float v10, v6

    div-float/2addr v10, v3

    add-float/2addr v5, v10

    aput v5, v4, v2

    .line 904
    aget v3, v4, v2

    cmpl-float v3, v3, v9

    if-lez v3, :cond_b

    .line 905
    aput v9, v4, v2

    .line 907
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_c
    const/4 v10, 0x0

    goto :goto_6

    :cond_d
    const/high16 v9, 0x3f800000    # 1.0f

    .line 910
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->volumeAlphas:[F

    aget v5, v4, v2

    const/4 v10, 0x0

    cmpl-float v5, v5, v10

    if-lez v5, :cond_f

    .line 911
    aget v5, v4, v2

    long-to-float v12, v6

    div-float/2addr v12, v3

    sub-float/2addr v5, v12

    aput v5, v4, v2

    .line 912
    aget v3, v4, v2

    cmpg-float v3, v3, v10

    if-gez v3, :cond_e

    .line 913
    aput v10, v4, v2

    .line 915
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_f
    :goto_6
    add-int/lit8 v14, v2, 0x1

    move-object/from16 v15, p1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x6

    const/4 v9, 0x0

    const/4 v10, 0x2

    goto/16 :goto_4

    :cond_10
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 723
    invoke-virtual {p0, p1}, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 2

    const/16 p2, 0x30

    .line 717
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 718
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-double p1, p1

    iget-wide v0, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentProgress:D

    mul-double p1, p1, v0

    double-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    return-void
.end method

.method onTouch(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 732
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 733
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->sx:F

    .line 734
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->sy:F

    return v1

    .line 736
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    goto/16 :goto_2

    .line 758
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_d

    .line 759
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->captured:Z

    if-nez v0, :cond_5

    .line 760
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 761
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->sy:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    return v2

    .line 764
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->sx:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_d

    .line 765
    iput-boolean v1, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->captured:Z

    .line 766
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 767
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_d

    .line 768
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    if-gez p1, :cond_3

    .line 770
    iput v2, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    goto :goto_0

    .line 771
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-le p1, v0, :cond_4

    .line 772
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    .line 774
    :cond_4
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->dragging:Z

    .line 775
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return v1

    .line 780
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->dragging:Z

    if-eqz v0, :cond_d

    .line 781
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    if-gez p1, :cond_6

    .line 783
    iput v2, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    goto :goto_1

    .line 784
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-le p1, v0, :cond_7

    .line 785
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    .line 787
    :cond_7
    :goto_1
    iget p1, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    int-to-double v3, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    int-to-double v5, p1

    div-double/2addr v3, v5

    invoke-direct {p0, v3, v4, v2}, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->onSeekBarDrag(DZ)V

    .line 788
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return v1

    .line 737
    :cond_8
    :goto_2
    iput-boolean v2, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->captured:Z

    .line 738
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 739
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 740
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->sy:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_b

    .line 741
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    if-gez v0, :cond_9

    .line 743
    iput v2, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    goto :goto_3

    .line 744
    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    if-le v0, v3, :cond_a

    .line 745
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    .line 747
    :cond_a
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->dragging:Z

    .line 750
    :cond_b
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->dragging:Z

    if-eqz v0, :cond_d

    .line 751
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_c

    .line 752
    iget p1, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    int-to-double v3, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    int-to-double v5, p1

    div-double/2addr v3, v5

    invoke-direct {p0, v3, v4, v1}, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->onSeekBarDrag(DZ)V

    .line 754
    :cond_c
    iput-boolean v2, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->dragging:Z

    .line 755
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return v1

    :cond_d
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 728
    invoke-virtual {p0, p1}, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
