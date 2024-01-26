.class Lorg/telegram/ui/GroupCallActivity$17;
.super Landroid/widget/FrameLayout;
.source "GroupCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;-><init>(Landroid/content/Context;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field currentButtonsAnimation:Landroid/animation/AnimatorSet;

.field currentLightColor:I

.field final overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;Landroid/content/Context;)V
    .locals 0

    .line 3481
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3713
    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-direct {p1, p2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$17;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3719
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$10400(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$9600(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 3722
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    div-int/lit8 v6, v2, 0x2

    .line 3724
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3725
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12300(Lorg/telegram/ui/GroupCallActivity;)J

    move-result-wide v7

    sub-long v7, v4, v7

    .line 3726
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/GroupCallActivity;->access$12302(Lorg/telegram/ui/GroupCallActivity;J)J

    const-wide/16 v4, 0x14

    cmp-long v2, v7, v4

    if-lez v2, :cond_1

    const-wide/16 v7, 0x11

    :cond_1
    move-wide v11, v7

    .line 3731
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3732
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$10500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v10

    move-wide v8, v11

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/GroupCallActivity$WeavingState;->update(IIIJF)V

    .line 3735
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/BlobDrawable;

    move-result-object v2

    const/16 v4, 0x3e

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, v2, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    .line 3736
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/BlobDrawable;

    move-result-object v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    const/16 v5, 0x14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sget v7, Lorg/telegram/ui/Components/BlobDrawable;->FORM_SMALL_MAX:F

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    iput v4, v2, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    .line 3738
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/BlobDrawable;

    move-result-object v2

    const/16 v4, 0x41

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iput v6, v2, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    .line 3739
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/BlobDrawable;

    move-result-object v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sget v7, Lorg/telegram/ui/Components/BlobDrawable;->FORM_BIG_MAX:F

    mul-float/2addr v5, v7

    add-float/2addr v6, v5

    iput v6, v2, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    .line 3741
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12700(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$10500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v5

    cmpl-float v2, v2, v5

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    .line 3742
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v6

    long-to-float v7, v11

    mul-float/2addr v6, v7

    invoke-static {v2, v6}, Lorg/telegram/ui/GroupCallActivity;->access$10516(Lorg/telegram/ui/GroupCallActivity;F)F

    .line 3743
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 3744
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$10500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v2

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$12700(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_4

    .line 3745
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12700(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v6

    invoke-static {v2, v6}, Lorg/telegram/ui/GroupCallActivity;->access$10502(Lorg/telegram/ui/GroupCallActivity;F)F

    goto :goto_0

    .line 3748
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$10500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v2

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$12700(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v6

    cmpg-float v2, v2, v6

    if-gez v2, :cond_4

    .line 3749
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12700(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v6

    invoke-static {v2, v6}, Lorg/telegram/ui/GroupCallActivity;->access$10502(Lorg/telegram/ui/GroupCallActivity;F)F

    .line 3755
    :cond_4
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v2

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_5

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    if-ne v2, v6, :cond_5

    .line 3756
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$13000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v2

    invoke-virtual {v2, v8, v8}, Lorg/telegram/ui/Components/RadialProgressView;->toCircle(ZZ)V

    .line 3757
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$13000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RadialProgressView;->isCircle()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v7

    goto :goto_1

    .line 3760
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    if-ne v2, v6, :cond_6

    .line 3761
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$13000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v2

    invoke-virtual {v2, v8, v7}, Lorg/telegram/ui/Components/RadialProgressView;->toCircle(ZZ)V

    :cond_6
    move v2, v8

    :goto_1
    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v2, :cond_15

    .line 3764
    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$13100(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v13

    cmpl-float v13, v13, v10

    const/high16 v14, 0x43340000    # 180.0f

    if-eqz v13, :cond_9

    .line 3765
    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$12900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v13

    if-eqz v13, :cond_7

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$12900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v13

    iget v13, v13, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    if-ne v13, v6, :cond_7

    .line 3766
    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    long-to-float v15, v11

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    invoke-static {v13, v15}, Lorg/telegram/ui/GroupCallActivity;->access$13116(Lorg/telegram/ui/GroupCallActivity;F)F

    goto :goto_2

    .line 3768
    :cond_7
    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    long-to-float v15, v11

    div-float/2addr v15, v14

    invoke-static {v13, v15}, Lorg/telegram/ui/GroupCallActivity;->access$13116(Lorg/telegram/ui/GroupCallActivity;F)F

    .line 3771
    :goto_2
    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$13100(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v13

    cmpl-float v13, v13, v10

    if-ltz v13, :cond_8

    .line 3772
    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13, v10}, Lorg/telegram/ui/GroupCallActivity;->access$13102(Lorg/telegram/ui/GroupCallActivity;F)F

    .line 3773
    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13, v9}, Lorg/telegram/ui/GroupCallActivity;->access$12902(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/ui/GroupCallActivity$WeavingState;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    .line 3774
    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v13

    if-eqz v13, :cond_8

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v13

    iget v13, v13, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    if-ne v13, v6, :cond_8

    .line 3775
    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$13000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Lorg/telegram/ui/Components/RadialProgressView;->toCircle(ZZ)V

    .line 3778
    :cond_8
    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13, v8}, Lorg/telegram/ui/GroupCallActivity;->access$13202(Lorg/telegram/ui/GroupCallActivity;Z)Z

    .line 3781
    :cond_9
    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$13200(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v13

    if-eqz v13, :cond_c

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 3782
    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13, v7}, Lorg/telegram/ui/GroupCallActivity;->access$13202(Lorg/telegram/ui/GroupCallActivity;Z)Z

    .line 3786
    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$12900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 3787
    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$12900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v15

    iget v15, v15, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$13300(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v4

    invoke-static {v13, v15, v4}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;I[I)V

    .line 3788
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$13300(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v4

    aget v4, v4, v7

    .line 3789
    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$13300(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v13

    aget v13, v13, v8

    .line 3790
    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$13300(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v15

    aget v15, v15, v3

    .line 3791
    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v10

    iget v10, v10, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$13300(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v5

    invoke-static {v9, v10, v5}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;I[I)V

    .line 3792
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$13300(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v5

    aget v5, v5, v7

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$13100(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v9

    invoke-static {v4, v5, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    .line 3793
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$13300(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v5

    aget v5, v5, v8

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$13100(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v9

    invoke-static {v13, v5, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    .line 3794
    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$13300(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v9

    aget v9, v9, v3

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$13100(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v10

    invoke-static {v15, v9, v10}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v9

    goto :goto_3

    .line 3796
    :cond_a
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v5

    iget v5, v5, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$13300(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v9

    invoke-static {v4, v5, v9}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;I[I)V

    .line 3797
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$13300(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v4

    aget v4, v4, v7

    .line 3798
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$13300(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v5

    aget v5, v5, v8

    .line 3799
    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$13300(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v9

    aget v9, v9, v3

    .line 3801
    :goto_3
    iget v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->currentLightColor:I

    if-eq v10, v4, :cond_b

    .line 3802
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    new-instance v13, Landroid/graphics/RadialGradient;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v15, 0x64

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    new-array v14, v3, [I

    const/16 v3, 0x3c

    invoke-static {v4, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    aput v3, v14, v7

    invoke-static {v4, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    aput v3, v14, v8

    const/16 v24, 0x0

    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v19, v13

    move/from16 v22, v15

    move-object/from16 v23, v14

    invoke-direct/range {v19 .. v25}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-static {v10, v13}, Lorg/telegram/ui/GroupCallActivity;->access$13502(Lorg/telegram/ui/GroupCallActivity;Landroid/graphics/RadialGradient;)Landroid/graphics/RadialGradient;

    .line 3803
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v3

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/RadialGradient;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3804
    iput v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->currentLightColor:I

    .line 3807
    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$11800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v3

    invoke-virtual {v3, v9, v5}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setBackgroundColor(II)V

    .line 3808
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v3

    invoke-virtual {v3, v9, v5}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setBackgroundColor(II)V

    .line 3809
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$11900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v3

    invoke-virtual {v3, v9, v5}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setBackgroundColor(II)V

    .line 3814
    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 3815
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    if-eq v3, v8, :cond_e

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    if-eqz v3, :cond_e

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->isGradientState(I)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v3, v7

    goto :goto_5

    :cond_e
    :goto_4
    move v3, v8

    .line 3816
    :goto_5
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    if-eq v4, v6, :cond_f

    move v4, v8

    goto :goto_6

    :cond_f
    move v4, v7

    goto :goto_6

    :cond_10
    move v3, v7

    move v4, v3

    .line 3819
    :goto_6
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$12900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v5

    const/high16 v9, 0x43af0000    # 350.0f

    if-eqz v5, :cond_11

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v5

    if-eqz v5, :cond_11

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v5

    iget v5, v5, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    if-ne v5, v6, :cond_11

    .line 3820
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    long-to-float v5, v11

    const/high16 v10, 0x43340000    # 180.0f

    div-float/2addr v5, v10

    invoke-static {v3, v5}, Lorg/telegram/ui/GroupCallActivity;->access$13724(Lorg/telegram/ui/GroupCallActivity;F)F

    .line 3821
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13700(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v3

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_13

    .line 3822
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3, v5}, Lorg/telegram/ui/GroupCallActivity;->access$13702(Lorg/telegram/ui/GroupCallActivity;F)F

    goto :goto_7

    :cond_11
    if-eqz v3, :cond_12

    .line 3825
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$13700(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v5

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_12

    .line 3826
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    long-to-float v5, v11

    div-float/2addr v5, v9

    invoke-static {v3, v5}, Lorg/telegram/ui/GroupCallActivity;->access$13716(Lorg/telegram/ui/GroupCallActivity;F)F

    .line 3827
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13700(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v3

    cmpl-float v3, v3, v10

    if-lez v3, :cond_13

    .line 3828
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3, v10}, Lorg/telegram/ui/GroupCallActivity;->access$13702(Lorg/telegram/ui/GroupCallActivity;F)F

    goto :goto_7

    :cond_12
    if-nez v3, :cond_13

    .line 3830
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13700(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_13

    .line 3831
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    long-to-float v10, v11

    div-float/2addr v10, v9

    invoke-static {v3, v10}, Lorg/telegram/ui/GroupCallActivity;->access$13724(Lorg/telegram/ui/GroupCallActivity;F)F

    .line 3832
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13700(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_13

    .line 3833
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3, v5}, Lorg/telegram/ui/GroupCallActivity;->access$13702(Lorg/telegram/ui/GroupCallActivity;F)F

    :cond_13
    :goto_7
    if-eqz v4, :cond_14

    .line 3838
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_14

    .line 3839
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    long-to-float v4, v11

    div-float/2addr v4, v9

    invoke-static {v3, v4}, Lorg/telegram/ui/GroupCallActivity;->access$13816(Lorg/telegram/ui/GroupCallActivity;F)F

    .line 3840
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_15

    .line 3841
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3, v5}, Lorg/telegram/ui/GroupCallActivity;->access$13802(Lorg/telegram/ui/GroupCallActivity;F)F

    goto :goto_8

    :cond_14
    if-nez v4, :cond_15

    .line 3843
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_15

    .line 3844
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    long-to-float v5, v11

    div-float/2addr v5, v9

    invoke-static {v3, v5}, Lorg/telegram/ui/GroupCallActivity;->access$13824(Lorg/telegram/ui/GroupCallActivity;F)F

    .line 3845
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_15

    .line 3846
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3, v4}, Lorg/telegram/ui/GroupCallActivity;->access$13802(Lorg/telegram/ui/GroupCallActivity;F)F

    .line 3851
    :cond_15
    :goto_8
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$13700(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result v3

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    .line 3855
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$12600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/BlobDrawable;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$10500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v5

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v9}, Lorg/telegram/ui/Components/BlobDrawable;->update(FF)V

    .line 3856
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$12500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/BlobDrawable;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$10500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v5

    invoke-virtual {v4, v5, v9}, Lorg/telegram/ui/Components/BlobDrawable;->update(FF)V

    .line 3858
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$12900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v4

    const/16 v5, 0x34

    const/16 v9, 0xa0

    const v10, 0x3f333333    # 0.7f

    const/high16 v11, 0x3f000000    # 0.5f

    const/16 v12, 0xff

    const/high16 v13, 0x40000000    # 2.0f

    if-eqz v4, :cond_1c

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v4

    if-eqz v4, :cond_1c

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    if-eq v4, v6, :cond_16

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$12900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    if-ne v4, v6, :cond_1c

    .line 3860
    :cond_16
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    if-ne v4, v6, :cond_17

    .line 3861
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$13100(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v4

    .line 3862
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$12900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/GroupCallActivity$WeavingState;->shader:Landroid/graphics/Shader;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_9

    .line 3864
    :cond_17
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$13100(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v4, v6, v4

    .line 3865
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/GroupCallActivity$WeavingState;->shader:Landroid/graphics/Shader;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3868
    :goto_9
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackgroundUnscrolled:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_disabledButton:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$14000(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v15

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v7, v8, v15, v14}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 3870
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getX()F

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    const/4 v8, 0x2

    div-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 3871
    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getY()F

    move-result v7

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v14

    div-int/2addr v14, v8

    int-to-float v8, v14

    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 3872
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$14200(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Matrix;

    move-result-object v8

    int-to-float v6, v6

    int-to-float v7, v7

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 3873
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/RadialGradient;

    move-result-object v8

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$14200(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Matrix;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 3875
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v8

    const/16 v14, 0x4c

    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3877
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v8, v8, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v8, :cond_18

    .line 3878
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v13

    .line 3879
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getX()F

    move-result v8

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v13

    add-float/2addr v8, v14

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getY()F

    move-result v13

    add-float/2addr v13, v5

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$14300(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v1, v8, v13, v5, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3882
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3883
    sget v5, Lorg/telegram/ui/Components/BlobDrawable;->GLOBAL_SCALE:F

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getScaleX()F

    move-result v8

    mul-float/2addr v5, v8

    sget v8, Lorg/telegram/ui/Components/BlobDrawable;->GLOBAL_SCALE:F

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/ImageView;->getScaleY()F

    move-result v13

    mul-float/2addr v8, v13

    invoke-virtual {v1, v5, v8, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3885
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3886
    sget v5, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_BIG_MIN:F

    sget v8, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_BIG:F

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$10500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v13

    mul-float/2addr v8, v13

    mul-float/2addr v8, v11

    add-float/2addr v5, v8

    .line 3887
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$13800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v8

    mul-float/2addr v8, v5

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$13800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v11

    mul-float/2addr v5, v11

    invoke-virtual {v1, v8, v5, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3889
    sget v5, Lorg/telegram/ui/Components/BlobDrawable;->LIGHT_GRADIENT_SIZE:F

    add-float/2addr v5, v10

    .line 3890
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3891
    invoke-virtual {v1, v5, v5, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3892
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {v1, v6, v7, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3893
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3894
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3896
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v5, v5, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v5, :cond_19

    .line 3897
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3898
    sget v5, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_BIG_MIN:F

    sget v8, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_BIG:F

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$10500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v9

    mul-float/2addr v8, v9

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$14400(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    mul-float/2addr v5, v3

    .line 3899
    invoke-virtual {v1, v5, v5, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3900
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$12600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/BlobDrawable;

    move-result-object v5

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v1, v8}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 3901
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3903
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3904
    sget v5, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_SMALL_MIN:F

    sget v8, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_SMALL:F

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$10500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v9

    mul-float/2addr v8, v9

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$14400(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    mul-float/2addr v5, v3

    .line 3905
    invoke-virtual {v1, v5, v5, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3906
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$12500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/BlobDrawable;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v3, v6, v7, v1, v5}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 3907
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3910
    :cond_19
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v2, :cond_1a

    const/16 v3, 0x39

    .line 3913
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v3, v5

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v1, v6, v7, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3914
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v3

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_connectingProgress:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_1a

    .line 3916
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v3

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v15, v4, v5

    float-to-int v5, v15

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3917
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/16 v3, 0x39

    .line 3918
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v1, v6, v7, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1a
    const/16 v3, 0x37

    .line 3921
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v1, v6, v7, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-nez v2, :cond_1b

    .line 3923
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$13000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v7}, Lorg/telegram/ui/Components/RadialProgressView;->draw(Landroid/graphics/Canvas;FF)V

    .line 3925
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_14

    :cond_1c
    const/4 v2, 0x2

    :goto_a
    if-ge v7, v2, :cond_2e

    const/16 v2, 0x39

    .line 3929
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    if-nez v7, :cond_1d

    .line 3930
    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$12900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v14

    if-eqz v14, :cond_1d

    .line 3931
    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v14

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$12900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v15

    iget-object v15, v15, Lorg/telegram/ui/GroupCallActivity$WeavingState;->shader:Landroid/graphics/Shader;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3932
    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$13100(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v14, v15, v14

    .line 3933
    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$12900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v15

    iget v15, v15, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    if-ne v15, v6, :cond_1e

    const/4 v15, 0x2

    .line 3934
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    :goto_b
    mul-float/2addr v2, v14

    sub-float/2addr v4, v2

    goto :goto_c

    :cond_1d
    if-ne v7, v8, :cond_2d

    .line 3936
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 3937
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v2

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/ui/GroupCallActivity$WeavingState;->shader:Landroid/graphics/Shader;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3938
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$13100(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v14

    .line 3939
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    if-ne v2, v6, :cond_1e

    const/4 v2, 0x2

    .line 3940
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v2, v15

    goto :goto_b

    .line 3945
    :cond_1e
    :goto_c
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    if-nez v2, :cond_1f

    .line 3946
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v2

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackgroundUnscrolled:I

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v15

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_disabledButton:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$14000(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v12

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v15, v6, v12, v9}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 3949
    :cond_1f
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getX()F

    move-result v2

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    const/4 v9, 0x2

    div-int/2addr v6, v9

    int-to-float v6, v6

    add-float/2addr v2, v6

    float-to-int v2, v2

    .line 3950
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getY()F

    move-result v6

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v12

    div-int/2addr v12, v9

    int-to-float v9, v12

    add-float/2addr v6, v9

    float-to-int v6, v6

    .line 3951
    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$14200(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Matrix;

    move-result-object v9

    int-to-float v2, v2

    int-to-float v6, v6

    invoke-virtual {v9, v2, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 3952
    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/RadialGradient;

    move-result-object v9

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$14200(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Matrix;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 3954
    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v9

    const/high16 v12, 0x42980000    # 76.0f

    mul-float/2addr v12, v14

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$14500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v15

    mul-float/2addr v12, v15

    float-to-int v12, v12

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3955
    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$14500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v9

    const/4 v12, 0x0

    cmpl-float v9, v9, v12

    if-lez v9, :cond_20

    if-ne v7, v8, :cond_20

    .line 3957
    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$14300(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    .line 3958
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$14300(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v12

    int-to-float v15, v9

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$14500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v10

    mul-float/2addr v15, v10

    float-to-int v10, v15

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3959
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v13

    .line 3960
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getX()F

    move-result v12

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v15

    const/16 v24, 0x2

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    add-float/2addr v12, v15

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getY()F

    move-result v15

    add-float/2addr v15, v10

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$14300(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v1, v12, v15, v10, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3961
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$14300(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3965
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3966
    sget v5, Lorg/telegram/ui/Components/BlobDrawable;->GLOBAL_SCALE:F

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getScaleX()F

    move-result v9

    mul-float/2addr v5, v9

    sget v9, Lorg/telegram/ui/Components/BlobDrawable;->GLOBAL_SCALE:F

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ImageView;->getScaleX()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-virtual {v1, v5, v9, v2, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3968
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3971
    sget-boolean v5, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v5, :cond_21

    const/16 v5, 0x41

    const/4 v9, 0x0

    goto :goto_d

    :cond_21
    const/16 v5, 0x41

    .line 3974
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$14600(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v10

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v10, v12, v10

    mul-float/2addr v9, v10

    .line 3977
    :goto_d
    sget v10, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_BIG_MIN:F

    sget v12, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_BIG:F

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$10500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v15

    mul-float/2addr v12, v15

    mul-float/2addr v12, v11

    add-float/2addr v10, v12

    .line 3978
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$13800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v12

    mul-float/2addr v12, v10

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$13800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v15

    mul-float/2addr v10, v15

    invoke-virtual {v1, v12, v10, v2, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    if-ne v7, v8, :cond_22

    const/16 v10, 0x200

    .line 3979
    invoke-static {v10}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 3980
    sget v10, Lorg/telegram/ui/Components/BlobDrawable;->LIGHT_GRADIENT_SIZE:F

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$14400(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v12

    mul-float/2addr v10, v12

    const v12, 0x3f333333    # 0.7f

    add-float/2addr v10, v12

    .line 3981
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3982
    invoke-virtual {v1, v10, v10, v2, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3983
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Paint;->getAlpha()I

    move-result v10

    .line 3984
    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v15

    int-to-float v5, v10

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$14500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v11

    mul-float/2addr v5, v11

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget v11, v11, Lorg/telegram/ui/GroupCallActivity;->progressToHideUi:F

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v11, v18, v11

    mul-float/2addr v5, v11

    float-to-int v5, v5

    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v5, 0xa0

    .line 3985
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v15

    invoke-virtual {v1, v2, v6, v11, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3986
    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3987
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_e

    :cond_22
    const/16 v5, 0xa0

    const v12, 0x3f333333    # 0.7f

    const/high16 v18, 0x3f800000    # 1.0f

    .line 3989
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3990
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$14500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_23

    .line 3991
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3992
    sget v10, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_BIG_MIN:F

    sget v11, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_BIG:F

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$10500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v15

    mul-float/2addr v11, v15

    mul-float/2addr v11, v3

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$14400(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v15

    mul-float/2addr v11, v15

    add-float/2addr v10, v11

    .line 3993
    invoke-virtual {v1, v10, v10, v2, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3994
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$12600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/BlobDrawable;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v10, v2, v6, v1, v11}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 3995
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3997
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3998
    sget v10, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_SMALL_MIN:F

    sget v11, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_SMALL:F

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$10500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v15

    mul-float/2addr v11, v15

    mul-float/2addr v11, v3

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$14400(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v15

    mul-float/2addr v11, v15

    add-float/2addr v10, v11

    .line 3999
    invoke-virtual {v1, v10, v10, v2, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4000
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$12500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/BlobDrawable;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v10, v2, v6, v1, v11}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 4001
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4004
    :cond_23
    sget-boolean v10, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v10, :cond_25

    if-nez v7, :cond_24

    .line 4006
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$14600(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v11

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float/2addr v11, v15

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    move v11, v15

    goto :goto_10

    :cond_24
    const/high16 v15, 0x437f0000    # 255.0f

    .line 4008
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v10

    mul-float/2addr v14, v15

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$14600(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v11

    mul-float/2addr v14, v11

    float-to-int v11, v14

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_f

    :cond_25
    if-nez v7, :cond_26

    .line 4012
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v10

    const/16 v11, 0xff

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_f
    const/high16 v11, 0x437f0000    # 255.0f

    goto :goto_10

    .line 4014
    :cond_26
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v10

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v14, v11

    float-to-int v14, v14

    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4018
    :goto_10
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->currentButtonsAnimation:Landroid/animation/AnimatorSet;

    if-nez v10, :cond_27

    .line 4019
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 4021
    :cond_27
    sget-boolean v9, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v9, :cond_28

    move/from16 v10, v18

    goto :goto_11

    :cond_28
    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$14600(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v10

    .line 4022
    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    const/4 v14, 0x2

    div-int/2addr v9, v14

    const/16 v15, 0x15

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    sub-int/2addr v9, v15

    int-to-float v9, v9

    const/16 v15, 0x18

    .line 4023
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    sub-float v19, v4, v9

    mul-float v19, v19, v10

    add-float v9, v9, v19

    .line 4024
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$14400(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v5

    mul-float/2addr v9, v5

    sub-float v5, v4, v15

    mul-float/2addr v5, v10

    add-float/2addr v15, v5

    .line 4025
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$14400(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v5

    mul-float/2addr v15, v5

    .line 4027
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$10800(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/RectF;

    move-result-object v5

    sub-float v11, v2, v9

    sub-float v12, v6, v15

    add-float/2addr v9, v2

    add-float/2addr v15, v6

    invoke-virtual {v5, v11, v12, v9, v15}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v5, 0x4

    .line 4028
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v4, v11

    mul-float/2addr v4, v10

    add-float/2addr v9, v4

    .line 4029
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$10800(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/RectF;

    move-result-object v4

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {v1, v4, v9, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-ne v7, v8, :cond_29

    .line 4031
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$12400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    const/4 v9, 0x3

    if-ne v4, v9, :cond_2a

    .line 4032
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$13000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v6}, Lorg/telegram/ui/Components/RadialProgressView;->draw(Landroid/graphics/Canvas;FF)V

    goto :goto_12

    :cond_29
    const/4 v9, 0x3

    .line 4035
    :cond_2a
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4037
    sget-boolean v2, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v2, :cond_2b

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$14600(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2c

    .line 4038
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v2

    const/16 v6, 0xff

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4039
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$14700(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getX()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v10

    sub-float/2addr v2, v10

    .line 4040
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$14700(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getY()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    .line 4041
    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$10800(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/RectF;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$14700(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v2

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$14700(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v15, v10

    invoke-virtual {v11, v2, v10, v12, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4042
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$10800(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v1, v2, v10, v5, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_13

    :cond_2b
    const/4 v4, 0x0

    :cond_2c
    const/16 v6, 0xff

    goto :goto_13

    :cond_2d
    move v9, v6

    move v6, v12

    const/4 v4, 0x0

    const/4 v14, 0x2

    const/high16 v18, 0x3f800000    # 1.0f

    :goto_13
    add-int/lit8 v7, v7, 0x1

    move v12, v6

    move v6, v9

    move v2, v14

    const/16 v5, 0x34

    const/16 v9, 0xa0

    const v10, 0x3f333333    # 0.7f

    const/high16 v11, 0x3f000000    # 0.5f

    goto/16 :goto_a

    .line 4047
    :cond_2e
    :goto_14
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4048
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 4049
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_2f
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .line 4055
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 4056
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4057
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v0

    div-float v0, v1, v0

    sub-float/2addr v0, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 4059
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4060
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 4061
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 4064
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    const/16 v1, 0x7a

    .line 3501
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 3502
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v1, 0x2

    div-int/2addr v2, v1

    .line 3503
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    .line 3506
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x5

    .line 3509
    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$11800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v4, v4, -0x1

    .line 3512
    :cond_1
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$11900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, -0x1

    .line 3516
    :cond_2
    sget-boolean v6, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    const/16 v7, 0x8

    const/16 v8, 0x34

    const/4 v12, 0x1

    if-eqz v6, :cond_c

    sget-boolean v6, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-nez v6, :cond_c

    .line 3517
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    div-int/2addr v2, v4

    .line 3521
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$11800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 3522
    div-int/lit8 v3, v2, 0x2

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    div-int/2addr v6, v1

    sub-int v6, v3, v6

    .line 3523
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v14

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    shr-int/2addr v14, v12

    .line 3524
    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v15

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v14

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v15, v14, v6, v13, v10}, Landroid/widget/FrameLayout;->layout(IIII)V

    if-ne v4, v5, :cond_3

    move v6, v2

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    add-int/2addr v3, v6

    .line 3527
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$11800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    div-int/2addr v6, v1

    sub-int/2addr v3, v6

    .line 3528
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$11800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v6, v10

    shr-int/2addr v6, v12

    .line 3529
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$11800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$11800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v6

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$11800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v3

    invoke-virtual {v10, v6, v3, v11, v13}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_3

    .line 3531
    :cond_4
    div-int/lit8 v3, v2, 0x2

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$11900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    div-int/2addr v6, v1

    sub-int v6, v3, v6

    .line 3532
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$11900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v10, v11

    shr-int/2addr v10, v12

    .line 3533
    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$11900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v11

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$11900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v10

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$11900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v6

    invoke-virtual {v11, v10, v6, v13, v14}, Landroid/widget/FrameLayout;->layout(IIII)V

    if-ne v4, v5, :cond_5

    move v6, v2

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    add-int/2addr v3, v6

    .line 3536
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    div-int/2addr v6, v1

    sub-int/2addr v3, v6

    .line 3537
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v6, v10

    shr-int/2addr v6, v12

    .line 3538
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v6

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v3

    invoke-virtual {v10, v6, v3, v11, v13}, Landroid/widget/FrameLayout;->layout(IIII)V

    :goto_3
    if-ne v4, v5, :cond_6

    mul-int/lit8 v3, v2, 0x3

    goto :goto_4

    :cond_6
    mul-int/lit8 v3, v2, 0x2

    .line 3542
    :goto_4
    div-int/lit8 v6, v2, 0x2

    add-int/2addr v3, v6

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v10

    div-int/2addr v10, v1

    sub-int/2addr v3, v10

    .line 3543
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v10, v11

    shr-int/2addr v10, v12

    .line 3544
    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v11

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v10

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v3

    invoke-virtual {v11, v10, v3, v13, v14}, Landroid/widget/FrameLayout;->layout(IIII)V

    if-ne v4, v5, :cond_7

    mul-int/lit8 v3, v2, 0x2

    goto :goto_5

    :cond_7
    move v3, v2

    :goto_5
    add-int/2addr v3, v6

    .line 3547
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    div-int/2addr v10, v1

    sub-int/2addr v3, v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v3, v10

    .line 3548
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v10, v11

    shr-int/2addr v10, v12

    const/4 v11, 0x6

    const/4 v13, 0x3

    if-ne v4, v13, :cond_8

    .line 3550
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sub-int/2addr v3, v14

    .line 3552
    :cond_8
    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v14

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v10

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v14, v10, v3, v15, v9}, Landroid/widget/ImageView;->layout(IIII)V

    .line 3553
    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$5200(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v9

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$5200(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v10

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$5200(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v3

    invoke-virtual {v9, v10, v3, v14, v15}, Landroid/widget/ImageView;->layout(IIII)V

    .line 3554
    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$5300(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v9

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$5300(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v10

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$5300(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v3

    invoke-virtual {v9, v10, v3, v14, v15}, Landroid/widget/ImageView;->layout(IIII)V

    .line 3556
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v8, v7

    int-to-float v7, v8

    div-float/2addr v3, v7

    .line 3557
    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3558
    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 3559
    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_17

    .line 3562
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    shr-int/2addr v7, v12

    if-ne v4, v5, :cond_9

    mul-int/lit8 v8, v2, 0x2

    goto :goto_7

    :cond_9
    move v8, v2

    :goto_7
    add-int v9, v6, v8

    .line 3565
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    div-int/2addr v10, v1

    sub-int/2addr v9, v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    if-ne v4, v13, :cond_a

    .line 3567
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    :cond_a
    int-to-float v9, v9

    .line 3569
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    const v14, 0x3f2fdf3b    # 0.687f

    mul-float/2addr v10, v14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v10, v14

    add-float/2addr v9, v10

    float-to-int v9, v9

    .line 3570
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v10

    aget-object v10, v10, v3

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v9

    add-int/2addr v8, v2

    if-le v10, v8, :cond_b

    .line 3571
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v9, v8

    .line 3574
    :cond_b
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v8

    aget-object v8, v8, v3

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v10

    aget-object v10, v10, v3

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v7

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v14

    aget-object v14, v14, v3

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v9

    invoke-virtual {v8, v7, v9, v10, v14}, Landroid/widget/TextView;->layout(IIII)V

    .line 3575
    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v7

    aget-object v7, v7, v3

    const v8, 0x3f2fdf3b    # 0.687f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setScaleX(F)V

    .line 3576
    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v7

    aget-object v7, v7, v3

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setScaleY(F)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 3578
    :cond_c
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz v6, :cond_13

    sget-boolean v6, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-nez v6, :cond_13

    .line 3580
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v4

    .line 3583
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$11800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_e

    .line 3584
    div-int/lit8 v6, v2, 0x2

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    div-int/2addr v9, v1

    sub-int v9, v6, v9

    .line 3585
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    .line 3586
    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v11

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v9

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v10

    invoke-virtual {v11, v9, v10, v13, v14}, Landroid/widget/FrameLayout;->layout(IIII)V

    if-ne v4, v5, :cond_d

    move v9, v2

    goto :goto_8

    :cond_d
    const/4 v9, 0x0

    :goto_8
    add-int/2addr v6, v9

    .line 3589
    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    div-int/2addr v9, v1

    sub-int/2addr v6, v9

    .line 3590
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$11800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    .line 3591
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$11800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$11800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v6

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$11800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v9

    invoke-virtual {v10, v6, v9, v11, v13}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_a

    :cond_e
    if-ne v4, v5, :cond_f

    move v6, v2

    goto :goto_9

    :cond_f
    const/4 v6, 0x0

    .line 3594
    :goto_9
    div-int/lit8 v9, v2, 0x2

    add-int/2addr v6, v9

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    div-int/2addr v10, v1

    sub-int/2addr v6, v10

    .line 3595
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    .line 3596
    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v11

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v6

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v10

    invoke-virtual {v11, v6, v10, v13, v14}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 3597
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$11900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    div-int/2addr v6, v1

    sub-int/2addr v9, v6

    .line 3598
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$11900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v6, v10

    .line 3599
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$11900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$11900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v9

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$11900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v6

    invoke-virtual {v10, v9, v6, v11, v13}, Landroid/widget/FrameLayout;->layout(IIII)V

    :goto_a
    if-ne v4, v5, :cond_10

    mul-int/lit8 v6, v2, 0x3

    goto :goto_b

    :cond_10
    mul-int/lit8 v6, v2, 0x2

    .line 3603
    :goto_b
    div-int/lit8 v9, v2, 0x2

    add-int/2addr v6, v9

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    div-int/2addr v10, v1

    sub-int/2addr v6, v10

    .line 3604
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    .line 3605
    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v11

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v6

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v10

    invoke-virtual {v11, v6, v10, v13, v14}, Landroid/widget/FrameLayout;->layout(IIII)V

    if-ne v4, v5, :cond_11

    mul-int/lit8 v6, v2, 0x2

    goto :goto_c

    :cond_11
    move v6, v2

    :goto_c
    add-int/2addr v9, v6

    .line 3609
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    div-int/2addr v6, v1

    sub-int/2addr v9, v6

    .line 3610
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v6, v10

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v10, v11

    div-int/2addr v10, v1

    sub-int/2addr v6, v10

    .line 3611
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v9

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v6

    invoke-virtual {v10, v9, v6, v11, v13}, Landroid/widget/ImageView;->layout(IIII)V

    .line 3612
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$5200(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$5200(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v9

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$5200(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v6

    invoke-virtual {v10, v9, v6, v11, v13}, Landroid/widget/ImageView;->layout(IIII)V

    .line 3613
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$5300(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$5300(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v9

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$5300(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v6

    invoke-virtual {v10, v9, v6, v11, v13}, Landroid/widget/ImageView;->layout(IIII)V

    .line 3615
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v8, v7

    int-to-float v7, v8

    div-float/2addr v6, v7

    .line 3616
    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v7, 0x15e

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v1, :cond_17

    if-ne v4, v5, :cond_12

    mul-int/lit8 v7, v2, 0x2

    goto :goto_e

    :cond_12
    move v7, v2

    .line 3620
    :goto_e
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v8

    aget-object v8, v8, v6

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v2, v8

    div-int/2addr v8, v1

    add-int/2addr v7, v8

    const/16 v8, 0x1b

    .line 3621
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int v8, v3, v8

    .line 3622
    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v9

    aget-object v9, v9, v6

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v10

    aget-object v10, v10, v6

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v7

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v11

    aget-object v11, v11, v6

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v8

    invoke-virtual {v9, v7, v8, v10, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 3623
    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const v8, 0x3f2fdf3b    # 0.687f

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const-wide/16 v9, 0x15e

    invoke-virtual {v7, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_13
    const/4 v4, 0x0

    .line 3627
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    .line 3628
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$11800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_15

    .line 3629
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_14

    .line 3630
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v2, v4

    div-int/2addr v4, v1

    .line 3631
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    sub-int v6, v3, v6

    div-int/2addr v6, v1

    .line 3632
    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v4

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v4, v6, v8, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 3634
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$11800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v2, v4

    div-int/2addr v4, v1

    .line 3635
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    sub-int v6, v3, v6

    div-int/2addr v6, v1

    .line 3636
    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$11800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$11800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v4

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$11800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v4, v6, v8, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_10

    .line 3638
    :cond_14
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$11800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v2, v4

    div-int/2addr v4, v1

    .line 3639
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$11800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    sub-int v6, v3, v6

    div-int/2addr v6, v1

    .line 3640
    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$11800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$11800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v4

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$11800(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v4, v6, v8, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_10

    .line 3643
    :cond_15
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$11900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_16

    const/16 v4, 0x1c

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    goto :goto_f

    :cond_16
    const/4 v4, 0x0

    .line 3644
    :goto_f
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$11900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    sub-int v6, v2, v6

    div-int/2addr v6, v1

    .line 3645
    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$11900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    div-int/2addr v7, v1

    add-int/2addr v7, v5

    sub-int/2addr v7, v4

    .line 3646
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$11900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$11900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$11900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 3648
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    sub-int v6, v2, v6

    div-int/2addr v6, v1

    .line 3649
    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    div-int/2addr v7, v1

    add-int/2addr v7, v5

    add-int/2addr v7, v4

    .line 3650
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v4

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v6

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$11700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 3653
    :goto_10
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v3, v4

    div-int/2addr v4, v1

    add-int/2addr v4, v5

    .line 3654
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v2

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v2, v6

    div-int/2addr v2, v1

    add-int/2addr v5, v2

    .line 3655
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$12000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v2, v5, v4, v6, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 3657
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/2addr v2, v1

    .line 3658
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v3, v4

    div-int/2addr v4, v1

    const/16 v5, 0x9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 3659
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v2

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5, v2, v4, v6, v7}, Landroid/widget/ImageView;->layout(IIII)V

    .line 3660
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$5200(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5200(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v2

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$5200(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5, v2, v4, v6, v7}, Landroid/widget/ImageView;->layout(IIII)V

    .line 3661
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$5300(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5300(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v2

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$5300(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5, v2, v4, v6, v7}, Landroid/widget/ImageView;->layout(IIII)V

    .line 3663
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_17

    .line 3666
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/2addr v5, v1

    const/16 v6, 0xc

    .line 3667
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int v6, v3, v6

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 3668
    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v7

    aget-object v7, v7, v2

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v5

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v9

    aget-object v9, v9, v2

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 3669
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x15e

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 3673
    :cond_17
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-boolean v2, v2, Lorg/telegram/ui/GroupCallActivity;->animateButtonsOnNextLayout:Z

    if-eqz v2, :cond_1c

    .line 3674
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3676
    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_19

    .line 3677
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3678
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$12100(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    .line 3679
    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$12200(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    if-eqz v6, :cond_18

    if-eqz v7, :cond_18

    new-array v3, v12, [Landroid/animation/Animator;

    .line 3682
    sget-object v8, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v1, [F

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v6, v10

    const/4 v10, 0x0

    aput v6, v9, v10

    const/4 v6, 0x0

    aput v6, v9, v12

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v3, v10

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v3, v12, [Landroid/animation/Animator;

    .line 3683
    sget-object v8, Landroid/widget/FrameLayout;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v1, [F

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v7, v11

    aput v7, v9, v10

    aput v6, v9, v12

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v10

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move v3, v12

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_19
    if-eqz v3, :cond_1b

    .line 3687
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$17;->currentButtonsAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1a

    .line 3688
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 3689
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$17;->currentButtonsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3691
    :cond_1a
    iput-object v2, v0, Lorg/telegram/ui/GroupCallActivity$17;->currentButtonsAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0x15e

    .line 3692
    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3693
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3694
    new-instance v1, Lorg/telegram/ui/GroupCallActivity$17$1;

    invoke-direct {v1, v0}, Lorg/telegram/ui/GroupCallActivity$17$1;-><init>(Lorg/telegram/ui/GroupCallActivity$17;)V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3705
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 3707
    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$12100(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 3708
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$12200(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 3710
    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/telegram/ui/GroupCallActivity;->animateButtonsOnNextLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 3486
    sget-boolean v0, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-nez v0, :cond_0

    const/16 v0, 0x1cc

    .line 3487
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 3490
    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-nez v1, :cond_1

    .line 3491
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f2e147b    # 0.68f

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 3493
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$17;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3496
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
