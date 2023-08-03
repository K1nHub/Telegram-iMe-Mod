.class public final Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;
.super Ljava/lang/Object;
.source "SelectNetworkBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;Landroid/content/Context;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback1;ILjava/lang/Object;)Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 456
    invoke-static {}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getSupportedNetworks()Ljava/util/List;

    move-result-object p3

    .line 453
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;->newInstance(Landroid/content/Context;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(Landroid/content/Context;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;)",
            "Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentNetwork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectNetworkDelegate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    new-instance v0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;-><init>(Landroid/content/Context;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
