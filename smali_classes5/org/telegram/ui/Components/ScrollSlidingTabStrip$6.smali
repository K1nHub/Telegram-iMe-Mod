.class Lorg/telegram/ui/Components/ScrollSlidingTabStrip$6;
.super Ljava/lang/Object;
.source "ScrollSlidingTabStrip.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V
    .locals 0

    .line 1134
    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$6;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$6;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-wide v2, v2, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollStartTime:J

    sub-long/2addr v0, v2

    const/4 v2, -0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0xbb8

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    .line 1140
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$6;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollRight:Z

    if-eqz v1, :cond_0

    :goto_0
    const/4 v2, 0x1

    :cond_0
    mul-int v0, v0, v2

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x1388

    cmp-long v6, v0, v4

    if-gez v6, :cond_2

    const/4 v0, 0x2

    .line 1142
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$6;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollRight:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    .line 1144
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$6;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollRight:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1147
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$6;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 1148
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$6;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
