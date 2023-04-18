.class public Lcom/iMe/ui/translate/TranslationView$$State$OpenReplyDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TranslationView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/translate/TranslationView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenReplyDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/translate/TranslationView;",
        ">;"
    }
.end annotation


# instance fields
.field public final settings:Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;


# direct methods
.method constructor <init>(Lcom/iMe/ui/translate/TranslationView$$State;Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;)V
    .locals 1

    .line 292
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "openReplyDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 294
    iput-object p2, p0, Lcom/iMe/ui/translate/TranslationView$$State$OpenReplyDialogCommand;->settings:Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/translate/TranslationView;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationView$$State$OpenReplyDialogCommand;->settings:Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    invoke-interface {p1, v0}, Lcom/iMe/ui/translate/TranslationView;->openReplyDialog(Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 288
    check-cast p1, Lcom/iMe/ui/translate/TranslationView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/translate/TranslationView$$State$OpenReplyDialogCommand;->apply(Lcom/iMe/ui/translate/TranslationView;)V

    return-void
.end method
