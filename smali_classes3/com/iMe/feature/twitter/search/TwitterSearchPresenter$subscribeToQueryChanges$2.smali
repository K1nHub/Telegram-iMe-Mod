.class final Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TwitterSearchPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->subscribeToQueryChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$2;->this$0:Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const-string v0, "rawQuery"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 194
    iget-object p1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$2;->this$0:Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;

    sget-object v0, Lcom/iMe/model/state/GlobalState$Empty$TwitterSearch;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$TwitterSearch;

    invoke-static {p1, v0}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->access$renderGlobalState(Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;Lcom/iMe/model/state/GlobalState;)V

    :goto_1
    move v1, v2

    goto :goto_2

    .line 198
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_2

    .line 199
    iget-object p1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$2;->this$0:Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;

    sget-object v0, Lcom/iMe/model/state/GlobalState$Empty$Common;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Common;

    invoke-static {p1, v0}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->access$renderGlobalState(Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;Lcom/iMe/model/state/GlobalState;)V

    goto :goto_1

    .line 203
    :cond_2
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 191
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$2;->invoke(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
