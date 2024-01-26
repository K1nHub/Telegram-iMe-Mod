.class public final Lcom/iMe/manager/TelegramApiManager$getUsersByIds$lambda$12$$inlined$sendRequestWithHandle$default$1;
.super Ljava/lang/Object;
.source "TelegramApiManager.kt"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/manager/TelegramApiManager;->getUsersByIds(Ljava/util/List;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTelegramApiManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelegramApiManager.kt\ncom/iMe/manager/TelegramApiManager$sendRequestWithHandle$1\n+ 2 TelegramApiManager.kt\ncom/iMe/manager/TelegramApiManager\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,378:1\n103#2,2:379\n105#2,3:394\n1603#3,9:381\n1855#3:390\n1856#3:392\n1612#3:393\n1#4:391\n*S KotlinDebug\n*F\n+ 1 TelegramApiManager.kt\ncom/iMe/manager/TelegramApiManager\n*L\n104#1:381,9\n104#1:390\n104#1:392\n104#1:393\n104#1:391\n*E\n"
.end annotation


# instance fields
.field final synthetic $emitter:Lio/reactivex/ObservableEmitter;

.field final synthetic this$0:Lcom/iMe/manager/TelegramApiManager;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableEmitter;Lcom/iMe/manager/TelegramApiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/manager/TelegramApiManager$getUsersByIds$lambda$12$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    iput-object p2, p0, Lcom/iMe/manager/TelegramApiManager$getUsersByIds$lambda$12$$inlined$sendRequestWithHandle$default$1;->this$0:Lcom/iMe/manager/TelegramApiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 355
    iget-object p1, p0, Lcom/iMe/manager/TelegramApiManager$getUsersByIds$lambda$12$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/iMe/manager/TelegramApiManager$getUsersByIds$lambda$12$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    new-instance v0, Ljava/lang/Exception;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_0
    :try_start_0
    const-string p2, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.Vector"

    .line 379
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Vector;

    .line 380
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    const-string p2, "res.objects"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1603
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 380
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    .line 1611
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 394
    :cond_3
    iget-object p1, p0, Lcom/iMe/manager/TelegramApiManager$getUsersByIds$lambda$12$$inlined$sendRequestWithHandle$default$1;->this$0:Lcom/iMe/manager/TelegramApiManager;

    invoke-static {p1}, Lcom/iMe/manager/TelegramApiManager;->access$getMessagesController(Lcom/iMe/manager/TelegramApiManager;)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {p2}, Lcom/iMe/fork/utils/CollectionsUtilsKt;->toArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 359
    iget-object p1, p0, Lcom/iMe/manager/TelegramApiManager$getUsersByIds$lambda$12$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    .line 361
    invoke-interface {p1, p2}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 362
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 368
    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager$getUsersByIds$lambda$12$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p2}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager$getUsersByIds$lambda$12$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method
