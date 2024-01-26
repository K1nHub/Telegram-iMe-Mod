.class public final Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$InProgress;
.super Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType;
.source "CryptoBoxActionButtonType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InProgress"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$InProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$InProgress;

    invoke-direct {v0}, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$InProgress;-><init>()V

    sput-object v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$InProgress;->INSTANCE:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$InProgress;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 11
    sget v0, Lorg/telegram/messenger/R$string;->cryptobox_in_progress:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
