.class Lorg/telegram/ui/Components/BotCommandsMenuView$2;
.super Lorg/telegram/ui/Components/RLottieDrawable;
.source "BotCommandsMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/BotCommandsMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/BotCommandsMenuView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/BotCommandsMenuView;ILjava/lang/String;II)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$2;->this$0:Lorg/telegram/ui/Components/BotCommandsMenuView;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method protected invalidateInternal()V
    .locals 1

    .line 109
    invoke-super {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateInternal()V

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$2;->this$0:Lorg/telegram/ui/Components/BotCommandsMenuView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 103
    invoke-super {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$2;->this$0:Lorg/telegram/ui/Components/BotCommandsMenuView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
