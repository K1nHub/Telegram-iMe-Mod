.class public final Lcom/smedialink/ui/twitter/search/TwitterSearchFragment$Companion;
.super Ljava/lang/Object;
.source "TwitterSearchFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/twitter/search/TwitterSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/ui/twitter/search/TwitterSearchFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;Lorg/fork/utils/Callbacks$Callback2;)Lcom/smedialink/ui/twitter/search/TwitterSearchFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/BlockchainType;",
            "Lorg/fork/utils/Callbacks$Callback2<",
            "Lcom/smedialink/model/twitter/TwitterUserItem;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/smedialink/ui/twitter/search/TwitterSearchFragment;"
        }
    .end annotation

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUserSelectedAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    new-instance v0, Lcom/smedialink/ui/twitter/search/TwitterSearchFragment;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/ui/twitter/search/TwitterSearchFragment;-><init>(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;Lorg/fork/utils/Callbacks$Callback2;)V

    return-object v0
.end method
