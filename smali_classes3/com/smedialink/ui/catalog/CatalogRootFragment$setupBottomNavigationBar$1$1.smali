.class public final Lcom/smedialink/ui/catalog/CatalogRootFragment$setupBottomNavigationBar$1$1;
.super Ljava/lang/Object;
.source "CatalogRootFragment.kt"

# interfaces
.implements Lcom/fxn/OnBubbleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/catalog/CatalogRootFragment;->setupBottomNavigationBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/catalog/CatalogRootFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/catalog/CatalogRootFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/catalog/CatalogRootFragment$setupBottomNavigationBar$1$1;->this$0:Lcom/smedialink/ui/catalog/CatalogRootFragment;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBubbleClick(I)Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/smedialink/ui/catalog/CatalogRootFragment$setupBottomNavigationBar$1$1;->this$0:Lcom/smedialink/ui/catalog/CatalogRootFragment;

    invoke-static {v0}, Lcom/smedialink/ui/catalog/CatalogRootFragment;->access$getPresenter(Lcom/smedialink/ui/catalog/CatalogRootFragment;)Lcom/smedialink/ui/catalog/CatalogRootPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smedialink/ui/catalog/CatalogRootPresenter;->selectTab(I)V

    const/4 p1, 0x1

    return p1
.end method
