.class public final Lcom/iMe/ui/catalog/CatalogRootFragment$setupActionBar$1$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "CatalogRootFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/catalog/CatalogRootFragment;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/catalog/CatalogRootFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/catalog/CatalogRootFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/catalog/CatalogRootFragment$setupActionBar$1$1;->this$0:Lcom/iMe/ui/catalog/CatalogRootFragment;

    .line 214
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 217
    iget-object p1, p0, Lcom/iMe/ui/catalog/CatalogRootFragment$setupActionBar$1$1;->this$0:Lcom/iMe/ui/catalog/CatalogRootFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    .line 218
    :cond_0
    sget v0, Lcom/iMe/common/IdFabric$Menu;->LANGUAGE:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/iMe/ui/catalog/CatalogRootFragment$setupActionBar$1$1;->this$0:Lcom/iMe/ui/catalog/CatalogRootFragment;

    invoke-static {p1}, Lcom/iMe/ui/catalog/CatalogRootFragment;->access$getPresenter(Lcom/iMe/ui/catalog/CatalogRootFragment;)Lcom/iMe/ui/catalog/CatalogRootPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/catalog/CatalogRootPresenter;->onSelectLanguageClick()V

    :cond_1
    :goto_0
    return-void
.end method
