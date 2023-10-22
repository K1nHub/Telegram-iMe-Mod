.class public final Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$ActivateWallet;
.super Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription;
.source "CryptoBoxActionButtonType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivateWallet"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$ActivateWallet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$ActivateWallet;

    invoke-direct {v0}, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$ActivateWallet;-><init>()V

    sput-object v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$ActivateWallet;->INSTANCE:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$ActivateWallet;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 36
    sget v0, Lorg/telegram/messenger/R$string;->cryptobox_activate:I

    .line 37
    sget v1, Lorg/telegram/messenger/R$string;->cryptobox_participation_info_activate:I

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
