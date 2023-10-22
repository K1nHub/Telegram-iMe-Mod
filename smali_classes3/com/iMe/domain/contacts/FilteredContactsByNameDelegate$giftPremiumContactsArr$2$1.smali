.class final Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$giftPremiumContactsArr$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FilteredContactsByNameDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$giftPremiumContactsArr$2;->invoke()Ljava/util/ArrayList;
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

    iput-object p1, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$giftPremiumContactsArr$2$1;->this$0:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/telegram/tgnet/TLRPC$TL_contact;)Ljava/lang/Boolean;
    .locals 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    iget-object v2, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$giftPremiumContactsArr$2$1;->this$0:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-static {v2}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->access$getSelfId$p(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$giftPremiumContactsArr$2$1;->this$0:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-static {v0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->access$getMessagesController(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 23
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    if-nez v0, :cond_2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    if-nez p1, :cond_2

    move p1, v1

    goto :goto_2

    :cond_2
    move p1, v2

    :goto_2
    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 22
    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-virtual {p0, p1}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$giftPremiumContactsArr$2$1;->invoke(Lorg/telegram/tgnet/TLRPC$TL_contact;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
