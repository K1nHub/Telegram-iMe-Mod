.class public final Lcom/iMe/manager/wallet/WalletLinkClickableManager;
.super Ljava/lang/Object;
.source "WalletLinkClickableManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/manager/wallet/WalletLinkClickableManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletLinkClickableManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletLinkClickableManager.kt\ncom/iMe/manager/wallet/WalletLinkClickableManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,97:1\n1549#2:98\n1620#2,3:99\n1549#2:104\n1620#2,3:105\n37#3,2:102\n37#3,2:108\n*S KotlinDebug\n*F\n+ 1 WalletLinkClickableManager.kt\ncom/iMe/manager/wallet/WalletLinkClickableManager\n*L\n72#1:98\n72#1:99,3\n87#1:104\n87#1:105,3\n72#1:102,2\n87#1:108,2\n*E\n"
.end annotation


# instance fields
.field private final accessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final clickableItem:Lcom/iMe/model/wallet/transaction/ClickableItem;

.field private dialogsOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

.field private viewState:Lcom/iMe/manager/wallet/WalletLinkClickableView;


# direct methods
.method public constructor <init>(Lcom/iMe/model/wallet/transaction/ClickableItem;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/gateway/TelegramGateway;)V
    .locals 1

    const-string v0, "clickableItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->clickableItem:Lcom/iMe/model/wallet/transaction/ClickableItem;

    .line 14
    iput-object p2, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 15
    iput-object p3, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->accessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 16
    iput-object p4, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->dialogsOptions:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getAlertOptionsByType(Lcom/iMe/manager/wallet/WalletLinkClickableManager;Ljava/lang/String;Lcom/iMe/model/wallet/transaction/LinkedTextType;)[Ljava/lang/String;
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->getAlertOptionsByType(Ljava/lang/String;Lcom/iMe/model/wallet/transaction/LinkedTextType;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getClickableItem$p(Lcom/iMe/manager/wallet/WalletLinkClickableManager;)Lcom/iMe/model/wallet/transaction/ClickableItem;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->clickableItem:Lcom/iMe/model/wallet/transaction/ClickableItem;

    return-object p0
.end method

.method public static final synthetic access$getTelegramGateway$p(Lcom/iMe/manager/wallet/WalletLinkClickableManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    return-object p0
.end method

.method public static final synthetic access$getViewState$p(Lcom/iMe/manager/wallet/WalletLinkClickableManager;)Lcom/iMe/manager/wallet/WalletLinkClickableView;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->viewState:Lcom/iMe/manager/wallet/WalletLinkClickableView;

    return-object p0
.end method

.method public static final synthetic access$resolveIndexOfAlertAction(Lcom/iMe/manager/wallet/WalletLinkClickableManager;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->resolveIndexOfAlertAction(I)V

    return-void
.end method

.method private final getAddressAlertOptions(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    .line 77
    iget-object v1, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_token_details_action_copy_address:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/iMe/manager/wallet/WalletLinkClickableManager$getAddressAlertOptions$1;

    invoke-direct {v2, p0, p1}, Lcom/iMe/manager/wallet/WalletLinkClickableManager$getAddressAlertOptions$1;-><init>(Lcom/iMe/manager/wallet/WalletLinkClickableManager;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 78
    iget-object p1, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->clickableItem:Lcom/iMe/model/wallet/transaction/ClickableItem;

    invoke-interface {p1}, Lcom/iMe/model/wallet/transaction/ClickableItem;->getTokenCode()Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->isTransferAvailable(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_user_id_dialog_transfer_action:I

    invoke-interface {p1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/iMe/manager/wallet/WalletLinkClickableManager$getAddressAlertOptions$2;

    invoke-direct {v2, p0}, Lcom/iMe/manager/wallet/WalletLinkClickableManager$getAddressAlertOptions$2;-><init>(Lcom/iMe/manager/wallet/WalletLinkClickableManager;)V

    invoke-static {p1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x1

    aput-object p1, v0, v2

    .line 76
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 85
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 76
    iput-object p1, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->dialogsOptions:Ljava/util/List;

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lkotlin/Pair;

    .line 87
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1621
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-array p1, v1, [Ljava/lang/String;

    .line 38
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private final getAlertOptionsByType(Ljava/lang/String;Lcom/iMe/model/wallet/transaction/LinkedTextType;)[Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/iMe/manager/wallet/WalletLinkClickableManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->getAddressAlertOptions(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 49
    :cond_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->getUserIdAlertOptions(J)[Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final getUserIdAlertOptions(J)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/Pair;

    .line 60
    iget-object v1, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v1, p1, p2}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->hasUser(J)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_user_id_dialog_go_to_profile_action:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/iMe/manager/wallet/WalletLinkClickableManager$getUserIdAlertOptions$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/iMe/manager/wallet/WalletLinkClickableManager$getUserIdAlertOptions$1;-><init>(Lcom/iMe/manager/wallet/WalletLinkClickableManager;J)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 62
    iget-object v3, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_user_id_dialog_copy_id_action:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/iMe/manager/wallet/WalletLinkClickableManager$getUserIdAlertOptions$2;

    invoke-direct {v4, p0, p1, p2}, Lcom/iMe/manager/wallet/WalletLinkClickableManager$getUserIdAlertOptions$2;-><init>(Lcom/iMe/manager/wallet/WalletLinkClickableManager;J)V

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    .line 63
    iget-object v3, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_user_id_dialog_transfer_action:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/iMe/manager/wallet/WalletLinkClickableManager$getUserIdAlertOptions$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/iMe/manager/wallet/WalletLinkClickableManager$getUserIdAlertOptions$3;-><init>(Lcom/iMe/manager/wallet/WalletLinkClickableManager;J)V

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v0, v1

    .line 59
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 70
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->dialogsOptions:Ljava/util/List;

    .line 1549
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1621
    check-cast v0, Lkotlin/Pair;

    .line 72
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1621
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-array p1, v2, [Ljava/lang/String;

    .line 38
    invoke-interface {p2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private final isTransferAvailable(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)Z
    .locals 0

    .line 92
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->isCryptoTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->accessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {p1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final resolveIndexOfAlertAction(I)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->dialogsOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final setupClickableLink()V
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->clickableItem:Lcom/iMe/model/wallet/transaction/ClickableItem;

    invoke-interface {v0}, Lcom/iMe/model/wallet/transaction/ClickableItem;->getLinkedText()Ljava/lang/String;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->viewState:Lcom/iMe/manager/wallet/WalletLinkClickableView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->clickableItem:Lcom/iMe/model/wallet/transaction/ClickableItem;

    iget-object v3, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {v2, v3}, Lcom/iMe/model/wallet/transaction/ClickableItem;->getMessageText(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/iMe/manager/wallet/WalletLinkClickableManager$setupClickableLink$1;

    invoke-direct {v3, p0, v0}, Lcom/iMe/manager/wallet/WalletLinkClickableManager$setupClickableLink$1;-><init>(Lcom/iMe/manager/wallet/WalletLinkClickableManager;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/iMe/manager/wallet/WalletLinkClickableView;->setupMessageClickableLink(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public attachViewState(Lcom/iMe/manager/wallet/WalletLinkClickableView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->viewState:Lcom/iMe/manager/wallet/WalletLinkClickableView;

    .line 27
    invoke-direct {p0}, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->setupClickableLink()V

    return-void
.end method

.method public onDetachViewState()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->viewState:Lcom/iMe/manager/wallet/WalletLinkClickableView;

    return-void
.end method
