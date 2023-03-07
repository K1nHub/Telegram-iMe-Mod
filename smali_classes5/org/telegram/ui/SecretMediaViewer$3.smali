.class Lorg/telegram/ui/SecretMediaViewer$3;
.super Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;
.source "SecretMediaViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecretMediaViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecretMediaViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$3;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;-><init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 616
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 617
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$3;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p1}, Lorg/telegram/ui/SecretMediaViewer;->access$2600(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 618
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer$3;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p2}, Lorg/telegram/ui/SecretMediaViewer;->access$2600(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_0

    sget p2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    add-int/2addr p1, p2

    .line 619
    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer$3;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p2}, Lorg/telegram/ui/SecretMediaViewer;->access$2600(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/SecretMediaViewer$3;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p3}, Lorg/telegram/ui/SecretMediaViewer;->access$2600(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/SecretMediaViewer$3;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p4}, Lorg/telegram/ui/SecretMediaViewer;->access$2600(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getRight()I

    move-result p4

    iget-object p5, p0, Lorg/telegram/ui/SecretMediaViewer$3;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p5}, Lorg/telegram/ui/SecretMediaViewer;->access$2600(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p1

    invoke-virtual {p2, p3, p1, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    :cond_1
    return-void
.end method
