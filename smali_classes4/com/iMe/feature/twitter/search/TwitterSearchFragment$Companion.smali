.class public final Lcom/iMe/feature/twitter/search/TwitterSearchFragment$Companion;
.super Ljava/lang/Object;
.source "TwitterSearchFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/twitter/search/TwitterSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/feature/twitter/search/TwitterSearchFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback2;)Lcom/iMe/feature/twitter/search/TwitterSearchFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            "Lcom/iMe/fork/utils/Callbacks$Callback2<",
            "Lcom/iMe/model/twitter/TwitterUserItem;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/iMe/feature/twitter/search/TwitterSearchFragment;"
        }
    .end annotation

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUserSelectedAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    new-instance v0, Lcom/iMe/feature/twitter/search/TwitterSearchFragment;

    invoke-direct {v0, p1, p2}, Lcom/iMe/feature/twitter/search/TwitterSearchFragment;-><init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback2;)V

    return-object v0
.end method
