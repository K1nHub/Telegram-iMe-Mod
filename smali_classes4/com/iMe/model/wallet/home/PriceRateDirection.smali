.class public final enum Lcom/iMe/model/wallet/home/PriceRateDirection;
.super Ljava/lang/Enum;
.source "PriceRateDirection.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/model/wallet/home/PriceRateDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/model/wallet/home/PriceRateDirection;

.field public static final enum DOWN:Lcom/iMe/model/wallet/home/PriceRateDirection;

.field public static final enum NOT_CHANGED:Lcom/iMe/model/wallet/home/PriceRateDirection;

.field public static final enum UP:Lcom/iMe/model/wallet/home/PriceRateDirection;


# instance fields
.field private final colorKey:I

.field private final icon:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/model/wallet/home/PriceRateDirection;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/model/wallet/home/PriceRateDirection;

    sget-object v1, Lcom/iMe/model/wallet/home/PriceRateDirection;->UP:Lcom/iMe/model/wallet/home/PriceRateDirection;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/PriceRateDirection;->DOWN:Lcom/iMe/model/wallet/home/PriceRateDirection;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/PriceRateDirection;->NOT_CHANGED:Lcom/iMe/model/wallet/home/PriceRateDirection;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcom/iMe/model/wallet/home/PriceRateDirection;

    sget v1, Lorg/telegram/messenger/R$drawable;->chat_calls_outgoing:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inGreenCall:I

    const-string v3, "UP"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/iMe/model/wallet/home/PriceRateDirection;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/iMe/model/wallet/home/PriceRateDirection;->UP:Lcom/iMe/model/wallet/home/PriceRateDirection;

    .line 12
    new-instance v0, Lcom/iMe/model/wallet/home/PriceRateDirection;

    sget v1, Lorg/telegram/messenger/R$drawable;->chat_calls_incoming:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_fill_RedNormal:I

    const-string v3, "DOWN"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/iMe/model/wallet/home/PriceRateDirection;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/iMe/model/wallet/home/PriceRateDirection;->DOWN:Lcom/iMe/model/wallet/home/PriceRateDirection;

    .line 13
    new-instance v0, Lcom/iMe/model/wallet/home/PriceRateDirection;

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_rate_not_changed_14:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText8:I

    const-string v3, "NOT_CHANGED"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/iMe/model/wallet/home/PriceRateDirection;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/iMe/model/wallet/home/PriceRateDirection;->NOT_CHANGED:Lcom/iMe/model/wallet/home/PriceRateDirection;

    invoke-static {}, Lcom/iMe/model/wallet/home/PriceRateDirection;->$values()[Lcom/iMe/model/wallet/home/PriceRateDirection;

    move-result-object v0

    sput-object v0, Lcom/iMe/model/wallet/home/PriceRateDirection;->$VALUES:[Lcom/iMe/model/wallet/home/PriceRateDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput p3, p0, Lcom/iMe/model/wallet/home/PriceRateDirection;->icon:I

    .line 9
    iput p4, p0, Lcom/iMe/model/wallet/home/PriceRateDirection;->colorKey:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/model/wallet/home/PriceRateDirection;
    .locals 1

    const-class v0, Lcom/iMe/model/wallet/home/PriceRateDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/model/wallet/home/PriceRateDirection;

    return-object p0
.end method

.method public static values()[Lcom/iMe/model/wallet/home/PriceRateDirection;
    .locals 1

    sget-object v0, Lcom/iMe/model/wallet/home/PriceRateDirection;->$VALUES:[Lcom/iMe/model/wallet/home/PriceRateDirection;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/model/wallet/home/PriceRateDirection;

    return-object v0
.end method


# virtual methods
.method public final getColorKey()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/model/wallet/home/PriceRateDirection;->colorKey:I

    return v0
.end method

.method public final getIcon()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/model/wallet/home/PriceRateDirection;->icon:I

    return v0
.end method
