.class Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;
.source "ChannelBoostLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelBoostLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemInternal"
.end annotation


# instance fields
.field booster:Lorg/telegram/tgnet/TLRPC$TL_booster;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 322
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    .line 323
    iput-object p3, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChannelBoostLayout;ILorg/telegram/tgnet/TLRPC$TL_booster;)V
    .locals 0

    const/4 p1, 0x0

    .line 327
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    .line 328
    iput-object p3, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->booster:Lorg/telegram/tgnet/TLRPC$TL_booster;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V
    .locals 0

    .line 332
    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 338
    const-class v2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 339
    :cond_1
    check-cast p1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    .line 340
    iget-object v2, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->booster:Lorg/telegram/tgnet/TLRPC$TL_booster;

    if-eqz v2, :cond_3

    iget-object p1, p1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->booster:Lorg/telegram/tgnet/TLRPC$TL_booster;

    if-eqz p1, :cond_3

    .line 341
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_booster;->user_id:J

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$TL_booster;->user_id:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 349
    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->title:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->booster:Lorg/telegram/tgnet/TLRPC$TL_booster;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
