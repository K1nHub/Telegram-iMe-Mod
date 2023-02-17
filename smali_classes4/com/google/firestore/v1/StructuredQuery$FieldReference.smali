.class public final Lcom/google/firestore/v1/StructuredQuery$FieldReference;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldReference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/StructuredQuery$FieldReference;",
        "Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

.field public static final FIELD_PATH_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery$FieldReference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fieldPath_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4608
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldReference;-><init>()V

    .line 4611
    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 4612
    const-class v1, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4355
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 4356
    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->fieldPath_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5800()Lcom/google/firestore/v1/StructuredQuery$FieldReference;
    .locals 1

    .line 4350
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/google/firestore/v1/StructuredQuery$FieldReference;Ljava/lang/String;)V
    .locals 0

    .line 4350
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->setFieldPath(Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$FieldReference;
    .locals 1

    .line 4617
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;
    .locals 1

    .line 4480
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;

    return-object v0
.end method

.method private setFieldPath(Ljava/lang/String;)V
    .locals 0

    .line 4383
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4385
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->fieldPath_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4560
    sget-object p2, Lcom/google/firestore/v1/StructuredQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4601
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4595
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4580
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4582
    const-class p2, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    monitor-enter p2

    .line 4583
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4585
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4588
    sput-object p1, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->PARSER:Lcom/google/protobuf/Parser;

    .line 4590
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

    .line 4577
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "fieldPath_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002\u0208"

    .line 4573
    sget-object p3, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4565
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;

    invoke-direct {p1, p3}, Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;-><init>(Lcom/google/firestore/v1/StructuredQuery$1;)V

    return-object p1

    .line 4562
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    invoke-direct {p1}, Lcom/google/firestore/v1/StructuredQuery$FieldReference;-><init>()V

    return-object p1

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

.method public getFieldPath()Ljava/lang/String;
    .locals 1

    .line 4366
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->fieldPath_:Ljava/lang/String;

    return-object v0
.end method
