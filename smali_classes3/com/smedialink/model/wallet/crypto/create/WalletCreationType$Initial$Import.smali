.class public final Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Import;
.super Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;
.source "WalletCreationType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Import"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Import;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Import;

    invoke-direct {v0}, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Import;-><init>()V

    sput-object v0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Import;->INSTANCE:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Import;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 32
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_wallet_import:I

    .line 33
    sget v1, Lorg/telegram/messenger/R$string;->wallet_dashboard_import_eth_wallet:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 31
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
