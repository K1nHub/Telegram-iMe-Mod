.class public final Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$Companion;
.super Ljava/lang/Object;
.source "CatalogCategoriesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/iMe/storage/domain/model/catalog/ChatType;)Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;
    .locals 1

    const-string v0, "chatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    new-instance v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;

    invoke-direct {v0, p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;-><init>(Lcom/iMe/storage/domain/model/catalog/ChatType;)V

    return-object v0
.end method
