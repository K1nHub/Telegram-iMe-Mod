.class Lorg/telegram/ui/QrActivity$2;
.super Landroid/view/View;
.source "QrActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/QrActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/QrActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/QrActivity;Landroid/content/Context;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lorg/telegram/ui/QrActivity$2;->this$0:Lorg/telegram/ui/QrActivity;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$2;->this$0:Lorg/telegram/ui/QrActivity;

    invoke-static {v0}, Lorg/telegram/ui/QrActivity;->access$800(Lorg/telegram/ui/QrActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0xede5d6

    goto :goto_0

    :cond_0
    const v0, -0x643c71

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$2;->this$0:Lorg/telegram/ui/QrActivity;

    invoke-static {v0}, Lorg/telegram/ui/QrActivity;->access$900(Lorg/telegram/ui/QrActivity;)Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$2;->this$0:Lorg/telegram/ui/QrActivity;

    invoke-static {v0}, Lorg/telegram/ui/QrActivity;->access$900(Lorg/telegram/ui/QrActivity;)Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBounds(IIII)V

    .line 259
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$2;->this$0:Lorg/telegram/ui/QrActivity;

    invoke-static {v0}, Lorg/telegram/ui/QrActivity;->access$1000(Lorg/telegram/ui/QrActivity;)Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBounds(IIII)V

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$2;->this$0:Lorg/telegram/ui/QrActivity;

    invoke-static {v0}, Lorg/telegram/ui/QrActivity;->access$900(Lorg/telegram/ui/QrActivity;)Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$2;->this$0:Lorg/telegram/ui/QrActivity;

    invoke-static {v0}, Lorg/telegram/ui/QrActivity;->access$900(Lorg/telegram/ui/QrActivity;)Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->drawBackground(Landroid/graphics/Canvas;)V

    .line 263
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$2;->this$0:Lorg/telegram/ui/QrActivity;

    invoke-static {v0}, Lorg/telegram/ui/QrActivity;->access$1000(Lorg/telegram/ui/QrActivity;)Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->drawBackground(Landroid/graphics/Canvas;)V

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$2;->this$0:Lorg/telegram/ui/QrActivity;

    invoke-static {v0}, Lorg/telegram/ui/QrActivity;->access$900(Lorg/telegram/ui/QrActivity;)Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$2;->this$0:Lorg/telegram/ui/QrActivity;

    invoke-static {v0}, Lorg/telegram/ui/QrActivity;->access$900(Lorg/telegram/ui/QrActivity;)Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->drawPattern(Landroid/graphics/Canvas;)V

    .line 266
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$2;->this$0:Lorg/telegram/ui/QrActivity;

    invoke-static {v0}, Lorg/telegram/ui/QrActivity;->access$1000(Lorg/telegram/ui/QrActivity;)Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->drawPattern(Landroid/graphics/Canvas;)V

    .line 267
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
