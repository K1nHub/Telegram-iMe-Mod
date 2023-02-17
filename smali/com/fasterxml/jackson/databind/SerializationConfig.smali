.class public final Lcom/fasterxml/jackson/databind/SerializationConfig;
.super Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.source "SerializationConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<",
        "Lcom/fasterxml/jackson/databind/SerializationFeature;",
        "Lcom/fasterxml/jackson/databind/SerializationConfig;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_INCLUSION:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

.field protected static final DEFAULT_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/PrettyPrinter;


# instance fields
.field protected final _defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

.field protected final _formatWriteFeatures:I

.field protected final _formatWriteFeaturesToChange:I

.field protected final _generatorFeatures:I

.field protected final _generatorFeaturesToChange:I

.field protected final _serFeatures:I

.field protected final _serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationConfig;->DEFAULT_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 46
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->empty()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationConfig;->DEFAULT_INCLUSION:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;IIIIII)V
    .locals 0

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;I)V

    .line 179
    iput p3, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 180
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 182
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 183
    iput p4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 184
    iput p5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 185
    iput p6, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    .line 186
    iput p7, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V
    .locals 0

    .line 138
    invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V

    .line 139
    const-class p1, Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->collectFeatureDefaults(Ljava/lang/Class;)I

    move-result p1

    iput p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 141
    sget-object p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->DEFAULT_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    const/4 p1, 0x0

    .line 142
    iput p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 143
    iput p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 144
    iput p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    .line 145
    iput p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    .line 146
    sget-object p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->DEFAULT_INCLUSION:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-void
.end method


# virtual methods
.method public getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .locals 1

    .line 844
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_ANNOTATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    invoke-super {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    return-object v0

    .line 847
    :cond_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->nopInstance()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SerializationConfig: flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 11

    .line 334
    iget v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I

    .line 335
    array-length v1, p1

    const/4 v2, 0x0

    move v5, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v0, p1, v2

    .line 336
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/MapperFeature;->getMask()I

    move-result v0

    or-int/2addr v5, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I

    if-ne v5, p1, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v6, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;IIIIII)V

    :goto_1
    return-object p1
.end method

.method public varargs without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 11

    .line 351
    iget v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I

    .line 352
    array-length v1, p1

    const/4 v2, 0x0

    move v5, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v0, p1, v2

    .line 353
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/MapperFeature;->getMask()I

    move-result v0

    not-int v0, v0

    and-int/2addr v5, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I

    if-ne v5, p1, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v6, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;IIIIII)V

    :goto_1
    return-object p1
.end method
