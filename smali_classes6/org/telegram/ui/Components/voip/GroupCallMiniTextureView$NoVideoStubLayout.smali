.class Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;
.super Landroid/view/View;
.source "GroupCallMiniTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoVideoStubLayout"
.end annotation


# instance fields
.field amplitude:F

.field animateAmplitudeDiff:F

.field animateToAmplitude:F

.field avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field public avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field public backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field backgroundPaint:Landroid/graphics/Paint;

.field bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

.field private currentState:Lorg/telegram/ui/GroupCallActivity$WeavingState;

.field cx:F

.field cy:F

.field muteButtonState:I

.field paint:Landroid/graphics/Paint;

.field private prevState:Lorg/telegram/ui/GroupCallActivity$WeavingState;

.field speakingProgress:F

.field private states:[Lorg/telegram/ui/GroupCallActivity$WeavingState;

.field switchProgress:F

.field final synthetic this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

.field tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/content/Context;)V
    .locals 2

    .line 1598
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    .line 1599
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1581
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1582
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1583
    new-instance p1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 1588
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->paint:Landroid/graphics/Paint;

    .line 1589
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->backgroundPaint:Landroid/graphics/Paint;

    const/4 p1, 0x3

    new-array p1, p1, [Lorg/telegram/ui/GroupCallActivity$WeavingState;

    .line 1699
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->states:[Lorg/telegram/ui/GroupCallActivity$WeavingState;

    const/4 p1, -0x1

    .line 1703
    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->muteButtonState:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1707
    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->switchProgress:F

    .line 1601
    new-instance p1, Lorg/telegram/ui/Components/BlobDrawable;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/BlobDrawable;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    .line 1602
    new-instance p1, Lorg/telegram/ui/Components/BlobDrawable;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/BlobDrawable;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    .line 1604
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/16 p2, 0x4c

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    .line 1605
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/16 p2, 0x5c

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    .line 1606
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BlobDrawable;->generateBlob()V

    .line 1608
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/16 p2, 0x50

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    .line 1609
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/16 p2, 0x5f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    .line 1610
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BlobDrawable;->generateBlob()V

    .line 1612
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->paint:Landroid/graphics/Paint;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listeningText:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_speakingText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->speakingProgress:F

    invoke-static {p2, v0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1613
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->paint:Landroid/graphics/Paint;

    const/16 p2, 0x66

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1615
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    const/16 v0, 0x7f

    invoke-static {p2, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;Z)V
    .locals 0

    .line 1579
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->updateMuteButtonState(Z)V

    return-void
.end method

.method private updateMuteButtonState(Z)V
    .locals 13

    .line 1711
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$1500(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isMutedByMe()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$1500(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isMutedByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1713
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$1500(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    .line 1718
    :goto_1
    iget v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->muteButtonState:I

    if-ne v0, v4, :cond_3

    return-void

    .line 1721
    :cond_3
    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->muteButtonState:I

    .line 1723
    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->states:[Lorg/telegram/ui/GroupCallActivity$WeavingState;

    aget-object v5, v4, v0

    if-nez v5, :cond_6

    .line 1724
    new-instance v5, Lorg/telegram/ui/GroupCallActivity$WeavingState;

    invoke-direct {v5, v0}, Lorg/telegram/ui/GroupCallActivity$WeavingState;-><init>(I)V

    aput-object v5, v4, v0

    .line 1725
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->muteButtonState:I

    if-ne v0, v3, :cond_4

    .line 1726
    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->states:[Lorg/telegram/ui/GroupCallActivity$WeavingState;

    aget-object v0, v4, v0

    new-instance v12, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    const/high16 v6, 0x43c80000    # 400.0f

    const/high16 v7, 0x43c80000    # 400.0f

    const/4 v8, 0x0

    const/4 v4, 0x3

    new-array v9, v4, [I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminGradient:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    aput v4, v9, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminGradient3:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    aput v1, v9, v2

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminGradient2:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    aput v1, v9, v3

    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v12, v0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->shader:Landroid/graphics/Shader;

    goto :goto_2

    :cond_4
    if-ne v0, v2, :cond_5

    .line 1728
    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->states:[Lorg/telegram/ui/GroupCallActivity$WeavingState;

    aget-object v0, v4, v0

    new-instance v11, Landroid/graphics/RadialGradient;

    const/high16 v5, 0x43480000    # 200.0f

    const/high16 v6, 0x43480000    # 200.0f

    const/high16 v7, 0x43480000    # 200.0f

    new-array v8, v3, [I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_muteButton:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    aput v3, v8, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_muteButton3:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    aput v1, v8, v2

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v11, v0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->shader:Landroid/graphics/Shader;

    goto :goto_2

    .line 1730
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->states:[Lorg/telegram/ui/GroupCallActivity$WeavingState;

    aget-object v0, v4, v0

    new-instance v11, Landroid/graphics/RadialGradient;

    const/high16 v5, 0x43480000    # 200.0f

    const/high16 v6, 0x43480000    # 200.0f

    const/high16 v7, 0x43480000    # 200.0f

    new-array v8, v3, [I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_unmuteButton2:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    aput v3, v8, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_unmuteButton:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    aput v1, v8, v2

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v11, v0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->shader:Landroid/graphics/Shader;

    .line 1733
    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->states:[Lorg/telegram/ui/GroupCallActivity$WeavingState;

    iget v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->muteButtonState:I

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->currentState:Lorg/telegram/ui/GroupCallActivity$WeavingState;

    if-eq v2, v3, :cond_9

    .line 1734
    iput-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->prevState:Lorg/telegram/ui/GroupCallActivity$WeavingState;

    .line 1735
    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->currentState:Lorg/telegram/ui/GroupCallActivity$WeavingState;

    if-eqz v3, :cond_8

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    .line 1740
    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->switchProgress:F

    goto :goto_4

    :cond_8
    :goto_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1737
    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->switchProgress:F

    const/4 p1, 0x0

    .line 1738
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->prevState:Lorg/telegram/ui/GroupCallActivity$WeavingState;

    .line 1743
    :cond_9
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 1759
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1760
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 1761
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1766
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1767
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 1768
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1630
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1632
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v3, v2, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipHorizontal:F

    add-float/2addr v1, v3

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v3, v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v4, v3, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipVertical:F

    add-float/2addr v2, v4

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getX()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v5, v4, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipHorizontal:F

    sub-float/2addr v3, v5

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v5, v5, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipVertical:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1633
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1634
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v2, v2, Lorg/telegram/ui/Components/voip/VoIPTextureView;->roundRadius:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 1635
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1637
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->roundRadius:F

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1639
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->animateToAmplitude:F

    iget v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->amplitude:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    .line 1640
    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->animateAmplitudeDiff:F

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->amplitude:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    .line 1643
    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->amplitude:F

    goto :goto_0

    :cond_0
    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    .line 1647
    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->amplitude:F

    .line 1652
    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->switchProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    .line 1653
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->prevState:Lorg/telegram/ui/GroupCallActivity$WeavingState;

    if-eqz v2, :cond_2

    const v2, 0x3d94f209

    add-float/2addr v0, v2

    .line 1654
    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->switchProgress:F

    .line 1656
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->switchProgress:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 1657
    iput v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->switchProgress:F

    const/4 v0, 0x0

    .line 1658
    iput-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->prevState:Lorg/telegram/ui/GroupCallActivity$WeavingState;

    :cond_3
    const v0, 0x3f4ccccd    # 0.8f

    .line 1662
    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->amplitude:F

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    .line 1663
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1664
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cx:F

    iget v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cy:F

    invoke-virtual {p1, v2, v2, v0, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1666
    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->currentState:Lorg/telegram/ui/GroupCallActivity$WeavingState;

    if-eqz v4, :cond_4

    .line 1667
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cy:F

    const/16 v2, 0x64

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    float-to-int v5, v0

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cx:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v6, v0

    const/16 v0, 0xc8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const-wide/16 v8, 0x10

    iget v10, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->amplitude:F

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/GroupCallActivity$WeavingState;->update(IIIJF)V

    .line 1669
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->amplitude:F

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/BlobDrawable;->update(FF)V

    .line 1670
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->amplitude:F

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/BlobDrawable;->update(FF)V

    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x2

    if-ge v0, v2, :cond_7

    if-nez v0, :cond_5

    .line 1674
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->prevState:Lorg/telegram/ui/GroupCallActivity$WeavingState;

    if-eqz v2, :cond_5

    .line 1675
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->paint:Landroid/graphics/Paint;

    iget-object v2, v2, Lorg/telegram/ui/GroupCallActivity$WeavingState;->shader:Landroid/graphics/Shader;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1676
    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->switchProgress:F

    sub-float v2, v1, v2

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 1677
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->currentState:Lorg/telegram/ui/GroupCallActivity$WeavingState;

    if-eqz v2, :cond_6

    .line 1678
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->paint:Landroid/graphics/Paint;

    iget-object v2, v2, Lorg/telegram/ui/GroupCallActivity$WeavingState;->shader:Landroid/graphics/Shader;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1679
    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->switchProgress:F

    .line 1684
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x42980000    # 76.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1685
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cx:F

    iget v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cy:F

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, p1, v5}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1686
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cx:F

    iget v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cy:F

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, p1, v5}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1688
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const v0, 0x3e4ccccd    # 0.2f

    .line 1690
    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->amplitude:F

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    .line 1691
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1692
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cx:F

    iget v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cy:F

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1693
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1694
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1696
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1620
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/16 p1, 0x9d

    .line 1621
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    .line 1622
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    shr-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    iput p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cx:F

    .line 1623
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    shr-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    sget-boolean v0, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const v1, 0x3df5c28f    # 0.12f

    mul-float/2addr v0, v1

    :goto_0
    add-float/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cy:F

    .line 1624
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    float-to-int v1, v0

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 1625
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cx:F

    sub-float/2addr v1, v0

    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cy:F

    sub-float/2addr v2, v0

    invoke-virtual {p2, v1, v2, p1, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    return-void
.end method

.method public setAmplitude(D)V
    .locals 2

    double-to-float p1, p1

    const/high16 p2, 0x42a00000    # 80.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v0, p1, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    cmpg-float p2, p1, v1

    if-gez p2, :cond_1

    move p1, v1

    .line 1753
    :cond_1
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->animateToAmplitude:F

    .line 1754
    iget p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->amplitude:F

    sub-float/2addr p1, p2

    const/high16 p2, 0x43480000    # 200.0f

    div-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->animateAmplitudeDiff:F

    return-void
.end method
