.class final Lcom/iMe/ui/adapter/provider/TweetProvider$onBindImage$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TweetProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/TweetProvider;->onBindImage(Landroid/view/View;Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;Lcom/iMe/model/twitter/TweetItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTweetProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TweetProvider.kt\ncom/iMe/ui/adapter/provider/TweetProvider$onBindImage$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,159:1\n1#2:160\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_apply:Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/TweetProvider$onBindImage$1$1;->$this_apply:Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/iMe/ui/adapter/provider/TweetProvider$onBindImage$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 151
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/TweetProvider$onBindImage$1$1;->$this_apply:Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;->errorBlock:Lorg/telegram/messenger/databinding/ForkRecylcerErrorBlockBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkRecylcerErrorBlockBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const-string v1, "errorBlock.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/TweetProvider$onBindImage$1$1;->$this_apply:Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;->progressBar:Landroid/widget/ProgressBar;

    const-string v4, "progressBar"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    return-void
.end method
