.class final Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$blockedUsersArr$2;
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
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;


# direct methods
.method constructor <init>(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$blockedUsersArr$2;->this$0:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$blockedUsersArr$2;->invoke()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$blockedUsersArr$2;->this$0:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    new-instance v1, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$blockedUsersArr$2$1;

    invoke-direct {v1, v0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$blockedUsersArr$2$1;-><init>(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;)V

    invoke-static {v0, v1}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->access$getArrCharsByPredicate(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
