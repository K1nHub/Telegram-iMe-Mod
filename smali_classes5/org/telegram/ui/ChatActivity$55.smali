.class Lorg/telegram/ui/ChatActivity$55;
.super Lorg/telegram/ui/Components/BlurredFrameLayout;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createSearchContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V
    .locals 0

    .line 9912
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/BlurredFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    return-void
.end method


# virtual methods
.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 3

    .line 9926
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$29900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SearchCounterView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    const/16 v0, 0xe

    .line 9928
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$30000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$30000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_0

    const/16 v0, 0x3e

    .line 9931
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$30100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$30100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x30

    .line 9934
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 9936
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 9915
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 9916
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 9917
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9918
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9920
    :cond_0
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v6, v2, v0, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 9921
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    const-string v1, "paintChatComposeBackground"

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$26400(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v7

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    return-void
.end method
