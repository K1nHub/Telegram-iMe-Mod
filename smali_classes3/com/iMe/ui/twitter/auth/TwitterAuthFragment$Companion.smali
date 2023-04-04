.class public final Lcom/iMe/ui/twitter/auth/TwitterAuthFragment$Companion;
.super Ljava/lang/Object;
.source "TwitterAuthFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/twitter/auth/TwitterAuthFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/model/twitter/TwitterAuthResult;",
            ">;)",
            "Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onAuthResultAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-object v0
.end method
