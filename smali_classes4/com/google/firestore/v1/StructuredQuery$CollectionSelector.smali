.class public final Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
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
    name = "CollectionSelector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;",
        "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL_DESCENDANTS_FIELD_NUMBER:I = 0x3

.field public static final COLLECTION_ID_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allDescendants_:Z

.field private collectionId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 593
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;-><init>()V

    .line 596
    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    .line 597
    const-class v1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 198
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 199
    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->collectionId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
    .locals 1

    .line 193
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;Ljava/lang/String;)V
    .locals 0

    .line 193
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->setCollectionId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;Z)V
    .locals 0

    .line 193
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->setAllDescendants(Z)V

    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;
    .locals 1

    .line 392
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;

    return-object v0
.end method

.method private setAllDescendants(Z)V
    .locals 0

    .line 301
    iput-boolean p1, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->allDescendants_:Z

    return-void
.end method

.method private setCollectionId(Ljava/lang/String;)V
    .locals 0

    .line 241
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->collectionId_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 543
    sget-object p2, Lcom/google/firestore/v1/StructuredQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 586
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 580
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 565
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 567
    const-class p2, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    monitor-enter p2

    .line 568
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 570
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 573
    sput-object p1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->PARSER:Lcom/google/protobuf/Parser;

    .line 575
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

    .line 562
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "collectionId_"

    aput-object v0, p1, p3

    const-string p3, "allDescendants_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\u0208\u0003\u0007"

    .line 558
    sget-object p3, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 548
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;

    invoke-direct {p1, p3}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;-><init>(Lcom/google/firestore/v1/StructuredQuery$1;)V

    return-object p1

    .line 545
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-direct {p1}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;-><init>()V

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

.method public getAllDescendants()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->allDescendants_:Z

    return v0
.end method

.method public getCollectionId()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->collectionId_:Ljava/lang/String;

    return-object v0
.end method
