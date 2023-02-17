.class final Lcom/smedialink/services/FilteredChatParticipantsProcessingService$chatFull$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FilteredChatParticipantsProcessingService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/services/FilteredChatParticipantsProcessingService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/tgnet/TLRPC$ChatFull;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/services/FilteredChatParticipantsProcessingService;


# direct methods
.method constructor <init>(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$chatFull$2;->this$0:Lcom/smedialink/services/FilteredChatParticipantsProcessingService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$chatFull$2;->invoke()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$chatFull$2;->this$0:Lcom/smedialink/services/FilteredChatParticipantsProcessingService;

    invoke-static {v0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->access$getMessagesController$p(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "messagesController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$chatFull$2;->this$0:Lcom/smedialink/services/FilteredChatParticipantsProcessingService;

    invoke-static {v1}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->access$getChatId$p(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    return-object v0
.end method
