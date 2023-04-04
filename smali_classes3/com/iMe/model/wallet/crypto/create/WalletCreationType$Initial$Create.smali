.class public final Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;
.super Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;
.source "WalletCreationType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Create"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;

    invoke-direct {v0}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 26
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_wallet_create:I

    .line 27
    sget v1, Lorg/telegram/messenger/R$string;->wallet_dashboard_create_eth_wallet:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 25
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
