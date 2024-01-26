.class final synthetic Lcom/iMe/feature/twitter/TwitterFragment$setupListeners$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "TwitterFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/twitter/TwitterFragment;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/model/twitter/TweetItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/iMe/feature/twitter/TwitterFragment;

    const/4 v1, 0x1

    const-string v4, "openPhotoViewer"

    const-string v5, "openPhotoViewer(Lcom/iMe/model/twitter/TweetItem;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 241
    check-cast p1, Lcom/iMe/model/twitter/TweetItem;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/twitter/TwitterFragment$setupListeners$1$1;->invoke(Lcom/iMe/model/twitter/TweetItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/model/twitter/TweetItem;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/iMe/feature/twitter/TwitterFragment;

    invoke-virtual {v0, p1}, Lcom/iMe/feature/twitter/TwitterFragment;->openPhotoViewer(Lcom/iMe/model/twitter/TweetItem;)V

    return-void
.end method
