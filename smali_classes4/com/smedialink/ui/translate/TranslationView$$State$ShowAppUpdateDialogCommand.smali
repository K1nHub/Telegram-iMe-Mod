.class public Lcom/smedialink/ui/translate/TranslationView$$State$ShowAppUpdateDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TranslationView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/translate/TranslationView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowAppUpdateDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/translate/TranslationView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/ui/translate/TranslationView$$State;)V
    .locals 1

    .line 377
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showAppUpdateDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/translate/TranslationView;)V
    .locals 0

    .line 382
    invoke-interface {p1}, Lcom/smedialink/ui/base/mvp/AppUpdateRequiredView;->showAppUpdateDialog()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 375
    check-cast p1, Lcom/smedialink/ui/translate/TranslationView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/translate/TranslationView$$State$ShowAppUpdateDialogCommand;->apply(Lcom/smedialink/ui/translate/TranslationView;)V

    return-void
.end method
