.class public Lcom/iMe/ui/chat/ChatView$$State$OnLanguagesLoadedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ChatView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/chat/ChatView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnLanguagesLoadedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/chat/ChatView;",
        ">;"
    }
.end annotation


# instance fields
.field public final textLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/translation/TranslationLanguageUiModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/chat/ChatView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/translation/TranslationLanguageUiModel;",
            ">;)V"
        }
    .end annotation

    .line 329
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onLanguagesLoaded"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 331
    iput-object p2, p0, Lcom/iMe/ui/chat/ChatView$$State$OnLanguagesLoadedCommand;->textLanguages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/chat/ChatView;)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/iMe/ui/chat/ChatView$$State$OnLanguagesLoadedCommand;->textLanguages:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/ui/chat/ChatView;->onLanguagesLoaded(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 325
    check-cast p1, Lcom/iMe/ui/chat/ChatView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/chat/ChatView$$State$OnLanguagesLoadedCommand;->apply(Lcom/iMe/ui/chat/ChatView;)V

    return-void
.end method
