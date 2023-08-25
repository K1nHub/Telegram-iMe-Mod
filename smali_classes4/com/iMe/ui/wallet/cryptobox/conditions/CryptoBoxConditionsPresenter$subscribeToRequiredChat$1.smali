.class final Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$subscribeToRequiredChat$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CryptoBoxConditionsPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->subscribeToRequiredChat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/tgnet/TLRPC$Chat;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lorg/telegram/tgnet/TLRPC$Chat;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$subscribeToRequiredChat$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation

    const-string v0, "chat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$subscribeToRequiredChat$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->access$getTelegramApi$p(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;)Lcom/iMe/manager/TelegramApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iMe/manager/TelegramApi;->subscribeToChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 206
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$subscribeToRequiredChat$1;->invoke(Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
