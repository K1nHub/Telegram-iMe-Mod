.class public final Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$Companion;
.super Ljava/lang/Object;
.source "CreateCryptoBoxFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;
    .locals 1

    .line 516
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;

    invoke-direct {v0, p1, p2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/crypto/Network;)V

    return-object v0
.end method
