.class Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$1;
.super Ljava/lang/Object;
.source "ViewPagerFixed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)V
    .locals 0

    .line 1299
    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$1;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1302
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$1;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$900(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1305
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1306
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$1;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3500(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x11

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    move-wide v0, v2

    .line 1310
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$1;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    long-to-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3616(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;F)F

    .line 1311
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$1;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/CubicBezierInterpolator;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$1;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->setAnimationIdicatorProgress(F)V

    .line 1312
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$1;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 1313
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$1;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3602(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;F)F

    .line 1315
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$1;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 1316
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$1;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1318
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$1;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$902(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;Z)Z

    .line 1319
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$1;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1320
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$1;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3900(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1321
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$1;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3900(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;->onPageScrolled(F)V

    :cond_4
    :goto_0
    return-void
.end method
