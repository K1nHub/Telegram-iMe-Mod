.class final Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CryptoBoxesPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->prepareCryptoBoxCreation(Lorg/telegram/tgnet/TLRPC$Chat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/tgnet/TLRPC$ChatFull;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoBoxesPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoBoxesPresenter.kt\ncom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,278:1\n1747#2,3:279\n18#3:282\n*S KotlinDebug\n*F\n+ 1 CryptoBoxesPresenter.kt\ncom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1\n*L\n235#1:279,3\n237#1:282\n*E\n"
.end annotation


# instance fields
.field final synthetic $chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field final synthetic this$0:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;


# direct methods
.method public static synthetic $r8$lambda$Erz0fwy71_Mumz7062XbdrN6SW8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1;->invoke$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1;->$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method


# virtual methods
.method public final invoke(Lorg/telegram/tgnet/TLRPC$ChatFull;)Lio/reactivex/ObservableSource;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$ChatFull;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "chatFull"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_info:Ljava/util/ArrayList;

    const-string v0, "chatFull.bot_info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    .line 1747
    instance-of v1, p1, Ljava/util/Collection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v2, v3

    goto :goto_1

    .line 1748
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$BotInfo;

    .line 235
    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$BotInfo;->user_id:J

    invoke-static {v0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->access$getWalletBotId(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    if-nez v2, :cond_4

    .line 237
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string/jumbo v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 239
    :cond_4
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->access$getTelegramApi$p(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;)Lcom/iMe/manager/TelegramApi;

    move-result-object p1

    .line 240
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->access$getWalletBotUsername(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/manager/TelegramApi;->getUserInfoByUsername(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 241
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1$1;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1;->$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {v0, v1, v2}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1$1;-><init>(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 234
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1;->invoke(Lorg/telegram/tgnet/TLRPC$ChatFull;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
