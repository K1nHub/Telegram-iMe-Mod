.class public final Lcom/iMe/utils/extentions/delegate/ResettableLazy;
.super Ljava/lang/Object;
.source "ResettableLazyDelegate.kt"

# interfaces
.implements Lcom/iMe/utils/extentions/delegate/Resettable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PROPTYPE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/iMe/utils/extentions/delegate/Resettable;"
    }
.end annotation


# instance fields
.field private final init:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "TPROPTYPE;>;"
        }
    .end annotation
.end field

.field private volatile lazyHolder:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "+TPROPTYPE;>;"
        }
    .end annotation
.end field

.field private final manager:Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;


# direct methods
.method public constructor <init>(Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;",
            "Lkotlin/jvm/functions/Function0<",
            "+TPROPTYPE;>;)V"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->manager:Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;

    iput-object p2, p0, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->init:Lkotlin/jvm/functions/Function0;

    .line 40
    invoke-direct {p0}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->makeInitBlock()Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->lazyHolder:Lkotlin/Lazy;

    return-void
.end method

.method private final makeInitBlock()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "TPROPTYPE;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/iMe/utils/extentions/delegate/ResettableLazy$makeInitBlock$1;

    invoke-direct {v0, p0}, Lcom/iMe/utils/extentions/delegate/ResettableLazy$makeInitBlock$1;-><init>(Lcom/iMe/utils/extentions/delegate/ResettableLazy;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getInit()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "TPROPTYPE;>;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->init:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getManager()Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->manager:Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;

    return-object v0
.end method

.method public final getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;)TPROPTYPE;"
        }
    .end annotation

    const-string/jumbo p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->lazyHolder:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reset()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->makeInitBlock()Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->lazyHolder:Lkotlin/Lazy;

    return-void
.end method
