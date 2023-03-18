.class final Lcom/smedialink/ui/dialog/FullscreenContentDialog$Companion$createDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FullscreenContentDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/dialog/FullscreenContentDialog$Companion;->createDialog(Lcom/smedialink/ui/dialog/FullscreenContentDialog;Lorg/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $buttonActionListener:Lorg/fork/utils/Callbacks$Callback;

.field final synthetic $dialog:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/dialog/FullscreenContentDialog$Companion$createDialog$1;->$dialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p2, p0, Lcom/smedialink/ui/dialog/FullscreenContentDialog$Companion$createDialog$1;->$buttonActionListener:Lorg/fork/utils/Callbacks$Callback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 96
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/dialog/FullscreenContentDialog$Companion$createDialog$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/smedialink/ui/dialog/FullscreenContentDialog$Companion$createDialog$1;->$dialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 98
    iget-object p1, p0, Lcom/smedialink/ui/dialog/FullscreenContentDialog$Companion$createDialog$1;->$buttonActionListener:Lorg/fork/utils/Callbacks$Callback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/fork/utils/Callbacks$Callback;->invoke()V

    :cond_0
    return-void
.end method
