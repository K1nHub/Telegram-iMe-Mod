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
.field animatedEmoji:Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;

.field attached:Z

.field private forceSelector:Z

.field public id:Ljava/lang/Integer;

.field private imageView:Landroid/widget/ImageView;

.field private isAnimatedEmoji:Z

.field public keepAttached:Z

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

    .line 879
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    .line 880
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 881
    iput-boolean p5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->round:Z

    .line 882
    iput-boolean p6, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->forceSelector:Z

    if-eqz p5, :cond_0

    .line 884
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$800(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result p5

    const/4 p6, 0x0

    invoke-static {p5, p6, p6}, Lorg/telegram/ui/ActionBar/Theme;->createCircleSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-eqz p6, :cond_1

    .line 886
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$800(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result p5

    const/16 p6, 0x8

    invoke-static {p5, p6, p6}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 889
    :cond_1
    :goto_0
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p6, 0x17

    if-lt p5, p6, :cond_2

    .line 890
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

    .line 891
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

    .line 892
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    .line 893
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    .line 894
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_1

    .line 896
    :cond_2
    new-instance p4, Landroid/widget/ImageView;

    invoke-direct {p4, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    .line 897
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 898
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 900
    :goto_1
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1200(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    const-string p2, "chat_emojiPanelIcon"

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;IZZ)V
    .locals 0

    .line 903
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    .line 904
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 905
    iput-boolean p4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->round:Z

    .line 906
    iput-boolean p5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->forceSelector:Z

    if-eqz p4, :cond_0

    .line 908
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$800(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result p4

    const/4 p5, 0x0

    invoke-static {p4, p5, p5}, Lorg/telegram/ui/ActionBar/Theme;->createCircleSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    .line 910
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$800(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result p4

    const/16 p5, 0x8

    invoke-static {p4, p5, p5}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 913
    :cond_1
    :goto_0
    new-instance p4, Landroid/widget/ImageView;

    invoke-direct {p4, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    .line 914
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 915
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1200(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    const-string p2, "chat_emojiPanelIcon"

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setColor(I)V

    .line 917
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 0

    .line 920
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    .line 921
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p4, 0x1

    .line 922
    iput-boolean p4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->newly:Z

    .line 923
    iput-boolean p5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->round:Z

    .line 924
    iput-boolean p6, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->forceSelector:Z

    if-eqz p5, :cond_0

    .line 926
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$800(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result p5

    const/4 p6, 0x0

    invoke-static {p5, p6, p6}, Lorg/telegram/ui/ActionBar/Theme;->createCircleSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-eqz p6, :cond_1

    .line 928
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$800(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result p5

    const/16 p6, 0x8

    invoke-static {p5, p6, p6}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 931
    :cond_1
    :goto_0
    new-instance p5, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$1;

    invoke-direct {p5, p0, p2, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$1;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Landroid/content/Context;Lorg/telegram/ui/Components/EmojiTabsStrip;)V

    iput-object p5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    .line 958
    invoke-virtual {p5, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 959
    instance-of p3, p3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p3, :cond_2

    .line 960
    iput-boolean p4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->isAnimatedEmoji:Z

    .line 961
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->getEmojiColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 963
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 965
    new-instance p3, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    sget p4, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_STICKERS_PREMIUM_LOCKED:I

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1200(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p5

    invoke-direct {p3, p2, p4, p5}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    const/4 p2, 0x0

    .line 966
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 967
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 968
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 969
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateLockImageReceiver()V

    .line 970
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 972
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1200(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    const-string p2, "chat_emojiPanelIcon"

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setColor(I)V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V
    .locals 0

    .line 864
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateAttachState()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)Lorg/telegram/ui/Components/Premium/PremiumLockIconView;
    .locals 0

    .line 864
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)Z
    .locals 0

    .line 864
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->round:Z

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)Z
    .locals 0

    .line 864
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->forceSelector:Z

    return p0
.end method

.method private initLock()V
    .locals 2

    .line 1062
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmoji:Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 1063
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1065
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateLock$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1101
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockT:F

    .line 1102
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1103
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockT:F

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1104
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockT:F

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$updateSelect$1(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1232
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectT:F

    .line 1233
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1200(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    const-string v0, "chat_emojiPanelIcon"

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1200(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

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

.method private playAnimation()V
    .locals 5

    .line 1006
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmoji:Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    .line 1007
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1009
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1010
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekTo(JZ)V

    .line 1012
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    :cond_1
    return-void
.end method

.method private setColor(I)V
    .locals 2

    .line 1270
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1271
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->isAnimatedEmoji:Z

    if-nez v1, :cond_0

    .line 1272
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1273
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 1275
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_1

    .line 1276
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1277
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method

.method private stopAnimation()V
    .locals 3

    .line 1018
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmoji:Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    .line 1019
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1021
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1022
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 1023
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    goto :goto_0

    .line 1024
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1025
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stop()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateAttachState()V
    .locals 2

    .line 1199
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmoji:Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    .line 1200
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->keepAttached:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->attached:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->wasVisible:Z

    if-eqz v1, :cond_1

    .line 1201
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->updateView(Landroid/view/View;)V

    goto :goto_0

    .line 1203
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->removeView()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateLock(Z)V
    .locals 5

    .line 1092
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1093
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1095
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

    .line 1098
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1099
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

    .line 1100
    new-instance v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1106
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$2;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1114
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1115
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1116
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 977
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 978
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->wasVisible:Z

    if-eqz v1, :cond_0

    .line 979
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 985
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->wasVisible:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 988
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1158
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

.method protected onAttachedToWindow()V
    .locals 1

    .line 1186
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1187
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->attached:Z

    .line 1188
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateAttachState()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1193
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 1194
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->attached:Z

    .line 1195
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateAttachState()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 993
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->wasVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 996
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 1148
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    sub-int v0, p4, p2

    .line 1149
    div-int/lit8 v0, v0, 0x2

    sub-int v1, p5, p3

    div-int/lit8 v1, v1, 0x2

    .line 1150
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

    .line 1152
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz p1, :cond_1

    sub-int/2addr p4, p2

    .line 1153
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

    .line 1131
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 1132
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    const/high16 p2, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    const/16 v0, 0x18

    .line 1134
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1135
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1133
    invoke-virtual {p1, v1, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 1138
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz p1, :cond_1

    const/16 v0, 0xc

    .line 1140
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1141
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1139
    invoke-virtual {p1, v1, p2}, Landroid/widget/ImageView;->measure(II)V

    :cond_1
    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 1001
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->playAnimation()V

    .line 1002
    invoke-super {p0}, Landroid/view/ViewGroup;->performClick()Z

    move-result v0

    return v0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1163
    instance-of v0, p1, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 1164
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1166
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmoji:Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;

    if-eq v1, v0, :cond_4

    if-eqz v1, :cond_1

    .line 1167
    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->attached:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->wasVisible:Z

    if-eqz v2, :cond_1

    .line 1168
    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->removeView()V

    .line 1170
    :cond_1
    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmoji:Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    .line 1171
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->attached:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->wasVisible:Z

    if-eqz v1, :cond_2

    .line 1172
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->updateView(Landroid/view/View;)V

    .line 1174
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->wasVisible:Z

    if-eqz v0, :cond_3

    .line 1175
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmoji:Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->load()V

    .line 1177
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->initLock()V

    .line 1179
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 1180
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method public setLock(Ljava/lang/Boolean;)V
    .locals 3

    .line 1071
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1075
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateLock(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1077
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateLock(Z)V

    .line 1078
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1079
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_mini_lockedemoji:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1081
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_mini_addemoji:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1082
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1083
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public updateColor()V
    .locals 3

    .line 1259
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$800(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 1260
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    .line 1262
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1200(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    const-string v1, "chat_emojiPanelIcon"

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    .line 1263
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1200(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    const-string v2, "chat_emojiPanelIconSelected"

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectT:F

    .line 1261
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 1260
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setColor(I)V

    return-void
.end method

.method public updateLockImageReceiver()V
    .locals 2

    .line 1120
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->ready()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 1121
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1123
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    .line 1124
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateSelect(ZZ)V
    .locals 4

    .line 1213
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1216
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selected:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 1219
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selected:Z

    .line 1220
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 1221
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 1222
    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectAnimator:Landroid/animation/ValueAnimator;

    :cond_2
    if-nez p1, :cond_3

    .line 1226
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->stopAnimation()V

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v2, 0x0

    .line 1230
    iget v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectT:F

    aput v3, p2, v2

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    aput v0, p2, v2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectAnimator:Landroid/animation/ValueAnimator;

    .line 1231
    new-instance v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1235
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$3;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1249
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1250
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1251
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 1253
    :goto_1
    iput v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectT:F

    .line 1254
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateColor()V

    :goto_2
    return-void
.end method

.method public updateVisibilityInbounds(ZZ)V
    .locals 1

    .line 1034
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->wasVisible:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1035
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 1036
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 1037
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 1040
    :cond_0
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->wasVisible:Z

    if-eq p2, p1, :cond_5

    .line 1041
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->wasVisible:Z

    if-eqz p1, :cond_3

    .line 1043
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1044
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz p1, :cond_1

    .line 1045
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 1047
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;

    if-eqz p1, :cond_2

    .line 1048
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->load()V

    .line 1050
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->initLock()V

    .line 1051
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    .line 1052
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 1055
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->stopAnimation()V

    .line 1057
    :cond_4
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateAttachState()V

    :cond_5
    return-void
.end method
