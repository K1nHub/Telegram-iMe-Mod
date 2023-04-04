.class final Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$mutualContacts$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FilteredContactsByNameDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/util/ArrayList<",
        "Lorg/telegram/tgnet/TLRPC$TL_contact;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;


# direct methods
.method constructor <init>(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$mutualContacts$2;->this$0:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$mutualContacts$2;->invoke()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;>;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$mutualContacts$2;->this$0:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    sget-object v1, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$mutualContacts$2$1;->INSTANCE:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$mutualContacts$2$1;

    invoke-static {v0, v1}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->access$getUsersByPredicate(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;Lkotlin/jvm/functions/Function1;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
