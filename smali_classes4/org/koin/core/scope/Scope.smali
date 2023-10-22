.class public final Lorg/koin/core/scope/Scope;
.super Ljava/lang/Object;
.source "Scope.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scope.kt\norg/koin/core/scope/Scope\n+ 2 Logger.kt\norg/koin/core/logger/Logger\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,403:1\n28#2:404\n46#2,2:405\n29#2:407\n28#2:408\n46#2,2:409\n29#2:411\n50#2,2:413\n28#2:415\n46#2,2:416\n29#2:418\n28#2:419\n46#2,2:420\n29#2:422\n28#2:423\n46#2,2:424\n29#2:426\n28#2:427\n46#2,2:428\n29#2:430\n28#2:431\n46#2,2:432\n29#2:434\n1#3:412\n1360#4:435\n1446#4,5:436\n*S KotlinDebug\n*F\n+ 1 Scope.kt\norg/koin/core/scope/Scope\n*L\n177#1:404\n177#1:405,2\n177#1:407\n180#1:408\n180#1:409,2\n180#1:411\n225#1:413,2\n233#1:415\n233#1:416,2\n233#1:418\n248#1:419\n248#1:420,2\n248#1:422\n252#1:423\n252#1:424,2\n252#1:426\n260#1:427\n260#1:428,2\n260#1:430\n267#1:431\n267#1:432,2\n267#1:434\n362#1:435\n362#1:436,5\n*E\n"
.end annotation


# instance fields
.field private final _callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/koin/core/scope/ScopeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private _closed:Z

.field private final _koin:Lorg/koin/core/Koin;

.field private final _parameterStack:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ">;"
        }
    .end annotation
.end field

.field private _source:Ljava/lang/Object;

.field private final id:Ljava/lang/String;

.field private final isRoot:Z

.field private final linkedScopes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/koin/core/scope/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final scopeQualifier:Lorg/koin/core/qualifier/Qualifier;


# direct methods
.method public constructor <init>(Lorg/koin/core/qualifier/Qualifier;Ljava/lang/String;ZLorg/koin/core/Koin;)V
    .locals 1

    const-string/jumbo v0, "scopeQualifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_koin"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/koin/core/scope/Scope;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 41
    iput-object p2, p0, Lorg/koin/core/scope/Scope;->id:Ljava/lang/String;

    .line 42
    iput-boolean p3, p0, Lorg/koin/core/scope/Scope;->isRoot:Z

    .line 43
    iput-object p4, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/koin/core/scope/Scope;->linkedScopes:Ljava/util/ArrayList;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/koin/core/scope/Scope;->_callbacks:Ljava/util/ArrayList;

    .line 59
    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Lorg/koin/core/scope/Scope;->_parameterStack:Lkotlin/collections/ArrayDeque;

    return-void
.end method

