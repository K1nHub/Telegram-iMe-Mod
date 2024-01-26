.class public final Lkotlinx/serialization/internal/EnumsKt;
.super Ljava/lang/Object;
.source "Enums.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnums.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Enums.kt\nkotlinx/serialization/internal/EnumsKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,151:1\n13644#2,2:152\n13579#2,2:154\n13646#2:156\n13579#2,2:157\n13644#2,2:159\n13579#2,2:161\n13646#2:163\n*S KotlinDebug\n*F\n+ 1 Enums.kt\nkotlinx/serialization/internal/EnumsKt\n*L\n70#1:152,2\n73#1:154,2\n70#1:156\n91#1:157,2\n94#1:159,2\n97#1:161,2\n94#1:163\n*E\n"
.end annotation


# direct methods
.method public static final createAnnotatedEnumSerializer(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/KSerializer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "[TT;[",
            "Ljava/lang/String;",
            "[[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "serialName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "names"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entryAnnotations"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v0, Lkotlinx/serialization/internal/EnumDescriptor;

    array-length v1, p1

    invoke-direct {v0, p0, v1}, Lkotlinx/serialization/internal/EnumDescriptor;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    .line 13579
    array-length v2, p4

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p4, v3

    .line 92
    invoke-virtual {v0, v4}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->pushClassAnnotation(Ljava/lang/annotation/Annotation;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13645
    :cond_0
    array-length p4, p1

    move v2, v1

    move v3, v2

    :goto_1
    if-ge v2, p4, :cond_3

    aget-object v4, p1, v2

    add-int/lit8 v5, v3, 0x1

    .line 95
    invoke-static {p2, v3}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    :cond_1
    const/4 v4, 0x2

    const/4 v7, 0x0

    .line 96
    invoke-static {v0, v6, v1, v4, v7}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement$default(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 97
    invoke-static {p3, v3}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/annotation/Annotation;

    if-eqz v3, :cond_2

    .line 13579
    array-length v4, v3

    move v6, v1

    :goto_2
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 98
    invoke-virtual {v0, v7}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->pushAnnotation(Ljava/lang/annotation/Annotation;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_1

    .line 102
    :cond_3
    new-instance p2, Lkotlinx/serialization/internal/EnumSerializer;

    invoke-direct {p2, p0, p1, v0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-object p2
.end method
