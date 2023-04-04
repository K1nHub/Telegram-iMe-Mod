.class public Lcom/iMe/ui/translate/TranslationView$$State$ShowLanguagesCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TranslationView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/translate/TranslationView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowLanguagesCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/translate/TranslationView;",
        ">;"
    }
.end annotation


# instance fields
.field public final languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/translation/TranslationLanguageUiModel;",
            ">;"
        }
    .end annotation
.end field

.field public final selectedLanguageCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/translate/TranslationView$$State;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/translation/TranslationLanguageUiModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 240
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "showLanguages"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 242
    iput-object p2, p0, Lcom/iMe/ui/translate/TranslationView$$State$ShowLanguagesCommand;->languages:Ljava/util/List;

    .line 243
    iput-object p3, p0, Lcom/iMe/ui/translate/TranslationView$$State$ShowLanguagesCommand;->selectedLanguageCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/translate/TranslationView;)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationView$$State$ShowLanguagesCommand;->languages:Ljava/util/List;

    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationView$$State$ShowLanguagesCommand;->selectedLanguageCode:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/translate/TranslationView;->showLanguages(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 234
    check-cast p1, Lcom/iMe/ui/translate/TranslationView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/translate/TranslationView$$State$ShowLanguagesCommand;->apply(Lcom/iMe/ui/translate/TranslationView;)V

    return-void
.end method
