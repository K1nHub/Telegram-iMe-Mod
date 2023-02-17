.class Lorg/telegram/ui/Components/StickerMasksAlert$6;
.super Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;
.source "StickerMasksAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickerMasksAlert;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StickerMasksAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickerMasksAlert;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$6;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public ignoreView(Landroid/view/View;Z)V
    .locals 1

    .line 654
    instance-of v0, p1, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;

    if-eqz v0, :cond_0

    .line 655
    check-cast p1, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->access$3302(Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;Z)Z

    :cond_0
    return-void
.end method

.method public onEndAnimation()V
    .locals 2

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$6;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3202(Lorg/telegram/ui/Components/StickerMasksAlert;Z)Z

    return-void
.end method

.method public onPreAnimation()V
    .locals 2

    .line 644
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$6;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3202(Lorg/telegram/ui/Components/StickerMasksAlert;Z)Z

    return-void
.end method
