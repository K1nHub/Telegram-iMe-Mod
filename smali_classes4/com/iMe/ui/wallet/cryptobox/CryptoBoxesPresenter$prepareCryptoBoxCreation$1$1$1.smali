.class final Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CryptoBoxesPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1$1;->invoke(Lorg/telegram/tgnet/TLRPC$User;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1$1$1;

    invoke-direct {v0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1$1$1;-><init>()V

    sput-object v0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1$1$1;->INSTANCE:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 227
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1$1$1;->invoke(Ljava/lang/Throwable;)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;-><init>()V

    return-object p1
.end method
