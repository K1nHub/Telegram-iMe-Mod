.class public final Lcom/iMe/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/chat/ChatPresenter;->checkAndSendReaction(Ljava/lang/Object;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 ChatPresenter.kt\ncom/iMe/ui/chat/ChatPresenter\n*L\n1#1,132:1\n148#2,2:133\n*E\n"
.end annotation


# instance fields
.field final synthetic $botCaption$inlined:Ljava/lang/String;

.field final synthetic $caption$inlined:Ljava/lang/String;

.field final synthetic $data$inlined:Ljava/lang/Object;

.field final synthetic $replyMessage$inlined:Lorg/telegram/messenger/MessageObject;

.field final synthetic this$0:Lcom/iMe/ui/chat/ChatPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/chat/ChatPresenter;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/chat/ChatPresenter;

    iput-object p2, p0, Lcom/iMe/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;->$data$inlined:Ljava/lang/Object;

    iput-object p3, p0, Lcom/iMe/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;->$caption$inlined:Ljava/lang/String;

    iput-object p4, p0, Lcom/iMe/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;->$botCaption$inlined:Ljava/lang/String;

    iput-object p5, p0, Lcom/iMe/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;->$replyMessage$inlined:Lorg/telegram/messenger/MessageObject;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const-string v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 133
    iget-object p1, p0, Lcom/iMe/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/chat/ChatPresenter;

    iget-object v0, p0, Lcom/iMe/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;->$data$inlined:Ljava/lang/Object;

    iget-object v1, p0, Lcom/iMe/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;->$caption$inlined:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    iget-object v2, p0, Lcom/iMe/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;->$botCaption$inlined:Ljava/lang/String;

    iget-object v3, p0, Lcom/iMe/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;->$replyMessage$inlined:Lorg/telegram/messenger/MessageObject;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/iMe/ui/chat/ChatPresenter;->access$sendReactionMessage(Lcom/iMe/ui/chat/ChatPresenter;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method
