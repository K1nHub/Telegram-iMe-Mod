.class Lorg/telegram/ui/ChatActivity$52;
.super Landroid/graphics/drawable/LayerDrawable;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createBottomMessagesActionButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;[Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 0

    .line 9539
    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$52;->val$rect:Landroid/graphics/Rect;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 9542
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9543
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$52;->val$rect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$52;->val$rect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    add-float/2addr v3, v0

    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 9544
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 9545
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
