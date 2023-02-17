.class public final Lcom/smedialink/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/chat/ChatPresenter;->checkAndSendReaction(Ljava/lang/Object;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 ChatPresenter.kt\ncom/smedialink/ui/chat/ChatPresenter\n*L\n1#1,111:1\n119#2,2:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $botCaption$inlined:Ljava/lang/String;

.field final synthetic $caption$inlined:Ljava/lang/String;

.field final synthetic $data$inlined:Ljava/lang/Object;

.field final synthetic $replyMessage$inlined:Lorg/telegram/messenger/MessageObject;

.field final synthetic this$0:Lcom/smedialink/ui/chat/ChatPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/chat/ChatPresenter;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/chat/ChatPresenter;

    iput-object p2, p0, Lcom/smedialink/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;->$data$inlined:Ljava/lang/Object;

    iput-object p3, p0, Lcom/smedialink/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;->$caption$inlined:Ljava/lang/String;

    iput-object p4, p0, Lcom/smedialink/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;->$botCaption$inlined:Ljava/lang/String;

    iput-object p5, p0, Lcom/smedialink/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;->$replyMessage$inlined:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 112
    iget-object p1, p0, Lcom/smedialink/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/chat/ChatPresenter;

    iget-object v0, p0, Lcom/smedialink/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;->$data$inlined:Ljava/lang/Object;

    iget-object v1, p0, Lcom/smedialink/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;->$caption$inlined:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    iget-object v2, p0, Lcom/smedialink/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;->$botCaption$inlined:Ljava/lang/String;

    iget-object v3, p0, Lcom/smedialink/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;->$replyMessage$inlined:Lorg/telegram/messenger/MessageObject;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/smedialink/ui/chat/ChatPresenter;->access$sendReactionMessage(Lcom/smedialink/ui/chat/ChatPresenter;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method
