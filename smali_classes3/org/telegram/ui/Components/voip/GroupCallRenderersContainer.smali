.class public Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;
.super Landroid/widget/FrameLayout;
.source "GroupCallRenderersContainer.java"


# instance fields
.field animationIndex:I

.field private attachedPeerIds:Lorg/telegram/messenger/support/LongSparseIntArray;

.field private final attachedRenderers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private final backButton:Landroid/widget/ImageView;

.field call:Lorg/telegram/messenger/ChatObject$Call;

.field private canZoomGesture:Z

.field private drawFirst:Z

.field private drawRenderesOnly:Z

.field fullscreenAnimator:Landroid/animation/ValueAnimator;

.field private final fullscreenListView:Landroidx/recyclerview/widget/RecyclerView;

.field public fullscreenParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

.field public fullscreenPeerId:J

.field public fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

.field groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

.field public hasPinnedVideo:Z

.field hideUiRunnable:Ljava/lang/Runnable;

.field hideUiRunnableIsScheduled:Z

.field public inFullscreenMode:Z

.field public inLayout:Z

.field private isInPinchToZoomTouchMode:Z

.field private isTablet:Z

.field public lastUpdateTime:J

.field lastUpdateTooltipTime:J

.field private final listView:Landroidx/recyclerview/widget/RecyclerView;

.field public listWidth:I

.field maybeSwipeToBackGesture:Z

.field private notDrawRenderes:Z

.field private outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

.field private final pinButton:Landroid/widget/ImageView;

.field pinContainer:Landroid/view/View;

.field pinDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

.field pinTextView:Landroid/widget/TextView;

.field private pinchCenterX:F

.field private pinchCenterY:F

.field pinchScale:F

.field private pinchStartCenterX:F

.field private pinchStartCenterY:F

.field private pinchStartDistance:F

.field private pinchTranslationX:F

.field private pinchTranslationY:F

.field public pipView:Landroid/widget/ImageView;

.field private pointerId1:I

.field private pointerId2:I

.field public progressToFullscreenMode:F

.field progressToHideUi:F

.field public progressToScrimView:F

.field replaceFullscreenViewAnimator:Landroid/animation/ValueAnimator;

.field rightShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private final rightShadowView:Landroid/view/View;

.field private showSpeakingMembersToast:Z

.field private showSpeakingMembersToastProgress:F

.field private final speakingMembersAvatars:Lorg/telegram/ui/Components/AvatarsImageView;

.field private final speakingMembersText:Landroid/widget/TextView;

.field private final speakingMembersToast:Landroid/widget/FrameLayout;

.field private speakingMembersToastChangeProgress:F

.field private speakingMembersToastFromLeft:F

.field private speakingMembersToastFromRight:F

.field private speakingMembersToastFromTextLeft:F

.field private speakingToastPeerId:J

.field swipeToBackAnimator:Landroid/animation/ValueAnimator;

.field swipeToBackDy:F

.field swipeToBackGesture:Z

.field public swipedBack:Z

.field tapGesture:Z

.field tapTime:J

.field tapX:F

.field tapY:F

.field topShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private final topShadowView:Landroid/view/View;

.field private final touchSlop:I

.field uiVisible:Z

