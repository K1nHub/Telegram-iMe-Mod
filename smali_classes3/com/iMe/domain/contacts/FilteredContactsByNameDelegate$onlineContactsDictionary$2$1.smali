.class final Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$onlineContactsDictionary$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FilteredContactsByNameDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$onlineContactsDictionary$2;->invoke()Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/tgnet/TLRPC$TL_contact;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;


# direct methods
.method constructor <init>(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$onlineContactsDictionary$2$1;->this$0:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/telegram/tgnet/TLRPC$TL_contact;)Ljava/lang/Boolean;
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    iget-object v2, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$onlineContactsDictionary$2$1;->this$0:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-static {v2}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->access$getSelfId$p(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$onlineContactsDictionary$2$1;->this$0:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-static {v0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->access$getMessagesController(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    const-string v1, "messagesController.getUser(it.user_id)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->access$userIsOnline(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-virtual {p0, p1}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$onlineContactsDictionary$2$1;->invoke(Lorg/telegram/tgnet/TLRPC$TL_contact;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
