.class Lorg/telegram/ui/MessageStatisticActivity$4;
.super Lorg/telegram/ui/Components/ChatAvatarContainer;
.source "MessageStatisticActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MessageStatisticActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MessageStatisticActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MessageStatisticActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 0

    .line 334
    iput-object p1, p0, Lorg/telegram/ui/MessageStatisticActivity$4;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAvatarContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 337
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$4;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    iget-object v1, v0, Lorg/telegram/ui/MessageStatisticActivity;->thumbImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->access$700(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/MessageStatisticActivity$4;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v2}, Lorg/telegram/ui/MessageStatisticActivity;->access$700(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    const/16 v3, 0x12

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v0, v2, v4, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$4;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    iget-object v0, v0, Lorg/telegram/ui/MessageStatisticActivity;->thumbImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$4;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    iget-boolean v1, v0, Lorg/telegram/ui/MessageStatisticActivity;->drawPlay:Z

    if-eqz v1, :cond_0

    .line 341
    iget-object v0, v0, Lorg/telegram/ui/MessageStatisticActivity;->thumbImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v0

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 342
    iget-object v1, p0, Lorg/telegram/ui/MessageStatisticActivity$4;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    iget-object v1, v1, Lorg/telegram/ui/MessageStatisticActivity;->thumbImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v1

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 343
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 344
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 350
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->onAttachedToWindow()V

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$4;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    iget-object v0, v0, Lorg/telegram/ui/MessageStatisticActivity;->thumbImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 356
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->onDetachedFromWindow()V

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$4;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    iget-object v0, v0, Lorg/telegram/ui/MessageStatisticActivity;->thumbImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method
