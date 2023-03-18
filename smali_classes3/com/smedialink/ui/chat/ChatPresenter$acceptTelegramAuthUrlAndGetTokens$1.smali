.class final Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/chat/ChatPresenter;->acceptTelegramAuthUrlAndGetTokens(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Lcom/smedialink/storage/domain/model/wallet/SessionTokens;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $buttonReq:Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;

.field final synthetic $url:Ljava/lang/String;

.field final synthetic this$0:Lcom/smedialink/ui/chat/ChatPresenter;


# direct methods
.method public static synthetic $r8$lambda$hR_AtTxb8ErXrtDBDWu5YmOguy4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1;->invoke$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lcom/smedialink/ui/chat/ChatPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1;->$buttonReq:Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;

    iput-object p2, p0, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1;->this$0:Lcom/smedialink/ui/chat/ChatPresenter;

    iput-object p3, p0, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1;->$url:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/wallet/SessionTokens;",
            ">;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1;->$buttonReq:Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;

    if-eqz p1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1;->this$0:Lcom/smedialink/ui/chat/ChatPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/chat/ChatPresenter;->access$getTelegramApi$p(Lcom/smedialink/ui/chat/ChatPresenter;)Lcom/smedialink/manager/TelegramApi;

    move-result-object p1

    .line 134
    iget-object v0, p0, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1;->$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1;->$buttonReq:Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;

    invoke-interface {p1, v0, v1}, Lcom/smedialink/manager/TelegramApi;->acceptUrlAuth(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)Lio/reactivex/Observable;

    move-result-object p1

    .line 135
    new-instance v0, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1$1;

    iget-object v1, p0, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1;->this$0:Lcom/smedialink/ui/chat/ChatPresenter;

    invoke-direct {v0, v1}, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1$1;-><init>(Lcom/smedialink/ui/chat/ChatPresenter;)V

    new-instance v1, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1;->this$0:Lcom/smedialink/ui/chat/ChatPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/chat/ChatPresenter;->access$getWalletSessionInteractor$p(Lcom/smedialink/ui/chat/ChatPresenter;)Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;

    move-result-object p1

    iget-object v0, p0, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1;->$url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;->login(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 131
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1;->invoke(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
