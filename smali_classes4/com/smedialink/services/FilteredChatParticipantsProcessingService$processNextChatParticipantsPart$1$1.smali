.class final synthetic Lcom/smedialink/services/FilteredChatParticipantsProcessingService$processNextChatParticipantsPart$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "FilteredChatParticipantsProcessingService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->processNextChatParticipantsPart$lambda-4(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;

    const/4 v1, 0x0

    const-string v4, "deleteParticipant"

    const-string v5, "deleteParticipant()V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$processNextChatParticipantsPart$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 177
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;

    invoke-static {v0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->access$deleteParticipant(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;)V

    return-void
.end method
