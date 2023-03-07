.class Lorg/telegram/ui/Components/PaintingOverlay$1;
.super Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;
.source "PaintingOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PaintingOverlay;->setEntities(Ljava/util/ArrayList;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PaintingOverlay;Landroid/content/Context;)V
    .locals 0

    .line 193
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 194
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiOffsetX:I

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
