.class public final Lcom/iMe/model/twitter/TwitterUserItem;
.super Lcom/iMe/model/common/NoChildNode;
.source "TwitterUserItem.kt"


# instance fields
.field private final avatarUrl:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final nickname:Ljava/lang/String;

.field private final user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nickname"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/iMe/model/common/NoChildNode;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/iMe/model/twitter/TwitterUserItem;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 8
    iput-object p2, p0, Lcom/iMe/model/twitter/TwitterUserItem;->name:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/iMe/model/twitter/TwitterUserItem;->nickname:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/iMe/model/twitter/TwitterUserItem;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/twitter/TwitterUserItem;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/model/twitter/TwitterUserItem;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/iMe/model/twitter/TwitterUserItem;->user:Lorg/telegram/tgnet/TLRPC$User;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/iMe/model/twitter/TwitterUserItem;->name:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/iMe/model/twitter/TwitterUserItem;->nickname:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/iMe/model/twitter/TwitterUserItem;->avatarUrl:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/model/twitter/TwitterUserItem;->copy(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/model/twitter/TwitterUserItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/twitter/TwitterUserItem;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/twitter/TwitterUserItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/twitter/TwitterUserItem;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/twitter/TwitterUserItem;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/model/twitter/TwitterUserItem;
    .locals 1

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nickname"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/twitter/TwitterUserItem;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iMe/model/twitter/TwitterUserItem;-><init>(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/twitter/TwitterUserItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/twitter/TwitterUserItem;

    iget-object v1, p0, Lcom/iMe/model/twitter/TwitterUserItem;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, p1, Lcom/iMe/model/twitter/TwitterUserItem;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/twitter/TwitterUserItem;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/twitter/TwitterUserItem;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/model/twitter/TwitterUserItem;->nickname:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/twitter/TwitterUserItem;->nickname:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/model/twitter/TwitterUserItem;->avatarUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/model/twitter/TwitterUserItem;->avatarUrl:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/model/twitter/TwitterUserItem;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/model/twitter/TwitterUserItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/model/twitter/TwitterUserItem;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/model/twitter/TwitterUserItem;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/model/twitter/TwitterUserItem;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/twitter/TwitterUserItem;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/twitter/TwitterUserItem;->nickname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/twitter/TwitterUserItem;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TwitterUserItem(user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/twitter/TwitterUserItem;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/twitter/TwitterUserItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/twitter/TwitterUserItem;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", avatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/twitter/TwitterUserItem;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
