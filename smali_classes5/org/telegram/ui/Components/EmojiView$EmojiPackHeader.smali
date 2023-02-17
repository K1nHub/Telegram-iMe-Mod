.class Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;
.super Landroid/widget/FrameLayout;
.source "EmojiView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiPackHeader"
.end annotation


# instance fields
.field addButtonView:Landroid/widget/TextView;

.field buttonsView:Landroid/widget/FrameLayout;

.field private currentButtonState:I

.field divider:Z

.field private dividerPaint:Landroid/graphics/Paint;

.field headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field lockView:Lorg/telegram/ui/Components/RLottieImageView;

.field private pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

.field premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

.field removeButtonView:Landroid/widget/TextView;

.field private stateAnimator:Landroid/animation/AnimatorSet;

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field private toInstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

.field private toUninstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;


# direct methods
.method public static synthetic $r8$lambda$9QHlQBN6syDxSmhIP6GiqJMmmb8(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9sLkcCLQZSJd4aK3zoSQlg9AJFQ(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GPMHUkblxiRezPHgfCp4PqN_FPw(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HtVnJr1s5xxm6h22PJRcT9uxihY(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lambda$setStickerSet$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QS7r2ylp4FbQGYCk6I0b3fSL4qs(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SAtYhU0Gdumy44O1H4Z13HuDq1M(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lambda$uninstall$8(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ave7ReiPmsV7Q-AZokLMuhEgJwI(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lambda$install$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$gENdt7E388YXz71a13GEtzqeBQU(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lambda$setStickerSet$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oOs_CZhwynlZEr07D7IGdz69aAU(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 4524
    iput-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 4525
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4527
    new-instance v3, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lockView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 4528
    sget v4, Lorg/telegram/messenger/R$raw;->unlock_icon:I

    const/16 v5, 0x18

    invoke-virtual {v3, v4, v5, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 4529
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lockView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v5, "chat_emojiPanelStickerSetName"

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 4530
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lockView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v7, 0x41a00000    # 20.0f

    const v8, 0x800003

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v10, 0x41700000    # 15.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4532
    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v3, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v6, 0xf

    .line 4533
    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 4534
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 4535
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4536
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v6, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda6;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4541
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    .line 4542
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v7, -0x40000000    # -2.0f

    const/high16 v8, -0x40800000    # -1.0f

    const v9, 0x800003

    const/high16 v11, 0x41700000    # 15.0f

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4544
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->buttonsView:Landroid/widget/FrameLayout;

    const/16 v7, 0xb

    .line 4545
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v9, v7, v10}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 4546
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->buttonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v10}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 4547
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->buttonsView:Landroid/widget/FrameLayout;

    new-instance v7, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;)V

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4556
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->buttonsView:Landroid/widget/FrameLayout;

    const/high16 v7, -0x40000000    # -2.0f

    const/high16 v8, -0x40800000    # -1.0f

    const v9, 0x800075

    invoke-static {v7, v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4558
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    const/high16 v8, 0x41600000    # 14.0f

    .line 4559
    invoke-virtual {v3, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4560
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4561
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/messenger/R$string;->Add:I

    const-string v11, "Add"

    invoke-static {v11, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4562
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    const-string v9, "featuredStickers_buttonText"

    invoke-static {v1, v9}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4563
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    const-string v9, "featuredStickers_addButton"

    invoke-static {v1, v9}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;Ljava/lang/String;)I

    move-result v11

    const-string v12, "featuredStickers_addButtonPressed"

    invoke-static {v1, v12}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;Ljava/lang/String;)I

    move-result v12

    new-array v13, v6, [F

    const/high16 v14, 0x41800000    # 16.0f

    aput v14, v13, v10

    invoke-static {v11, v12, v13}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->createRect(II[F)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4564
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    const/16 v11, 0xe

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v3, v12, v10, v11, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4565
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    const/16 v11, 0x11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 4566
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    new-instance v12, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda1;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;)V

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4611
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->buttonsView:Landroid/widget/FrameLayout;

    iget-object v12, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    const/high16 v13, 0x41d00000    # 26.0f

    const v15, 0x800035

    invoke-static {v7, v13, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v12, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4613
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    .line 4614
    invoke-virtual {v3, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4615
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4616
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->StickersRemove:I

    const-string v8, "StickersRemove"

    invoke-static {v8, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4617
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    const-string v5, "featuredStickers_removeButtonText"

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4618
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    invoke-static {v1, v9}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;Ljava/lang/String;)I

    move-result v1

    const v5, 0x1affffff

    and-int/2addr v1, v5

    new-array v5, v6, [F

    aput v14, v5, v10

    invoke-static {v10, v1, v5}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->createRect(II[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4619
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    const/16 v3, 0xc

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v5, v10, v3, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4620
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 4621
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 4622
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4647
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->buttonsView:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    invoke-static {v7, v13, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4649
    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-direct {v1, v2, v3, v10}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    .line 4650
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setIcon(I)V

    .line 4651
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v2, Lorg/telegram/messenger/R$string;->Unlock:I

    const-string v3, "Unlock"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 4654
    :try_start_0
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4655
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 4656
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v2, 0x14

    .line 4657
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 4658
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->getTextView()Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, 0x5

    .line 4659
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/high16 v2, -0x41000000    # -0.5f

    .line 4660
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 4661
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v3, v10, v2, v10}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4664
    :catch_0
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->buttonsView:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-static {v7, v13, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4666
    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 4723
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4724
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    return-object v0

    .line 4726
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$1;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;)V

    return-object v0
.end method

.method private install(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 4

    .line 4750
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, p1, v2, v3, v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->installSet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;ZLorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$install$7()V
    .locals 2

    .line 4751
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    .line 4752
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->updateState(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 4537
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p1, :cond_0

    .line 4538
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->openEmojiPackAlert(Lorg/telegram/tgnet/TLRPC$StickerSet;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 4548
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4549
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->performClick()Z

    goto :goto_0

    .line 4550
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4551
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->performClick()Z

    goto :goto_0

    .line 4552
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4553
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->performClick()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 10

    .line 4567
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    if-eqz p1, :cond_8

    iget-object v0, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x1

    .line 4570
    iput-boolean v1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    .line 4571
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4572
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4574
    :cond_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->updateState(Z)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 4577
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_3

    .line 4578
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPackExpand;

    if-eqz v2, :cond_2

    .line 4579
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4580
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 4582
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->access$15000(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-ltz v4, :cond_2

    .line 4583
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$9200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 4584
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$9200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 4585
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$9200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v4, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v6, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    .line 4587
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    move-object v0, v3

    :goto_1
    if-eqz v3, :cond_4

    .line 4595
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->expand(ILandroid/view/View;)V

    .line 4597
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->toInstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v0, :cond_5

    return-void

    .line 4600
    :cond_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 4601
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 4602
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 4603
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 4604
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v2, :cond_6

    goto :goto_2

    .line 4608
    :cond_6
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->install(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    goto :goto_3

    .line 4605
    :cond_7
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4606
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->toInstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    :cond_8
    :goto_3
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 5

    .line 4623
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    if-eqz p1, :cond_5

    iget-object v0, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 4626
    iput-boolean v1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    .line 4627
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 4628
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->updateState(Z)V

    .line 4629
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiTabsStrip;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4630
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiTabsStrip;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView;->getEmojipacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateEmojiPacks(Ljava/util/ArrayList;)V

    .line 4632
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$8600(Lorg/telegram/ui/Components/EmojiView;)V

    .line 4633
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->toUninstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v0, :cond_2

    return-void

    .line 4636
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 4637
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 4638
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 4639
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4640
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v2, :cond_3

    goto :goto_0

    .line 4644
    :cond_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->uninstall(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    goto :goto_1

    .line 4641
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p1, p1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {p1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4642
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p1, p1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->toUninstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    :cond_5
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 0

    .line 4651
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$14900(Lorg/telegram/ui/Components/EmojiView;)V

    return-void
.end method

.method private synthetic lambda$setStickerSet$5(Landroid/view/View;)V
    .locals 0

    .line 4694
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$14900(Lorg/telegram/ui/Components/EmojiView;)V

    return-void
.end method

.method private synthetic lambda$setStickerSet$6(Landroid/view/View;)V
    .locals 0

    .line 4696
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$14900(Lorg/telegram/ui/Components/EmojiView;)V

    return-void
.end method

.method private synthetic lambda$uninstall$8(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 4

    .line 4758
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    .line 4759
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4760
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4762
    :cond_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->updateState(Z)V

    return-void
.end method

.method private uninstall(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 3

    .line 4757
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->uninstallSet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;ZLjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 4704
    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    if-ne p1, p2, :cond_1

    .line 4705
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->toInstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 4706
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p1, p1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->toInstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSetById(J)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4707
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p3, :cond_0

    .line 4708
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->install(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    .line 4709
    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->toInstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 4712
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->toUninstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz p1, :cond_1

    .line 4713
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p1, p1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->toUninstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSetById(J)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4714
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p3, :cond_1

    .line 4715
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->uninstall(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    .line 4716
    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->toUninstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 4768
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 4769
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 4775
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->divider:Z

    if-eqz v0, :cond_1

    .line 4776
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->dividerPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 4777
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->dividerPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4778
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4779
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->dividerPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const-string v2, "divider"

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4781
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4783
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 4680
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4681
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->buttonsView:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    const/16 p3, 0xb

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 4671
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->currentButtonState:I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 4673
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 4674
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->currentButtonState:I

    if-nez v0, :cond_1

    const/16 v0, 0x20

    goto :goto_1

    :cond_1
    const/16 v0, 0x2a

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 4672
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setStickerSet(Lorg/telegram/ui/Components/EmojiView$EmojiPack;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 4689
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    .line 4690
    iput-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->divider:Z

    .line 4691
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 4693
    iget-boolean p2, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    if-eqz p2, :cond_1

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    if-nez p1, :cond_1

    .line 4694
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget p2, Lorg/telegram/messenger/R$string;->Restore:I

    const-string v0, "Restore"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 4696
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget p2, Lorg/telegram/messenger/R$string;->Unlock:I

    const-string v0, "Unlock"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :goto_0
    const/4 p1, 0x0

    .line 4699
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->updateState(Z)V

    return-void
.end method

.method public updateState(IZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 4812
    :goto_0
    iget v5, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->currentButtonState:I

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eq v4, v5, :cond_2

    .line 4813
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 4815
    :cond_2
    iput v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->currentButtonState:I

    .line 4816
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->stateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_3

    .line 4817
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v4, 0x0

    .line 4818
    iput-object v4, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->stateAnimator:Landroid/animation/AnimatorSet;

    .line 4820
    :cond_3
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-ne v1, v3, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setEnabled(Z)V

    .line 4821
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4822
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    const/4 v6, 0x3

    if-ne v1, v6, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    const/16 v4, 0x8

    const/16 v7, 0x10

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz p2, :cond_13

    .line 4824
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v11, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->stateAnimator:Landroid/animation/AnimatorSet;

    const/16 v12, 0xc

    new-array v12, v12, [Landroid/animation/Animator;

    .line 4825
    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lockView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    new-array v15, v3, [F

    if-ne v1, v3, :cond_7

    const/4 v8, 0x0

    goto :goto_5

    .line 4826
    :cond_7
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    :goto_5
    aput v8, v15, v2

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v12, v2

    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lockView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v13, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    new-array v14, v3, [F

    if-ne v1, v3, :cond_8

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_8
    const/4 v15, 0x0

    :goto_6
    aput v15, v14, v2

    .line 4827
    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v12, v3

    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-object v13, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    new-array v14, v3, [F

    if-ne v1, v3, :cond_9

    .line 4828
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    goto :goto_7

    :cond_9
    const/4 v7, 0x0

    :goto_7
    aput v7, v14, v2

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v12, v5

    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget-object v8, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    new-array v13, v3, [F

    if-ne v1, v3, :cond_a

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_a
    const/4 v14, 0x0

    :goto_8
    aput v14, v13, v2

    .line 4829
    invoke-static {v7, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v12, v6

    const/4 v7, 0x4

    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget-object v13, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    new-array v14, v3, [F

    if-ne v1, v3, :cond_b

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_b
    const v15, 0x3f19999a    # 0.6f

    :goto_9
    aput v15, v14, v2

    .line 4830
    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v12, v7

    const/4 v7, 0x5

    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget-object v13, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    new-array v14, v3, [F

    if-ne v1, v3, :cond_c

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_c
    const v15, 0x3f19999a    # 0.6f

    :goto_a
    aput v15, v14, v2

    .line 4831
    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v12, v7

    const/4 v7, 0x6

    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    sget-object v13, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    new-array v14, v3, [F

    if-ne v1, v5, :cond_d

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_d
    const/4 v15, 0x0

    :goto_b
    aput v15, v14, v2

    .line 4832
    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v12, v7

    const/4 v7, 0x7

    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    sget-object v13, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    new-array v14, v3, [F

    if-ne v1, v5, :cond_e

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_e
    const v15, 0x3f19999a    # 0.6f

    :goto_c
    aput v15, v14, v2

    .line 4833
    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v12, v7

    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    sget-object v8, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    new-array v13, v3, [F

    if-ne v1, v5, :cond_f

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_f
    const v5, 0x3f19999a    # 0.6f

    :goto_d
    aput v5, v13, v2

    .line 4834
    invoke-static {v7, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v12, v4

    const/16 v4, 0x9

    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    sget-object v7, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    new-array v8, v3, [F

    if-ne v1, v6, :cond_10

    const/high16 v9, 0x3f800000    # 1.0f

    :cond_10
    aput v9, v8, v2

    .line 4835
    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v12, v4

    const/16 v4, 0xa

    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    sget-object v7, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    new-array v8, v3, [F

    if-ne v1, v6, :cond_11

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_11
    const v9, 0x3f19999a    # 0.6f

    :goto_e
    aput v9, v8, v2

    .line 4836
    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v12, v4

    const/16 v4, 0xb

    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    sget-object v7, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    new-array v3, v3, [F

    if-ne v1, v6, :cond_12

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_12
    const v8, 0x3f19999a    # 0.6f

    :goto_f
    aput v8, v3, v2

    .line 4837
    invoke-static {v5, v7, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v12, v4

    .line 4825
    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4839
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->stateAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$2;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$2;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4854
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->stateAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4855
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->stateAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const v3, 0x3f828f5c    # 1.02f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4856
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->stateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1e

    .line 4858
    :cond_13
    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lockView:Lorg/telegram/ui/Components/RLottieImageView;

    if-ne v1, v3, :cond_14

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_10

    :cond_14
    const/4 v11, 0x0

    :goto_10
    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 4859
    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lockView:Lorg/telegram/ui/Components/RLottieImageView;

    if-ne v1, v3, :cond_15

    const/4 v11, 0x0

    goto :goto_11

    :cond_15
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    :goto_11
    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 4860
    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-ne v1, v3, :cond_16

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    goto :goto_12

    :cond_16
    const/4 v7, 0x0

    :goto_12
    invoke-virtual {v8, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 4861
    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-ne v1, v3, :cond_17

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_13

    :cond_17
    const/4 v8, 0x0

    :goto_13
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4862
    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-ne v1, v3, :cond_18

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_14

    :cond_18
    const v8, 0x3f19999a    # 0.6f

    :goto_14
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 4863
    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-ne v1, v3, :cond_19

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_15

    :cond_19
    const v8, 0x3f19999a    # 0.6f

    :goto_15
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 4864
    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-ne v1, v3, :cond_1a

    const/4 v3, 0x0

    goto :goto_16

    :cond_1a
    const/16 v3, 0x8

    :goto_16
    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4865
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    if-ne v1, v5, :cond_1b

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_17

    :cond_1b
    const/4 v7, 0x0

    :goto_17
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 4866
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    if-ne v1, v5, :cond_1c

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_18

    :cond_1c
    const v7, 0x3f19999a    # 0.6f

    :goto_18
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setScaleX(F)V

    .line 4867
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    if-ne v1, v5, :cond_1d

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_19

    :cond_1d
    const v7, 0x3f19999a    # 0.6f

    :goto_19
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setScaleY(F)V

    .line 4868
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    if-ne v1, v5, :cond_1e

    const/4 v5, 0x0

    goto :goto_1a

    :cond_1e
    const/16 v5, 0x8

    :goto_1a
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4869
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    if-ne v1, v6, :cond_1f

    const/high16 v9, 0x3f800000    # 1.0f

    :cond_1f
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 4870
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    if-ne v1, v6, :cond_20

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1b

    :cond_20
    const v5, 0x3f19999a    # 0.6f

    :goto_1b
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setScaleX(F)V

    .line 4871
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    if-ne v1, v6, :cond_21

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_1c

    :cond_21
    const v8, 0x3f19999a    # 0.6f

    :goto_1c
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setScaleY(F)V

    .line 4872
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    if-ne v1, v6, :cond_22

    goto :goto_1d

    :cond_22
    const/16 v2, 0x8

    :goto_1d
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1e
    return-void
.end method

.method public updateState(Z)V
    .locals 6

    .line 4787
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    if-nez v0, :cond_0

    return-void

    .line 4791
    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 4792
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$8700(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 4794
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    :cond_4
    const/4 v2, 0x2

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 4801
    :goto_2
    invoke-virtual {p0, v2, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->updateState(IZ)V

    return-void
.end method
