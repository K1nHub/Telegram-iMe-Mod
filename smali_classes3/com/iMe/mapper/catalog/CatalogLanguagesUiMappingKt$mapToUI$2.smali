.class final Lcom/iMe/mapper/catalog/CatalogLanguagesUiMappingKt$mapToUI$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CatalogLanguagesUiMapping.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/mapper/catalog/CatalogLanguagesUiMappingKt;->mapToUI(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
        "Ljava/lang/Comparable<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/mapper/catalog/CatalogLanguagesUiMappingKt$mapToUI$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/mapper/catalog/CatalogLanguagesUiMappingKt$mapToUI$2;

    invoke-direct {v0}, Lcom/iMe/mapper/catalog/CatalogLanguagesUiMappingKt$mapToUI$2;-><init>()V

    sput-object v0, Lcom/iMe/mapper/catalog/CatalogLanguagesUiMappingKt$mapToUI$2;->INSTANCE:Lcom/iMe/mapper/catalog/CatalogLanguagesUiMappingKt$mapToUI$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/telegram/messenger/LocaleController$LocaleInfo;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ")",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object p1, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-virtual {p0, p1}, Lcom/iMe/mapper/catalog/CatalogLanguagesUiMappingKt$mapToUI$2;->invoke(Lorg/telegram/messenger/LocaleController$LocaleInfo;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method
