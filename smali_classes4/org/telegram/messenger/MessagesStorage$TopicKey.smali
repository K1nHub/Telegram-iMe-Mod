.class public Lorg/telegram/messenger/MessagesStorage$TopicKey;
.super Ljava/lang/Object;
.source "MessagesStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessagesStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopicKey"
.end annotation


# instance fields
.field public dialogId:J

.field public topicId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(JI)Lorg/telegram/messenger/MessagesStorage$TopicKey;
    .locals 1

    .line 16091
    new-instance v0, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesStorage$TopicKey;-><init>()V

    .line 16092
    iput-wide p0, v0, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    .line 16093
    iput p2, v0, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:I

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 16099
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 16100
    :cond_1
    check-cast p1, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    .line 16101
    iget-wide v2, p0, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    iget-wide v4, p1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:I

    iget p1, p1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 16106
    iget-wide v1, p0, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 16111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TopicKey{dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", topicId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
