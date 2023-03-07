.class public Lcom/smedialink/ui/catalog/details/ChannelDetailsView$$State$ShowChannelQrCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ChannelDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/catalog/details/ChannelDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowChannelQrCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/catalog/details/ChannelDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final chatId:J


# direct methods
.method constructor <init>(Lcom/smedialink/ui/catalog/details/ChannelDetailsView$$State;J)V
    .locals 1

    .line 210
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showChannelQr"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 212
    iput-wide p2, p0, Lcom/smedialink/ui/catalog/details/ChannelDetailsView$$State$ShowChannelQrCommand;->chatId:J

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/catalog/details/ChannelDetailsView;)V
    .locals 2

    .line 217
    iget-wide v0, p0, Lcom/smedialink/ui/catalog/details/ChannelDetailsView$$State$ShowChannelQrCommand;->chatId:J

    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/catalog/details/ChannelDetailsView;->showChannelQr(J)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 206
    check-cast p1, Lcom/smedialink/ui/catalog/details/ChannelDetailsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/catalog/details/ChannelDetailsView$$State$ShowChannelQrCommand;->apply(Lcom/smedialink/ui/catalog/details/ChannelDetailsView;)V

    return-void
.end method
