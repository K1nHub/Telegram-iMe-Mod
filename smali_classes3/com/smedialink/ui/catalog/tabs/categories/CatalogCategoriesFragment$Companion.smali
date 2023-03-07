.class public final Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$Companion;
.super Ljava/lang/Object;
.source "CatalogCategoriesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/smedialink/storage/domain/model/catalog/ChatType;)Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;
    .locals 1

    const-string v0, "chatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    new-instance v0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;

    invoke-direct {v0, p1}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;-><init>(Lcom/smedialink/storage/domain/model/catalog/ChatType;)V

    return-object v0
.end method
