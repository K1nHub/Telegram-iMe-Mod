.class public abstract Lcom/fasterxml/jackson/databind/ext/Java7Support;
.super Ljava/lang/Object;
.source "Java7Support.java"


# static fields
.field private static final IMPL:Lcom/fasterxml/jackson/databind/ext/Java7Support;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    :try_start_0
    const-class v0, Lcom/fasterxml/jackson/databind/ext/Java7SupportImpl;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ext/Java7Support;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 27
    :catchall_0
    const-class v0, Lcom/fasterxml/jackson/databind/ext/Java7Support;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Unable to load JDK7 types (annotations, java.nio.file.Path): no Java7 support added"

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 30
    :goto_0
    sput-object v0, Lcom/fasterxml/jackson/databind/ext/Java7Support;->IMPL:Lcom/fasterxml/jackson/databind/ext/Java7Support;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/fasterxml/jackson/databind/ext/Java7Support;
    .locals 1

    .line 34
    sget-object v0, Lcom/fasterxml/jackson/databind/ext/Java7Support;->IMPL:Lcom/fasterxml/jackson/databind/ext/Java7Support;

    return-object v0
.end method
