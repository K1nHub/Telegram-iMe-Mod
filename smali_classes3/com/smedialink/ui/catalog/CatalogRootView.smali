.class public interface abstract Lcom/smedialink/ui/catalog/CatalogRootView;
.super Ljava/lang/Object;
.source "CatalogRootView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract onSelectedLanguageChanged()V
.end method

.method public abstract onTabSelected(I)V
.end method

.method public abstract openSelectLanguageScreen(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method
