.class Lorg/telegram/ui/Components/ChatActivityEnterView$7;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 1005
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$7;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1008
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$7;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1010
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->selectedVideoVoiceCamera:Lcom/iMe/fork/enums/VideoVoiceCamera;

    sget-object v1, Lcom/iMe/fork/enums/VideoVoiceCamera;->ASK:Lcom/iMe/fork/enums/VideoVoiceCamera;

    if-ne v0, v1, :cond_0

    .line 1011
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$7;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    goto :goto_0

    .line 1012
    :cond_0
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->selectedVideoVoiceCamera:Lcom/iMe/fork/enums/VideoVoiceCamera;

    sget-object v1, Lcom/iMe/fork/enums/VideoVoiceCamera;->BACK:Lcom/iMe/fork/enums/VideoVoiceCamera;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 1013
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$7;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    invoke-interface {v0, v3, v2, v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZIZ)V

    goto :goto_0

    .line 1015
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$7;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    invoke-interface {v0, v3, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZI)V

    :cond_2
    :goto_0
    return-void
.end method
