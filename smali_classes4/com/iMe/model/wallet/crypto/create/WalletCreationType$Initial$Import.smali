.class public final Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;
.super Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;
.source "WalletCreationType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Import"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;

    invoke-direct {v0}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 34
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_wallet_import:I

    .line 35
    sget v2, Lorg/telegram/messenger/R$string;->wallet_dashboard_import_eth_wallet:I

    .line 36
    sget v3, Lorg/telegram/messenger/R$string;->wallet_creation_intro_title_import:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    .line 33
    invoke-direct/range {v0 .. v5}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;-><init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
