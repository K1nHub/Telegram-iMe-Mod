.class public Lcom/smedialink/ui/translate/TranslationView$$State$ConfigureScreenWithCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TranslationView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/translate/TranslationView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigureScreenWithCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/translate/TranslationView;",
        ">;"
    }
.end annotation


# instance fields
.field public final sourceLanguage:Ljava/lang/String;

.field public final targetLanguage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/translate/TranslationView$$State;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 201
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "configureScreenWith"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 203
    iput-object p2, p0, Lcom/smedialink/ui/translate/TranslationView$$State$ConfigureScreenWithCommand;->sourceLanguage:Ljava/lang/String;

    .line 204
    iput-object p3, p0, Lcom/smedialink/ui/translate/TranslationView$$State$ConfigureScreenWithCommand;->targetLanguage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/translate/TranslationView;)V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/smedialink/ui/translate/TranslationView$$State$ConfigureScreenWithCommand;->sourceLanguage:Ljava/lang/String;

    iget-object v1, p0, Lcom/smedialink/ui/translate/TranslationView$$State$ConfigureScreenWithCommand;->targetLanguage:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/translate/TranslationView;->configureScreenWith(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 195
    check-cast p1, Lcom/smedialink/ui/translate/TranslationView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/translate/TranslationView$$State$ConfigureScreenWithCommand;->apply(Lcom/smedialink/ui/translate/TranslationView;)V

    return-void
.end method
