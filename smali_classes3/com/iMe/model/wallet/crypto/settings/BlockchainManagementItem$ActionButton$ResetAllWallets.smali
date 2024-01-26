.class public final Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$ResetAllWallets;
.super Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;
.source "BlockchainManagementItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResetAllWallets"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$ResetAllWallets;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$ResetAllWallets;

    invoke-direct {v0}, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$ResetAllWallets;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$ResetAllWallets;->INSTANCE:Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$ResetAllWallets;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 47
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_block2:I

    .line 48
    sget v1, Lorg/telegram/messenger/R$string;->wallet_reset_all_title:I

    .line 49
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    const/4 v3, 0x0

    .line 46
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
