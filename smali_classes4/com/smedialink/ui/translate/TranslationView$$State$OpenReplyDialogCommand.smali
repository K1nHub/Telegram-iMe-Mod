.class public Lcom/smedialink/ui/translate/TranslationView$$State$OpenReplyDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TranslationView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/translate/TranslationView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenReplyDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/translate/TranslationView;",
        ">;"
    }
.end annotation


# instance fields
.field public final settings:Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/translate/TranslationView$$State;Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;)V
    .locals 1

    .line 274
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "openReplyDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 276
    iput-object p2, p0, Lcom/smedialink/ui/translate/TranslationView$$State$OpenReplyDialogCommand;->settings:Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/translate/TranslationView;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/smedialink/ui/translate/TranslationView$$State$OpenReplyDialogCommand;->settings:Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/translate/TranslationView;->openReplyDialog(Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 270
    check-cast p1, Lcom/smedialink/ui/translate/TranslationView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/translate/TranslationView$$State$OpenReplyDialogCommand;->apply(Lcom/smedialink/ui/translate/TranslationView;)V

    return-void
.end method
