.class public final Lcom/smedialink/storage/common/AppConfiguration$Crypto;
.super Ljava/lang/Object;
.source "AppConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/common/AppConfiguration$Crypto$WhenMappings;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/common/AppConfiguration$Crypto;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/common/AppConfiguration$Crypto;

    invoke-direct {v0}, Lcom/smedialink/storage/common/AppConfiguration$Crypto;-><init>()V

    sput-object v0, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->INSTANCE:Lcom/smedialink/storage/common/AppConfiguration$Crypto;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final formatScanTokenUrl(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "networkType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->INSTANCE:Lcom/smedialink/storage/common/AppConfiguration$Crypto;

    invoke-direct {v1, p0}, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->getScanUrlByToken(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->getTokenUrlMainPart(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final formatScanTokenUrlWithAddress(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "networkType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;->INSTANCE:Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;

    invoke-virtual {v0, p1, p0}, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;->getContract(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->formatScanTokenUrl(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?a="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getScanAddressUrlMainPart(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/lang/String;
    .locals 1

    .line 84
    sget-object v0, Lcom/smedialink/storage/common/AppConfiguration$Crypto$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const-string p1, "#/address/"

    goto :goto_0

    :cond_0
    const-string p1, "address/"

    :goto_0
    return-object p1
.end method

.method private final getScanTxUrlMainPart(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/lang/String;
    .locals 1

    .line 90
    sget-object v0, Lcom/smedialink/storage/common/AppConfiguration$Crypto$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const-string p1, "#/transaction/"

    goto :goto_0

    :cond_0
    const-string p1, "tx/"

    :goto_0
    return-object p1
.end method

.method private final getScanUrlByToken(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/lang/String;
    .locals 1

    .line 74
    sget-object v0, Lcom/smedialink/storage/common/AppConfiguration$Crypto$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 80
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/smedialink/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {p1}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->getEnvironmentInformation()Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->getTonScanUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 79
    :pswitch_1
    sget-object p1, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/smedialink/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {p1}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->getEnvironmentInformation()Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->getTronScanUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 78
    :pswitch_2
    sget-object p1, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/smedialink/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {p1}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->getEnvironmentInformation()Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->getFantomScanUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 77
    :pswitch_3
    sget-object p1, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/smedialink/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {p1}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->getEnvironmentInformation()Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->getPolygonScanUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 76
    :pswitch_4
    sget-object p1, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/smedialink/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {p1}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->getEnvironmentInformation()Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->getBscScanUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 75
    :pswitch_5
    sget-object p1, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/smedialink/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {p1}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->getEnvironmentInformation()Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;->getEtherScanUrl()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final getTokenUrlMainPart(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/lang/String;
    .locals 1

    .line 96
    sget-object v0, Lcom/smedialink/storage/common/AppConfiguration$Crypto$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const-string p1, "#/token20/"

    goto :goto_0

    :cond_0
    const-string p1, "token/"

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final formatScanAddressUrl(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->getScanUrlByToken(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->getScanAddressUrlMainPart(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final formatScanTxUrl(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "txHash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->getScanUrlByToken(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->getScanTxUrlMainPart(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
