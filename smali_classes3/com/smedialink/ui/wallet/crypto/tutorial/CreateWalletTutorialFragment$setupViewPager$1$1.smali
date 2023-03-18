.class public final Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupViewPager$1$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "CreateWalletTutorialFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->setupViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupViewPager$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    .line 144
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 6

    .line 146
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupViewPager$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->access$setSwipeBackEnabled$p(Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;Z)V

    .line 149
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupViewPager$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->access$getTutorialAdapter(Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)Lcom/smedialink/ui/wallet/crypto/tutorial/adapter/CreateEthWalletTutorialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/crypto/tutorial/adapter/CreateEthWalletTutorialAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupViewPager$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->access$getBinding(Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;

    move-result-object p1

    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;->buttonAction:Lcom/smedialink/ui/custom/ActionButton;

    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupViewPager$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    .line 150
    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->access$getResourceManager(Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->common_create:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "onPageSelected$lambda$0"

    .line 151
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupViewPager$1$1$onPageSelected$1$1;

    invoke-direct {v3, p1}, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupViewPager$1$1$onPageSelected$1$1;-><init>(Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    goto :goto_1

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupViewPager$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->access$getBinding(Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;

    move-result-object p1

    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;->buttonAction:Lcom/smedialink/ui/custom/ActionButton;

    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupViewPager$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    .line 154
    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->access$getResourceManager(Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->common_next:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "onPageSelected$lambda$1"

    .line 155
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupViewPager$1$1$onPageSelected$2$1;

    invoke-direct {v3, p1}, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupViewPager$1$1$onPageSelected$2$1;-><init>(Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method
