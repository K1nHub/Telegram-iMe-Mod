.class Lorg/telegram/ui/Stories/recorder/PaintView$6;
.super Ljava/lang/Object;
.source "PaintView.java"

# interfaces
.implements Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/PaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Landroid/app/Activity;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;IILorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/PaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$6;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntityDeselect()V
    .locals 2

    .line 445
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$6;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->access$600(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 446
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$6;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->enteredThroughText:Z

    if-eqz v1, :cond_0

    .line 447
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->dismiss()V

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$6;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->enteredThroughText:Z

    :cond_0
    return-void
.end method

.method public onSelectedEntityRequest()Lorg/telegram/ui/Components/Paint/Views/EntityView;
    .locals 1

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$6;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->access$500(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v0

    return-object v0
.end method

.method public shouldReceiveTouches()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
