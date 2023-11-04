.class final Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$walletBotUsername$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CryptoBoxesPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/manager/TelegramApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$walletBotUsername$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$walletBotUsername$2;

    invoke-direct {v0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$walletBotUsername$2;-><init>()V

    sput-object v0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$walletBotUsername$2;->INSTANCE:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$walletBotUsername$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$walletBotUsername$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 1

    .line 55
    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Bots;->getAuthBotUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
