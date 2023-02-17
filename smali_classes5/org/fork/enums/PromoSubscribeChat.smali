.class public final enum Lorg/fork/enums/PromoSubscribeChat;
.super Ljava/lang/Enum;
.source "PromoSubscribeChat.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fork/enums/PromoSubscribeChat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fork/enums/PromoSubscribeChat;

.field public static final enum DISCUSSION_GROUP:Lorg/fork/enums/PromoSubscribeChat;

.field public static final enum EN_NEWS_CHANNEL:Lorg/fork/enums/PromoSubscribeChat;

.field public static final enum LIME_GROUP:Lorg/fork/enums/PromoSubscribeChat;

.field public static final enum RU_NEWS_CHANNEL:Lorg/fork/enums/PromoSubscribeChat;


# instance fields
.field private final descriptionResId:I

.field private final id:J

.field private final rightIconResId:I

.field private final username:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lorg/fork/enums/PromoSubscribeChat;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/fork/enums/PromoSubscribeChat;

    sget-object v1, Lorg/fork/enums/PromoSubscribeChat;->RU_NEWS_CHANNEL:Lorg/fork/enums/PromoSubscribeChat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/PromoSubscribeChat;->EN_NEWS_CHANNEL:Lorg/fork/enums/PromoSubscribeChat;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/PromoSubscribeChat;->DISCUSSION_GROUP:Lorg/fork/enums/PromoSubscribeChat;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/PromoSubscribeChat;->LIME_GROUP:Lorg/fork/enums/PromoSubscribeChat;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 17

    .line 9
    new-instance v8, Lorg/fork/enums/PromoSubscribeChat;

    sget v6, Lorg/telegram/messenger/R$string;->dialog_promo_ru_news_channel_description:I

    sget v7, Lorg/telegram/messenger/R$drawable;->fork_promo_ru_news_channel:I

    const-string v1, "RU_NEWS_CHANNEL"

    const/4 v2, 0x0

    const-wide/32 v3, -0x498d3a56

    const-string v5, "ime_ru"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/fork/enums/PromoSubscribeChat;-><init>(Ljava/lang/String;IJLjava/lang/String;II)V

    sput-object v8, Lorg/fork/enums/PromoSubscribeChat;->RU_NEWS_CHANNEL:Lorg/fork/enums/PromoSubscribeChat;

    .line 10
    new-instance v0, Lorg/fork/enums/PromoSubscribeChat;

    sget v15, Lorg/telegram/messenger/R$string;->dialog_promo_en_news_channel_description:I

    sget v16, Lorg/telegram/messenger/R$drawable;->fork_promo_en_news_channel:I

    const-string v10, "EN_NEWS_CHANNEL"

    const/4 v11, 0x1

    const-wide/32 v12, -0x505d679c

    const-string v14, "ime_en"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/fork/enums/PromoSubscribeChat;-><init>(Ljava/lang/String;IJLjava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/PromoSubscribeChat;->EN_NEWS_CHANNEL:Lorg/fork/enums/PromoSubscribeChat;

    .line 11
    new-instance v0, Lorg/fork/enums/PromoSubscribeChat;

    sget v9, Lorg/telegram/messenger/R$string;->dialog_promo_discussion_group_description:I

    sget v10, Lorg/telegram/messenger/R$drawable;->fork_promo_discussion_group:I

    const-string v2, "DISCUSSION_GROUP"

    const/4 v3, 0x2

    const-wide/32 v4, -0x4f7e27c7

    const-string v6, "ime_ai"

    move-object v1, v0

    move v7, v9

    move v8, v10

    invoke-direct/range {v1 .. v8}, Lorg/fork/enums/PromoSubscribeChat;-><init>(Ljava/lang/String;IJLjava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/PromoSubscribeChat;->DISCUSSION_GROUP:Lorg/fork/enums/PromoSubscribeChat;

    .line 12
    new-instance v0, Lorg/fork/enums/PromoSubscribeChat;

    const-string v2, "LIME_GROUP"

    const/4 v3, 0x3

    const-wide/32 v4, -0x4c9e8936

    const-string v6, "imelime"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/fork/enums/PromoSubscribeChat;-><init>(Ljava/lang/String;IJLjava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/PromoSubscribeChat;->LIME_GROUP:Lorg/fork/enums/PromoSubscribeChat;

    invoke-static {}, Lorg/fork/enums/PromoSubscribeChat;->$values()[Lorg/fork/enums/PromoSubscribeChat;

    move-result-object v0

    sput-object v0, Lorg/fork/enums/PromoSubscribeChat;->$VALUES:[Lorg/fork/enums/PromoSubscribeChat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJLjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lorg/fork/enums/PromoSubscribeChat;->id:J

    iput-object p5, p0, Lorg/fork/enums/PromoSubscribeChat;->username:Ljava/lang/String;

    iput p6, p0, Lorg/fork/enums/PromoSubscribeChat;->descriptionResId:I

    iput p7, p0, Lorg/fork/enums/PromoSubscribeChat;->rightIconResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fork/enums/PromoSubscribeChat;
    .locals 1

    const-class v0, Lorg/fork/enums/PromoSubscribeChat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fork/enums/PromoSubscribeChat;

    return-object p0
.end method

.method public static values()[Lorg/fork/enums/PromoSubscribeChat;
    .locals 1

    sget-object v0, Lorg/fork/enums/PromoSubscribeChat;->$VALUES:[Lorg/fork/enums/PromoSubscribeChat;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/enums/PromoSubscribeChat;

    return-object v0
.end method


# virtual methods
.method public final getDescriptionResId()I
    .locals 1

    .line 8
    iget v0, p0, Lorg/fork/enums/PromoSubscribeChat;->descriptionResId:I

    return v0
.end method

.method public final getId()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lorg/fork/enums/PromoSubscribeChat;->id:J

    return-wide v0
.end method

.method public final getRightIconResId()I
    .locals 1

    .line 8
    iget v0, p0, Lorg/fork/enums/PromoSubscribeChat;->rightIconResId:I

    return v0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/fork/enums/PromoSubscribeChat;->username:Ljava/lang/String;

    return-object v0
.end method
