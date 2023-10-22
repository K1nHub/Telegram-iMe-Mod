.class public final Lkotlinx/serialization/modules/SerializersModuleCollector$DefaultImpls;
.super Ljava/lang/Object;
.source "SerializersModuleCollector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/modules/SerializersModuleCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static contextual(Lkotlinx/serialization/modules/SerializersModuleCollector;Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/modules/SerializersModuleCollector;",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "kClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lkotlinx/serialization/modules/SerializersModuleCollector$contextual$1;

    invoke-direct {v0, p2}, Lkotlinx/serialization/modules/SerializersModuleCollector$contextual$1;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-interface {p0, p1, v0}, Lkotlinx/serialization/modules/SerializersModuleCollector;->contextual(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
