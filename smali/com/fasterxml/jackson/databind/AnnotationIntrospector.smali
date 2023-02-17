.class public abstract Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
.super Ljava/lang/Object;
.source "AnnotationIntrospector.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nopInstance()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .locals 1

    .line 111
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;->instance:Lcom/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;

    return-object v0
.end method


# virtual methods
.method public isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
