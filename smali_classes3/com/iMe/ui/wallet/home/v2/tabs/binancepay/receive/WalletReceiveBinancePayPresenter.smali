.class public final Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletReceiveBinancePayPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletReceiveBinancePayPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletReceiveBinancePayPresenter.kt\ncom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,224:1\n14#2:225\n39#3,8:226\n39#3,8:234\n1747#4,3:242\n*S KotlinDebug\n*F\n+ 1 WalletReceiveBinancePayPresenter.kt\ncom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter\n*L\n81#1:225\n101#1:226,8\n174#1:234,8\n201#1:242,3\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final args:Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

.field private availablePaymentTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTokenInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

.field private chatId:J

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private recipientId:Ljava/lang/Long;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final screenType:I

.field private selectableAvailablePaymentTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/select/SelectableToken;",
            ">;"
        }
    .end annotation
.end field

.field private selectedToken:Lcom/iMe/model/wallet/select/SelectableToken;

.field private selectedUser:Lorg/telegram/tgnet/TLRPC$User;

.field private final telegramApi:Lcom/iMe/manager/TelegramApi;

.field private final telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;


# direct methods
.method public static synthetic $r8$lambda$WGEk3R-3IZJuNSwrf1ZbD0oONe8(ZLcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->loadAvailableToPayTokens$lambda$2(ZLcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dwacvzrR6bUkOkrh3ioX9XN9y84(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;Lcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/model/wallet/select/SelectableToken;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->processShowSelectTokenDialog$lambda$5(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;Lcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/model/wallet/select/SelectableToken;)V

    return-void
.end method

.method public constructor <init>(ILcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;Lcom/iMe/manager/TelegramApi;Lcom/iMe/storage/domain/gateway/TelegramGateway;Lcom/iMe/gateway/TelegramControllersGateway;Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramApi"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramControllersGateway"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binanceInternalInteractor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 39
    iput p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->screenType:I

    .line 40
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->args:Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    .line 41
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    .line 42
    iput-object p4, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 43
    iput-object p5, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    .line 44
    iput-object p6, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 45
    iput-object p7, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 46
    iput-object p8, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 47
    iput-object p9, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 51
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->availablePaymentTokens:Ljava/util/List;

    .line 52
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->selectableAvailablePaymentTokens:Ljava/util/List;

    const-wide/16 p1, -0x1

    .line 57
    iput-wide p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->chatId:J

    .line 58
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->recipientId:Ljava/lang/Long;

    return-void
.end method

.method public static final synthetic access$formatBotRequestParams(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->formatBotRequestParams(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getChatId$p(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->chatId:J

    return-wide v0
.end method

.method public static final synthetic access$getRecipientId$p(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)Ljava/lang/Long;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->recipientId:Ljava/lang/Long;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getTelegramApi$p(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)Lcom/iMe/manager/TelegramApi;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    return-object p0
.end method

.method public static final synthetic access$getTelegramControllersGateway$p(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)Lcom/iMe/gateway/TelegramControllersGateway;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    return-object p0
.end method

.method public static final synthetic access$getTelegramGateway$p(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)Lcom/iMe/storage/domain/gateway/TelegramGateway;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    return-object p0
.end method

.method public static final synthetic access$processShowSelectTokenDialog(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->processShowSelectTokenDialog(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public static final synthetic access$setChatId$p(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;J)V
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->chatId:J

    return-void
.end method

.method public static final synthetic access$setRecipientId$p(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;Ljava/lang/Long;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->recipientId:Ljava/lang/Long;

    return-void
.end method

.method private final formatBotRequestParams(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "id"

    .line 159
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "query_id"

    .line 160
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 161
    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Wallet;->getWalletBotId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "bot"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 162
    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Wallet;->getWalletBotUsernameLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "bot_name"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 158
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method private final isValidFields(Ljava/lang/String;)Z
    .locals 6

    .line 195
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_binance_receive_selected_user_is_empty:I

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->selectedToken:Lcom/iMe/model/wallet/select/SelectableToken;

    if-nez v0, :cond_1

    .line 199
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_binance_receive_selected_token_is_empty:I

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->availablePaymentTokens:Ljava/util/List;

    .line 1747
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1748
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenInfo;

    .line 201
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenInfo;->getAsset()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->selectedToken:Lcom/iMe/model/wallet/select/SelectableToken;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/iMe/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_0
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v3

    :goto_1
    if-nez v0, :cond_6

    .line 202
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_binance_receive_selected_token_is_unsupported:I

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_3

    .line 204
    :cond_6
    invoke-static {p1}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    const-wide/16 v4, 0x0

    invoke-static {p1, v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Double;D)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    return v3

    .line 205
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_binance_receive_amount_is_empty_or_zero:I

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :goto_3
    return v1
.end method

.method private final loadAvailableToPayTokens(ZLkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 167
    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getAvailablePaymentTokens()Lio/reactivex/Observable;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 169
    new-instance v1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$$ExternalSyntheticLambda1;-><init>(ZLcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "binanceInternalInteracto\u2026      }\n                }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;Lkotlin/jvm/functions/Function0;Z)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p2, v1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 190
    invoke-static {p0, p1, p2, v0, p2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic loadAvailableToPayTokens$default(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 165
    sget-object p2, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$1;->INSTANCE:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$1;

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->loadAvailableToPayTokens(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final loadAvailableToPayTokens$lambda$2(ZLcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 171
    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    const-string p1, "viewState"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->showLoadingDialog$default(Lcom/iMe/ui/base/mvp/base/BaseView;ZZLio/reactivex/disposables/Disposable;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final preInitFields()V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->args:Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;->getUserId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getMessagesController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->args:Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;->getUserId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iput-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 149
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;->updateSelectedUser()V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->args:Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;->getToken()Lcom/iMe/model/wallet/select/SelectableToken;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->args:Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;->getToken()Lcom/iMe/model/wallet/select/SelectableToken;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->selectedToken:Lcom/iMe/model/wallet/select/SelectableToken;

    .line 154
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;->updateSelectedToken()V

    :cond_1
    return-void
.end method

.method private final processShowSelectTokenDialog(Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/model/wallet/select/SelectableToken;",
            ">;)V"
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;

    sget-object v2, Lcom/iMe/model/wallet/select/SelectableType;->BINANCE:Lcom/iMe/model/wallet/select/SelectableType;

    iget-object v3, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->selectableAvailablePaymentTokens:Ljava/util/List;

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v4

    new-instance v6, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    const/4 v5, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;->showSelectTokenDialog(Lcom/iMe/model/wallet/select/SelectableType;Ljava/util/List;Lcom/iMe/storage/domain/model/crypto/NetworkType;ZLcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method private static final processShowSelectTokenDialog$lambda$5(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;Lcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/model/wallet/select/SelectableToken;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->selectedToken:Lcom/iMe/model/wallet/select/SelectableToken;

    .line 218
    invoke-interface {p1, p2}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final createCollection(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V
    .locals 7

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0, p2}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->isValidFields(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 77
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    .line 78
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 79
    iget-object p2, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->selectedToken:Lcom/iMe/model/wallet/select/SelectableToken;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v6

    .line 76
    invoke-virtual/range {v1 .. v6}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->createCollection(JDLjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p2

    .line 14
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)V

    new-instance v1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    const-string v0, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p2

    .line 101
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p1, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p2, p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 125
    invoke-static {p0, p1, v3, p2, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final getAvailablePaymentTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTokenInfo;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->availablePaymentTokens:Ljava/util/List;

    return-object v0
.end method

.method public final getSelectedToken()Lcom/iMe/model/wallet/select/SelectableToken;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->selectedToken:Lcom/iMe/model/wallet/select/SelectableToken;

    return-object v0
.end method

.method public final getSelectedUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method protected onFirstViewAttach()V
    .locals 3

    .line 134
    iget v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->screenType:I

    sget v1, Lorg/telegram/ui/ManageLinksActivity;->BINANCE_PAY_CREATE_COLLECTION_SCREEN_TYPE:I

    if-ne v0, v1, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->preInitFields()V

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 136
    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->loadAvailableToPayTokens$default(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setAvailablePaymentTokens(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTokenInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->availablePaymentTokens:Ljava/util/List;

    return-void
.end method

.method public final setSelectableAvailablePaymentTokens(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/select/SelectableToken;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->selectableAvailablePaymentTokens:Ljava/util/List;

    return-void
.end method

.method public final setSelectedUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method

.method public final startSelectTokenFlow(Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/model/wallet/select/SelectableToken;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->availablePaymentTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 64
    new-instance v1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$startSelectTokenFlow$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$startSelectTokenFlow$1;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->loadAvailableToPayTokens(ZLkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->processShowSelectTokenDialog(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    :goto_0
    return-void
.end method