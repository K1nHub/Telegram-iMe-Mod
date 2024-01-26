.class public abstract Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType;
.super Ljava/lang/Object;
.source "CryptoBoxActionButtonType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Finished;,
        Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Get;,
        Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$InProgress;,
        Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Loading;,
        Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Ok;,
        Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Stopped;,
        Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Taken;,
        Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription;
    }
.end annotation


# instance fields
.field private final textResId:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType;->textResId:I

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getTextResId()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType;->textResId:I

    return v0
.end method
