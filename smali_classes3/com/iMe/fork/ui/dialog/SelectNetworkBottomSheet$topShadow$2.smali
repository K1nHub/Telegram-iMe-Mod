.class final Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$topShadow$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SelectNetworkBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;-><init>(Landroid/content/Context;Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
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
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$topShadow$2;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$topShadow$2;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$initShadow(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$topShadow$2;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
