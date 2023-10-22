.class public final Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Forwarded;
.super Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription;
.source "CryptoBoxActionButtonType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Forwarded"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Forwarded;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Forwarded;

    invoke-direct {v0}, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Forwarded;-><init>()V

    sput-object v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Forwarded;->INSTANCE:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Forwarded;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 41
    sget v0, Lorg/telegram/messenger/R$string;->common_ok:I

    .line 42
    sget v1, Lorg/telegram/messenger/R$string;->cryptobox_participation_info_forwarded:I

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
