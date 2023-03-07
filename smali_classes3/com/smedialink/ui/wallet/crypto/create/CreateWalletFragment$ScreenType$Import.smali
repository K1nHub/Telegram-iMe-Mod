.class public final Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;
.super Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;
.source "CreateWalletFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Import"
.end annotation


# instance fields
.field private final address:Ljava/lang/String;

.field private final password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1374
    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1372
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;->address:Ljava/lang/String;

    .line 1373
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;->password:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const-string v0, ""

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 1371
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 1372
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .line 1373
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;->password:Ljava/lang/String;

    return-object v0
.end method
