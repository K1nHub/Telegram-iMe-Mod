.class public final Lcom/smedialink/ui/catalog/tabs/CatalogFragment$Companion;
.super Ljava/lang/Object;
.source "CatalogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/catalog/tabs/CatalogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/CatalogFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/smedialink/storage/domain/model/catalog/ChatType;)Lcom/smedialink/ui/catalog/tabs/CatalogFragment;
    .locals 1

    const-string v0, "chatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    new-instance v0, Lcom/smedialink/ui/catalog/tabs/CatalogFragment;

    invoke-direct {v0, p1}, Lcom/smedialink/ui/catalog/tabs/CatalogFragment;-><init>(Lcom/smedialink/storage/domain/model/catalog/ChatType;)V

    return-object v0
.end method
