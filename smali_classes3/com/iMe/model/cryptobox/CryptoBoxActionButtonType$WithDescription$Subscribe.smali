.class public final Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Subscribe;
.super Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription;
.source "CryptoBoxActionButtonType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Subscribe"
.end annotation


# instance fields
.field private final chatId:J

.field private final chatName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 3

    const-string v0, "chatName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget v0, Lorg/telegram/messenger/R$string;->cryptobox_subscribe:I

    .line 27
    sget v1, Lorg/telegram/messenger/R$string;->cryptobox_participation_info_subscribe:I

    const/4 v2, 0x0

    .line 25
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    iput-object p1, p0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Subscribe;->chatName:Ljava/lang/String;

    .line 24
    iput-wide p2, p0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Subscribe;->chatId:J

    return-void
.end method


# virtual methods
.method public final getChatId()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Subscribe;->chatId:J

    return-wide v0
.end method

.method public final getChatName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Subscribe;->chatName:Ljava/lang/String;

    return-object v0
.end method
