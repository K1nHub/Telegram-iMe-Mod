.class public final Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$Companion;
.super Ljava/lang/Object;
.source "CryptoBoxesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$Companion;Lorg/telegram/tgnet/TLRPC$Chat;ILjava/lang/Object;)Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 273
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$Companion;->newInstance(Lorg/telegram/tgnet/TLRPC$Chat;)Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(Lorg/telegram/tgnet/TLRPC$Chat;)Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;
    .locals 1

    .line 273
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;

    invoke-direct {v0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-object v0
.end method