.method public static final synthetic access$get_callbacks$p(Lorg/koin/core/scope/Scope;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/koin/core/scope/Scope;->_callbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$set_closed$p(Lorg/koin/core/scope/Scope;Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lorg/koin/core/scope/Scope;->_closed:Z

    return-void
.end method

.method private final findInOtherScope(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ">;)TT;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lorg/koin/core/scope/Scope;->linkedScopes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 283
    invoke-virtual {v1, p1, p2, p3}, Lorg/koin/core/scope/Scope;->getOrNull(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v1
.end method

.method private final resolveInstance(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ">;)TT;"
        }
    .end annotation

    .line 220
    iget-boolean v0, p0, Lorg/koin/core/scope/Scope;->_closed:Z

    if-nez v0, :cond_5

    if-eqz p3, :cond_0

    .line 223
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/koin/core/parameter/ParametersHolder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 225
    iget-object v1, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v1}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v1

    sget-object v2, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .line 50
    invoke-virtual {v1, v2}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "| >> parameters "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {v1, v2, v3}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 226
    :cond_1
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    new-instance v2, Lorg/koin/core/scope/Scope$resolveInstance$2;

    invoke-direct {v2, p0, v0}, Lorg/koin/core/scope/Scope$resolveInstance$2;-><init>(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)V

    invoke-virtual {v1, p0, v2}, Lorg/koin/mp/KoinPlatformTools;->synchronized(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 230
    :cond_2
    new-instance v1, Lorg/koin/core/instance/InstanceContext;

    iget-object v2, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v2}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/koin/core/instance/InstanceContext;-><init>(Lorg/koin/core/logger/Logger;Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)V

    .line 231
    invoke-direct {p0, p1, p2, v1, p3}, Lorg/koin/core/scope/Scope;->resolveValue(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/instance/InstanceContext;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v0, :cond_4

    .line 233
    iget-object p2, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {p2}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object p2

    .line 28
    sget-object p3, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .line 46
    invoke-virtual {p2, p3}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "| << parameters"

    invoke-virtual {p2, p3, v0}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 234
    :cond_3
    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    new-instance p3, Lorg/koin/core/scope/Scope$resolveInstance$3;

    invoke-direct {p3, p0}, Lorg/koin/core/scope/Scope$resolveInstance$3;-><init>(Lorg/koin/core/scope/Scope;)V

    invoke-virtual {p2, p0, p3}, Lorg/koin/mp/KoinPlatformTools;->synchronized(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    :cond_4
    return-object p1

    .line 221
    :cond_5
    new-instance p1, Lorg/koin/core/error/ClosedScopeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Scope \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/koin/core/scope/Scope;->id:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' is closed"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/koin/core/error/ClosedScopeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final resolveValue(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/instance/InstanceContext;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lorg/koin/core/instance/InstanceContext;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ">;)TT;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getInstanceRegistry()Lorg/koin/core/registry/InstanceRegistry;

    move-result-object v0

    iget-object v1, p0, Lorg/koin/core/scope/Scope;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    invoke-virtual {v0, p1, p2, v1, p3}, Lorg/koin/core/registry/InstanceRegistry;->resolveInstance$koin_core(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/instance/InstanceContext;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_7

    .line 248
    iget-object p3, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {p3}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "|- ? t:\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' - q:\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' look in injected parameters"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    sget-object v3, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .line 46
    invoke-virtual {p3, v3}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p3, v3, v0}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 249
    :cond_0
    iget-object p3, p0, Lorg/koin/core/scope/Scope;->_parameterStack:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p3}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/koin/core/parameter/ParametersHolder;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3, p2}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    :cond_1
    move-object p3, v0

    :goto_0
    if-nez p3, :cond_7

    .line 252
    iget-object p3, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {p3}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\' look at scope source"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-virtual {p3, v3}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p3, v3, v4}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 253
    :cond_2
    iget-object p3, p0, Lorg/koin/core/scope/Scope;->_source:Ljava/lang/Object;

    if-eqz p3, :cond_4

    .line 254
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p3

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    if-nez p1, :cond_4

    .line 255
    iget-object p3, p0, Lorg/koin/core/scope/Scope;->_source:Ljava/lang/Object;

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, p3

    :cond_4
    :goto_1
    move-object p3, v0

    if-nez p3, :cond_7

    .line 260
    iget-object p3, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {p3}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' look in other scopes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p3, v3}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p3, v3, v0}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 261
    :cond_5
    invoke-direct {p0, p2, p1, p4}, Lorg/koin/core/scope/Scope;->findInOtherScope(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_7

    .line 264
    sget-object p3, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    new-instance p4, Lorg/koin/core/scope/Scope$resolveValue$4$1;

    invoke-direct {p4, p0}, Lorg/koin/core/scope/Scope$resolveValue$4$1;-><init>(Lorg/koin/core/scope/Scope;)V

    invoke-virtual {p3, p0, p4}, Lorg/koin/mp/KoinPlatformTools;->synchronized(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 267
    iget-object p3, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {p3}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object p3

    .line 46
    invoke-virtual {p3, v3}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result p4

    if-eqz p4, :cond_6

    const-string/jumbo p4, "|- << parameters"

    invoke-virtual {p3, v3, p4}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 268
    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/koin/core/scope/Scope;->throwDefinitionNotFound(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_7
    return-object p3
.end method

.method private final throwDefinitionNotFound(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/reflect/KClass<",
            "*>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " & qualifier:\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    .line 298
    :cond_1
    new-instance v0, Lorg/koin/core/error/NoBeanDefFoundException;

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No definition found for class:\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' q:\'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. Check your definitions!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 298
    invoke-direct {v0, p1}, Lorg/koin/core/error/NoBeanDefFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 388
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    new-instance v1, Lorg/koin/core/scope/Scope$close$1;

    invoke-direct {v1, p0}, Lorg/koin/core/scope/Scope$close$1;-><init>(Lorg/koin/core/scope/Scope;)V

    invoke-virtual {v0, p0, v1}, Lorg/koin/mp/KoinPlatformTools;->synchronized(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/koin/core/scope/Scope;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/koin/core/scope/Scope;

    iget-object v1, p0, Lorg/koin/core/scope/Scope;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    iget-object v3, p1, Lorg/koin/core/scope/Scope;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/koin/core/scope/Scope;->id:Ljava/lang/String;

    iget-object v3, p1, Lorg/koin/core/scope/Scope;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lorg/koin/core/scope/Scope;->isRoot:Z

    iget-boolean v3, p1, Lorg/koin/core/scope/Scope;->isRoot:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    iget-object p1, p1, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v0

    sget-object v1, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    invoke-virtual {v0, v1}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x27

    if-eqz p2, :cond_0

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " with qualifier \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, ""

    .line 200
    :cond_1
    iget-object v3, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v3}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "|- \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ..."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 202
    sget-object v0, Lorg/koin/mp/KoinPlatformTimeTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTimeTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTimeTools;->getTimeInNanoSeconds()J

    move-result-wide v2

    .line 203
    invoke-direct {p0, p2, p1, p3}, Lorg/koin/core/scope/Scope;->resolveInstance(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 204
    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTimeTools;->getTimeInNanoSeconds()J

    move-result-wide v6

    sub-long/2addr v6, v2

    long-to-double v2, v6

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v6

    .line 207
    iget-object p3, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {p3}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_2
    invoke-direct {p0, p2, p1, p3}, Lorg/koin/core/scope/Scope;->resolveInstance(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public final getClosed()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lorg/koin/core/scope/Scope;->_closed:Z

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/koin/core/scope/Scope;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogger()Lorg/koin/core/logger/Logger;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v0

    return-object v0
.end method

.method public final getOrNull(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, " on scope "

    const-string v1, "clazz"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 175
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lorg/koin/core/error/ClosedScopeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/koin/core/error/NoBeanDefFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    iget-object p2, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {p2}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "* No instance found for "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    sget-object p3, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .line 46
    invoke-virtual {p2, p3}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3, p1}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :catch_1
    iget-object p2, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {p2}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "* Scope closed - no instance found for "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    sget-object p3, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .line 46
    invoke-virtual {p2, p3}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3, p1}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v1
.end method

.method public final getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/koin/core/scope/Scope;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    return-object v0
.end method

.method public final get_koin()Lorg/koin/core/Koin;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    return-object v0
.end method

.method public final get_parameterStack()Lkotlin/collections/ArrayDeque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/ArrayDeque<",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/koin/core/scope/Scope;->_parameterStack:Lkotlin/collections/ArrayDeque;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/koin/core/scope/Scope;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/koin/core/scope/Scope;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/koin/core/scope/Scope;->isRoot:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/koin/core/scope/Scope;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isNotClosed()Z
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/koin/core/scope/Scope;->getClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final set_source(Ljava/lang/Object;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/koin/core/scope/Scope;->_source:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/koin/core/scope/Scope;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
