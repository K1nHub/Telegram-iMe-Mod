.class public final Lcom/google/firestore/v1/MapValue;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MapValue.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/MapValue$Builder;,
        Lcom/google/firestore/v1/MapValue$FieldsDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/MapValue;",
        "Lcom/google/firestore/v1/MapValue$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/MapValue;

.field public static final FIELDS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/MapValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fields_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 462
    new-instance v0, Lcom/google/firestore/v1/MapValue;

    invoke-direct {v0}, Lcom/google/firestore/v1/MapValue;-><init>()V

    .line 465
    sput-object v0, Lcom/google/firestore/v1/MapValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/MapValue;

    .line 466
    const-class v1, Lcom/google/firestore/v1/MapValue;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 33
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/MapValue;->fields_:Lcom/google/protobuf/MapFieldLite;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/MapValue;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/MapValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/MapValue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/MapValue;)Ljava/util/Map;
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/MapValue;->getMutableFieldsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/MapValue;
    .locals 1

    .line 471
    sget-object v0, Lcom/google/firestore/v1/MapValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/MapValue;

    return-object v0
.end method

.method private getMutableFieldsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Lcom/google/firestore/v1/MapValue;->internalGetMutableFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetFields()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/google/firestore/v1/MapValue;->fields_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetMutableFields()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/google/firestore/v1/MapValue;->fields_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/google/firestore/v1/MapValue;->fields_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/MapValue;->fields_:Lcom/google/protobuf/MapFieldLite;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/MapValue;->fields_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/MapValue$Builder;
    .locals 1

    .line 228
    sget-object v0, Lcom/google/firestore/v1/MapValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/MapValue;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/MapValue$Builder;

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 413
    sget-object p2, Lcom/google/firestore/v1/MapValue$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 455
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 449
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 434
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/MapValue;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 436
    const-class p2, Lcom/google/firestore/v1/MapValue;

    monitor-enter p2

    .line 437
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/MapValue;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 439
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/MapValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/MapValue;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 442
    sput-object p1, Lcom/google/firestore/v1/MapValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 444
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 431
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/MapValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/MapValue;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "fields_"

    aput-object v0, p1, p3

    .line 421
    sget-object p3, Lcom/google/firestore/v1/MapValue$FieldsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012"

    .line 427
    sget-object p3, Lcom/google/firestore/v1/MapValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/MapValue;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 418
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/MapValue$Builder;

    invoke-direct {p1, p3}, Lcom/google/firestore/v1/MapValue$Builder;-><init>(Lcom/google/firestore/v1/MapValue$1;)V

    return-object p1

    .line 415
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/MapValue;

    invoke-direct {p1}, Lcom/google/firestore/v1/MapValue;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFieldsCount()I
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/google/firestore/v1/MapValue;->internalGetFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getFieldsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lcom/google/firestore/v1/MapValue;->internalGetFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 90
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFieldsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 2

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    invoke-direct {p0}, Lcom/google/firestore/v1/MapValue;->internalGetFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 112
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/google/firestore/v1/Value;

    :cond_0
    return-object p2
.end method

.method public getFieldsOrThrow(Ljava/lang/String;)Lcom/google/firestore/v1/Value;
    .locals 2

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    invoke-direct {p0}, Lcom/google/firestore/v1/MapValue;->internalGetFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 132
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    return-object p1

    .line 133
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
