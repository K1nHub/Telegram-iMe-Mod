.class public final Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main;
.super Ljava/lang/Object;
.source "WalletSettingsItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Main"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main$CryptoAccount;,
        Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main$Help;,
        Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main$Interface;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main;

    invoke-direct {v0}, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main;->INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItems(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem;

    if-eqz p1, :cond_0

    .line 35
    sget-object p1, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main$CryptoAccount;->INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main$CryptoAccount;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    .line 36
    sget-object v1, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main$Interface;->INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main$Interface;

    aput-object v1, v0, p1

    const/4 p1, 0x2

    .line 37
    sget-object v1, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main$Help;->INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main$Help;

    aput-object v1, v0, p1

    .line 34
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 38
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
