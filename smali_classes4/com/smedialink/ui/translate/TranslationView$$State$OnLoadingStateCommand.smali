.class public Lcom/smedialink/ui/translate/TranslationView$$State$OnLoadingStateCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TranslationView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/translate/TranslationView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnLoadingStateCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/translate/TranslationView;",
        ">;"
    }
.end annotation


# instance fields
.field public final loadingText:Ljava/lang/String;

.field public final onLanguageChanged:Z


# direct methods
.method constructor <init>(Lcom/smedialink/ui/translate/TranslationView$$State;Ljava/lang/String;Z)V
    .locals 1

    .line 258
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onLoadingState"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 260
    iput-object p2, p0, Lcom/smedialink/ui/translate/TranslationView$$State$OnLoadingStateCommand;->loadingText:Ljava/lang/String;

    .line 261
    iput-boolean p3, p0, Lcom/smedialink/ui/translate/TranslationView$$State$OnLoadingStateCommand;->onLanguageChanged:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/translate/TranslationView;)V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/smedialink/ui/translate/TranslationView$$State$OnLoadingStateCommand;->loadingText:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/smedialink/ui/translate/TranslationView$$State$OnLoadingStateCommand;->onLanguageChanged:Z

    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/translate/TranslationView;->onLoadingState(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 252
    check-cast p1, Lcom/smedialink/ui/translate/TranslationView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/translate/TranslationView$$State$OnLoadingStateCommand;->apply(Lcom/smedialink/ui/translate/TranslationView;)V

    return-void
.end method
