.class final Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate$notMutualContacts$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FilteredByOnlineContactsDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;-><init>(ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/ArrayList<",
        "Lorg/telegram/tgnet/TLRPC$TL_contact;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilteredByOnlineContactsDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilteredByOnlineContactsDelegate.kt\ncom/iMe/domain/contacts/FilteredByOnlineContactsDelegate$notMutualContacts$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,62:1\n766#2:63\n857#2,2:64\n*S KotlinDebug\n*F\n+ 1 FilteredByOnlineContactsDelegate.kt\ncom/iMe/domain/contacts/FilteredByOnlineContactsDelegate$notMutualContacts$2\n*L\n26#1:63\n26#1:64,2\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;


# direct methods
.method constructor <init>(Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate$notMutualContacts$2;->this$0:Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate$notMutualContacts$2;->invoke()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate$notMutualContacts$2;->this$0:Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;

    invoke-static {v0}, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->access$getContacts$p(Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate$notMutualContacts$2;->this$0:Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;

    .line 766
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 26
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v1}, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->access$getSelfId$p(Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->mutual:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    .line 857
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_2
    invoke-static {v2}, Lcom/iMe/fork/utils/CollectionsUtilsKt;->toArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
