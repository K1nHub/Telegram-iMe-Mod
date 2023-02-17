.class Lorg/telegram/ui/Components/ChatThemeBottomSheet$7;
.super Ljava/lang/Object;
.source "ChatThemeBottomSheet.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatThemeBottomSheet;->setupLightDarkTheme(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field changedNavigationBarColor:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

.field final synthetic val$isDark:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Z)V
    .locals 0

    .line 427
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$7;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$7;->val$isDark:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 428
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$7;->changedNavigationBarColor:Z

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 431
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$7;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$1002(Lorg/telegram/ui/Components/ChatThemeBottomSheet;F)F

    .line 432
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$7;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$1200(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 433
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$7;->changedNavigationBarColor:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$7;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$1000(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 434
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$7;->changedNavigationBarColor:Z

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$7;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$7;->val$isDark:Z

    xor-int/2addr p1, v1

    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    .line 436
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$7;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$7;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    const-string/jumbo v1, "windowBackgroundGray"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$1300(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;I)V

    :cond_0
    return-void
.end method
