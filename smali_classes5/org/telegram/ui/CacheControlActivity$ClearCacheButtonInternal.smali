.class Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;
.super Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;
.source "CacheControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CacheControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearCacheButtonInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CacheControlActivity;


# direct methods
.method public static synthetic $r8$lambda$Ryle1MkR1hmjkZvqnwyqZZ6exDY(Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V
    .locals 0

    .line 1693
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    .line 1694
    invoke-direct {p0, p2}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;-><init>(Landroid/content/Context;)V

    .line 1695
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 p2, 0x5

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1696
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->button:Landroid/widget/FrameLayout;

    new-instance p2, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 1697
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$3000(Lorg/telegram/ui/CacheControlActivity;)V

    return-void
.end method


# virtual methods
.method public updateSize()V
    .locals 7

    .line 1703
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2000(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2100(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 1704
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2000(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v5, 0x1

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2200(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v5

    goto :goto_1

    :cond_1
    move-wide v5, v1

    :goto_1
    add-long/2addr v3, v5

    .line 1705
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2000(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v5, 0x2

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2300(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v5

    goto :goto_2

    :cond_2
    move-wide v5, v1

    :goto_2
    add-long/2addr v3, v5

    .line 1706
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2000(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v5, 0x3

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2400(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v5

    goto :goto_3

    :cond_3
    move-wide v5, v1

    :goto_3
    add-long/2addr v3, v5

    .line 1707
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2000(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v5, 0x4

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2500(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v5

    goto :goto_4

    :cond_4
    move-wide v5, v1

    :goto_4
    add-long/2addr v3, v5

    .line 1708
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2000(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v5, 0x5

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2600(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v5

    goto :goto_5

    :cond_5
    move-wide v5, v1

    :goto_5
    add-long/2addr v3, v5

    .line 1709
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2000(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v5, 0x6

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2700(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v5

    goto :goto_6

    :cond_6
    move-wide v5, v1

    :goto_6
    add-long/2addr v3, v5

    .line 1710
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2000(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v5, 0x7

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2800(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v1

    :cond_7
    add-long/2addr v3, v1

    .line 1712
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    .line 1713
    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2900(Lorg/telegram/ui/CacheControlActivity;)Z

    move-result v0

    .line 1712
    invoke-virtual {p0, v0, v3, v4}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->setSize(ZJ)V

    return-void
.end method
