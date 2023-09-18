.class public final Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletAirdropPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/airdrop/WalletAirdropView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletAirdropPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletAirdropPresenter.kt\ncom/iMe/ui/wallet/airdrop/WalletAirdropPresenter\n+ 2 RxEventBus.kt\ncom/iMe/storage/domain/utils/rx/RxEventBus\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 4 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,125:1\n16#2,3:126\n63#3,12:129\n63#3,12:141\n63#3,12:154\n14#4:153\n*S KotlinDebug\n*F\n+ 1 WalletAirdropPresenter.kt\ncom/iMe/ui/wallet/airdrop/WalletAirdropPresenter\n*L\n43#1:126,3\n44#1:129,12\n69#1:141,12\n94#1:154,12\n92#1:153\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final preferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "airdropInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "rxEventBus"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cryptoAccessManager"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "preferenceHelper"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "resourceManager"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "schedulersProvider"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 25
    iput-object p3, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 26
    iput-object p4, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->preferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 27
    iput-object p5, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 28
    iput-object p6, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 0

    return-void
.end method
