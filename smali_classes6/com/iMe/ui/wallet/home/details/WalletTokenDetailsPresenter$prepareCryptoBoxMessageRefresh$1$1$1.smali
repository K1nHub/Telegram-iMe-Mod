.class final Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletTokenDetailsPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$1;->invoke(Lorg/telegram/tgnet/TLRPC$ChatFull;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/tgnet/TLRPC$User;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field final synthetic this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;


# direct methods
.method public static synthetic $r8$lambda$0wpbp0rDzKmuFvWLoEIrB_runqA(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$1$1;->invoke$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6o7qoN6t2pvEhTqgVj7quQeHgTU(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$1$1;->invoke$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$1$1;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$1$1;->$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 605
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    return-object p0
.end method

.method private static final invoke$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public final invoke(Lorg/telegram/tgnet/TLRPC$User;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "botUser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$1$1;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->access$getTelegramApi$p(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)Lcom/iMe/manager/TelegramApi;

    move-result-object v0

    .line 604
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$1$1;->$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const-string v2, "chat"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Lcom/iMe/manager/TelegramApi;->getChatParticipant(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;)Lio/reactivex/Observable;

    move-result-object p1

    .line 605
    sget-object v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$1$1$1;->INSTANCE:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$1$1$1;

    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$1$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 606
    sget-object v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$1$1$2;->INSTANCE:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$1$1$2;

    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$1$1$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 602
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1$1$1;->invoke(Lorg/telegram/tgnet/TLRPC$User;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
