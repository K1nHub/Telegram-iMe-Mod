.class Lorg/telegram/ui/Cells/GroupCallUserCell$3;
.super Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;
.source "GroupCallUserCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/GroupCallUserCell;->setData(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;Lorg/telegram/messenger/ChatObject$Call;JLorg/telegram/tgnet/TLRPC$FileLocation;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/GroupCallUserCell;Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    .line 488
    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 491
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, -0x2

    .line 492
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 493
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 494
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
