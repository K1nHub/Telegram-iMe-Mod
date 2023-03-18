.class final Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1;->invoke(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Lcom/smedialink/storage/domain/model/wallet/SessionTokens;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/chat/ChatPresenter;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/chat/ChatPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1$1;->this$0:Lcom/smedialink/ui/chat/ChatPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/wallet/SessionTokens;",
            ">;>;"
        }
    .end annotation

    const-string v0, "authUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1$1;->this$0:Lcom/smedialink/ui/chat/ChatPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/chat/ChatPresenter;->access$getWalletSessionInteractor$p(Lcom/smedialink/ui/chat/ChatPresenter;)Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;->login(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 135
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1$1;->invoke(Ljava/lang/String;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
