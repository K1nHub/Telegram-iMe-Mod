.class final Lcom/iMe/ui/adapter/provider/TweetProvider$onBindImage$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TweetProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/drawable/Drawable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTweetProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TweetProvider.kt\ncom/iMe/ui/adapter/provider/TweetProvider$onBindImage$1$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,126:1\n1#2:127\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_apply:Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/TweetProvider$onBindImage$1$2;->$this_apply:Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 117
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/TweetProvider$onBindImage$1$2;->invoke(Landroid/graphics/drawable/Drawable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 120
    iget-object p1, p0, Lcom/iMe/ui/adapter/provider/TweetProvider$onBindImage$1$2;->$this_apply:Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;->errorBlock:Lorg/telegram/messenger/databinding/ForkRecylcerErrorBlockBinding;

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkRecylcerErrorBlockBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string v0, "errorBlock.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p1, p0, Lcom/iMe/ui/adapter/provider/TweetProvider$onBindImage$1$2;->$this_apply:Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;->progressBar:Landroid/widget/ProgressBar;

    const-string v3, "progressBar"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0, v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    return-void
.end method
