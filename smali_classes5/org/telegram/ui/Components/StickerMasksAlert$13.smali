.class Lorg/telegram/ui/Components/StickerMasksAlert$13;
.super Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;
.source "StickerMasksAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickerMasksAlert;->scrollEmojisToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StickerMasksAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;I)V
    .locals 0

    .line 901
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$13;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    .line 904
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$13;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3202(Lorg/telegram/ui/Components/StickerMasksAlert;Z)Z

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 909
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$13;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3202(Lorg/telegram/ui/Components/StickerMasksAlert;Z)Z

    return-void
.end method
