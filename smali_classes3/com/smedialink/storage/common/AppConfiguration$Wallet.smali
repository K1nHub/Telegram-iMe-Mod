.class public final Lcom/smedialink/storage/common/AppConfiguration$Wallet;
.super Ljava/lang/Object;
.source "AppConfiguration.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/common/AppConfiguration$Wallet;

    invoke-direct {v0}, Lcom/smedialink/storage/common/AppConfiguration$Wallet;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getWalletBotId()J
    .locals 2

    .line 86
    sget-object v0, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/smedialink/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {v0}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->getEnvironmentInformation()Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->getWalletActivationBotId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getWalletBotUsernameLowerCase()Ljava/lang/String;
    .locals 3

    .line 89
    sget-object v0, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/smedialink/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {v0}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->getEnvironmentInformation()Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->getWalletActivationBotUsername()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "US"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getWalletBotUsernameWithAT()Ljava/lang/String;
    .locals 2

    .line 92
    sget-object v0, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/smedialink/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {v0}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->getEnvironmentInformation()Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->getWalletActivationBotUsername()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
