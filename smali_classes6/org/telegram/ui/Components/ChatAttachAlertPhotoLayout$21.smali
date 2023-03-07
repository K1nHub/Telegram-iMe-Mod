.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;
.super Landroid/widget/FrameLayout;
.source "ChatAttachAlertPhotoLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;)V
    .locals 0

    .line 2220
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 2223
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 2224
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 2225
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$1400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 2226
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$1400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v3

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 2227
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    int-to-float v3, v3

    .line 2228
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 2230
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2231
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
