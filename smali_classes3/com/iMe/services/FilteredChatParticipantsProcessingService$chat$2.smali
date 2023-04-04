.class final Lcom/iMe/services/FilteredChatParticipantsProcessingService$chat$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FilteredChatParticipantsProcessingService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/services/FilteredChatParticipantsProcessingService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/tgnet/TLRPC$Chat;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/services/FilteredChatParticipantsProcessingService;


# direct methods
.method constructor <init>(Lcom/iMe/services/FilteredChatParticipantsProcessingService;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$chat$2;->this$0:Lcom/iMe/services/FilteredChatParticipantsProcessingService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService$chat$2;->invoke()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$chat$2;->this$0:Lcom/iMe/services/FilteredChatParticipantsProcessingService;

    invoke-static {v0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->access$getMessagesController$p(Lcom/iMe/services/FilteredChatParticipantsProcessingService;)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "messagesController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$chat$2;->this$0:Lcom/iMe/services/FilteredChatParticipantsProcessingService;

    invoke-static {v1}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->access$getChatId$p(Lcom/iMe/services/FilteredChatParticipantsProcessingService;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    return-object v0
.end method
