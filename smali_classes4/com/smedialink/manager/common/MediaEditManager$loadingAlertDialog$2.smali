.class final Lcom/smedialink/manager/common/MediaEditManager$loadingAlertDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaEditManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/manager/common/MediaEditManager;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/ui/ActionBar/AlertDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/manager/common/MediaEditManager;


# direct methods
.method constructor <init>(Lcom/smedialink/manager/common/MediaEditManager;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/manager/common/MediaEditManager$loadingAlertDialog$2;->this$0:Lcom/smedialink/manager/common/MediaEditManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/smedialink/manager/common/MediaEditManager$loadingAlertDialog$2;->invoke()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/smedialink/manager/common/MediaEditManager$loadingAlertDialog$2;->this$0:Lcom/smedialink/manager/common/MediaEditManager;

    invoke-static {v0}, Lcom/smedialink/manager/common/MediaEditManager;->access$initLoadingDialog(Lcom/smedialink/manager/common/MediaEditManager;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    return-object v0
.end method
