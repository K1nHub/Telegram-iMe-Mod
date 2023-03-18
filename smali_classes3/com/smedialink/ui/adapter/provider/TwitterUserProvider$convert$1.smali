.class final Lcom/smedialink/ui/adapter/provider/TwitterUserProvider$convert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TwitterUserProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/adapter/provider/TwitterUserProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/twitter/TwitterUserItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/widget/FrameLayout;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTwitterUserProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TwitterUserProvider.kt\ncom/smedialink/ui/adapter/provider/TwitterUserProvider$convert$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,55:1\n1#2:56\n*E\n"
.end annotation


# instance fields
.field final synthetic $item:Lcom/smedialink/model/twitter/TwitterUserItem;

.field final synthetic this$0:Lcom/smedialink/ui/adapter/provider/TwitterUserProvider;


# direct methods
.method constructor <init>(Lcom/smedialink/model/twitter/TwitterUserItem;Lcom/smedialink/ui/adapter/provider/TwitterUserProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/TwitterUserProvider$convert$1;->$item:Lcom/smedialink/model/twitter/TwitterUserItem;

    iput-object p2, p0, Lcom/smedialink/ui/adapter/provider/TwitterUserProvider$convert$1;->this$0:Lcom/smedialink/ui/adapter/provider/TwitterUserProvider;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/adapter/provider/TwitterUserProvider$convert$1;->invoke(Landroid/widget/FrameLayout;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/widget/FrameLayout;)V
    .locals 8

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 36
    new-instance v0, Lorg/telegram/ui/Cells/UserCell;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    iget-object v7, p0, Lcom/smedialink/ui/adapter/provider/TwitterUserProvider$convert$1;->$item:Lcom/smedialink/model/twitter/TwitterUserItem;

    .line 37
    invoke-virtual {v7}, Lcom/smedialink/model/twitter/TwitterUserItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/smedialink/model/twitter/TwitterUserItem;->getNickname()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 38
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/UserCell;->hideNameDrawable()V

    .line 39
    invoke-virtual {v7}, Lcom/smedialink/model/twitter/TwitterUserItem;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/UserCell;->setAvatar(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/smedialink/ui/adapter/provider/TwitterUserProvider$convert$1;->this$0:Lcom/smedialink/ui/adapter/provider/TwitterUserProvider;

    invoke-static {v1, v0}, Lcom/smedialink/ui/adapter/provider/TwitterUserProvider;->access$setUserCell$p(Lcom/smedialink/ui/adapter/provider/TwitterUserProvider;Lorg/telegram/ui/Cells/UserCell;)V

    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
