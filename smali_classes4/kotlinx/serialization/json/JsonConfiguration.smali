.class public final Lkotlinx/serialization/json/JsonConfiguration;
.super Ljava/lang/Object;
.source "JsonConfiguration.kt"


# instance fields
.field private final allowSpecialFloatingPointValues:Z

.field private final allowStructuredMapKeys:Z

.field private final classDiscriminator:Ljava/lang/String;

.field private final coerceInputValues:Z

.field private final encodeDefaults:Z

.field private final explicitNulls:Z

.field private final ignoreUnknownKeys:Z

.field private final isLenient:Z

.field private final namingStrategy:Lkotlinx/serialization/json/JsonNamingStrategy;

.field private final prettyPrint:Z

.field private final prettyPrintIndent:Ljava/lang/String;

.field private final useAlternativeNames:Z

.field private final useArrayPolymorphism:Z


# direct methods
.method public constructor <init>(ZZZZZZLjava/lang/String;ZZLjava/lang/String;ZZLkotlinx/serialization/json/JsonNamingStrategy;)V
    .locals 1

    const-string/jumbo v0, "prettyPrintIndent"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classDiscriminator"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonConfiguration;->encodeDefaults:Z

    .line 19
    iput-boolean p2, p0, Lkotlinx/serialization/json/JsonConfiguration;->ignoreUnknownKeys:Z

    .line 20
    iput-boolean p3, p0, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    .line 21
    iput-boolean p4, p0, Lkotlinx/serialization/json/JsonConfiguration;->allowStructuredMapKeys:Z

    .line 22
    iput-boolean p5, p0, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrint:Z

    .line 23
    iput-boolean p6, p0, Lkotlinx/serialization/json/JsonConfiguration;->explicitNulls:Z

    .line 25
    iput-object p7, p0, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrintIndent:Ljava/lang/String;

    .line 27
    iput-boolean p8, p0, Lkotlinx/serialization/json/JsonConfiguration;->coerceInputValues:Z

    .line 28
    iput-boolean p9, p0, Lkotlinx/serialization/json/JsonConfiguration;->useArrayPolymorphism:Z

    .line 29
    iput-object p10, p0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/String;

    .line 30
    iput-boolean p11, p0, Lkotlinx/serialization/json/JsonConfiguration;->allowSpecialFloatingPointValues:Z

    .line 31
    iput-boolean p12, p0, Lkotlinx/serialization/json/JsonConfiguration;->useAlternativeNames:Z

    .line 32
    iput-object p13, p0, Lkotlinx/serialization/json/JsonConfiguration;->namingStrategy:Lkotlinx/serialization/json/JsonNamingStrategy;

    return-void
.end method

.method public synthetic constructor <init>(ZZZZZZLjava/lang/String;ZZLjava/lang/String;ZZLkotlinx/serialization/json/JsonNamingStrategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move v6, v2

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    const/4 v8, 0x1

    if-eqz v7, :cond_5

    move v7, v8

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const-string v9, "    "

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    move v10, v2

    goto :goto_7

    :cond_7
    move/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    move v11, v2

    goto :goto_8

    :cond_8
    move/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    const-string/jumbo v12, "type"

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    goto :goto_a

    :cond_a
    move/from16 v2, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    goto :goto_b

    :cond_b
    move/from16 v8, p12

    :goto_b
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v0, p13

    :goto_c
    move-object p1, p0

    move/from16 p2, v1

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move-object/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v2

    move/from16 p13, v8

    move-object/from16 p14, v0

    .line 17
    invoke-direct/range {p1 .. p14}, Lkotlinx/serialization/json/JsonConfiguration;-><init>(ZZZZZZLjava/lang/String;ZZLjava/lang/String;ZZLkotlinx/serialization/json/JsonNamingStrategy;)V

    return-void
.end method


# virtual methods
.method public final getAllowSpecialFloatingPointValues()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->allowSpecialFloatingPointValues:Z

    return v0
.end method

.method public final getAllowStructuredMapKeys()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->allowStructuredMapKeys:Z

    return v0
.end method

.method public final getClassDiscriminator()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/String;

    return-object v0
.end method

.method public final getCoerceInputValues()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->coerceInputValues:Z

    return v0
.end method

.method public final getEncodeDefaults()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->encodeDefaults:Z

    return v0
.end method

.method public final getExplicitNulls()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->explicitNulls:Z

    return v0
.end method

.method public final getIgnoreUnknownKeys()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->ignoreUnknownKeys:Z

    return v0
.end method

.method public final getNamingStrategy()Lkotlinx/serialization/json/JsonNamingStrategy;
    .locals 1

    .line 33
    iget-object v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->namingStrategy:Lkotlinx/serialization/json/JsonNamingStrategy;

    return-object v0
.end method

.method public final getPrettyPrint()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrint:Z

    return v0
.end method

.method public final getPrettyPrintIndent()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrintIndent:Ljava/lang/String;

    return-object v0
.end method

.method public final getUseAlternativeNames()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->useAlternativeNames:Z

    return v0
.end method

.method public final getUseArrayPolymorphism()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->useArrayPolymorphism:Z

    return v0
.end method

.method public final isLenient()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonConfiguration(encodeDefaults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->encodeDefaults:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ignoreUnknownKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->ignoreUnknownKeys:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLenient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", allowStructuredMapKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->allowStructuredMapKeys:Z

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", prettyPrint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrint:Z

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", explicitNulls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->explicitNulls:Z

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", prettyPrintIndent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrintIndent:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', coerceInputValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->coerceInputValues:Z

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useArrayPolymorphism="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->useArrayPolymorphism:Z

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", classDiscriminator=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', allowSpecialFloatingPointValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->allowSpecialFloatingPointValues:Z

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useAlternativeNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->useAlternativeNames:Z

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", namingStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->namingStrategy:Lkotlinx/serialization/json/JsonNamingStrategy;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
