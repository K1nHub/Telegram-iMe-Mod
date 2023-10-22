.class public final Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletSendRecipientPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSendRecipientPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSendRecipientPresenter.kt\ncom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,127:1\n63#2,12:128\n*S KotlinDebug\n*F\n+ 1 WalletSendRecipientPresenter.kt\ncom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter\n*L\n106#1:128,12\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoRecipientManager:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

.field private final cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

.field private final currentNetworkType:Lcom/iMe/storage/domain/model/crypto/Network;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoRecipientManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletInteractor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 26
    iput-object p3, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 27
    iput-object p4, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->cryptoRecipientManager:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    .line 28
    iput-object p5, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 29
    iput-object p6, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    if-eqz p1, :cond_1

    .line 33
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    if-eqz p3, :cond_2

    .line 34
    invoke-interface {p2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    goto :goto_2

    .line 36
    :cond_2
    invoke-static {p1}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    .line 33
    :goto_2
    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->currentNetworkType:Lcom/iMe/storage/domain/model/crypto/Network;

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method private final validateRecipientAddress(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 98
    iget-object p2, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->currentNetworkType:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->loadAddressInfoById(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object p2, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->currentNetworkType:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object p2

    .line 103
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 100
    invoke-static {p1, p2, v0}, Lcom/iMe/utils/helper/wallet/CryptoHelper;->extractAddressAndAmount(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lio/reactivex/Observable;

    move-result-object p1

    .line 105
    iget-object p2, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "extractAddressAndAmount(\u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 68
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;)V

    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v0, p2}, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance p2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getSendingMediaInfo()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 45
    sget v1, Lorg/telegram/messenger/R$string;->wallet_recipient_error_send_message_invitation:I

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 47
    sget v4, Lorg/telegram/messenger/R$string;->wallet_backup_secret_words_pdf_title:I

    .line 46
    invoke-interface {v0, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    .line 49
    iget-object v5, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 50
    sget v7, Lorg/telegram/messenger/R$string;->neurobots_store_bot_action_download:I

    .line 49
    invoke-interface {v5, v7}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v3, v8

    .line 44
    invoke-interface {v0, v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 55
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;-><init>()V

    .line 56
    iget-object v3, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {v3, v7}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v3, "https://imem.app/download"

    .line 59
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    .line 60
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x6

    const/4 v14, 0x0

    move-object v9, v0

    .line 61
    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 62
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    aput-object v2, v1, v6

    .line 63
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;-><init>()V

    .line 64
    iget-object v3, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v3, "https://imem.app"

    .line 67
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    .line 68
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 69
    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    aput-object v2, v1, v8

    .line 54
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 73
    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    invoke-direct {v2}, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;-><init>()V

    .line 74
    iput-boolean v6, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->hasMediaSpoilers:Z

    .line 75
    iput-boolean v6, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->canDeleteAfter:Z

    .line 76
    iput-object v0, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    .line 77
    iput-object v1, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    .line 78
    iput-boolean v6, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->forceImage:Z

    .line 79
    iput-boolean v6, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->isVideo:Z

    .line 80
    iput v6, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->ttl:I

    .line 81
    iput-boolean v6, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->updateStickersOrder:Z

    .line 82
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_banner_ime:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getUriDrawable(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->uri:Landroid/net/Uri;

    new-array v0, v8, [Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    aput-object v2, v0, v6

    .line 85
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public loadAddressInfoById(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 1

    const-string v0, "recipient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->cryptoRecipientManager:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->loadAddressInfoById(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->cryptoRecipientManager:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-virtual {v0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->onDetachViewState()V

    .line 94
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->onDestroy()V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->cryptoRecipientManager:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    invoke-virtual {v0, v1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->attachViewState(Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;)V

    return-void
.end method

.method public final validateRecipient(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "recipient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->validateRecipientAddress(Ljava/lang/String;Z)V

    return-void
.end method
