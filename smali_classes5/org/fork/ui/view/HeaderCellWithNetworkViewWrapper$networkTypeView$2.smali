.class final Lorg/fork/ui/view/HeaderCellWithNetworkViewWrapper$networkTypeView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "HeaderCellWithNetworkViewWrapper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/view/HeaderCellWithNetworkViewWrapper;-><init>(Lorg/telegram/ui/Cells/HeaderCell;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/smedialink/ui/custom/NetworkTypeView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/view/HeaderCellWithNetworkViewWrapper;


# direct methods
.method constructor <init>(Lorg/fork/ui/view/HeaderCellWithNetworkViewWrapper;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/view/HeaderCellWithNetworkViewWrapper$networkTypeView$2;->this$0:Lorg/fork/ui/view/HeaderCellWithNetworkViewWrapper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/smedialink/ui/custom/NetworkTypeView;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/fork/ui/view/HeaderCellWithNetworkViewWrapper$networkTypeView$2;->this$0:Lorg/fork/ui/view/HeaderCellWithNetworkViewWrapper;

    invoke-static {v0}, Lorg/fork/ui/view/HeaderCellWithNetworkViewWrapper;->access$initNetworkView(Lorg/fork/ui/view/HeaderCellWithNetworkViewWrapper;)Lcom/smedialink/ui/custom/NetworkTypeView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/fork/ui/view/HeaderCellWithNetworkViewWrapper$networkTypeView$2;->invoke()Lcom/smedialink/ui/custom/NetworkTypeView;

    move-result-object v0

    return-object v0
.end method
