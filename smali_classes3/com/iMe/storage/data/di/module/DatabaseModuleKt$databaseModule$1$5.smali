.class final Lcom/iMe/storage/data/di/module/DatabaseModuleKt$databaseModule$1$5;
.super Lkotlin/jvm/internal/Lambda;
.source "DatabaseModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/di/module/DatabaseModuleKt$databaseModule$1;->invoke(Lorg/koin/core/module/Module;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/koin/core/scope/Scope;",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDatabaseModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DatabaseModule.kt\ncom/iMe/storage/data/di/module/DatabaseModuleKt$databaseModule$1$5\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,43:1\n129#2,5:44\n*S KotlinDebug\n*F\n+ 1 DatabaseModule.kt\ncom/iMe/storage/data/di/module/DatabaseModuleKt$databaseModule$1$5\n*L\n23#1:44,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/di/module/DatabaseModuleKt$databaseModule$1$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/di/module/DatabaseModuleKt$databaseModule$1$5;

    invoke-direct {v0}, Lcom/iMe/storage/data/di/module/DatabaseModuleKt$databaseModule$1$5;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/di/module/DatabaseModuleKt$databaseModule$1$5;->INSTANCE:Lcom/iMe/storage/data/di/module/DatabaseModuleKt$databaseModule$1$5;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;
    .locals 1

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    const-class p2, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase;

    .line 23
    invoke-virtual {p1}, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase;->filtersDao()Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/di/module/DatabaseModuleKt$databaseModule$1$5;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;

    move-result-object p1

    return-object p1
.end method