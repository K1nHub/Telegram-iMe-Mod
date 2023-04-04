.class public final Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Restore;
.super Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;
.source "WalletCreationType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Restore"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Restore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Restore;

    invoke-direct {v0}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Restore;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Restore;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Restore;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 38
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_wallet_restore:I

    .line 39
    sget v1, Lorg/telegram/messenger/R$string;->wallet_dashboard_restore_eth_wallet:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 37
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
