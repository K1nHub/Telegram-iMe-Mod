.class public final Lcom/google/firestore/v1/ExistenceFilter;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ExistenceFilter.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/ExistenceFilter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/ExistenceFilter;",
        "Lcom/google/firestore/v1/ExistenceFilter$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final COUNT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ExistenceFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final TARGET_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private count_:I

.field private targetId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 344
    new-instance v0, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-direct {v0}, Lcom/google/firestore/v1/ExistenceFilter;-><init>()V

    .line 347
    sput-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    .line 348
    const-class v1, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1

    .line 353
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 294
    sget-object p2, Lcom/google/firestore/v1/ExistenceFilter$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 337
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 331
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 316
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/ExistenceFilter;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 318
    const-class p2, Lcom/google/firestore/v1/ExistenceFilter;

    monitor-enter p2

    .line 319
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/ExistenceFilter;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 321
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 324
    sput-object p1, Lcom/google/firestore/v1/ExistenceFilter;->PARSER:Lcom/google/protobuf/Parser;

    .line 326
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

    .line 313
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "targetId_"

    aput-object v0, p1, p3

    const-string p3, "count_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0002\u0004"

    .line 309
    sget-object p3, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 299
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/ExistenceFilter$Builder;

    invoke-direct {p1, p3}, Lcom/google/firestore/v1/ExistenceFilter$Builder;-><init>(Lcom/google/firestore/v1/ExistenceFilter$1;)V

    return-object p1

    .line 296
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-direct {p1}, Lcom/google/firestore/v1/ExistenceFilter;-><init>()V

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

.method public getCount()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/google/firestore/v1/ExistenceFilter;->count_:I

    return v0
.end method

.method public getTargetId()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/google/firestore/v1/ExistenceFilter;->targetId_:I

    return v0
.end method
