.class public abstract Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;
.super Ljava/lang/Object;
.source "WalletSettingsItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$Blockchains;,
        Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$PinCode;,
        Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$Privacy;,
        Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$WalletConnect;
    }
.end annotation


# instance fields
.field private final description:I

.field private final icon:I

.field private final title:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;->icon:I

    .line 9
    iput p2, p0, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;->title:I

    .line 10
    iput p3, p0, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;->description:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;-><init>(III)V

    return-void
.end method


# virtual methods
.method public final getDescription()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;->description:I

    return v0
.end method

.method public final getIcon()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;->icon:I

    return v0
.end method

.method public final getTitle()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;->title:I

    return v0
.end method
