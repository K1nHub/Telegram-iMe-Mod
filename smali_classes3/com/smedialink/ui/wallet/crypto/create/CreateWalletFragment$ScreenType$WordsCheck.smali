.class public final Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;
.super Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;
.source "CreateWalletFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WordsCheck"
.end annotation


# instance fields
.field private final password:Ljava/lang/String;

.field private final pin:Ljava/lang/String;

.field private final secretWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "secretWords"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pin"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1369
    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1366
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;->secretWords:Ljava/util/List;

    .line 1367
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;->password:Ljava/lang/String;

    .line 1368
    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;->pin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPassword()Ljava/lang/String;
    .locals 1

    .line 1367
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final getPin()Ljava/lang/String;
    .locals 1

    .line 1368
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;->pin:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecretWords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1366
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;->secretWords:Ljava/util/List;

    return-object v0
.end method
