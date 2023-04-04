.class final Lcom/iMe/utils/extentions/delegate/ResettableLazy$makeInitBlock$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ResettableLazyDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/utils/extentions/delegate/ResettableLazy;->makeInitBlock()Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TPROPTYPE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/utils/extentions/delegate/ResettableLazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/utils/extentions/delegate/ResettableLazy<",
            "TPROPTYPE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/utils/extentions/delegate/ResettableLazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/utils/extentions/delegate/ResettableLazy<",
            "TPROPTYPE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/utils/extentions/delegate/ResettableLazy$makeInitBlock$1;->this$0:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPROPTYPE;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/iMe/utils/extentions/delegate/ResettableLazy$makeInitBlock$1;->this$0:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    invoke-virtual {v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getManager()Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/utils/extentions/delegate/ResettableLazy$makeInitBlock$1;->this$0:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    invoke-virtual {v0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;->register(Lcom/iMe/utils/extentions/delegate/Resettable;)V

    .line 53
    iget-object v0, p0, Lcom/iMe/utils/extentions/delegate/ResettableLazy$makeInitBlock$1;->this$0:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    invoke-virtual {v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getInit()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
