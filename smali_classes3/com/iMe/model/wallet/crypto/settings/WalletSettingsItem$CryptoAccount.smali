.class public final Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount;
.super Ljava/lang/Object;
.source "WalletSettingsItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoAccount"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$Blockchains;,
        Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$CustomTokens;,
        Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$PinCode;,
        Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$Privacy;,
        Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$WalletConnect;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount;

    invoke-direct {v0}, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount;->INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItems(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem;

    .line 75
    sget-object v1, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$Blockchains;->INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$Blockchains;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 76
    sget-object v1, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$Privacy;->INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$Privacy;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    if-eqz p1, :cond_0

    .line 77
    sget-object p1, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$WalletConnect;->INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$WalletConnect;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 p1, 0x3

    .line 78
    sget-object v1, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$CustomTokens;->INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$CustomTokens;

    aput-object v1, v0, p1

    const/4 p1, 0x4

    .line 79
    sget-object v1, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$PinCode;->INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$PinCode;

    aput-object v1, v0, p1

    .line 74
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 80
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
