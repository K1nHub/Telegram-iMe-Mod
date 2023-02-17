.class Lorg/telegram/ui/Components/BotWebViewSheet$11;
.super Ljava/lang/Object;
.source "BotWebViewSheet.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/BotWebViewSheet;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/BotWebViewSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V
    .locals 0

    .line 845
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$11;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 848
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 850
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$11;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$11;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetY(F)V

    .line 851
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$11;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1600(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 853
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$11;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p2

    sget-object p3, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->SWIPE_OFFSET_Y:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p4}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p2, p4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 p3, 0x3f400000    # 0.75f

    .line 855
    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    const/high16 p3, 0x43fa0000    # 500.0f

    .line 856
    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 854
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    .line 857
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method
