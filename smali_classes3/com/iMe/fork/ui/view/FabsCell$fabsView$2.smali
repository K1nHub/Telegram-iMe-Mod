.class final Lcom/iMe/fork/ui/view/FabsCell$fabsView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FabsCell.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/view/FabsCell;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/fork/ui/view/FabsView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/view/FabsCell;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/view/FabsCell;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/view/FabsCell$fabsView$2;->this$0:Lcom/iMe/fork/ui/view/FabsCell;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/fork/ui/view/FabsView;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/fork/ui/view/FabsCell$fabsView$2;->this$0:Lcom/iMe/fork/ui/view/FabsCell;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/FabsCell;->access$initFabsView(Lcom/iMe/fork/ui/view/FabsCell;)Lcom/iMe/fork/ui/view/FabsView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/FabsCell$fabsView$2;->invoke()Lcom/iMe/fork/ui/view/FabsView;

    move-result-object v0

    return-object v0
.end method
