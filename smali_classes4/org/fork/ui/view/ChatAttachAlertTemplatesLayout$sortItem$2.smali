.class final Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$sortItem$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatAttachAlertTemplatesLayout.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/ui/ActionBar/ActionBarMenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;


# direct methods
.method constructor <init>(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$sortItem$2;->this$0:Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$sortItem$2;->invoke()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$sortItem$2;->this$0:Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;

    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->access$initSortItem(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    return-object v0
.end method
