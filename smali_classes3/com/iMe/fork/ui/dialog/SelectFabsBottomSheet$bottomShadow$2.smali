.class final Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$bottomShadow$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SelectFabsBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;-><init>(Landroid/content/Context;Ljava/util/Set;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$bottomShadow$2;->this$0:Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$bottomShadow$2;->this$0:Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->access$initShadow(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$bottomShadow$2;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
