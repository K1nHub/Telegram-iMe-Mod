.class Lorg/telegram/ui/Cells/UserCell$3;
.super Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;
.source "UserCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/UserCell;->update(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/UserCell;Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    .line 583
    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 586
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x1

    .line 587
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 588
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 589
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
