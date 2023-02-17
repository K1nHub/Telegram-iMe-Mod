.class public Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;
.super Landroid/view/ViewGroup;
.source "EmojiTabsStrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiTabsStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmojiTabButton"
.end annotation


# instance fields
.field private forceSelector:Z

.field public id:Ljava/lang/Integer;

.field private imageView:Landroid/widget/ImageView;

.field private isAnimatedEmoji:Z

.field private lockAnimator:Landroid/animation/ValueAnimator;

.field private lockT:F

.field private lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

.field private lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field public newly:Z

.field private round:Z

.field private selectAnimator:Landroid/animation/ValueAnimator;

.field private selectT:F

.field private selected:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

.field private wasVisible:Z


# direct methods
.method public static synthetic $r8$lambda$0iT6x-B_9HCJO9RRLTa2Nt4zu2U(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lambda$updateSelect$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AmEj1erVYcXdPb9sQsPpUCk2uTw(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lambda$updateLock$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;IIZZ)V
    .locals 7

    .line 711
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    .line 712
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 713
    iput-boolean p5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->round:Z

    .line 714
    iput-boolean p6, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->forceSelector:Z

    if-eqz p5, :cond_0

    .line 716
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$800(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result p5

    const/4 p6, 0x0

    invoke-static {p5, p6, p6}, Lorg/telegram/ui/ActionBar/Theme;->createCircleSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-eqz p6, :cond_1

    .line 718
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$800(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result p5

    const/16 p6, 0x8

    invoke-static {p5, p6, p6}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 721
    :cond_1
    :goto_0
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p6, 0x17

    if-lt p5, p6, :cond_2

    .line 722
    new-instance p2, Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, ""

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 p3, 0x18

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move v1, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 p3, 0x3

    .line 723
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    const/16 p5, 0x1b

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p6

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    invoke-virtual {p2, p4, p3, p6, p5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 724
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    .line 725
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    .line 726
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_1

    .line 728
    :cond_2
    new-instance p4, Landroid/widget/ImageView;

    invoke-direct {p4, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    .line 729
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 730
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 732
    :goto_1
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1400(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    const-string p2, "chat_emojiPanelIcon"

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;IZZ)V
    .locals 0

    .line 735
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    .line 736
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 737
    iput-boolean p4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->round:Z

    .line 738
    iput-boolean p5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->forceSelector:Z

    if-eqz p4, :cond_0

    .line 740
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$800(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result p4

    const/4 p5, 0x0

    invoke-static {p4, p5, p5}, Lorg/telegram/ui/ActionBar/Theme;->createCircleSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    .line 742
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$800(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result p4

    const/16 p5, 0x8

    invoke-static {p4, p5, p5}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 745
    :cond_1
    :goto_0
    new-instance p4, Landroid/widget/ImageView;

    invoke-direct {p4, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    .line 746
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 747
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1400(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    const-string p2, "chat_emojiPanelIcon"

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setColor(I)V

    .line 749
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 0

    .line 752
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    .line 753
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p4, 0x1

    .line 754
    iput-boolean p4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->newly:Z

    .line 755
    iput-boolean p5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->round:Z

    .line 756
    iput-boolean p6, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->forceSelector:Z

    if-eqz p5, :cond_0

    .line 758
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$800(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result p5

    const/4 p6, 0x0

    invoke-static {p5, p6, p6}, Lorg/telegram/ui/ActionBar/Theme;->createCircleSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-eqz p6, :cond_1

    .line 760
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$800(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result p5

    const/16 p6, 0x8

    invoke-static {p5, p6, p6}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 763
    :cond_1
    :goto_0
    new-instance p5, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$1;

    invoke-direct {p5, p0, p2, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$1;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Landroid/content/Context;Lorg/telegram/ui/Components/EmojiTabsStrip;)V

    iput-object p5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    .line 790
    invoke-virtual {p5, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 791
    instance-of p3, p3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p3, :cond_2

    .line 792
    iput-boolean p4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->isAnimatedEmoji:Z

    .line 793
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->getEmojiColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 795
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 797
    new-instance p3, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    sget p4, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_STICKERS_PREMIUM_LOCKED:I

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1400(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p5

    invoke-direct {p3, p2, p4, p5}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    const/4 p2, 0x0

    .line 798
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 799
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 800
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 801
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateLockImageReceiver()V

    .line 802
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 804
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1400(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    const-string p2, "chat_emojiPanelIcon"

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setColor(I)V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)Landroid/widget/ImageView;
    .locals 0

    .line 699
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)Lorg/telegram/ui/Components/Premium/PremiumLockIconView;
    .locals 0

    .line 699
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)Z
    .locals 0

    .line 699
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->round:Z

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)Z
    .locals 0

    .line 699
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->forceSelector:Z

    return p0
.end method

.method private synthetic lambda$updateLock$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 865
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockT:F

    .line 866
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 867
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockT:F

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 868
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockT:F

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$updateSelect$1(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 956
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectT:F

    .line 957
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1400(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    const-string v0, "chat_emojiPanelIcon"

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1400(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    const-string v1, "chat_emojiPanelIconSelected"

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectT:F

    invoke-static {p1, v0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setColor(I)V

    return-void
.end method

.method private setColor(I)V
    .locals 2

    .line 994
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 995
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->isAnimatedEmoji:Z

    if-nez v1, :cond_0

    .line 996
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 997
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 999
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_1

    .line 1000
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1001
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method

.method private updateLock(Z)V
    .locals 5

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 859
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockT:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    return-void

    .line 862
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 863
    iget v4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockT:F

    aput v4, v0, v3

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockAnimator:Landroid/animation/ValueAnimator;

    .line 864
    new-instance v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 870
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$2;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 878
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 879
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 880
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 809
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 810
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 922
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 912
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    sub-int v0, p4, p2

    .line 913
    div-int/lit8 v0, v0, 0x2

    sub-int v1, p5, p3

    div-int/lit8 v1, v1, 0x2

    .line 914
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 916
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz p1, :cond_1

    sub-int/2addr p4, p2

    .line 917
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    sub-int p2, p4, p2

    sub-int/2addr p5, p3

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p3

    sub-int p3, p5, p3

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    const/16 p1, 0x1e

    .line 895
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 896
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    const/high16 p2, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    const/16 v0, 0x18

    .line 898
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 899
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 897
    invoke-virtual {p1, v1, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 902
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz p1, :cond_1

    const/16 v0, 0xc

    .line 904
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 905
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 903
    invoke-virtual {p1, v1, p2}, Landroid/widget/ImageView;->measure(II)V

    :cond_1
    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 821
    invoke-super {p0}, Landroid/view/ViewGroup;->performClick()Z

    move-result v0

    return v0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 926
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 927
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 929
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    .line 932
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 933
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setLock(Ljava/lang/Boolean;)V
    .locals 3

    .line 836
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 840
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateLock(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 842
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateLock(Z)V

    .line 843
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 844
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_mini_lockedemoji:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 846
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_mini_addemoji:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 847
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 848
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public updateColor()V
    .locals 3

    .line 983
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$800(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 984
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    .line 986
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1400(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    const-string v1, "chat_emojiPanelIcon"

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    .line 987
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1400(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    const-string v2, "chat_emojiPanelIconSelected"

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectT:F

    .line 985
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 984
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setColor(I)V

    return-void
.end method

.method public updateLockImageReceiver()V
    .locals 2

    .line 884
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->ready()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 885
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 887
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    .line 888
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateSelect(ZZ)V
    .locals 4

    .line 941
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 944
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selected:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 947
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selected:Z

    .line 948
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 949
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 950
    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectAnimator:Landroid/animation/ValueAnimator;

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v2, 0x0

    .line 954
    iget v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectT:F

    aput v3, p2, v2

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    aput v0, p2, v2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectAnimator:Landroid/animation/ValueAnimator;

    .line 955
    new-instance v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 959
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$3;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 973
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 974
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 975
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 977
    :goto_1
    iput v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectT:F

    .line 978
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateColor()V

    :goto_2
    return-void
.end method

.method public updateVisibilityInbounds(ZZ)V
    .locals 1

    .line 826
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->wasVisible:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 827
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 828
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 829
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 832
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->wasVisible:Z

    return-void
.end method
