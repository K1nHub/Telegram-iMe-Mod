.class final Lcom/smedialink/ui/catalog/CatalogRootFragment$binding$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CatalogRootFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/catalog/CatalogRootFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/catalog/CatalogRootFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/catalog/CatalogRootFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/catalog/CatalogRootFragment$binding$2;->this$0:Lcom/smedialink/ui/catalog/CatalogRootFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/smedialink/ui/catalog/CatalogRootFragment$binding$2;->invoke()Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/smedialink/ui/catalog/CatalogRootFragment$binding$2;->this$0:Lcom/smedialink/ui/catalog/CatalogRootFragment;

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/BaseFragmentExtKt;->getLayoutInflater(Lorg/telegram/ui/ActionBar/BaseFragment;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;

    move-result-object v0

    return-object v0
.end method
