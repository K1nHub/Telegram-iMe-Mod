.class public Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;
.source "SelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field public checked:Z

.field public country:Lorg/telegram/tgnet/TLRPC$TL_help_country;

.field public padHeight:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public text:Ljava/lang/String;

.field public type:I

.field public user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method private constructor <init>(IZ)V
    .locals 0

    .line 229
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    const/4 p1, -0x1

    .line 226
    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->padHeight:I

    return-void
.end method

.method public static asCountry(Lorg/telegram/tgnet/TLRPC$TL_help_country;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;
    .locals 3

    .line 254
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;-><init>(IZ)V

    .line 255
    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->country:Lorg/telegram/tgnet/TLRPC$TL_help_country;

    .line 256
    iput-boolean p1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->checked:Z

    return-object v0
.end method

.method public static asLetter(Ljava/lang/String;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;
    .locals 3

    .line 248
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;-><init>(IZ)V

    .line 249
    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->text:Ljava/lang/String;

    return-object v0
.end method

.method public static asNoUsers()Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;
    .locals 3

    .line 279
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;-><init>(IZ)V

    return-object v0
.end method

.method public static asPad(I)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;
    .locals 3

    .line 233
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;-><init>(IZ)V

    .line 234
    iput p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->padHeight:I

    return-object v0
.end method

.method public static asPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;
    .locals 3

    .line 261
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;-><init>(IZ)V

    .line 262
    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/4 p0, 0x0

    .line 263
    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 264
    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 265
    iput-boolean p1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->checked:Z

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 285
    const-class v2, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 286
    :cond_1
    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    .line 287
    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    iget v3, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 290
    iget v3, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->padHeight:I

    iget v4, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->padHeight:I

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 292
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v4, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->type:I

    iget v4, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->type:I

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->checked:Z

    iget-boolean v4, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->checked:Z

    if-eq v3, v4, :cond_5

    :cond_4
    return v1

    :cond_5
    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    .line 294
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->country:Lorg/telegram/tgnet/TLRPC$TL_help_country;

    iget-object v4, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->country:Lorg/telegram/tgnet/TLRPC$TL_help_country;

    if-ne v3, v4, :cond_6

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->checked:Z

    iget-boolean v4, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->checked:Z

    if-eq v3, v4, :cond_7

    :cond_6
    return v1

    :cond_7
    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    .line 296
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->text:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->text:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0

    :cond_9
    :goto_0
    return v1
.end method
