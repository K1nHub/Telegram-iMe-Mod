.class public final Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$CreateWallet;
.super Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription;
.source "CryptoBoxActionButtonType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateWallet"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$CreateWallet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$CreateWallet;

    invoke-direct {v0}, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$CreateWallet;-><init>()V

    sput-object v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$CreateWallet;->INSTANCE:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$CreateWallet;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 31
    sget v0, Lorg/telegram/messenger/R$string;->cryptobox_create:I

    .line 32
    sget v1, Lorg/telegram/messenger/R$string;->cryptobox_participation_info_create:I

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
