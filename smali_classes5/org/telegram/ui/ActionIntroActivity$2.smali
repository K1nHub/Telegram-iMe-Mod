.class Lorg/telegram/ui/ActionIntroActivity$2;
.super Landroid/view/ViewGroup;
.source "ActionIntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionIntroActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionIntroActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionIntroActivity;Landroid/content/Context;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    .line 401
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$1100(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 402
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$1300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$1200(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v3, v4, v4, v1, v5}, Landroid/widget/FrameLayout;->layout(IIII)V

    :cond_0
    sub-int v3, v1, p2

    sub-int v5, v2, p3

    .line 409
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionIntroActivity;->isForkIntro()Z

    move-result v6

    const v8, 0x3f30a3d7    # 0.69f

    const v9, 0x3ec7ae14    # 0.39f

    const v10, 0x3e6147ae    # 0.22f

    const v11, 0x3f3b22d1    # 0.731f

    const v12, 0x3f26a7f0    # 0.651f

    const v13, 0x3e408312    # 0.188f

    const v14, 0x3f0b020c    # 0.543f

    const v15, 0x3f218937    # 0.631f

    const v16, 0x3e9eb852    # 0.31f

    const v17, 0x3e0f5c29    # 0.14f

    const/high16 v18, 0x3f000000    # 0.5f

    const v19, 0x3f47ae14    # 0.78f

    const v20, 0x3f5a5e35    # 0.853f

    const v21, 0x3ecccccd    # 0.4f

    const v22, 0x3f19999a    # 0.6f

    const/high16 v23, 0x40000000    # 2.0f

    if-eqz v6, :cond_8

    .line 410
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$200(Lorg/telegram/ui/ActionIntroActivity;)I

    move-result v6

    const/16 v7, 0x6c

    if-eq v6, v7, :cond_6

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$200(Lorg/telegram/ui/ActionIntroActivity;)I

    move-result v6

    const/16 v7, 0x67

    if-ne v6, v7, :cond_1

    goto/16 :goto_1

    .line 436
    :cond_1
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$200(Lorg/telegram/ui/ActionIntroActivity;)I

    move-result v6

    const/16 v7, 0x6d

    if-ne v6, v7, :cond_4

    if-le v1, v2, :cond_2

    .line 438
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v5, v1

    div-int/lit8 v1, v1, 0x2

    .line 439
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v2, v4, v1, v6, v7}, Landroid/widget/ImageView;->layout(IIII)V

    int-to-float v1, v3

    mul-float v2, v1, v21

    float-to-int v3, v2

    int-to-float v4, v5

    const v5, 0x3da3d70a    # 0.08f

    mul-float/2addr v5, v4

    float-to-int v5, v5

    .line 442
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v3, v5, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    mul-float v1, v1, v22

    .line 443
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v1, v3

    div-float v3, v3, v23

    add-float/2addr v3, v2

    float-to-int v3, v3

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v5, v4

    float-to-int v5, v5

    .line 445
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v3, v5, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 446
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    div-float v1, v1, v23

    add-float/2addr v2, v1

    float-to-int v1, v2

    mul-float v4, v4, v19

    float-to-int v2, v4

    .line 448
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_3

    .line 451
    :cond_2
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/16 v2, 0x708

    if-ge v1, v2, :cond_3

    int-to-float v1, v5

    const v2, 0x3d75c28f    # 0.06f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 453
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v6, v4, v2, v7, v8}, Landroid/widget/ImageView;->layout(IIII)V

    const v2, 0x3eed0e56    # 0.463f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 455
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v6, v4, v2, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    mul-float/2addr v1, v14

    goto :goto_0

    :cond_3
    int-to-float v1, v5

    const v2, 0x3e178d50    # 0.148f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 459
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v6, v4, v2, v7, v8}, Landroid/widget/ImageView;->layout(IIII)V

    const v2, 0x3f0d0e56    # 0.551f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 461
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v6, v4, v2, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    mul-float/2addr v1, v15

    :goto_0
    float-to-int v1, v1

    .line 464
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    .line 465
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v2

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v4, v2, v1, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 466
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    int-to-float v1, v5

    mul-float v1, v1, v20

    float-to-int v1, v1

    .line 468
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_3

    :cond_4
    if-le v1, v2, :cond_5

    .line 472
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v5, v1

    div-int/lit8 v1, v1, 0x2

    .line 473
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v2, v4, v1, v6, v7}, Landroid/widget/ImageView;->layout(IIII)V

    int-to-float v1, v3

    mul-float v2, v1, v21

    float-to-int v3, v2

    int-to-float v4, v5

    mul-float/2addr v10, v4

    float-to-int v5, v10

    .line 476
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v10, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v10}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {v6, v3, v5, v7, v10}, Landroid/widget/TextView;->layout(IIII)V

    mul-float/2addr v9, v4

    float-to-int v5, v9

    .line 479
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v9, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v9}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v6, v3, v5, v7, v9}, Landroid/widget/TextView;->layout(IIII)V

    mul-float v1, v1, v22

    .line 480
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    div-float v1, v1, v23

    add-float/2addr v2, v1

    float-to-int v1, v2

    mul-float/2addr v4, v8

    float-to-int v2, v4

    .line 482
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_3

    :cond_5
    int-to-float v1, v5

    mul-float/2addr v13, v1

    float-to-int v2, v13

    .line 485
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v5, v4, v2, v6, v7}, Landroid/widget/ImageView;->layout(IIII)V

    mul-float/2addr v12, v1

    float-to-int v2, v12

    .line 487
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v5, v4, v2, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    mul-float/2addr v11, v1

    float-to-int v2, v11

    .line 489
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v5, v4, v2, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 490
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    mul-float v1, v1, v20

    float-to-int v1, v1

    .line 492
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_3

    :cond_6
    :goto_1
    if-le v1, v2, :cond_7

    .line 412
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v5, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v3

    mul-float v18, v18, v2

    .line 413
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v18, v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    .line 414
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v4, v3, v1, v6, v7}, Landroid/widget/ImageView;->layout(IIII)V

    mul-float v1, v2, v21

    float-to-int v3, v1

    int-to-float v4, v5

    mul-float v5, v4, v17

    float-to-int v5, v5

    .line 417
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v3, v5, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    mul-float v5, v4, v16

    float-to-int v5, v5

    .line 420
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v3, v5, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    mul-float v2, v2, v22

    .line 421
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float v2, v2, v23

    add-float/2addr v1, v2

    float-to-int v1, v1

    mul-float v4, v4, v19

    float-to-int v2, v4

    .line 423
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_3

    :cond_7
    int-to-float v1, v5

    const v2, 0x3e5b22d1    # 0.214f

    mul-float v7, v1, v2

    float-to-int v2, v7

    .line 426
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v3, v5

    div-int/lit8 v5, v5, 0x2

    .line 427
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v6, v5, v2, v7, v8}, Landroid/widget/ImageView;->layout(IIII)V

    mul-float/2addr v14, v1

    float-to-int v2, v14

    .line 429
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v5, v4, v2, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    const v2, 0x3f1f3b64    # 0.622f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 431
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v5, v4, v2, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 432
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    const v2, 0x3f49fbe7    # 0.789f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 434
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_3

    .line 496
    :cond_8
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$200(Lorg/telegram/ui/ActionIntroActivity;)I

    move-result v6

    const v7, 0x3df5c28f    # 0.12f

    const/16 v24, 0x10

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    if-le v1, v2, :cond_9

    .line 575
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v5, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v3

    mul-float v18, v18, v2

    .line 576
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v18, v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    .line 577
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v4, v3, v1, v6, v7}, Landroid/widget/ImageView;->layout(IIII)V

    mul-float v1, v2, v21

    float-to-int v3, v1

    int-to-float v4, v5

    mul-float v5, v4, v17

    float-to-int v5, v5

    .line 580
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v3, v5, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    mul-float v5, v4, v16

    float-to-int v5, v5

    .line 583
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v3, v5, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    mul-float v2, v2, v22

    .line 584
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float v2, v2, v23

    add-float/2addr v1, v2

    float-to-int v1, v1

    mul-float v4, v4, v19

    float-to-int v2, v4

    .line 586
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_3

    :cond_9
    int-to-float v1, v5

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 589
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v3, v2

    div-int/lit8 v2, v2, 0x2

    .line 590
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v2

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v6, v2, v1, v7, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 591
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    const/16 v6, 0x18

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v2, v6

    add-int/2addr v1, v2

    .line 592
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v2, v4, v1, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    int-to-float v1, v1

    .line 593
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 594
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v2, v4, v1, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 595
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 596
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v5, v1

    const/16 v1, 0x30

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v5, v1

    .line 597
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v3

    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_3

    .line 524
    :pswitch_1
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$700(Lorg/telegram/ui/ActionIntroActivity;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 528
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v1, v4, v4, v2, v6}, Landroid/widget/ImageView;->layout(IIII)V

    int-to-float v1, v5

    const v2, 0x3ece5604    # 0.403f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 530
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v5, v4, v2, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    mul-float/2addr v15, v1

    float-to-int v2, v15

    .line 533
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$800(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 534
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$800(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$800(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$800(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v5, v4, v2, v6, v7}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 535
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    mul-float v1, v1, v20

    float-to-int v1, v1

    .line 537
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_3

    :cond_a
    if-le v1, v2, :cond_b

    .line 539
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v5, v1

    div-int/lit8 v1, v1, 0x2

    .line 540
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v2, v4, v1, v6, v7}, Landroid/widget/ImageView;->layout(IIII)V

    int-to-float v1, v3

    mul-float v2, v1, v21

    float-to-int v3, v2

    int-to-float v4, v5

    const v5, 0x3da3d70a    # 0.08f

    mul-float/2addr v5, v4

    float-to-int v5, v5

    .line 543
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v3, v5, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    mul-float v1, v1, v22

    .line 544
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$800(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v1, v3

    div-float v3, v3, v23

    add-float/2addr v3, v2

    float-to-int v3, v3

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v5, v4

    float-to-int v5, v5

    .line 546
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$800(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$800(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$800(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v3, v5, v7, v8}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 547
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    div-float v1, v1, v23

    add-float/2addr v2, v1

    float-to-int v1, v2

    mul-float v4, v4, v19

    float-to-int v2, v4

    .line 549
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_3

    .line 552
    :cond_b
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/16 v2, 0x708

    if-ge v1, v2, :cond_c

    int-to-float v1, v5

    const v2, 0x3d75c28f    # 0.06f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 554
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v6, v4, v2, v7, v8}, Landroid/widget/ImageView;->layout(IIII)V

    const v2, 0x3eed0e56    # 0.463f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 556
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v6, v4, v2, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    mul-float/2addr v1, v14

    goto :goto_2

    :cond_c
    int-to-float v1, v5

    const v2, 0x3e178d50    # 0.148f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 560
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v6, v4, v2, v7, v8}, Landroid/widget/ImageView;->layout(IIII)V

    const v2, 0x3f0d0e56    # 0.551f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 562
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v6, v4, v2, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    mul-float/2addr v1, v15

    :goto_2
    float-to-int v1, v1

    .line 565
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$800(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    .line 566
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$800(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$800(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v2

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$800(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v4, v2, v1, v6, v7}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 567
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    int-to-float v1, v5

    mul-float v1, v1, v20

    float-to-int v1, v1

    .line 569
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_3

    :pswitch_2
    if-le v1, v2, :cond_d

    int-to-float v1, v5

    const v2, 0x3f733333    # 0.95f

    mul-float/2addr v2, v1

    .line 667
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    .line 668
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3eb33333    # 0.35f

    mul-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 669
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v5, v4, v2, v6, v8}, Landroid/widget/ImageView;->layout(IIII)V

    int-to-float v2, v3

    mul-float v3, v2, v21

    float-to-int v4, v3

    mul-float/2addr v7, v1

    float-to-int v5, v7

    .line 672
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v4

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    const v5, 0x3e75c28f    # 0.24f

    mul-float/2addr v5, v1

    float-to-int v5, v5

    .line 675
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v4

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    mul-float v2, v2, v22

    .line 676
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    div-float v4, v4, v23

    add-float/2addr v4, v3

    float-to-int v4, v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 678
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v5, v4, v1, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 680
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$900(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    div-float v2, v2, v23

    add-float/2addr v3, v2

    float-to-int v2, v3

    .line 681
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$900(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 682
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$900(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$900(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$900(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v2, v1, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_3

    :cond_d
    int-to-float v1, v5

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 685
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v3, v2

    div-int/lit8 v2, v2, 0x2

    .line 686
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v2

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v6, v2, v1, v7, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 687
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    const/16 v6, 0x18

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v2, v6

    add-int/2addr v1, v2

    .line 688
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v2, v4, v1, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    int-to-float v1, v1

    .line 689
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 690
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v2, v4, v1, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 691
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    .line 692
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v5, v2

    const/16 v2, 0x30

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v5, v2

    .line 693
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v2, v1, v5, v4, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 695
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/ActionIntroActivity;->access$900(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 696
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/ActionIntroActivity;->access$900(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    const/16 v2, 0x20

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v5, v1

    .line 697
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/ActionIntroActivity;->access$900(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$900(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v3

    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$900(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_3

    :pswitch_3
    const/16 v6, 0x14

    if-le v1, v2, :cond_e

    int-to-float v1, v5

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v2, v1

    .line 632
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    .line 633
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v5

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v9}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v5, v4, v2, v8, v9}, Landroid/widget/ImageView;->layout(IIII)V

    .line 634
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    const/16 v8, 0xa

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v5, v8

    add-int/2addr v2, v5

    .line 635
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$900(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$900(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v9}, Lorg/telegram/ui/ActionIntroActivity;->access$900(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v5, v4, v2, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    int-to-float v2, v3

    mul-float v3, v2, v21

    float-to-int v4, v3

    mul-float/2addr v7, v1

    float-to-int v5, v7

    .line 638
    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v4

    iget-object v9, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v9}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v7, v4, v5, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    const v5, 0x3e851eb8    # 0.26f

    mul-float/2addr v5, v1

    float-to-int v5, v5

    .line 641
    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v4

    iget-object v9, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v9}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v7, v4, v5, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    mul-float v2, v2, v22

    .line 642
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    div-float v2, v2, v23

    add-float/2addr v3, v2

    float-to-int v2, v3

    mul-float v1, v1, v22

    float-to-int v1, v1

    .line 644
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v3, v2, v1, v5, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 646
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$1000(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 647
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$1000(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$1000(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v4

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$1000(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2, v4, v1, v3, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_3

    :cond_e
    int-to-float v1, v5

    const v2, 0x3e49ba5e    # 0.197f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 650
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v5

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v5, v4, v2, v7, v8}, Landroid/widget/ImageView;->layout(IIII)V

    const v2, 0x3ed78d50    # 0.421f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 652
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v5, v4, v2, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    const v2, 0x3ef43958    # 0.477f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 654
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$900(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$900(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$900(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v5, v4, v2, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    const v2, 0x3f0978d5    # 0.537f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 656
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v5, v4, v2, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 657
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    const v2, 0x3f35c28f    # 0.71f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 659
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v2, v3, v1, v5, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 660
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$1000(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 661
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$1000(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$1000(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$1000(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2, v4, v1, v3, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_3

    :pswitch_4
    if-le v1, v2, :cond_f

    .line 604
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v5, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v3

    mul-float v18, v18, v2

    .line 605
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v18, v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    .line 606
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v4, v3, v1, v6, v7}, Landroid/widget/ImageView;->layout(IIII)V

    mul-float v1, v2, v21

    float-to-int v3, v1

    int-to-float v4, v5

    mul-float v5, v4, v17

    float-to-int v5, v5

    .line 609
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v3, v5, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    mul-float v5, v4, v16

    float-to-int v5, v5

    .line 612
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v3, v5, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    mul-float v2, v2, v22

    .line 613
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float v2, v2, v23

    add-float/2addr v1, v2

    float-to-int v1, v1

    mul-float v4, v4, v19

    float-to-int v2, v4

    .line 615
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_3

    :cond_f
    int-to-float v1, v5

    const v2, 0x3e5b22d1    # 0.214f

    mul-float v7, v1, v2

    float-to-int v2, v7

    .line 618
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v3, v5

    div-int/lit8 v5, v5, 0x2

    .line 619
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v8}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v6, v5, v2, v7, v8}, Landroid/widget/ImageView;->layout(IIII)V

    const v2, 0x3ed3f7cf    # 0.414f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 621
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v5, v4, v2, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    const v2, 0x3efc6a7f    # 0.493f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 623
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v5, v4, v2, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 624
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    mul-float v1, v1, v20

    float-to-int v1, v1

    .line 626
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_3

    :pswitch_5
    if-le v1, v2, :cond_10

    .line 499
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v5, v1

    div-int/lit8 v1, v1, 0x2

    .line 500
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v2, v4, v1, v6, v7}, Landroid/widget/ImageView;->layout(IIII)V

    int-to-float v1, v3

    mul-float v2, v1, v21

    float-to-int v3, v2

    int-to-float v4, v5

    mul-float/2addr v10, v4

    float-to-int v5, v10

    .line 503
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v10, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v10}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {v6, v3, v5, v7, v10}, Landroid/widget/TextView;->layout(IIII)V

    mul-float/2addr v9, v4

    float-to-int v5, v9

    .line 506
    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v9, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v9}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v6, v3, v5, v7, v9}, Landroid/widget/TextView;->layout(IIII)V

    mul-float v1, v1, v22

    .line 507
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    div-float v1, v1, v23

    add-float/2addr v2, v1

    float-to-int v1, v2

    mul-float/2addr v4, v8

    float-to-int v2, v4

    .line 509
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_3

    :cond_10
    int-to-float v1, v5

    mul-float/2addr v13, v1

    float-to-int v2, v13

    .line 512
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v5, v4, v2, v6, v7}, Landroid/widget/ImageView;->layout(IIII)V

    mul-float/2addr v12, v1

    float-to-int v2, v12

    .line 514
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v5, v4, v2, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    mul-float/2addr v11, v1

    float-to-int v2, v11

    .line 516
    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v6}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v7}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v5, v4, v2, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 517
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    mul-float v1, v1, v20

    float-to-int v1, v1

    .line 519
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v5}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 257
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 258
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 260
    iget-object v1, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/ActionIntroActivity;->access$000(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/ActionIntroActivity;->access$100(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v3, p2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 264
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionIntroActivity;->isForkIntro()Z

    move-result p2

    const v1, 0x3f2e147b    # 0.68f

    const v3, 0x3ecc49ba    # 0.399f

    const v4, 0x3ee66666    # 0.45f

    const v5, 0x3f19999a    # 0.6f

    const/16 v6, 0x2a

    const/high16 v7, -0x80000000

    const/4 v8, 0x0

    if-eqz p2, :cond_7

    .line 265
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$200(Lorg/telegram/ui/ActionIntroActivity;)I

    move-result p2

    const/16 v9, 0x6c

    if-eq p2, v9, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$200(Lorg/telegram/ui/ActionIntroActivity;)I

    move-result p2

    const/16 v9, 0x67

    if-ne p2, v9, :cond_1

    goto/16 :goto_0

    .line 276
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$200(Lorg/telegram/ui/ActionIntroActivity;)I

    move-result p2

    const/16 v9, 0x6d

    if-ne p2, v9, :cond_3

    if-le p1, v0, :cond_2

    .line 278
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p2

    int-to-float v3, p1

    mul-float/2addr v4, v3

    float-to-int v4, v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    int-to-float v9, v0

    mul-float/2addr v9, v1

    float-to-int v1, v9

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v4, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 279
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    mul-float/2addr v3, v5

    float-to-int v1, v3

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 280
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 281
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->measure(II)V

    goto/16 :goto_2

    .line 283
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    int-to-float v4, v0

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 284
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/TextView;->measure(II)V

    .line 285
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/TextView;->measure(II)V

    .line 286
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->measure(II)V

    goto/16 :goto_2

    :cond_3
    if-le p1, v0, :cond_4

    .line 290
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p2

    int-to-float v3, p1

    mul-float/2addr v4, v3

    float-to-int v4, v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    int-to-float v9, v0

    mul-float/2addr v9, v1

    float-to-int v1, v9

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v4, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 291
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    mul-float/2addr v3, v5

    float-to-int v1, v3

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 292
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 293
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->measure(II)V

    goto/16 :goto_2

    .line 295
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    int-to-float v4, v0

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 296
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/TextView;->measure(II)V

    .line 297
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/TextView;->measure(II)V

    .line 298
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->measure(II)V

    goto/16 :goto_2

    .line 266
    :cond_5
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p2

    const/16 v1, 0xc8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v3, v1}, Landroid/widget/ImageView;->measure(II)V

    if-le p1, v0, :cond_6

    .line 268
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    int-to-float v1, p1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 269
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 270
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->measure(II)V

    goto/16 :goto_2

    .line 272
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/TextView;->measure(II)V

    .line 273
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/TextView;->measure(II)V

    .line 274
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->measure(II)V

    goto/16 :goto_2

    .line 302
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$200(Lorg/telegram/ui/ActionIntroActivity;)I

    move-result p2

    const/16 v9, 0x30

    const/16 v10, 0x48

    const/16 v11, 0x32

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    .line 318
    :pswitch_0
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$700(Lorg/telegram/ui/ActionIntroActivity;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 319
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    int-to-float v3, v0

    const v4, 0x3ea3d70a    # 0.32f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 320
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/TextView;->measure(II)V

    .line 321
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$800(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/LinearLayout;->measure(II)V

    .line 322
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->measure(II)V

    .line 323
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v0}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p2, v0

    const/16 v0, 0x14

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v0}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v0}, Lorg/telegram/ui/ActionIntroActivity;->access$800(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {v0}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p2

    goto/16 :goto_2

    :cond_8
    if-le p1, v0, :cond_9

    .line 325
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p2

    int-to-float v3, p1

    mul-float/2addr v4, v3

    float-to-int v4, v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    int-to-float v9, v0

    mul-float/2addr v9, v1

    float-to-int v1, v9

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v4, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 326
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    mul-float/2addr v3, v5

    float-to-int v1, v3

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 327
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$800(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 328
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->measure(II)V

    goto/16 :goto_2

    .line 330
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    int-to-float v4, v0

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 331
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/TextView;->measure(II)V

    .line 332
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$800(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 333
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->measure(II)V

    goto/16 :goto_2

    .line 379
    :pswitch_1
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p2

    const/16 v1, 0x96

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v3, v1}, Landroid/widget/ImageView;->measure(II)V

    if-le p1, v0, :cond_a

    .line 382
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$900(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    int-to-float v1, p1

    mul-float/2addr v4, v1

    float-to-int v3, v4

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 383
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 384
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 385
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->measure(II)V

    goto/16 :goto_2

    .line 387
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/TextView;->measure(II)V

    .line 388
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/TextView;->measure(II)V

    .line 389
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$900(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/TextView;->measure(II)V

    .line 390
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->measure(II)V

    goto/16 :goto_2

    :pswitch_2
    if-le p1, v0, :cond_b

    .line 362
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p2

    int-to-float v1, p1

    mul-float/2addr v4, v1

    float-to-int v3, v4

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    int-to-float v9, v0

    const v10, 0x3f47ae14    # 0.78f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v9, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {p2, v4, v9}, Landroid/widget/ImageView;->measure(II)V

    .line 363
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$900(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 364
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 365
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 366
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$1000(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 367
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->measure(II)V

    goto/16 :goto_2

    .line 369
    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    int-to-float v3, v0

    const v4, 0x3ee147ae    # 0.44f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 370
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/TextView;->measure(II)V

    .line 371
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$900(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/TextView;->measure(II)V

    .line 372
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/TextView;->measure(II)V

    .line 373
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$1000(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/TextView;->measure(II)V

    .line 374
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->measure(II)V

    goto/16 :goto_2

    .line 340
    :pswitch_3
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$200(Lorg/telegram/ui/ActionIntroActivity;)I

    move-result p2

    const/4 v1, 0x6

    if-ne p2, v1, :cond_c

    .line 341
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p2

    const/16 v3, 0x8c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Landroid/widget/ImageView;->measure(II)V

    goto :goto_1

    .line 343
    :cond_c
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p2

    const/16 v3, 0x64

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Landroid/widget/ImageView;->measure(II)V

    :goto_1
    if-le p1, v0, :cond_d

    .line 346
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    int-to-float v1, p1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 347
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 348
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->measure(II)V

    goto/16 :goto_2

    .line 350
    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 351
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 352
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$200(Lorg/telegram/ui/ActionIntroActivity;)I

    move-result p2

    if-ne p2, v1, :cond_e

    .line 353
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->measure(II)V

    goto/16 :goto_2

    .line 355
    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->measure(II)V

    goto/16 :goto_2

    :pswitch_4
    if-le p1, v0, :cond_f

    .line 305
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p2

    int-to-float v3, p1

    mul-float/2addr v4, v3

    float-to-int v4, v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    int-to-float v7, v0

    mul-float/2addr v7, v1

    float-to-int v1, v7

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v4, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 306
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    mul-float/2addr v3, v5

    float-to-int v1, v3

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 307
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 308
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->measure(II)V

    goto :goto_2

    .line 310
    :cond_f
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    int-to-float v4, v0

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 311
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/TextView;->measure(II)V

    .line 312
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/widget/TextView;->measure(II)V

    .line 313
    iget-object p2, p0, Lorg/telegram/ui/ActionIntroActivity$2;->this$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-static {p2}, Lorg/telegram/ui/ActionIntroActivity;->access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 396
    :goto_2
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
