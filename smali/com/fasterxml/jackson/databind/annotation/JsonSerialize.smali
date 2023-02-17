.class public interface abstract annotation Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
.super Ljava/lang/Object;
.source "JsonSerialize.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        as = Ljava/lang/Void;
        contentAs = Ljava/lang/Void;
        contentConverter = Lcom/fasterxml/jackson/databind/util/Converter$None;
        contentUsing = Lcom/fasterxml/jackson/databind/JsonSerializer$None;
        converter = Lcom/fasterxml/jackson/databind/util/Converter$None;
        include = .enum Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->DEFAULT_INCLUSION:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
        keyAs = Ljava/lang/Void;
        keyUsing = Lcom/fasterxml/jackson/databind/JsonSerializer$None;
        nullsUsing = Lcom/fasterxml/jackson/databind/JsonSerializer$None;
        typing = .enum Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->DEFAULT_TYPING:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
        using = Lcom/fasterxml/jackson/databind/JsonSerializer$None;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;,
        Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
    }
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
