.class Lorg/telegram/ui/PopupNotificationActivity$2;
.super Landroid/widget/RelativeLayout;
.source "PopupNotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PopupNotificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PopupNotificationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    .line 298
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 299
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 300
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 301
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 302
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {p4}, Lorg/telegram/ui/PopupNotificationActivity;->access$000(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getTop()I

    move-result p4

    const/4 p5, 0x3

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    add-int/2addr p4, p5

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p5

    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$000(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v0

    invoke-virtual {p2, p3, p4, p5, v0}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 285
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 286
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {p1}, Lorg/telegram/ui/PopupNotificationActivity;->access$000(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    .line 287
    iget-object p2, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {p2}, Lorg/telegram/ui/PopupNotificationActivity;->access$000(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    const/4 v0, 0x0

    .line 288
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 289
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 290
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    .line 291
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int v4, p2, v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
