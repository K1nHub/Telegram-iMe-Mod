.class final Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$binding$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CatalogUserChannelsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;-><init>(Lcom/iMe/storage/domain/model/catalog/ChatType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$binding$2;->this$0:Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$binding$2;->invoke()Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$binding$2;->this$0:Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/BaseFragmentExtKt;->getLayoutInflater(Lorg/telegram/ui/ActionBar/BaseFragment;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;

    move-result-object v0

    return-object v0
.end method
