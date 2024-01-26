.class Lorg/telegram/ui/UsersSelectActivity$3;
.super Landroid/widget/ScrollView;
.source "UsersSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/UsersSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/UsersSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/UsersSelectActivity;Landroid/content/Context;)V
    .locals 0

    .line 583
    iput-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$3;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3

    .line 586
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$3;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/UsersSelectActivity;->access$300(Lorg/telegram/ui/UsersSelectActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$3;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/UsersSelectActivity;->access$302(Lorg/telegram/ui/UsersSelectActivity;Z)Z

    return p2

    .line 590
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 591
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity$3;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v1}, Lorg/telegram/ui/UsersSelectActivity;->access$100(Lorg/telegram/ui/UsersSelectActivity;)I

    move-result v1

    const/16 v2, 0x14

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 592
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity$3;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v1}, Lorg/telegram/ui/UsersSelectActivity;->access$100(Lorg/telegram/ui/UsersSelectActivity;)I

    move-result v1

    const/16 v2, 0x32

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 593
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ScrollView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method
