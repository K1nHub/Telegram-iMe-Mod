.class public final Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;
.super Ljava/lang/Object;
.source "WalletSelectTokenFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/smedialink/model/wallet/select/SelectableType;Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ZLorg/fork/utils/Callbacks$Callback1;)Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/model/wallet/select/SelectableType;",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Z",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;)",
            "Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allTokens"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTokenSelectedAction"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;-><init>(Lcom/smedialink/model/wallet/select/SelectableType;Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ZLorg/fork/utils/Callbacks$Callback1;)V

    return-object v0
.end method
