.class final Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$listLayoutManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatAttachAlertTemplatesLayout.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$listLayoutManager$2;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$listLayoutManager$2;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->access$initListLayoutManager(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$listLayoutManager$2;->invoke()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;

    move-result-object v0

    return-object v0
.end method
