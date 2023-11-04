.class Lorg/telegram/ui/SecretMediaViewer$1;
.super Lorg/telegram/ui/Components/VideoPlayer;
.source "SecretMediaViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecretMediaViewer;->preparePlayer(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecretMediaViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecretMediaViewer;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 2

    .line 579
    invoke-super {p0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 580
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$900(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/PlayPauseDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(Z)V

    return-void
.end method

.method public play()V
    .locals 2

    .line 573
    invoke-super {p0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$900(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/PlayPauseDrawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(Z)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1

    .line 567
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 568
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$900(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/PlayPauseDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(Z)V

    return-void
.end method
