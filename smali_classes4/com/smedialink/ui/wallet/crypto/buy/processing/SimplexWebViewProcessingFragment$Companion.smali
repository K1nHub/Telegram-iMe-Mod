.class public final Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$Companion;
.super Ljava/lang/Object;
.source "SimplexWebViewProcessingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/smedialink/model/wallet/crypto/simplex/PaymentResult;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultDelegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;

    invoke-direct {v0, p2}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;-><init>(Lkotlin/jvm/functions/Function1;)V

    const/4 p2, 0x1

    new-array p2, p2, [Lkotlin/Pair;

    const-string v1, "url_arg"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, p2, v1

    invoke-static {v0, p2}, Lcom/smedialink/utils/extentions/common/BaseFragmentExtKt;->withArgs(Lorg/telegram/ui/ActionBar/BaseFragment;[Lkotlin/Pair;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;

    return-object p1
.end method
