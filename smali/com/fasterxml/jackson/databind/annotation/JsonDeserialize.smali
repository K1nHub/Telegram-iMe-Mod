.class public interface abstract annotation Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
.super Ljava/lang/Object;
.source "JsonDeserialize.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        as = Ljava/lang/Void;
        builder = Ljava/lang/Void;
        contentAs = Ljava/lang/Void;
        contentConverter = Lcom/fasterxml/jackson/databind/util/Converter$None;
        contentUsing = Lcom/fasterxml/jackson/databind/JsonDeserializer$None;
        converter = Lcom/fasterxml/jackson/databind/util/Converter$None;
        keyAs = Ljava/lang/Void;
        keyUsing = Lcom/fasterxml/jackson/databind/KeyDeserializer$None;
        using = Lcom/fasterxml/jackson/databind/JsonDeserializer$None;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation
