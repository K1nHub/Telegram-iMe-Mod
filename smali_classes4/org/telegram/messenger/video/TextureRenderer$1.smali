.class Lorg/telegram/messenger/video/TextureRenderer$1;
.super Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;
.source "TextureRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/video/TextureRenderer;->surfaceCreated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/video/TextureRenderer;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/video/TextureRenderer;Landroid/content/Context;Z)V
    .locals 0

    .line 726
    iput-object p1, p0, Lorg/telegram/messenger/video/TextureRenderer$1;->this$0:Lorg/telegram/messenger/video/TextureRenderer;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;-><init>(Landroid/content/Context;Z)V

    const/16 p2, 0x8

    .line 728
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiOffsetX:I

    const/4 p2, 0x1

    .line 729
    iput-boolean p2, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiRawDraw:Z

    .line 730
    invoke-static {p1}, Lorg/telegram/messenger/video/TextureRenderer;->access$000(Lorg/telegram/messenger/video/TextureRenderer;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiRawDrawFps:I

    return-void
.end method
