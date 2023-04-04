.class public final Lcom/iMe/ui/shop/PurchaseHelper$Companion;
.super Ljava/lang/Object;
.source "PurchaseHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/shop/PurchaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/shop/PurchaseHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Lcom/iMe/bots/usecase/AiBotsManager;)Lcom/iMe/ui/shop/PurchaseHelper;
    .locals 2

    const-string v0, "aigramBotsManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/iMe/ui/shop/PurchaseHelper;->access$getINSTANCE$cp()Lcom/iMe/ui/shop/PurchaseHelper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/iMe/ui/shop/PurchaseHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/iMe/ui/shop/PurchaseHelper;-><init>(Lcom/iMe/bots/usecase/AiBotsManager;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lcom/iMe/ui/shop/PurchaseHelper;->access$setINSTANCE$cp(Lcom/iMe/ui/shop/PurchaseHelper;)V

    .line 35
    :cond_0
    invoke-static {}, Lcom/iMe/ui/shop/PurchaseHelper;->access$getINSTANCE$cp()Lcom/iMe/ui/shop/PurchaseHelper;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method
