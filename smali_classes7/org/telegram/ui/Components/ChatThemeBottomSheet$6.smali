.class Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;
.super Ljava/lang/Object;
.source "ChatThemeBottomSheet.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatThemeBottomSheet;->getThemeDescriptions()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isAnimationStarted:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 525
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;->isAnimationStarted:Z

    return-void
.end method


# virtual methods
.method public didSetColor()V
    .locals 0

    return-void
.end method

.method public onAnimationProgress(F)V
    .locals 5

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 529
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;->isAnimationStarted:Z

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$500(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    const/4 v0, 0x1

    .line 531
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;->isAnimationStarted:Z

    .line 533
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$700(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$600(Lorg/telegram/ui/Components/ChatThemeBottomSheet;I)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$800(Lorg/telegram/ui/Components/ChatThemeBottomSheet;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOverlayNavBarColor(I)V

    .line 535
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$900(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$1000(Lorg/telegram/ui/Components/ChatThemeBottomSheet;F)V

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 538
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;->isAnimationStarted:Z

    if-eqz p1, :cond_2

    .line 539
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$902(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Z)Z

    .line 540
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$1100(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    .line 541
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;->isAnimationStarted:Z

    .line 543
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$1200(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    .line 544
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$1300(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 545
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$1300(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$1400(Lorg/telegram/ui/Components/ChatThemeBottomSheet;I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$1500(Lorg/telegram/ui/Components/ChatThemeBottomSheet;I)I

    move-result v2

    const/16 v4, 0x4c

    invoke-static {v2, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 547
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$1600(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 548
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$1600(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$1700(Lorg/telegram/ui/Components/ChatThemeBottomSheet;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    :cond_4
    return-void
.end method
