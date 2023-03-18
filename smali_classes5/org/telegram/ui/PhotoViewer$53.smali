.class Lorg/telegram/ui/PhotoViewer$53;
.super Landroid/view/OrientationEventListener;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->preparePlayer(Landroid/net/Uri;ZZLorg/telegram/messenger/MediaController$SavedFilterState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V
    .locals 0

    .line 8704
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 7

    .line 8707
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$23300(Lorg/telegram/ui/PhotoViewer;)Landroid/view/OrientationEventListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5500(Lorg/telegram/ui/PhotoViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5500(Lorg/telegram/ui/PhotoViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 8710
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5100(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$23400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 8711
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$23400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/16 v1, 0x1e

    const/16 v2, 0x12c

    const/16 v3, 0x14a

    const/16 v4, 0xf0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v5, :cond_3

    if-lt p1, v4, :cond_1

    if-gt p1, v2, :cond_1

    .line 8713
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v5}, Lorg/telegram/ui/PhotoViewer;->access$23502(Lorg/telegram/ui/PhotoViewer;Z)Z

    goto :goto_0

    .line 8714
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$23500(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-lez p1, :cond_6

    if-ge p1, v3, :cond_2

    if-gt p1, v1, :cond_6

    .line 8715
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$5100(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$23600(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 8716
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v6}, Lorg/telegram/ui/PhotoViewer;->access$23402(Lorg/telegram/ui/PhotoViewer;I)I

    .line 8717
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v6}, Lorg/telegram/ui/PhotoViewer;->access$23502(Lorg/telegram/ui/PhotoViewer;Z)Z

    goto :goto_0

    :cond_3
    if-lez p1, :cond_5

    if-ge p1, v3, :cond_4

    if-gt p1, v1, :cond_5

    .line 8721
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v5}, Lorg/telegram/ui/PhotoViewer;->access$23502(Lorg/telegram/ui/PhotoViewer;Z)Z

    goto :goto_0

    .line 8722
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$23500(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-lt p1, v4, :cond_6

    if-gt p1, v2, :cond_6

    .line 8723
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$5100(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$23600(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 8724
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v6}, Lorg/telegram/ui/PhotoViewer;->access$23402(Lorg/telegram/ui/PhotoViewer;I)I

    .line 8725
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v6}, Lorg/telegram/ui/PhotoViewer;->access$23502(Lorg/telegram/ui/PhotoViewer;Z)Z

    :cond_6
    :goto_0
    return-void
.end method
