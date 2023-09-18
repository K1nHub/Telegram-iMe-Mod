.class final Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$onChatSelected$1$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateCryptoBoxPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$onChatSelected$1$1;->invoke(Lorg/telegram/tgnet/TLRPC$User;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$onChatSelected$1$1$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$onChatSelected$1$1$2;

    invoke-direct {v0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$onChatSelected$1$1$2;-><init>()V

    sput-object v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$onChatSelected$1$1$2;->INSTANCE:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$onChatSelected$1$1$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    if-nez p1, :cond_0

    move v1, v0

    :cond_0
    xor-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 212
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$onChatSelected$1$1$2;->invoke(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
