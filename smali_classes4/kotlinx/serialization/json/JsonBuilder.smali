.class public final Lkotlinx/serialization/json/JsonBuilder;
.super Ljava/lang/Object;
.source "Json.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Json.kt\nkotlinx/serialization/json/JsonBuilder\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,386:1\n1064#2,2:387\n*S KotlinDebug\n*F\n+ 1 Json.kt\nkotlinx/serialization/json/JsonBuilder\n*L\n349#1:387,2\n*E\n"
.end annotation


# instance fields
.field private allowSpecialFloatingPointValues:Z

.field private allowStructuredMapKeys:Z

.field private classDiscriminator:Ljava/lang/String;

.field private coerceInputValues:Z

.field private encodeDefaults:Z

.field private explicitNulls:Z

.field private ignoreUnknownKeys:Z

.field private isLenient:Z

.field private namingStrategy:Lkotlinx/serialization/json/JsonNamingStrategy;

.field private prettyPrint:Z

.field private prettyPrintIndent:Ljava/lang/String;

.field private serializersModule:Lkotlinx/serialization/modules/SerializersModule;

.field private useAlternativeNames:Z

.field private useArrayPolymorphism:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getEncodeDefaults()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->encodeDefaults:Z

    .line 236
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getExplicitNulls()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->explicitNulls:Z

    .line 243
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getIgnoreUnknownKeys()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->ignoreUnknownKeys:Z

    .line 255
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->isLenient()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->isLenient:Z

    .line 262
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getAllowStructuredMapKeys()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->allowStructuredMapKeys:Z

    .line 268
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getPrettyPrint()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrint:Z

    .line 277
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getPrettyPrintIndent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getCoerceInputValues()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->coerceInputValues:Z

    .line 293
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getUseArrayPolymorphism()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->useArrayPolymorphism:Z

    .line 299
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getClassDiscriminator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->classDiscriminator:Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getAllowSpecialFloatingPointValues()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->allowSpecialFloatingPointValues:Z

    .line 316
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getUseAlternativeNames()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->useAlternativeNames:Z

    .line 326
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getNamingStrategy()Lkotlinx/serialization/json/JsonNamingStrategy;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->namingStrategy:Lkotlinx/serialization/json/JsonNamingStrategy;

    .line 335
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/JsonBuilder;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    return-void
.end method


# virtual methods
.method public final build$kotlinx_serialization_json()Lkotlinx/serialization/json/JsonConfiguration;
    .locals 17

    move-object/from16 v0, p0

    .line 339
    iget-boolean v1, v0, Lkotlinx/serialization/json/JsonBuilder;->useArrayPolymorphism:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lkotlinx/serialization/json/JsonBuilder;->classDiscriminator:Ljava/lang/String;

    const-string/jumbo v2, "type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Class discriminator should not be specified when array polymorphism is specified"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 343
    :cond_1
    :goto_0
    iget-boolean v1, v0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrint:Z

    const-string v2, "    "

    if-nez v1, :cond_3

    .line 344
    iget-object v1, v0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_4

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Indent should not be specified when default printing mode is used"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 347
    :cond_3
    iget-object v1, v0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 349
    iget-object v1, v0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    .line 1064
    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_7

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v6, 0x20

    if-eq v4, v6, :cond_5

    const/16 v6, 0x9

    if-eq v4, v6, :cond_5

    const/16 v6, 0xd

    if-eq v4, v6, :cond_5

    const/16 v6, 0xa

    if-ne v4, v6, :cond_4

    goto :goto_2

    :cond_4
    move v5, v2

    :cond_5
    :goto_2
    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    move v2, v5

    :goto_3
    if-eqz v2, :cond_8

    goto :goto_4

    .line 351
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 355
    :cond_9
    :goto_4
    new-instance v1, Lkotlinx/serialization/json/JsonConfiguration;

    .line 356
    iget-boolean v4, v0, Lkotlinx/serialization/json/JsonBuilder;->encodeDefaults:Z

    iget-boolean v5, v0, Lkotlinx/serialization/json/JsonBuilder;->ignoreUnknownKeys:Z

    iget-boolean v6, v0, Lkotlinx/serialization/json/JsonBuilder;->isLenient:Z

    .line 357
    iget-boolean v7, v0, Lkotlinx/serialization/json/JsonBuilder;->allowStructuredMapKeys:Z

    iget-boolean v8, v0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrint:Z

    iget-boolean v9, v0, Lkotlinx/serialization/json/JsonBuilder;->explicitNulls:Z

    iget-object v10, v0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    .line 358
    iget-boolean v11, v0, Lkotlinx/serialization/json/JsonBuilder;->coerceInputValues:Z

    iget-boolean v12, v0, Lkotlinx/serialization/json/JsonBuilder;->useArrayPolymorphism:Z

    .line 359
    iget-object v13, v0, Lkotlinx/serialization/json/JsonBuilder;->classDiscriminator:Ljava/lang/String;

    iget-boolean v14, v0, Lkotlinx/serialization/json/JsonBuilder;->allowSpecialFloatingPointValues:Z

    iget-boolean v15, v0, Lkotlinx/serialization/json/JsonBuilder;->useAlternativeNames:Z

    .line 360
    iget-object v2, v0, Lkotlinx/serialization/json/JsonBuilder;->namingStrategy:Lkotlinx/serialization/json/JsonNamingStrategy;

    move-object v3, v1

    move-object/from16 v16, v2

    .line 355
    invoke-direct/range {v3 .. v16}, Lkotlinx/serialization/json/JsonConfiguration;-><init>(ZZZZZZLjava/lang/String;ZZLjava/lang/String;ZZLkotlinx/serialization/json/JsonNamingStrategy;)V

    return-object v1
.end method

.method public final getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;
    .locals 1

    .line 335
    iget-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    return-object v0
.end method

.method public final setIgnoreUnknownKeys(Z)V
    .locals 0

    .line 243
    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonBuilder;->ignoreUnknownKeys:Z

    return-void
.end method
