.class public final Lorg/koin/core/definition/BeanDefinition;
.super Ljava/lang/Object;
.source "BeanDefinition.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBeanDefinition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BeanDefinition.kt\norg/koin/core/definition/BeanDefinition\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,120:1\n1#2:121\n*E\n"
.end annotation


# instance fields
.field private _createdAtStart:Z

.field private callbacks:Lorg/koin/core/definition/Callbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/koin/core/definition/Callbacks<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final definition:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/parameter/ParametersHolder;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final kind:Lorg/koin/core/definition/Kind;

.field private final primaryType:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "*>;"
        }
    .end annotation
.end field

.field private qualifier:Lorg/koin/core/qualifier/Qualifier;

.field private final scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

.field private secondaryTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lorg/koin/core/scope/Scope;",
            "-",
            "Lorg/koin/core/parameter/ParametersHolder;",
            "+TT;>;",
            "Lorg/koin/core/definition/Kind;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "*>;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "scopeQualifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "primaryType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "definition"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "secondaryTypes"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/koin/core/definition/BeanDefinition;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 36
    iput-object p2, p0, Lorg/koin/core/definition/BeanDefinition;->primaryType:Lkotlin/reflect/KClass;

    .line 37
    iput-object p3, p0, Lorg/koin/core/definition/BeanDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 38
    iput-object p4, p0, Lorg/koin/core/definition/BeanDefinition;->definition:Lkotlin/jvm/functions/Function2;

    .line 39
    iput-object p5, p0, Lorg/koin/core/definition/BeanDefinition;->kind:Lorg/koin/core/definition/Kind;

    .line 40
    iput-object p6, p0, Lorg/koin/core/definition/BeanDefinition;->secondaryTypes:Ljava/util/List;

    .line 42
    new-instance p1, Lorg/koin/core/definition/Callbacks;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3, p2}, Lorg/koin/core/definition/Callbacks;-><init>(Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lorg/koin/core/definition/BeanDefinition;->callbacks:Lorg/koin/core/definition/Callbacks;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const-string v1, "null cannot be cast to non-null type org.koin.core.definition.BeanDefinition<*>"

    .line 63
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/koin/core/definition/BeanDefinition;

    .line 65
    iget-object v1, p0, Lorg/koin/core/definition/BeanDefinition;->primaryType:Lkotlin/reflect/KClass;

    iget-object v2, p1, Lorg/koin/core/definition/BeanDefinition;->primaryType:Lkotlin/reflect/KClass;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 66
    :cond_1
    iget-object v1, p0, Lorg/koin/core/definition/BeanDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    iget-object v3, p1, Lorg/koin/core/definition/BeanDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 67
    :cond_2
    iget-object v1, p0, Lorg/koin/core/definition/BeanDefinition;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    iget-object p1, p1, Lorg/koin/core/definition/BeanDefinition;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCallbacks()Lorg/koin/core/definition/Callbacks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/koin/core/definition/Callbacks<",
            "TT;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/koin/core/definition/BeanDefinition;->callbacks:Lorg/koin/core/definition/Callbacks;

    return-object v0
.end method

.method public final getDefinition()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/parameter/ParametersHolder;",
            "TT;>;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/koin/core/definition/BeanDefinition;->definition:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getPrimaryType()Lkotlin/reflect/KClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KClass<",
            "*>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/koin/core/definition/BeanDefinition;->primaryType:Lkotlin/reflect/KClass;

    return-object v0
.end method

.method public final getQualifier()Lorg/koin/core/qualifier/Qualifier;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/koin/core/definition/BeanDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    return-object v0
.end method

.method public final getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/koin/core/definition/BeanDefinition;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    return-object v0
.end method

.method public final getSecondaryTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KClass<",
            "*>;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/koin/core/definition/BeanDefinition;->secondaryTypes:Ljava/util/List;

    return-object v0
.end method

.method public final get_createdAtStart()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lorg/koin/core/definition/BeanDefinition;->_createdAtStart:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/koin/core/definition/BeanDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 86
    iget-object v1, p0, Lorg/koin/core/definition/BeanDefinition;->primaryType:Lkotlin/reflect/KClass;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 87
    iget-object v1, p0, Lorg/koin/core/definition/BeanDefinition;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setSecondaryTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lorg/koin/core/definition/BeanDefinition;->secondaryTypes:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .line 48
    iget-object v0, p0, Lorg/koin/core/definition/BeanDefinition;->kind:Lorg/koin/core/definition/Kind;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/koin/core/definition/BeanDefinition;->primaryType:Lkotlin/reflect/KClass;

    invoke-static {v3}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    iget-object v2, p0, Lorg/koin/core/definition/BeanDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    const-string v3, ""

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",qualifier:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/koin/core/definition/BeanDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v3

    .line 52
    :cond_1
    iget-object v4, p0, Lorg/koin/core/definition/BeanDefinition;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    sget-object v5, Lorg/koin/core/registry/ScopeRegistry;->Companion:Lorg/koin/core/registry/ScopeRegistry$Companion;

    invoke-virtual {v5}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v3

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ",scope:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/koin/core/definition/BeanDefinition;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 53
    :goto_0
    iget-object v5, p0, Lorg/koin/core/definition/BeanDefinition;->secondaryTypes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    .line 54
    iget-object v6, p0, Lorg/koin/core/definition/BeanDefinition;->secondaryTypes:Ljava/util/List;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lorg/koin/core/definition/BeanDefinition$toString$defOtherTypes$typesAsString$1;->INSTANCE:Lorg/koin/core/definition/BeanDefinition$toString$defOtherTypes$typesAsString$1;

    const/16 v13, 0x1e

    const/4 v14, 0x0

    const-string v7, ","

    invoke-static/range {v6 .. v14}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ",binds:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
