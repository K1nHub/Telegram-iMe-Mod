.class Lorg/telegram/ui/Components/FilterTabsView$1;
.super Ljava/lang/Object;
.source "FilterTabsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/FilterTabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/FilterTabsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FilterTabsView;)V
    .locals 0

    .line 1123
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$1;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1126
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$1;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$2400(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1129
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1130
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$1;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$3600(Lorg/telegram/ui/Components/FilterTabsView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x11

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    move-wide v0, v2

    .line 1134
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$1;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    long-to-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$3716(Lorg/telegram/ui/Components/FilterTabsView;F)F

    .line 1135
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$1;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$3800(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/CubicBezierInterpolator;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$1;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$3700(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FilterTabsView;->setAnimationIdicatorProgress(F)V

    .line 1136
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$1;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$3700(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 1137
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$1;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$3702(Lorg/telegram/ui/Components/FilterTabsView;F)F

    .line 1139
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$1;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$3700(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 1140
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$1;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$3900(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1142
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$1;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$2402(Lorg/telegram/ui/Components/FilterTabsView;Z)Z

    .line 1143
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$1;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1144
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$1;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$300(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1145
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$1;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$300(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->onPageScrolled(F)V

    :cond_4
    :goto_0
    return-void
.end method
