.class public Lcom/iMe/ui/chat/ChatView$$State$ShowSuccessPaymentProcessedDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ChatView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/chat/ChatView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowSuccessPaymentProcessedDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/chat/ChatView;",
        ">;"
    }
.end annotation


# instance fields
.field public final btnText:Ljava/lang/String;

.field public final message:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/chat/ChatView$$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 442
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showSuccessPaymentProcessedDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 444
    iput-object p2, p0, Lcom/iMe/ui/chat/ChatView$$State$ShowSuccessPaymentProcessedDialogCommand;->title:Ljava/lang/String;

    .line 445
    iput-object p3, p0, Lcom/iMe/ui/chat/ChatView$$State$ShowSuccessPaymentProcessedDialogCommand;->message:Ljava/lang/String;

    .line 446
    iput-object p4, p0, Lcom/iMe/ui/chat/ChatView$$State$ShowSuccessPaymentProcessedDialogCommand;->btnText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/chat/ChatView;)V
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/iMe/ui/chat/ChatView$$State$ShowSuccessPaymentProcessedDialogCommand;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/chat/ChatView$$State$ShowSuccessPaymentProcessedDialogCommand;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/chat/ChatView$$State$ShowSuccessPaymentProcessedDialogCommand;->btnText:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/manager/crypto/pay/BinancePayProcessView;->showSuccessPaymentProcessedDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 434
    check-cast p1, Lcom/iMe/ui/chat/ChatView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/chat/ChatView$$State$ShowSuccessPaymentProcessedDialogCommand;->apply(Lcom/iMe/ui/chat/ChatView;)V

    return-void
.end method
