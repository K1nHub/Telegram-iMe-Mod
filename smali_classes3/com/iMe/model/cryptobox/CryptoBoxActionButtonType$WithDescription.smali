.class public abstract Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription;
.super Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType;
.source "CryptoBoxActionButtonType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithDescription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$ActivateWallet;,
        Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$CreateWallet;,
        Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Forwarded;,
        Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Subscribe;
    }
.end annotation


# instance fields
.field private final descriptionTextResId:I

.field private final textResId:I


# direct methods
.method private constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    iput p1, p0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription;->textResId:I

    .line 19
    iput p2, p0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription;->descriptionTextResId:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final getDescriptionTextResId()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription;->descriptionTextResId:I

    return v0
.end method

.method public getTextResId()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription;->textResId:I

    return v0
.end method
