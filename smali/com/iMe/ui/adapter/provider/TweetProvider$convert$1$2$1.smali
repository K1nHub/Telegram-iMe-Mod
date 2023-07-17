.class final Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TweetProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$2;->invoke(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroid/view/View;",
        "Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/iMe/model/twitter/TweetItem;

.field final synthetic this$0:Lcom/iMe/ui/adapter/provider/TweetProvider;


# direct methods
.method constructor <init>(Lcom/iMe/ui/adapter/provider/TweetProvider;Lcom/iMe/model/twitter/TweetItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$2$1;->this$0:Lcom/iMe/ui/adapter/provider/TweetProvider;

    iput-object p2, p0, Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$2$1;->$item:Lcom/iMe/model/twitter/TweetItem;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 79
    check-cast p1, Landroid/view/View;

    check-cast p2, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$2$1;->invoke(Landroid/view/View;Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;I)V
    .locals 1

    const-string p3, "$this$quickInit"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "mediaInfo"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object p3, p0, Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$2$1;->this$0:Lcom/iMe/ui/adapter/provider/TweetProvider;

    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$2$1;->$item:Lcom/iMe/model/twitter/TweetItem;

    invoke-static {p3, p1, p2, v0}, Lcom/iMe/ui/adapter/provider/TweetProvider;->access$onBindImage(Lcom/iMe/ui/adapter/provider/TweetProvider;Landroid/view/View;Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;Lcom/iMe/model/twitter/TweetItem;)V

    return-void
.end method
