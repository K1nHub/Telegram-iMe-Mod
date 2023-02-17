.class public final Lcom/fasterxml/jackson/databind/util/ClassUtil;
.super Ljava/lang/Object;
.source "ClassUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;
    }
.end annotation


# static fields
.field private static final CLS_OBJECT:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final EMPTY_ITERATOR:Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator<",
            "*>;"
        }
    .end annotation
.end field

.field private static final NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    const-class v0, Ljava/lang/Object;

    sput-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil;->CLS_OBJECT:Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    .line 17
    sput-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    .line 36
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;-><init>(Lcom/fasterxml/jackson/databind/util/ClassUtil$1;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil;->EMPTY_ITERATOR:Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;

    return-void
.end method

.method public static emptyIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil;->EMPTY_ITERATOR:Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;

    return-object v0
.end method

.method public static findClassAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/annotation/Annotation;"
        }
    .end annotation

    .line 951
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isObjectOrPrimitive(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    sget-object p0, Lcom/fasterxml/jackson/databind/util/ClassUtil;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    return-object p0

    .line 954
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method public static findSuperClasses(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-eqz p0, :cond_2

    if-eq p0, p1, :cond_2

    if-eqz p2, :cond_0

    .line 108
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_2

    if-ne p0, p1, :cond_1

    goto :goto_1

    .line 114
    :cond_1
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static isObjectOrPrimitive(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 906
    sget-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil;->CLS_OBJECT:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
