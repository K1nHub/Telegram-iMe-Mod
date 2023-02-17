.class public Lcom/smedialink/ui/catalog/details/ChannelDetailsView$$State$ShowShareDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ChannelDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/catalog/details/ChannelDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowShareDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/catalog/details/ChannelDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/catalog/details/ChannelDetailsView$$State;Ljava/lang/String;)V
    .locals 1

    .line 195
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showShareDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 197
    iput-object p2, p0, Lcom/smedialink/ui/catalog/details/ChannelDetailsView$$State$ShowShareDialogCommand;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/catalog/details/ChannelDetailsView;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/smedialink/ui/catalog/details/ChannelDetailsView$$State$ShowShareDialogCommand;->text:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/catalog/details/ChannelDetailsView;->showShareDialog(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 191
    check-cast p1, Lcom/smedialink/ui/catalog/details/ChannelDetailsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/catalog/details/ChannelDetailsView$$State$ShowShareDialogCommand;->apply(Lcom/smedialink/ui/catalog/details/ChannelDetailsView;)V

    return-void
.end method
