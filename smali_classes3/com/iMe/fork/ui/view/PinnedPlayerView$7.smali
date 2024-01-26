.class Lcom/iMe/fork/ui/view/PinnedPlayerView$7;
.super Landroid/widget/FrameLayout;
.source "PinnedPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/view/PinnedPlayerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/LaunchActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/view/PinnedPlayerView;Landroid/content/Context;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$7;->this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    sub-int/2addr p4, p2

    const/16 p1, 0xf8

    .line 310
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x4

    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x5

    if-ge p1, p2, :cond_0

    mul-int/lit8 p2, p1, 0x30

    add-int/lit8 p2, p2, 0x4

    .line 312
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    mul-int p3, p4, p1

    add-int/2addr p2, p3

    const/16 p3, 0x9

    .line 313
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    .line 314
    iget-object p5, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$7;->this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-static {p5}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->access$1000(Lcom/iMe/fork/ui/view/PinnedPlayerView;)[Landroid/view/View;

    move-result-object p5

    aget-object p5, p5, p1

    iget-object v0, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$7;->this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->access$1000(Lcom/iMe/fork/ui/view/PinnedPlayerView;)[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$7;->this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-static {v1}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->access$1000(Lcom/iMe/fork/ui/view/PinnedPlayerView;)[Landroid/view/View;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p5, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
