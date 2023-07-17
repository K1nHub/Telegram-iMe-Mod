.class public final Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType$Send;
.super Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;
.source "WalletSelectTokenFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Send"
.end annotation


# instance fields
.field private final tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 193
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType$Send;->tokens:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 193
    :cond_0
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType$Send;-><init>(Ljava/util/List;)V

    return-void
.end method
