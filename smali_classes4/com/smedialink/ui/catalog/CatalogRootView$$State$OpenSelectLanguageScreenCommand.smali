.class public Lcom/smedialink/ui/catalog/CatalogRootView$$State$OpenSelectLanguageScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CatalogRootView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/catalog/CatalogRootView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenSelectLanguageScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/catalog/CatalogRootView;",
        ">;"
    }
.end annotation


# instance fields
.field public final languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final selectedLanguageId:I


# direct methods
.method constructor <init>(Lcom/smedialink/ui/catalog/CatalogRootView$$State;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    .line 163
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openSelectLanguageScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 165
    iput p2, p0, Lcom/smedialink/ui/catalog/CatalogRootView$$State$OpenSelectLanguageScreenCommand;->selectedLanguageId:I

    .line 166
    iput-object p3, p0, Lcom/smedialink/ui/catalog/CatalogRootView$$State$OpenSelectLanguageScreenCommand;->languages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/catalog/CatalogRootView;)V
    .locals 2

    .line 171
    iget v0, p0, Lcom/smedialink/ui/catalog/CatalogRootView$$State$OpenSelectLanguageScreenCommand;->selectedLanguageId:I

    iget-object v1, p0, Lcom/smedialink/ui/catalog/CatalogRootView$$State$OpenSelectLanguageScreenCommand;->languages:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/catalog/CatalogRootView;->openSelectLanguageScreen(ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 156
    check-cast p1, Lcom/smedialink/ui/catalog/CatalogRootView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/catalog/CatalogRootView$$State$OpenSelectLanguageScreenCommand;->apply(Lcom/smedialink/ui/catalog/CatalogRootView;)V

    return-void
.end method
