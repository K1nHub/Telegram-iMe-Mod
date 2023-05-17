.class public final Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;
.super Ljava/lang/Object;
.source "AccountLevelInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountLevelInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountLevelInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,52:1\n14#2:53\n*S KotlinDebug\n*F\n+ 1 AccountLevelInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor\n*L\n33#1:53\n*E\n"
.end annotation


# instance fields
.field private final accountLevelRepository:Lcom/iMe/storage/domain/repository/crypto/level/AccountLevelRepository;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/repository/crypto/level/AccountLevelRepository;Lcom/iMe/storage/domain/gateway/TelegramGateway;)V
    .locals 1

    const-string v0, "accountLevelRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->accountLevelRepository:Lcom/iMe/storage/domain/repository/crypto/level/AccountLevelRepository;

    .line 17
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    return-void
.end method

.method public static final synthetic access$getTelegramGateway$p(Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;)Lcom/iMe/storage/domain/gateway/TelegramGateway;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    return-object p0
.end method

.method public static synthetic getAccountLevelInformation$default(Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;JILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 29
    iget-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {p1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->getAccountLevelInformation(J)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getAccountLevelRemote$default(Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;JILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 26
    iget-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {p1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->getAccountLevelRemote(J)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final changeLevelVisibility(Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->accountLevelRepository:Lcom/iMe/storage/domain/repository/crypto/level/AccountLevelRepository;

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/level/AccountLevelRepository;->changeLevelVisibility(Z)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final getAccountLevelInformation(J)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;",
            ">;>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->accountLevelRepository:Lcom/iMe/storage/domain/repository/crypto/level/AccountLevelRepository;

    .line 31
    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/repository/crypto/level/AccountLevelRepository;->getAccountLevel(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "accountLevelRepository\n \u2026  .distinctUntilChanged()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v2, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$$inlined$flatMapSuccess$1;

    invoke-direct {v2, p1, p2, p0}, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$$inlined$flatMapSuccess$1;-><init>(JLcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;)V

    new-instance p1, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v2}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object p1

    .line 32
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getAccountLevelRemote(J)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;",
            ">;>;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->accountLevelRepository:Lcom/iMe/storage/domain/repository/crypto/level/AccountLevelRepository;

    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/repository/crypto/level/AccountLevelRepository;->getAccountLevelRemote(J)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final getLevelVisibility()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->accountLevelRepository:Lcom/iMe/storage/domain/repository/crypto/level/AccountLevelRepository;

    invoke-interface {v0}, Lcom/iMe/storage/domain/repository/crypto/level/AccountLevelRepository;->getLevelVisibility()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
