.class Lorg/telegram/ui/PhotoViewer$51;
.super Lorg/telegram/ui/Components/VideoPlayer;
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
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .line 9235
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 2

    .line 9244
    invoke-super {p0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 9245
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    if-nez v0, :cond_0

    .line 9246
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$23800(Lorg/telegram/ui/PhotoViewer;Z)V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .line 9238
    invoke-super {p0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    .line 9239
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$23800(Lorg/telegram/ui/PhotoViewer;Z)V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 9252
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 9253
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9254
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/PhotoViewer;->access$23900(Lorg/telegram/ui/PhotoViewer;J)V

    :cond_0
    return-void
.end method