.field public undoView:[Lorg/telegram/ui/Components/UndoView;

.field unpinTextView:Landroid/widget/TextView;

.field updateTooltipRunnbale:Ljava/lang/Runnable;

.field zoomBackAnimator:Landroid/animation/ValueAnimator;

.field private zoomStarted:Z


# direct methods
.method public static synthetic $r8$lambda$9jEXceVtp_NhZVbmFEnse0frP_s(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lambda$requestFullscreen$4(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UT0A_XWRQyTYP___yYHiEpxake8(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/GroupCallActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lambda$new$2(Lorg/telegram/ui/GroupCallActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VkQgDtUnBymgL6VfDxPAanhAoPE(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a6cDjReVT0pv7Px3ZzsW76qpgDM(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lambda$requestFullscreen$5(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eCUTELG1FAl5Ni3QzZ78JekU-cs(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lambda$requestFullscreen$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ow0RTb1SGtskvBHfpaWti3KeE5w(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lambda$setVisibleParticipant$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$pZHsEVngNHLoofjF0S-vppe3z5M(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;FFFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lambda$finishZoom$8(FFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r3ghasUR1WUycaCwprFFzCf9qcE(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lambda$animateSwipeToBack$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s6BC9Ae_t6WA-HVOw8OLPsQfr1s(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ybzpjnxGmJaRHb4tQB6LbahGFCU(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lambda$requestFullscreen$3(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;",
            ">;",
            "Lorg/telegram/messenger/ChatObject$Call;",
            "Lorg/telegram/ui/GroupCallActivity;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 172
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v4, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {v4}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedPeerIds:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 99
    iput v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastChangeProgress:F

    const/4 v5, 0x1

    .line 110
    iput-boolean v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->uiVisible:Z

    .line 121
    new-instance v6, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$1;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnable:Ljava/lang/Runnable;

    .line 153
    iput v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchScale:F

    const/4 v4, 0x2

    new-array v6, v4, [Lorg/telegram/ui/Components/UndoView;

    .line 166
    iput-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    move-object/from16 v6, p2

    .line 173
    iput-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->listView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v6, p3

    .line 174
    iput-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenListView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v6, p4

    .line 175
    iput-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    .line 176
    iput-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    .line 177
    iput-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    .line 179
    new-instance v6, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$2;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$2;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->backButton:Landroid/widget/ImageView;

    .line 185
    new-instance v7, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    const/4 v9, -0x1

    .line 186
    invoke-virtual {v7, v9}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    .line 187
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v7, 0x10

    .line 189
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v6, v10, v8, v11, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/16 v10, 0x37

    .line 190
    invoke-static {v9, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v11

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 191
    new-instance v11, Landroid/view/View;

    invoke-direct {v11, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->topShadowView:Landroid/view/View;

    .line 192
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v14, v4, [I

    aput v8, v14, v8

    const/high16 v15, -0x1000000

    const/16 v10, 0x72

    invoke-static {v15, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v16

    aput v16, v14, v5

    invoke-direct {v12, v13, v14}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v12, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->topShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 193
    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v12, 0x78

    .line 194
    invoke-static {v9, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    new-instance v11, Landroid/view/View;

    invoke-direct {v11, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->rightShadowView:Landroid/view/View;

    .line 197
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v14, v4, [I

    aput v8, v14, v8

    invoke-static {v15, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    aput v10, v14, v5

    invoke-direct {v12, v13, v14}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v12, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->rightShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 198
    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v10, 0x8

    if-eqz v2, :cond_0

    .line 199
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isRtmpStream()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0xa0

    const/4 v12, 0x5

    .line 200
    invoke-static {v2, v9, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x38

    const/16 v11, 0x33

    .line 202
    invoke-static {v2, v9, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v6, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    new-instance v12, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda5;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    new-instance v6, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$3;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$3;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinButton:Landroid/widget/ImageView;

    const/16 v12, 0x14

    .line 219
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    const/16 v13, 0x64

    invoke-static {v9, v13}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v13

    invoke-static {v12, v8, v13}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 220
    new-instance v13, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$4;

    invoke-direct {v13, v0, v1, v12}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$4;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    .line 249
    new-instance v14, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda4;

    invoke-direct {v14, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 258
    iget-object v12, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 260
    new-instance v12, Lorg/telegram/ui/Components/CrossOutDrawable;

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_pin_filled:I

    const/4 v14, 0x0

    invoke-direct {v12, v1, v13, v14}, Lorg/telegram/ui/Components/CrossOutDrawable;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v12, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    .line 261
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v12, v13, v14, v15}, Lorg/telegram/ui/Components/CrossOutDrawable;->setOffsets(FFF)V

    .line 262
    iget-object v12, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-virtual {v6, v12, v8, v13, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 264
    invoke-static {v2, v9, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    .line 268
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v2, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 270
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    const-string v12, "fonts/rmedium.ttf"

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 271
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    sget v13, Lorg/telegram/messenger/R$string;->CallVideoPin:I

    const-string v14, "CallVideoPin"

    invoke-static {v14, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    .line 274
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 276
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 277
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->CallVideoUnpin:I

    const-string v12, "CallVideoUnpin"

    invoke-static {v12, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    const/4 v6, -0x2

    invoke-static {v6, v6, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v2, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    invoke-static {v6, v6, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v2, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    const/4 v11, 0x4

    .line 284
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 286
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    sget v12, Lorg/telegram/messenger/R$drawable;->ic_goinline:I

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    sget v12, Lorg/telegram/messenger/R$string;->AccDescrPipMode:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 288
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 289
    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    invoke-virtual {v11, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 290
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    const/16 v11, 0x37

    invoke-static {v9, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v11

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 291
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    new-instance v11, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda6;

    invoke-direct {v11, v0, v3}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/GroupCallActivity;)V

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    const/16 v11, 0x20

    const/16 v12, 0x20

    const/16 v13, 0x35

    const/16 v14, 0xc

    const/16 v15, 0xc

    const/16 v16, 0xc

    const/16 v17, 0xc

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x12

    .line 310
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const-string v3, "voipgroup_listViewBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const/16 v11, 0xcc

    invoke-static {v3, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 311
    new-instance v3, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$5;

    invoke-direct {v3, v0, v1, v2}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$5;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    .line 331
    new-instance v2, Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-direct {v2, v1, v5}, Lorg/telegram/ui/Components/AvatarsImageView;-><init>(Landroid/content/Context;Z)V

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersAvatars:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v11, 0xa

    .line 332
    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/AvatarsImageView;->setStyle(I)V

    .line 334
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 335
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    const/16 v12, 0x64

    const/16 v13, 0x20

    const/16 v14, 0x10

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 336
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v3, v2, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersText:Landroid/widget/TextView;

    const/high16 v12, 0x41600000    # 14.0f

    .line 340
    invoke-virtual {v2, v5, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 341
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 342
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 343
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 344
    invoke-static {v6, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v12, -0x2

    const/16 v13, 0x24

    const/4 v14, 0x1

    .line 346
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 350
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->touchSlop:I

    :goto_1
    if-ge v8, v4, :cond_1

    .line 353
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    new-instance v3, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$6;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$6;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Landroid/content/Context;)V

    aput-object v3, v2, v8

    .line 360
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v2, v2, v8

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/UndoView;->setHideAnimationType(I)V

    .line 361
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v2, v2, v8

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/UndoView;->setAdditionalTranslationY(F)V

    .line 362
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v2, v2, v8

    const/4 v12, -0x1

    const/4 v13, -0x2

    const/16 v14, 0x50

    const/16 v15, 0x10

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x8

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 365
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 366
    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->setIsTablet(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->setUiVisible(Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)F
    .locals 0

    .line 66
    iget p0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastChangeProgress:F

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)Landroid/widget/ImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;F)F
    .locals 0

    .line 66
    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationX:F

    return p1
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;F)F
    .locals 0

    .line 66
    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationY:F

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)Lorg/telegram/ui/Components/AvatarsImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersAvatars:Lorg/telegram/ui/Components/AvatarsImageView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)Landroid/widget/TextView;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)F
    .locals 0

    .line 66
    iget p0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastFromLeft:F

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)F
    .locals 0

    .line 66
    iget p0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastFromTextLeft:F

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)F
    .locals 0

    .line 66
    iget p0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastFromRight:F

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    return-object p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->clearCurrentFullscreenTextureView()V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)Landroid/widget/ImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->backButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method private animateSwipeToBack(Z)V
    .locals 5

    .line 1216
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1217
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 1218
    iget v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackDy:F

    if-eqz p1, :cond_0

    aput v4, v3, v1

    aput v0, v3, v2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_0
    aput v4, v3, v1

    aput v0, v3, v2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    .line 1219
    new-instance v2, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1223
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$15;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$15;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1232
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1234
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    const-wide/16 v3, 0x15e

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0xc8

    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1235
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1236
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz p1, :cond_2

    .line 1237
    iget-object p1, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->synchOrRunAnimation(Landroid/animation/Animator;)V

    goto :goto_2

    .line 1239
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1241
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lastUpdateTime:J

    .line 1243
    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    return-void
.end method

.method private checkPointerIds(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 1286
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pointerId1:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pointerId2:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-ne v0, v2, :cond_1

    return v3

    .line 1289
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pointerId1:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-ne v0, v2, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pointerId2:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    if-ne v0, p1, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method private clearCurrentFullscreenTextureView()V
    .locals 10

    .line 995
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 996
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setSwipeToBack(ZF)V

    .line 997
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setZoom(ZFFFFF)V

    :cond_0
    return-void
.end method

.method private finishZoom()V
    .locals 6

    .line 1247
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1248
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomStarted:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1249
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    .line 1251
    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchScale:F

    .line 1252
    iget v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationX:F

    .line 1253
    iget v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationY:F

    .line 1254
    new-instance v5, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v2, v3, v4}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;FFF)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1262
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$16;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$16;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1272
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1273
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1274
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lastUpdateTime:J

    .line 1277
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->canZoomGesture:Z

    .line 1278
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isInPinchToZoomTouchMode:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isRtmpStream()Z
    .locals 1

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$animateSwipeToBack$7(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1220
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackDy:F

    .line 1221
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$finishZoom$8(FFFLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 1255
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    mul-float p1, p1, p4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p4

    mul-float v1, v1, v0

    add-float/2addr p1, v1

    .line 1256
    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchScale:F

    mul-float p2, p2, p4

    .line 1257
    iput p2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationX:F

    mul-float p3, p3, p4

    .line 1258
    iput p3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationY:F

    .line 1259
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 203
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 2

    .line 250
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz p1, :cond_0

    .line 251
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hasPinnedVideo:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hasPinnedVideo:Z

    .line 252
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/CrossOutDrawable;->setCrossOut(ZZ)V

    .line 253
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/ui/GroupCallActivity;Landroid/view/View;)V
    .locals 0

    .line 292
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isRtmpStream()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 293
    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->getParentActivity()Lorg/telegram/ui/LaunchActivity;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->checkInlinePermissions(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 294
    invoke-static {}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->show()V

    .line 295
    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->dismiss()V

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->getParentActivity()Lorg/telegram/ui/LaunchActivity;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/AlertsCreator;->createDrawOverlayPermissionDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->getParentActivity()Lorg/telegram/ui/LaunchActivity;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->checkInlinePermissions(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 302
    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->clearForce()V

    .line 303
    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->dismiss()V

    goto :goto_1

    .line 305
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/AlertsCreator;->createDrawOverlayGroupCallPermissionDialog(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :goto_1
    return-void
.end method

.method private synthetic lambda$requestFullscreen$3(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V
    .locals 3

    .line 806
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->replaceFullscreenViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 807
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 810
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$9;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$9;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 818
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    if-eqz p2, :cond_1

    .line 821
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$10;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$10;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 826
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$requestFullscreen$4(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V
    .locals 2

    .line 857
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$11;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$11;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    .line 862
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$requestFullscreen$5(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 878
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 879
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$requestFullscreen$6(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 952
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    .line 953
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->getMenuItemsContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 954
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->invalidateActionBarAlpha()V

    .line 955
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->invalidateScrollOffsetY()V

    .line 956
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->update()V

    return-void
.end method

.method private synthetic lambda$setVisibleParticipant$9()V
    .locals 1

    const/4 v0, 0x0

    .line 1389
    iput-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->updateTooltipRunnbale:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 1390
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->setVisibleParticipant(Z)V

    return-void
.end method

.method private setUiVisible(Z)V
    .locals 2

    .line 1010
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->uiVisible:Z

    if-eq v0, p1, :cond_2

    .line 1011
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->uiVisible:Z

    .line 1012
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->onUiVisibilityChanged()V

    if-eqz p1, :cond_0

    .line 1014
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz p1, :cond_0

    .line 1015
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnableIsScheduled:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 1016
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnableIsScheduled:Z

    .line 1017
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1020
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnableIsScheduled:Z

    .line 1021
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1023
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz p1, :cond_2

    .line 1024
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_2
    return-void
.end method


# virtual methods
.method public attach(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V
    .locals 3

    .line 1518
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1519
    iget-object p1, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    .line 1520
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedPeerIds:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    return-void
.end method

.method public autoPinEnabled()Z
    .locals 5

    .line 1370
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hasPinnedVideo:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lastUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isInPinchToZoomTouchMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected canHideUI()Z
    .locals 1

    .line 1034
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    return v0
.end method

.method public delayHideUi()V
    .locals 3

    .line 1307
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnableIsScheduled:Z

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1310
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 v0, 0x1

    .line 1311
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnableIsScheduled:Z

    return-void
.end method

.method public detach(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V
    .locals 3

    .line 1524
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1525
    iget-object p1, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    .line 1526
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedPeerIds:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 449
    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    .line 450
    iput-boolean v9, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->drawRenderesOnly:Z

    .line 451
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 452
    iput-boolean v10, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->drawRenderesOnly:Z

    .line 455
    :cond_0
    iput-boolean v9, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->drawFirst:Z

    .line 456
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 457
    iput-boolean v10, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->drawFirst:Z

    .line 459
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    const/16 v11, 0x5a

    const/high16 v12, 0x437f0000    # 255.0f

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v1, :cond_e

    .line 460
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 461
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    .line 462
    iget v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    .line 463
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 464
    sget-boolean v4, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-nez v4, :cond_2

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v5, :cond_2

    iget-boolean v6, v5, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->forceDetached:Z

    if-nez v6, :cond_2

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v5, :cond_2

    sub-float v4, v14, v3

    mul-float v1, v1, v4

    .line 465
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v2, v2, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    invoke-virtual {v8, v13, v1, v5, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 467
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v8, v10, v10, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 469
    :cond_3
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 470
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 471
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 472
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 473
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 475
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 476
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v14

    if-eqz v1, :cond_5

    .line 477
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getX()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getY()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 478
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    const/16 v3, 0x1f

    invoke-virtual {v8, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    goto :goto_1

    .line 480
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 482
    :goto_1
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    if-nez v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_a

    .line 483
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isRtmpStream()Z

    move-result v2

    if-nez v2, :cond_a

    .line 484
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    sget-boolean v4, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-nez v4, :cond_9

    sget-boolean v4, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v4, 0x0

    :goto_5
    sub-int/2addr v3, v4

    invoke-virtual {v8, v10, v10, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 486
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 487
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackDy:F

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setSwipeToBack(ZF)V

    .line 488
    iget-object v15, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomStarted:Z

    if-nez v1, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_b

    goto :goto_6

    :cond_b
    const/16 v16, 0x0

    goto :goto_7

    :cond_c
    :goto_6
    const/16 v16, 0x1

    :goto_7
    iget v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchScale:F

    iget v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchCenterX:F

    iget v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchCenterY:F

    iget v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationX:F

    iget v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationY:F

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-virtual/range {v15 .. v21}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setZoom(ZFFFFF)V

    .line 489
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 490
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 492
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_e
    const/4 v15, 0x0

    :goto_8
    const/4 v1, 0x2

    const/16 v2, 0x8

    const/high16 v16, 0x40000000    # 2.0f

    if-ge v15, v1, :cond_15

    .line 495
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_14

    .line 496
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 497
    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    goto :goto_9

    :cond_f
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToHideUi:F

    sub-float v3, v14, v3

    mul-float v1, v1, v3

    .line 498
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    sget-boolean v5, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v5, :cond_10

    const/4 v5, 0x0

    goto :goto_a

    :cond_10
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    :goto_a
    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v4, v1

    const/16 v5, 0x12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v8, v13, v13, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 499
    iget-boolean v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isTablet:Z

    if-eqz v3, :cond_11

    .line 500
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v3, v3, v15

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_c

    .line 502
    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v3, v3, v15

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getX()F

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    sget-boolean v4, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v4, :cond_12

    const/4 v4, 0x0

    goto :goto_b

    :cond_12
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    :goto_b
    int-to-float v4, v4

    sub-float/2addr v2, v4

    add-float/2addr v2, v1

    const/16 v1, 0x1a

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    invoke-virtual {v8, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 504
    :goto_c
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v14

    if-eqz v1, :cond_13

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 505
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    mul-float v1, v1, v12

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_d

    .line 507
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 509
    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v3, v3, v15

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v16

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v4, v4, v15

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v16

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 510
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v1, v1, v15

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 511
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 512
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_14
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_8

    .line 515
    :cond_15
    iget v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    iget v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToHideUi:F

    sub-float v3, v14, v3

    mul-float v1, v1, v3

    .line 516
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->replaceFullscreenViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_19

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v3, :cond_19

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v4, :cond_19

    .line 518
    iget-boolean v3, v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasVideo:Z

    iget-boolean v5, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasVideo:Z

    if-eq v3, v5, :cond_17

    if-nez v5, :cond_16

    .line 520
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v3

    sub-float v3, v14, v3

    goto :goto_e

    .line 522
    :cond_16
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v3

    :goto_e
    mul-float v3, v3, v1

    goto :goto_f

    :cond_17
    if-nez v5, :cond_18

    const/4 v3, 0x0

    goto :goto_f

    :cond_18
    move v3, v1

    .line 527
    :goto_f
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->topShadowDrawable:Landroid/graphics/drawable/Drawable;

    mul-float v3, v3, v12

    float-to-int v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 528
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->rightShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_10

    .line 529
    :cond_19
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v3, :cond_1a

    .line 530
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->topShadowDrawable:Landroid/graphics/drawable/Drawable;

    mul-float v12, v12, v1

    iget v3, v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToNoVideoStub:F

    sub-float v3, v14, v3

    mul-float v3, v3, v12

    float-to-int v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 531
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->rightShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget v4, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToNoVideoStub:F

    sub-float v4, v14, v4

    mul-float v12, v12, v4

    float-to-int v4, v12

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_10

    .line 533
    :cond_1a
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->topShadowDrawable:Landroid/graphics/drawable/Drawable;

    mul-float v12, v12, v1

    float-to-int v4, v12

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 534
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->rightShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 537
    :goto_10
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 539
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isRtmpStream()Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_1c

    .line 540
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 541
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 543
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 544
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 545
    sget-boolean v3, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v3, :cond_1b

    .line 546
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    const/16 v4, 0x48

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToHideUi:F

    sub-float v5, v14, v5

    mul-float v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_11

    .line 548
    :cond_1b
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_11

    .line 551
    :cond_1c
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 552
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 555
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 559
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 560
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float v5, v5, v16

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 561
    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/CrossOutDrawable;->getProgress()F

    move-result v6

    mul-float v4, v4, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/CrossOutDrawable;->getProgress()F

    move-result v6

    sub-float v6, v14, v6

    mul-float v3, v3, v6

    add-float/2addr v4, v3

    const/16 v3, 0x15

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v4, v3

    .line 562
    sget-boolean v3, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v3, :cond_1d

    const/16 v3, 0x148

    .line 563
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    :goto_12
    int-to-float v3, v3

    sub-float/2addr v4, v3

    goto :goto_13

    .line 565
    :cond_1d
    sget-boolean v3, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v3, :cond_1e

    const/16 v3, 0xb4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    goto :goto_12

    :cond_1e
    const/4 v3, 0x0

    goto :goto_12

    .line 567
    :goto_13
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 568
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 569
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 570
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 572
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    const/high16 v5, 0x42100000    # 36.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v4, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 573
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float v5, v5, v16

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 575
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinButton:Landroid/widget/ImageView;

    const/high16 v5, 0x42300000    # 44.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 577
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isRtmpStream()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 578
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setAlpha(F)V

    .line 579
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setAlpha(F)V

    .line 580
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/view/View;->setAlpha(F)V

    goto :goto_14

    .line 582
    :cond_1f
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/CrossOutDrawable;->getProgress()F

    move-result v4

    sub-float v4, v14, v4

    mul-float v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 583
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/CrossOutDrawable;->getProgress()F

    move-result v4

    mul-float v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 584
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 587
    :goto_14
    iget v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastChangeProgress:F

    cmpl-float v3, v1, v14

    if-eqz v3, :cond_21

    const v3, 0x3d94f209

    add-float/2addr v1, v3

    .line 588
    iput v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastChangeProgress:F

    cmpl-float v1, v1, v14

    if-lez v1, :cond_20

    .line 590
    iput v14, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastChangeProgress:F

    goto :goto_15

    .line 592
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 594
    :goto_15
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 598
    :cond_21
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToast:Z

    const v3, 0x3dda740e

    if-eqz v1, :cond_23

    iget v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToastProgress:F

    cmpl-float v5, v4, v14

    if-eqz v5, :cond_23

    add-float/2addr v4, v3

    .line 599
    iput v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToastProgress:F

    cmpl-float v1, v4, v14

    if-lez v1, :cond_22

    .line 601
    iput v14, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToastProgress:F

    goto :goto_16

    .line 603
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_16

    :cond_23
    if-nez v1, :cond_25

    .line 605
    iget v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToastProgress:F

    cmpl-float v4, v1, v13

    if-eqz v4, :cond_25

    sub-float/2addr v1, v3

    .line 606
    iput v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToastProgress:F

    cmpg-float v1, v1, v13

    if-gez v1, :cond_24

    .line 608
    iput v13, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToastProgress:F

    goto :goto_16

    .line 610
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 615
    :cond_25
    :goto_16
    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v1, :cond_26

    .line 616
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_17

    .line 618
    :cond_26
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToHideUi:F

    sub-float/2addr v14, v4

    mul-float v3, v3, v14

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToHideUi:F

    mul-float v2, v2, v4

    add-float/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 620
    :goto_17
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    iget v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToastProgress:F

    iget v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 621
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    iget v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToastProgress:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 622
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    iget v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToastProgress:F

    mul-float v2, v2, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 624
    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v1, :cond_27

    .line 627
    iput-boolean v9, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->notDrawRenderes:Z

    .line 628
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 629
    iput-boolean v10, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->notDrawRenderes:Z

    goto :goto_18

    .line 631
    :cond_27
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 634
    :goto_18
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_29

    .line 635
    :goto_19
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v10, v1, :cond_29

    .line 636
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    .line 637
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v13

    if-eqz v2, :cond_28

    .line 638
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 639
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 640
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v2

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v16

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v16

    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 641
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->drawOverlays(Landroid/graphics/Canvas;)V

    .line 642
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_28
    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    :cond_29
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    .line 396
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->drawFirst:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 397
    instance-of v0, p2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v0, :cond_0

    .line 398
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->drawFirst:Z

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 400
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    .line 401
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 402
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 403
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 404
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_0
    return v2

    .line 410
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    if-eq p2, v4, :cond_a

    aget-object v0, v0, v2

    if-ne p2, v0, :cond_2

    goto/16 :goto_1

    .line 413
    :cond_2
    instance-of v0, p2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v0, :cond_8

    .line 414
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    .line 416
    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eq v0, v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eq v0, v4, :cond_7

    iget-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->notDrawRenderes:Z

    if-nez v4, :cond_7

    iget-boolean v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->drawFirst:Z

    if-eqz v4, :cond_3

    goto :goto_0

    .line 419
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v2, :cond_5

    .line 420
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 421
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 422
    iget v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    .line 423
    iget-object v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-nez v0, :cond_4

    const/4 v4, 0x0

    .line 426
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v4

    mul-float v2, v2, v0

    .line 427
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v3, v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v4

    add-float/2addr v3, v0

    invoke-virtual {p1, v1, v2, v5, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 428
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 429
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 431
    :cond_5
    sget-boolean v0, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v0, :cond_6

    .line 432
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 433
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 434
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 435
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 438
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    :cond_7
    :goto_0
    return v2

    .line 441
    :cond_8
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->drawRenderesOnly:Z

    if-eqz v0, :cond_9

    return v2

    .line 444
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    :cond_a
    :goto_1
    return v2
.end method

.method public getUndoView()Lorg/telegram/ui/Components/UndoView;
    .locals 5

    .line 1501
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1502
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v2, v0, v1

    const/4 v3, 0x1

    .line 1503
    aget-object v4, v0, v3

    aput-object v4, v0, v1

    .line 1504
    aput-object v2, v0, v3

    const/4 v0, 0x2

    .line 1505
    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 1506
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1507
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1509
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isAnimating()Z
    .locals 1

    .line 1337
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUiVisible()Z
    .locals 1

    .line 1315
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->uiVisible:Z

    return v0
.end method

.method public isVisible(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;)Z
    .locals 2

    .line 1513
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    .line 1514
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedPeerIds:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onFullScreenModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1039
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1342
    sget-boolean v0, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->topShadowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v2, 0x148

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    .line 1344
    :cond_0
    sget-boolean v0, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v0, :cond_2

    .line 1345
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->topShadowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isRtmpStream()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x5a

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    :goto_0
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    .line 1347
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->topShadowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1349
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->rightShadowView:Landroid/view/View;

    sget-boolean v2, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1351
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v2, 0x28

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1352
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v2, p2}, Landroid/widget/TextView;->measure(II)V

    .line 1353
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v2, p2}, Landroid/widget/TextView;->measure(II)V

    .line 1354
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v2, 0x2e

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hasPinnedVideo:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    :goto_3
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1356
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget-boolean v2, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v2, :cond_5

    const/16 v2, 0x2d

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v0, 0x0

    :goto_5
    const/4 v2, 0x2

    if-ge v0, v2, :cond_8

    .line 1359
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1360
    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isTablet:Z

    if-eqz v3, :cond_6

    const/16 v3, 0x158

    .line 1361
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_7

    .line 1363
    :cond_6
    sget-boolean v3, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v3, :cond_7

    const/16 v3, 0xb4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1366
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1044
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    if-eqz v0, :cond_4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 1045
    :cond_1
    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    .line 1046
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    if-eqz v0, :cond_3

    .line 1047
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackDy:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/16 v5, 0x78

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    .line 1048
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/GroupCallActivity;->fullscreenFor(Lorg/telegram/messenger/ChatObject$VideoParticipant;)V

    goto :goto_0

    .line 1050
    :cond_2
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->animateSwipeToBack(Z)V

    .line 1053
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1056
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapGesture:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->canZoomGesture:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isInPinchToZoomTouchMode:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomStarted:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2e

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-nez v0, :cond_6

    goto/16 :goto_10

    .line 1060
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_7

    .line 1061
    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    .line 1062
    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    .line 1063
    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->canZoomGesture:Z

    .line 1064
    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isInPinchToZoomTouchMode:Z

    .line 1065
    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomStarted:Z

    .line 1068
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_8

    .line 1069
    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    .line 1070
    iput-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    .line 1071
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v5, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackDy:F

    sub-float/2addr v0, v5

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapY:F

    .line 1072
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 1073
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1074
    iput-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 1075
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 1076
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->finishZoom()V

    return v4

    .line 1079
    :cond_9
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->isInsideStopScreenButton(FF)Z

    move-result v0

    if-eqz v0, :cond_a

    return v4

    .line 1083
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x5a

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    if-nez v0, :cond_d

    .line 1084
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    sget-boolean v9, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v9, :cond_b

    iget-boolean v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->uiVisible:Z

    if-eqz v9, :cond_b

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    neg-int v9, v9

    goto :goto_2

    :cond_b
    const/4 v9, 0x0

    :goto_2
    add-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    sget-boolean v10, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-nez v10, :cond_c

    iget-boolean v10, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->uiVisible:Z

    if-eqz v10, :cond_c

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    goto :goto_3

    :cond_c
    const/4 v10, 0x0

    :goto_3
    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v0, v5, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1085
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1086
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapTime:J

    .line 1087
    iput-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapGesture:Z

    .line 1088
    iput-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    .line 1089
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapX:F

    .line 1090
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapY:F

    goto/16 :goto_5

    .line 1092
    :cond_d
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapGesture:Z

    if-eqz v0, :cond_13

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v6, :cond_13

    .line 1093
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->touchSlop:I

    int-to-float v7, v7

    cmpl-float v0, v0, v7

    if-gtz v0, :cond_f

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->touchSlop:I

    int-to-float v7, v7

    cmpl-float v0, v0, v7

    if-lez v0, :cond_10

    .line 1094
    :cond_f
    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapGesture:Z

    .line 1096
    :cond_10
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomStarted:Z

    if-nez v0, :cond_11

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->touchSlop:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpl-float v0, v0, v7

    if-lez v0, :cond_11

    .line 1097
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapY:F

    .line 1098
    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    .line 1099
    iput-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    goto :goto_4

    .line 1100
    :cond_11
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    if-eqz v0, :cond_12

    .line 1101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapY:F

    sub-float/2addr v0, v7

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackDy:F

    .line 1102
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1105
    :cond_12
    :goto_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    if-eqz v0, :cond_13

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->touchSlop:I

    mul-int/lit8 v7, v7, 0x4

    int-to-float v7, v7

    cmpl-float v0, v0, v7

    if-lez v0, :cond_13

    .line 1106
    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    .line 1109
    :cond_13
    :goto_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapGesture:Z

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0xc8

    cmp-long v0, v7, v9

    if-gez v0, :cond_19

    .line 1111
    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapGesture:Z

    .line 1112
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToast:Z

    if-eqz v0, :cond_16

    .line 1113
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getX()F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getY()F

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getX()F

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget-object v10, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getY()F

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1114
    iget-object v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v7, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1116
    :goto_6
    iget-object v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v9, v9, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_15

    .line 1117
    iget-wide v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingToastPeerId:J

    iget-object v11, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v11, v11, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v11, v11, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-nez v13, :cond_14

    .line 1120
    iget-object v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    iget-object v8, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v8, v8, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    invoke-virtual {v7, v8}, Lorg/telegram/ui/GroupCallActivity;->fullscreenFor(Lorg/telegram/messenger/ChatObject$VideoParticipant;)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_15
    if-nez v7, :cond_17

    .line 1124
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    iget-wide v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingToastPeerId:J

    invoke-virtual {v0, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 1125
    iget-object v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    new-instance v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    invoke-direct {v8, v0, v4, v4}, Lorg/telegram/messenger/ChatObject$VideoParticipant;-><init>(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZZ)V

    invoke-virtual {v7, v8}, Lorg/telegram/ui/GroupCallActivity;->fullscreenFor(Lorg/telegram/messenger/ChatObject$VideoParticipant;)V

    const/4 v8, 0x1

    goto :goto_7

    :cond_16
    const/4 v8, 0x0

    :cond_17
    :goto_7
    if-nez v8, :cond_18

    .line 1132
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->uiVisible:Z

    xor-int/2addr v0, v3

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->setUiVisible(Z)V

    .line 1134
    :cond_18
    iput v5, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackDy:F

    .line 1135
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1138
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasVideo:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    if-eqz v0, :cond_1a

    goto/16 :goto_e

    .line 1143
    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v9, 0x5

    if-ne v0, v9, :cond_1b

    goto/16 :goto_a

    .line 1171
    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v6, :cond_22

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isInPinchToZoomTouchMode:Z

    if-eqz v0, :cond_22

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v6, -0x1

    .line 1174
    :goto_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ge v1, v9, :cond_1e

    .line 1175
    iget v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pointerId1:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    if-ne v9, v10, :cond_1c

    move v2, v1

    .line 1178
    :cond_1c
    iget v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pointerId2:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    if-ne v9, v10, :cond_1d

    move v6, v1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1e
    if-eq v2, v0, :cond_21

    if-ne v6, v0, :cond_1f

    goto/16 :goto_9

    .line 1187
    :cond_1f
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchStartDistance:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchScale:F

    const v1, 0x3f80a3d7    # 1.005f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20

    .line 1188
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomStarted:Z

    if-nez v0, :cond_20

    .line 1189
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchStartDistance:F

    .line 1190
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v8

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchCenterX:F

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchStartCenterX:F

    .line 1191
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v8

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchCenterY:F

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchStartCenterY:F

    .line 1192
    iput v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchScale:F

    .line 1193
    iput v5, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationX:F

    .line 1194
    iput v5, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationY:F

    .line 1195
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1196
    iput-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomStarted:Z

    .line 1197
    iput-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isInPinchToZoomTouchMode:Z

    .line 1200
    :cond_20
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v8

    .line 1201
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v1, p1

    div-float/2addr v1, v8

    .line 1203
    iget p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchStartCenterX:F

    sub-float/2addr p1, v0

    .line 1204
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchStartCenterY:F

    sub-float/2addr v0, v1

    neg-float p1, p1

    .line 1205
    iget v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchScale:F

    div-float/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationX:F

    neg-float p1, v0

    div-float/2addr p1, v1

    .line 1206
    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationY:F

    .line 1207
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_c

    .line 1183
    :cond_21
    :goto_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1184
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->finishZoom()V

    .line 1185
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    return p1

    .line 1208
    :cond_22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_24

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_23

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->checkPointerIds(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_24

    :cond_23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_28

    .line 1209
    :cond_24
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1210
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->finishZoom()V

    goto/16 :goto_c

    .line 1144
    :cond_25
    :goto_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_27

    .line 1145
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    .line 1146
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v11

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-virtual {v2, v5, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1147
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v9, v9, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v9, v9, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleTextureToFill:F

    mul-float v5, v5, v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v5, v9

    div-float/2addr v5, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v10, v10, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v10, v10, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleTextureToFill:F

    mul-float v9, v9, v10

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v9, v0

    div-float/2addr v9, v8

    invoke-virtual {v2, v5, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 1148
    sget-boolean v0, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-nez v0, :cond_26

    .line 1149
    iget v0, v2, Landroid/graphics/RectF;->top:F

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v2, Landroid/graphics/RectF;->top:F

    .line 1150
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v5, v1

    int-to-float v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_b

    .line 1152
    :cond_26
    iget v0, v2, Landroid/graphics/RectF;->top:F

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v2, Landroid/graphics/RectF;->top:F

    .line 1153
    iget v0, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v5, v1

    int-to-float v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 1155
    :goto_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->canZoomGesture:Z

    if-nez v0, :cond_27

    .line 1157
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->finishZoom()V

    .line 1158
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    return p1

    .line 1161
    :cond_27
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isInPinchToZoomTouchMode:Z

    if-nez v0, :cond_28

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v6, :cond_28

    .line 1162
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float/2addr v2, v5

    float-to-double v5, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchStartDistance:F

    .line 1163
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v8

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchCenterX:F

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchStartCenterX:F

    .line 1164
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v8

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchCenterY:F

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchStartCenterY:F

    .line 1165
    iput v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchScale:F

    .line 1167
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pointerId1:I

    .line 1168
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pointerId2:I

    .line 1169
    iput-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isInPinchToZoomTouchMode:Z

    .line 1212
    :cond_28
    :goto_c
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->canZoomGesture:Z

    if-nez p1, :cond_2a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapGesture:Z

    if-nez p1, :cond_2a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    if-eqz p1, :cond_29

    goto :goto_d

    :cond_29
    const/4 v3, 0x0

    :cond_2a
    :goto_d
    return v3

    .line 1139
    :cond_2b
    :goto_e
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->finishZoom()V

    .line 1140
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapGesture:Z

    if-nez p1, :cond_2d

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    if-nez p1, :cond_2d

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    if-eqz p1, :cond_2c

    goto :goto_f

    :cond_2c
    const/4 v3, 0x0

    :cond_2d
    :goto_f
    return v3

    .line 1057
    :cond_2e
    :goto_10
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->finishZoom()V

    return v4
.end method

.method protected onUiVisibilityChanged()V
    .locals 0

    return-void
.end method

.method public requestFullscreen(Lorg/telegram/messenger/ChatObject$VideoParticipant;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    .line 651
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ChatObject$VideoParticipant;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return-void

    :cond_2
    if-nez v1, :cond_3

    const-wide/16 v2, 0x0

    goto :goto_0

    .line 662
    :cond_3
    iget-object v2, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    .line 663
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v4, :cond_4

    .line 664
    invoke-virtual {v4}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->runDelayedAnimations()V

    .line 667
    :cond_4
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->replaceFullscreenViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_5

    .line 668
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 670
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    .line 671
    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v6, :cond_6

    .line 672
    iget-object v7, v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-boolean v6, v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v4, v7, v5, v6}, Lorg/telegram/messenger/voip/VoIPService;->requestFullScreen(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZZ)V

    .line 674
    :cond_6
    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    const/4 v6, 0x1

    if-eqz v4, :cond_7

    if-eqz v1, :cond_7

    .line 676
    iget-object v7, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-boolean v8, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v4, v7, v6, v8}, Lorg/telegram/messenger/voip/VoIPService;->requestFullScreen(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZZ)V

    .line 678
    :cond_7
    iput-wide v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenPeerId:J

    .line 680
    iget-boolean v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    .line 681
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lastUpdateTime:J

    const-wide/16 v3, 0x15e

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-nez v1, :cond_10

    .line 684
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz v1, :cond_f

    .line 685
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_8

    .line 686
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 688
    :cond_8
    iput-boolean v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    .line 690
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v11, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v11, :cond_9

    iget-object v11, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-nez v11, :cond_9

    iget-object v11, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v11, :cond_a

    :cond_9
    iget-object v1, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v11, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-boolean v1, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    iget-object v12, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    invoke-static {v11, v1, v12}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 691
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->forceDetach(Z)V

    .line 692
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v1, :cond_b

    .line 693
    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    .line 695
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz v1, :cond_c

    .line 696
    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    .line 698
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v1, :cond_d

    .line 699
    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    .line 701
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    .line 702
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    new-instance v12, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$7;

    invoke-direct {v12, v0, v1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$7;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 710
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 712
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v1, v5, v6}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setShowingInFullscreen(ZZ)V

    .line 715
    :cond_f
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 716
    iput-boolean v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hasPinnedVideo:Z

    goto/16 :goto_a

    :cond_10
    const/4 v11, 0x0

    .line 719
    :goto_2
    iget-object v12, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_12

    .line 720
    iget-object v12, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v12, v12, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    invoke-virtual {v12, v1}, Lorg/telegram/messenger/ChatObject$VideoParticipant;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 721
    iget-object v12, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    goto :goto_3

    :cond_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_12
    move-object v11, v10

    :goto_3
    const/high16 v12, 0x3f000000    # 0.5f

    if-eqz v11, :cond_1e

    .line 727
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_13

    .line 728
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 730
    :cond_13
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-nez v1, :cond_14

    .line 731
    iput-boolean v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    .line 732
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->clearCurrentFullscreenTextureView()V

    .line 733
    iput-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    .line 734
    invoke-virtual {v11, v6, v6}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setShowingInFullscreen(ZZ)V

    .line 735
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 736
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    iget-boolean v11, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hasPinnedVideo:Z

    invoke-virtual {v1, v11, v5}, Lorg/telegram/ui/Components/CrossOutDrawable;->setCrossOut(ZZ)V

    goto/16 :goto_9

    .line 738
    :cond_14
    iput-boolean v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hasPinnedVideo:Z

    .line 739
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    invoke-virtual {v1, v5, v5}, Lorg/telegram/ui/Components/CrossOutDrawable;->setCrossOut(ZZ)V

    .line 740
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->forceDetach(Z)V

    .line 741
    invoke-virtual {v11, v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->forceDetach(Z)V

    .line 745
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isTablet:Z

    if-nez v1, :cond_18

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v13, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v13, :cond_15

    iget-object v13, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-nez v13, :cond_15

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v1, :cond_18

    .line 746
    :cond_15
    new-instance v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    iget-object v14, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v15, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {v1, v0, v13, v14, v15}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Ljava/util/ArrayList;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)V

    .line 747
    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v14, v13, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    iget-object v15, v13, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    iget-object v13, v13, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    invoke-virtual {v1, v14, v15, v13}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setViews(Lorg/telegram/ui/Components/voip/GroupCallGridCell;Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;Lorg/telegram/ui/Components/voip/GroupCallGridCell;)V

    .line 748
    iget-boolean v13, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    invoke-virtual {v1, v13, v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setFullscreenMode(ZZ)V

    .line 749
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateAttachState(Z)V

    .line 750
    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v13, v13, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v13, :cond_16

    .line 751
    invoke-virtual {v13, v1}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    .line 753
    :cond_16
    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v13, v13, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz v13, :cond_17

    .line 754
    invoke-virtual {v13, v1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    .line 756
    :cond_17
    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v13, v13, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v13, :cond_19

    .line 757
    invoke-virtual {v13, v1}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    goto :goto_4

    :cond_18
    move-object v1, v10

    .line 761
    :cond_19
    :goto_4
    new-instance v13, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v14, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    iget-object v15, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {v13, v0, v14, v15, v3}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Ljava/util/ArrayList;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)V

    .line 762
    iget-object v3, v11, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iput-object v3, v13, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    .line 763
    iget-object v3, v11, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    iget-object v4, v11, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    iget-object v14, v11, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    invoke-virtual {v13, v3, v4, v14}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setViews(Lorg/telegram/ui/Components/voip/GroupCallGridCell;Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;Lorg/telegram/ui/Components/voip/GroupCallGridCell;)V

    .line 764
    iget-boolean v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    invoke-virtual {v13, v3, v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setFullscreenMode(ZZ)V

    .line 765
    invoke-virtual {v13, v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateAttachState(Z)V

    .line 766
    iget-object v3, v13, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v3, v3, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v3, v7}, Landroid/view/TextureView;->setAlpha(F)V

    .line 767
    iget-object v3, v13, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v3, v3, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    invoke-virtual {v3, v7}, Landroid/view/TextureView;->setAlpha(F)V

    .line 769
    iget-object v3, v11, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v3, :cond_1a

    .line 770
    invoke-virtual {v3, v13}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    .line 772
    :cond_1a
    iget-object v3, v11, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz v3, :cond_1b

    .line 773
    invoke-virtual {v3, v13}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    .line 775
    :cond_1b
    iget-object v3, v11, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v3, :cond_1c

    .line 776
    invoke-virtual {v3, v13}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    .line 779
    :cond_1c
    iput-boolean v6, v13, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateEnter:Z

    .line 780
    invoke-virtual {v13, v9}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 781
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iput-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    .line 782
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    fill-array-data v4, :array_0

    invoke-static {v13, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->replaceFullscreenViewAnimator:Landroid/animation/ValueAnimator;

    .line 783
    new-instance v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$8;

    invoke-direct {v4, v0, v13, v11}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$8;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v1, :cond_1d

    .line 798
    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 799
    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 800
    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 801
    iput-boolean v6, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateEnter:Z

    .line 805
    :cond_1d
    new-instance v3, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda9;

    invoke-direct {v3, v0, v11, v1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v13, v3}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->runOnFrameRendered(Ljava/lang/Runnable;)V

    .line 830
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->clearCurrentFullscreenTextureView()V

    .line 831
    iput-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    .line 832
    invoke-virtual {v13, v6, v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setShowingInFullscreen(ZZ)V

    .line 833
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->update()V

    goto/16 :goto_9

    .line 836
    :cond_1e
    iget-boolean v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz v3, :cond_26

    .line 837
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v4, v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v4, :cond_22

    iget-object v4, v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz v4, :cond_1f

    const/4 v4, 0x1

    goto :goto_5

    :cond_1f
    const/4 v4, 0x0

    :goto_5
    iget-object v11, v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v11, :cond_20

    const/4 v11, 0x1

    goto :goto_6

    :cond_20
    const/4 v11, 0x0

    :goto_6
    or-int/2addr v4, v11

    if-eqz v4, :cond_21

    goto :goto_7

    .line 864
    :cond_21
    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->forceDetach(Z)V

    goto :goto_8

    .line 838
    :cond_22
    :goto_7
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->forceDetach(Z)V

    .line 839
    new-instance v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {v3, v0, v4, v11, v13}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Ljava/util/ArrayList;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)V

    .line 840
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v11, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    iget-object v13, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    invoke-virtual {v3, v11, v13, v4}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setViews(Lorg/telegram/ui/Components/voip/GroupCallGridCell;Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;Lorg/telegram/ui/Components/voip/GroupCallGridCell;)V

    .line 841
    iget-boolean v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setFullscreenMode(ZZ)V

    .line 842
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateAttachState(Z)V

    .line 843
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v4, :cond_23

    .line 844
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    .line 846
    :cond_23
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz v4, :cond_24

    .line 847
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    .line 849
    :cond_24
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v4, :cond_25

    .line 850
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    .line 853
    :cond_25
    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 854
    invoke-virtual {v3, v12}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 855
    invoke-virtual {v3, v12}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 856
    iput-boolean v6, v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateEnter:Z

    .line 857
    new-instance v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda8;

    invoke-direct {v4, v0, v3}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->runOnFrameRendered(Ljava/lang/Runnable;)V

    .line 868
    :goto_8
    new-instance v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v12, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {v3, v0, v4, v11, v12}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Ljava/util/ArrayList;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)V

    .line 869
    iput-object v1, v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    .line 870
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    invoke-virtual {v3, v1, v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setFullscreenMode(ZZ)V

    .line 871
    invoke-virtual {v3, v6, v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setShowingInFullscreen(ZZ)V

    .line 873
    iput-boolean v6, v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateEnter:Z

    .line 874
    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 875
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    new-array v1, v8, [F

    .line 876
    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->replaceFullscreenViewAnimator:Landroid/animation/ValueAnimator;

    .line 877
    new-instance v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0, v3}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 881
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->replaceFullscreenViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$12;

    invoke-direct {v4, v0, v3}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$12;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 895
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->replaceFullscreenViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 897
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->clearCurrentFullscreenTextureView()V

    .line 898
    iput-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    .line 899
    invoke-virtual {v3, v6, v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setShowingInFullscreen(ZZ)V

    .line 900
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateAttachState(Z)V

    .line 901
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->update()V

    goto :goto_9

    .line 903
    :cond_26
    iput-boolean v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    .line 904
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->clearCurrentFullscreenTextureView()V

    .line 905
    new-instance v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v12, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {v3, v0, v4, v11, v12}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Ljava/util/ArrayList;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    .line 906
    iput-object v1, v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    .line 907
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    invoke-virtual {v3, v1, v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setFullscreenMode(ZZ)V

    .line 908
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v1, v6, v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setShowingInFullscreen(ZZ)V

    .line 910
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v1, v6, v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setShowingInFullscreen(ZZ)V

    .line 912
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    fill-array-data v4, :array_2

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->replaceFullscreenViewAnimator:Landroid/animation/ValueAnimator;

    .line 913
    new-instance v3, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$13;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$13;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 927
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->replaceFullscreenViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 928
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 929
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    iget-boolean v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hasPinnedVideo:Z

    invoke-virtual {v1, v3, v5}, Lorg/telegram/ui/Components/CrossOutDrawable;->setCrossOut(ZZ)V

    .line 932
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 936
    :goto_a
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eq v2, v1, :cond_2a

    if-nez v1, :cond_27

    .line 938
    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->setUiVisible(Z)V

    .line 939
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnableIsScheduled:Z

    if-eqz v1, :cond_28

    .line 940
    iput-boolean v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnableIsScheduled:Z

    .line 941
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_b

    .line 944
    :cond_27
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 945
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 946
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 947
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 949
    :cond_28
    :goto_b
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->onFullScreenModeChanged(Z)V

    new-array v1, v8, [F

    .line 950
    iget v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    aput v2, v1, v5

    iget-boolean v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz v2, :cond_29

    goto :goto_c

    :cond_29
    const/4 v7, 0x0

    :goto_c
    aput v7, v1, v6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    .line 951
    new-instance v2, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 958
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    .line 959
    iput-boolean v6, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToFullscreen:Z

    .line 960
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getCurrentAccount()I

    move-result v2

    .line 961
    iget-boolean v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipedBack:Z

    .line 962
    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    iget v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->animationIndex:I

    invoke-virtual {v3, v4, v10}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->animationIndex:I

    .line 963
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$14;

    invoke-direct {v4, v0, v2, v1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$14;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;ILorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 986
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 987
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 988
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->synchOrRunAnimation(Landroid/animation/Animator;)V

    .line 991
    :cond_2a
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-nez v1, :cond_2b

    const/4 v5, 0x1

    :cond_2b
    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->animateSwipeToBack(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setAmplitude(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;F)V
    .locals 6

    const/4 v0, 0x0

    .line 1329
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1330
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 1331
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    float-to-double v2, p2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setAmplitude(D)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupCall(Lorg/telegram/messenger/ChatObject$Call;)V
    .locals 0

    .line 1530
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    return-void
.end method

.method public setIsTablet(Z)V
    .locals 3

    .line 378
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isTablet:Z

    if-eq v0, p1, :cond_4

    .line 379
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isTablet:Z

    .line 380
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/16 v1, 0x55

    goto :goto_0

    :cond_0
    const/16 v1, 0x33

    .line 381
    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/16 v2, 0x148

    .line 382
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    .line 383
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    neg-int p1, p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 384
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isTablet:Z

    if-eqz p1, :cond_3

    .line 385
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_calls_minimize:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 387
    :cond_3
    new-instance p1, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {p1, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    const/4 v0, -0x1

    .line 388
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public setProgressToHideUi(F)V
    .locals 1

    .line 1319
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToHideUi:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1320
    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToHideUi:F

    .line 1321
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1322
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz p1, :cond_0

    .line 1323
    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setVisibleParticipant(Z)V
    .locals 19

    move-object/from16 v0, p0

    .line 1377
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isTablet:Z

    if-nez v1, :cond_1c

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_1c

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v1, :cond_0

    goto/16 :goto_c

    .line 1385
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getCurrentAccount()I

    move-result v1

    .line 1386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lastUpdateTooltipTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    .line 1387
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->updateTooltipRunnbale:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    .line 1388
    new-instance v1, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->updateTooltipRunnbale:Ljava/lang/Runnable;

    .line 1391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lastUpdateTooltipTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x32

    add-long/2addr v2, v4

    .line 1388
    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void

    .line 1395
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lastUpdateTooltipTime:J

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1397
    :goto_0
    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v10, v10, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10}, Landroidx/collection/LongSparseArray;->size()I

    move-result v10

    const/4 v11, 0x3

    const/4 v12, 0x1

    if-ge v5, v10, :cond_11

    .line 1398
    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v10, v10, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10, v5}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v13

    .line 1399
    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v10, v10, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10, v13, v14}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 1400
    iget-boolean v13, v10, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->self:Z

    if-nez v13, :cond_f

    iget-boolean v13, v10, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted_by_you:Z

    if-nez v13, :cond_f

    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v13, v13, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v13}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v13

    iget-object v15, v10, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v15}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v15

    cmp-long v17, v13, v15

    if-nez v17, :cond_3

    goto/16 :goto_5

    .line 1403
    :cond_3
    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v13}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v13

    .line 1404
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    move/from16 v18, v5

    iget-wide v4, v10, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastSpeakTime:J

    sub-long/2addr v15, v4

    cmp-long v4, v15, v6

    if-gez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_10

    if-nez v8, :cond_5

    .line 1408
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object v8, v4

    :cond_5
    if-nez v9, :cond_6

    .line 1411
    iget-object v4, v10, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    iput-wide v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingToastPeerId:J

    :cond_6
    if-ge v9, v11, :cond_e

    const-wide/16 v4, 0x0

    cmp-long v15, v13, v4

    if-lez v15, :cond_7

    .line 1414
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    :goto_2
    if-gtz v15, :cond_8

    .line 1415
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v5, v13}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    :goto_3
    if-nez v4, :cond_9

    if-nez v5, :cond_9

    goto :goto_6

    .line 1419
    :cond_9
    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersAvatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v13, v9, v1, v10}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    if-eqz v9, :cond_a

    const-string v10, ", "

    .line 1421
    invoke-virtual {v8, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_a
    const-string v10, "fonts/rmedium.ttf"

    const/16 v13, 0x15

    if-eqz v4, :cond_c

    .line 1424
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v13, :cond_b

    .line 1425
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-direct {v5, v10}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v8, v4, v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 1427
    :cond_b
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 1430
    :cond_c
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v13, :cond_d

    .line 1431
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-instance v5, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-direct {v5, v10}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v8, v4, v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 1433
    :cond_d
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v8, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_e
    :goto_4
    add-int/lit8 v9, v9, 0x1

    if-ne v9, v11, :cond_10

    goto :goto_7

    :cond_f
    :goto_5
    move/from16 v18, v5

    :cond_10
    :goto_6
    add-int/lit8 v5, v18, 0x1

    goto/16 :goto_0

    :cond_11
    :goto_7
    if-nez v9, :cond_12

    const/4 v4, 0x0

    goto :goto_8

    :cond_12
    const/4 v4, 0x1

    .line 1450
    :goto_8
    iget-boolean v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToast:Z

    if-nez v5, :cond_13

    if-eqz v4, :cond_13

    const/4 v2, 0x0

    goto :goto_9

    :cond_13
    if-nez v4, :cond_14

    if-eqz v5, :cond_14

    .line 1453
    iput-boolean v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToast:Z

    .line 1454
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    :cond_14
    if-eqz v5, :cond_15

    if-eqz v4, :cond_15

    .line 1457
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    int-to-float v5, v5

    iput v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastFromLeft:F

    .line 1458
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getRight()I

    move-result v5

    int-to-float v5, v5

    iput v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastFromRight:F

    .line 1459
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    iput v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastFromTextLeft:F

    .line 1460
    iput v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastChangeProgress:F

    :cond_15
    move/from16 v2, p1

    :goto_9
    if-nez v4, :cond_16

    .line 1464
    iput-boolean v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToast:Z

    .line 1465
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    :cond_16
    const-string v5, "MembersAreSpeakingToast"

    .line 1468
    invoke-static {v5, v9}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "un1"

    .line 1469
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1470
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v5, -0x1

    if-eq v6, v5, :cond_17

    add-int/lit8 v5, v6, 0x3

    .line 1473
    invoke-virtual {v7, v6, v5, v8}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1474
    :cond_17
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersText:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v9, :cond_18

    goto :goto_a

    :cond_18
    if-ne v9, v12, :cond_19

    const/16 v3, 0x28

    .line 1480
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    goto :goto_a

    :cond_19
    const/4 v3, 0x2

    if-ne v9, v3, :cond_1a

    const/16 v3, 0x40

    .line 1482
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    goto :goto_a

    :cond_1a
    const/16 v3, 0x58

    .line 1484
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 1486
    :goto_a
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1487
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1489
    iput-boolean v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToast:Z

    .line 1490
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_b
    if-ge v9, v11, :cond_1b

    .line 1493
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersAvatars:Lorg/telegram/ui/Components/AvatarsImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v9, v1, v4}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 1497
    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersAvatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    return-void

    .line 1378
    :cond_1c
    :goto_c
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToast:Z

    if-eqz v1, :cond_1d

    .line 1379
    iput-boolean v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToast:Z

    .line 1380
    iput v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToastProgress:F

    :cond_1d
    return-void
.end method

.method protected update()V
    .locals 0

    .line 1002
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
