.class public Lorg/telegram/messenger/MessagesController$PeerColors;
.super Ljava/lang/Object;
.source "MessagesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessagesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeerColors"
.end annotation


# instance fields
.field public final colors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessagesController$PeerColor;",
            ">;"
        }
    .end annotation
.end field

.field private final colorsById:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/messenger/MessagesController$PeerColor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3848
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    .line 3849
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsById:Landroidx/collection/LongSparseArray;

    return-void
.end method

.method private static color(Ljava/lang/String;)I
    .locals 2

    .line 3884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ff"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lorg/telegram/messenger/MessagesController$PeerColors$$ExternalSyntheticBackport0;->m(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static fromJSON(Lorg/telegram/tgnet/TLRPC$TL_jsonObject;Lorg/telegram/tgnet/TLRPC$TL_jsonObject;Lorg/telegram/tgnet/TLRPC$TL_jsonArray;)Lorg/telegram/messenger/MessagesController$PeerColors;
    .locals 9

    .line 3893
    :try_start_0
    new-instance v0, Lorg/telegram/messenger/MessagesController$PeerColors;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesController$PeerColors;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p0, :cond_5

    .line 3895
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;->value:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;

    .line 3896
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->key:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3897
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->value:Lorg/telegram/tgnet/TLRPC$JSONValue;

    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;

    if-nez v6, :cond_0

    goto :goto_0

    .line 3899
    :cond_0
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;->value:Ljava/util/ArrayList;

    .line 3900
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 3903
    :cond_1
    new-instance v6, Lorg/telegram/messenger/MessagesController$PeerColor;

    invoke-direct {v6}, Lorg/telegram/messenger/MessagesController$PeerColor;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3905
    :try_start_1
    iput v5, v6, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    .line 3906
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_jsonString;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_jsonString;->value:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController$PeerColors;->color(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/MessagesController$PeerColor;->access$102(Lorg/telegram/messenger/MessagesController$PeerColor;I)I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/MessagesController$PeerColor;->access$002(Lorg/telegram/messenger/MessagesController$PeerColor;I)I

    .line 3907
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v3, :cond_2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_jsonString;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_jsonString;->value:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController$PeerColors;->color(Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    :cond_2
    invoke-static {v6}, Lorg/telegram/messenger/MessagesController$PeerColor;->access$000(Lorg/telegram/messenger/MessagesController$PeerColor;)I

    move-result v7

    :goto_1
    invoke-static {v6, v7}, Lorg/telegram/messenger/MessagesController$PeerColor;->access$302(Lorg/telegram/messenger/MessagesController$PeerColor;I)I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/MessagesController$PeerColor;->access$202(Lorg/telegram/messenger/MessagesController$PeerColor;I)I

    .line 3908
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v2, :cond_3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_jsonString;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_jsonString;->value:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController$PeerColors;->color(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :cond_3
    invoke-static {v6}, Lorg/telegram/messenger/MessagesController$PeerColor;->access$000(Lorg/telegram/messenger/MessagesController$PeerColor;)I

    move-result v4

    :goto_2
    invoke-static {v6, v4}, Lorg/telegram/messenger/MessagesController$PeerColor;->access$502(Lorg/telegram/messenger/MessagesController$PeerColor;I)I

    move-result v4

    invoke-static {v6, v4}, Lorg/telegram/messenger/MessagesController$PeerColor;->access$402(Lorg/telegram/messenger/MessagesController$PeerColor;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3913
    :try_start_2
    iget v4, v6, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    const/4 v7, 0x7

    if-ge v4, v7, :cond_4

    goto/16 :goto_0

    .line 3914
    :cond_4
    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsById:Landroidx/collection/LongSparseArray;

    int-to-long v7, v5

    invoke-virtual {v4, v7, v8, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception v4

    .line 3910
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    if-eqz p1, :cond_b

    .line 3918
    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;->value:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;

    .line 3919
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->key:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3920
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->value:Lorg/telegram/tgnet/TLRPC$JSONValue;

    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;

    if-nez v5, :cond_6

    goto :goto_3

    .line 3922
    :cond_6
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;->value:Ljava/util/ArrayList;

    .line 3923
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    .line 3926
    :cond_7
    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsById:Landroidx/collection/LongSparseArray;

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessagesController$PeerColor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v5, :cond_8

    goto :goto_3

    .line 3929
    :cond_8
    :try_start_3
    iput v4, v5, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    .line 3930
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_jsonString;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_jsonString;->value:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController$PeerColors;->color(Ljava/lang/String;)I

    move-result v4

    invoke-static {v5, v4}, Lorg/telegram/messenger/MessagesController$PeerColor;->access$102(Lorg/telegram/messenger/MessagesController$PeerColor;I)I

    .line 3931
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_9

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_jsonString;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_jsonString;->value:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController$PeerColors;->color(Ljava/lang/String;)I

    move-result v4

    goto :goto_4

    :cond_9
    invoke-static {v5}, Lorg/telegram/messenger/MessagesController$PeerColor;->access$100(Lorg/telegram/messenger/MessagesController$PeerColor;)I

    move-result v4

    :goto_4
    invoke-static {v5, v4}, Lorg/telegram/messenger/MessagesController$PeerColor;->access$302(Lorg/telegram/messenger/MessagesController$PeerColor;I)I

    .line 3932
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v2, :cond_a

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_jsonString;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_jsonString;->value:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController$PeerColors;->color(Ljava/lang/String;)I

    move-result p1

    goto :goto_5

    :cond_a
    invoke-static {v5}, Lorg/telegram/messenger/MessagesController$PeerColor;->access$100(Lorg/telegram/messenger/MessagesController$PeerColor;)I

    move-result p1

    :goto_5
    invoke-static {v5, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->access$502(Lorg/telegram/messenger/MessagesController$PeerColor;I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 3937
    :try_start_4
    iget-object p1, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsById:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, v6, v7, v5}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    :catch_1
    move-exception p1

    .line 3934
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 3940
    :cond_b
    iget-object p0, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    if-eqz p2, :cond_e

    .line 3942
    iget-object p0, p2, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;->value:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$JSONValue;

    .line 3943
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;

    if-nez p2, :cond_c

    goto :goto_6

    .line 3945
    :cond_c
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;->value:D

    double-to-int p1, p1

    .line 3946
    iget-object p2, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsById:Landroidx/collection/LongSparseArray;

    int-to-long v1, p1

    invoke-virtual {p2, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessagesController$PeerColor;

    if-nez p1, :cond_d

    goto :goto_6

    .line 3948
    :cond_d
    iget-object p2, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :cond_e
    return-object v0

    :catch_2
    move-exception p0

    .line 3953
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/telegram/messenger/MessagesController$PeerColors;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3871
    :cond_0
    new-instance v0, Lorg/telegram/messenger/MessagesController$PeerColors;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesController$PeerColors;-><init>()V

    const-string v1, ";"

    .line 3872
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 3873
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 3874
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController$PeerColor;->fromString(Ljava/lang/String;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 3877
    :cond_1
    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3878
    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsById:Landroidx/collection/LongSparseArray;

    iget v4, v2, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;
    .locals 3

    .line 3855
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsById:Landroidx/collection/LongSparseArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessagesController$PeerColor;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 3860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 3861
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3862
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesController$PeerColor;

    if-lez v1, :cond_0

    const-string v3, ";"

    .line 3863
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3864
    :cond_0
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController$PeerColor;->appendString(Ljava/lang/StringBuilder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3866
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
