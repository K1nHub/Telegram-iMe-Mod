.class public final Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main$Interface;
.super Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem;
.source "WalletSettingsItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Interface"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main$Interface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main$Interface;

    invoke-direct {v0}, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main$Interface;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main$Interface;->INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main$Interface;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 22
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_interface_settings:I

    .line 23
    sget v1, Lorg/telegram/messenger/R$string;->wallet_settings_interface_title:I

    const/4 v2, 0x0

    .line 21
    invoke-direct {p0, v0, v1, v2, v2}, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem;-><init>(IILjava/lang/Integer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
