.class public Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;
.super Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
.source "JacksonAnnotationIntrospector.java"


# instance fields
.field protected transient _annotationsInside:Lcom/fasterxml/jackson/databind/util/LRUMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/LRUMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonView;

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonFormat;

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonRawValue;

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonBackReference;

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonManagedReference;

    .line 48
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonView;

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonFormat;

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonBackReference;

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonManagedReference;

    .line 65
    :try_start_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/ext/Java7Support;->instance()Lcom/fasterxml/jackson/databind/ext/Java7Support;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 103
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;-><init>()V

    .line 79
    new-instance v0, Lcom/fasterxml/jackson/databind/util/LRUMap;

    const/16 v1, 0x30

    invoke-direct {v0, v1, v1}, Lcom/fasterxml/jackson/databind/util/LRUMap;-><init>(II)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_annotationsInside:Lcom/fasterxml/jackson/databind/util/LRUMap;

    return-void
.end method


# virtual methods
.method public isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z
    .locals 2

    .line 155
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p1

    .line 156
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_annotationsInside:Lcom/fasterxml/jackson/databind/util/LRUMap;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 158
    const-class v0, Lcom/fasterxml/jackson/annotation/JacksonAnnotationsInside;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_annotationsInside:Lcom/fasterxml/jackson/databind/util/LRUMap;

    invoke-virtual {v1, p1, v0}, Lcom/fasterxml/jackson/databind/util/LRUMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
