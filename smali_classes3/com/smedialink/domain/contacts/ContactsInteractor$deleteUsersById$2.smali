.class final Lcom/smedialink/domain/contacts/ContactsInteractor$deleteUsersById$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ContactsInteractor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/domain/contacts/ContactsInteractor;->deleteUsersById(Lio/reactivex/Single;)Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lorg/telegram/tgnet/TLRPC$User;",
        ">;",
        "Lio/reactivex/CompletableSource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/domain/contacts/ContactsInteractor;


# direct methods
.method constructor <init>(Lcom/smedialink/domain/contacts/ContactsInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/domain/contacts/ContactsInteractor$deleteUsersById$2;->this$0:Lcom/smedialink/domain/contacts/ContactsInteractor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/List;)Lio/reactivex/CompletableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)",
            "Lio/reactivex/CompletableSource;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/smedialink/domain/contacts/ContactsInteractor$deleteUsersById$2;->this$0:Lcom/smedialink/domain/contacts/ContactsInteractor;

    invoke-static {v0}, Lcom/smedialink/domain/contacts/ContactsInteractor;->access$getTelegramApi$p(Lcom/smedialink/domain/contacts/ContactsInteractor;)Lcom/smedialink/manager/TelegramApi;

    move-result-object v0

    invoke-static {p1}, Lorg/fork/utils/CollectionsUtilsKt;->toArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/manager/TelegramApi;->deleteUsers(Ljava/util/ArrayList;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/smedialink/domain/contacts/ContactsInteractor$deleteUsersById$2;->invoke(Ljava/util/List;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
