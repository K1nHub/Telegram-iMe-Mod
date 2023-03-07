.class public final synthetic Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$$ExternalSyntheticLambda1;->INSTANCE:Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    check-cast p2, Lcom/smedialink/storage/domain/model/Result;

    invoke-static {p1, p2}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->$r8$lambda$V5hbfHrQ8X3kuzEhLmhbWyr-Cls(Lcom/smedialink/storage/domain/model/Result;Lcom/smedialink/storage/domain/model/Result;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method
