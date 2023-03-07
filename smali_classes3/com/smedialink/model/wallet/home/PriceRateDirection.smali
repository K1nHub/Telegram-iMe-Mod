.class public final enum Lcom/smedialink/model/wallet/home/PriceRateDirection;
.super Ljava/lang/Enum;
.source "PriceRateDirection.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/model/wallet/home/PriceRateDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/model/wallet/home/PriceRateDirection;

.field public static final enum DOWN:Lcom/smedialink/model/wallet/home/PriceRateDirection;

.field public static final enum NOT_CHANGED:Lcom/smedialink/model/wallet/home/PriceRateDirection;

.field public static final enum UP:Lcom/smedialink/model/wallet/home/PriceRateDirection;


# instance fields
.field private final color:Ljava/lang/String;

.field private final icon:I


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/model/wallet/home/PriceRateDirection;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smedialink/model/wallet/home/PriceRateDirection;

    sget-object v1, Lcom/smedialink/model/wallet/home/PriceRateDirection;->UP:Lcom/smedialink/model/wallet/home/PriceRateDirection;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/home/PriceRateDirection;->DOWN:Lcom/smedialink/model/wallet/home/PriceRateDirection;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/home/PriceRateDirection;->NOT_CHANGED:Lcom/smedialink/model/wallet/home/PriceRateDirection;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcom/smedialink/model/wallet/home/PriceRateDirection;

    sget v1, Lorg/telegram/messenger/R$drawable;->chat_calls_outgoing:I

    const-string v2, "UP"

    const/4 v3, 0x0

    const-string v4, "chat_inDownCall"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/smedialink/model/wallet/home/PriceRateDirection;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/smedialink/model/wallet/home/PriceRateDirection;->UP:Lcom/smedialink/model/wallet/home/PriceRateDirection;

    .line 12
    new-instance v0, Lcom/smedialink/model/wallet/home/PriceRateDirection;

    sget v1, Lorg/telegram/messenger/R$drawable;->chat_calls_incoming:I

    const-string v2, "DOWN"

    const/4 v3, 0x1

    const-string v4, "chat_inUpCall"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/smedialink/model/wallet/home/PriceRateDirection;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/smedialink/model/wallet/home/PriceRateDirection;->DOWN:Lcom/smedialink/model/wallet/home/PriceRateDirection;

    .line 13
    new-instance v0, Lcom/smedialink/model/wallet/home/PriceRateDirection;

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_rate_not_changed_14:I

    const-string v2, "NOT_CHANGED"

    const/4 v3, 0x2

    const-string v4, "windowBackgroundWhiteGrayText8"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/smedialink/model/wallet/home/PriceRateDirection;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/smedialink/model/wallet/home/PriceRateDirection;->NOT_CHANGED:Lcom/smedialink/model/wallet/home/PriceRateDirection;

    invoke-static {}, Lcom/smedialink/model/wallet/home/PriceRateDirection;->$values()[Lcom/smedialink/model/wallet/home/PriceRateDirection;

    move-result-object v0

    sput-object v0, Lcom/smedialink/model/wallet/home/PriceRateDirection;->$VALUES:[Lcom/smedialink/model/wallet/home/PriceRateDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput p3, p0, Lcom/smedialink/model/wallet/home/PriceRateDirection;->icon:I

    .line 9
    iput-object p4, p0, Lcom/smedialink/model/wallet/home/PriceRateDirection;->color:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/model/wallet/home/PriceRateDirection;
    .locals 1

    const-class v0, Lcom/smedialink/model/wallet/home/PriceRateDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/model/wallet/home/PriceRateDirection;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/model/wallet/home/PriceRateDirection;
    .locals 1

    sget-object v0, Lcom/smedialink/model/wallet/home/PriceRateDirection;->$VALUES:[Lcom/smedialink/model/wallet/home/PriceRateDirection;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/model/wallet/home/PriceRateDirection;

    return-object v0
.end method


# virtual methods
.method public final getColor()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/model/wallet/home/PriceRateDirection;->color:Ljava/lang/String;

    return-object v0
.end method

.method public final getIcon()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/smedialink/model/wallet/home/PriceRateDirection;->icon:I

    return v0
.end method
