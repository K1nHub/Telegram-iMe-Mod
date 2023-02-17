.class public final synthetic Lcom/smedialink/ui/chat/ChatPresenter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;

.field public final synthetic f$1:Lcom/smedialink/ui/chat/ChatPresenter;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lcom/smedialink/ui/chat/ChatPresenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/chat/ChatPresenter$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;

    iput-object p2, p0, Lcom/smedialink/ui/chat/ChatPresenter$$ExternalSyntheticLambda1;->f$1:Lcom/smedialink/ui/chat/ChatPresenter;

    iput-object p3, p0, Lcom/smedialink/ui/chat/ChatPresenter$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/smedialink/ui/chat/ChatPresenter$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;

    iget-object v1, p0, Lcom/smedialink/ui/chat/ChatPresenter$$ExternalSyntheticLambda1;->f$1:Lcom/smedialink/ui/chat/ChatPresenter;

    iget-object v2, p0, Lcom/smedialink/ui/chat/ChatPresenter$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p1}, Lcom/smedialink/ui/chat/ChatPresenter;->$r8$lambda$JOwEIkJAcxbDhfzCVKYFOYrSsk0(Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lcom/smedialink/ui/chat/ChatPresenter;Ljava/lang/String;Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
