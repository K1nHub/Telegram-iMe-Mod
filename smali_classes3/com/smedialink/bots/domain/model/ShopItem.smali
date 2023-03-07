.class public final Lcom/smedialink/bots/domain/model/ShopItem;
.super Ljava/lang/Object;
.source "ShopItem.kt"


# instance fields
.field private final avatar:Ljava/lang/String;

.field private final botId:Ljava/lang/String;

.field private final created:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final downloadLink:Ljava/lang/String;

.field private final installs:J

.field private final language:Lcom/smedialink/bots/domain/model/BotLanguage;

.field private final ownRating:I

.field private final phrases:J

.field private final price:Ljava/lang/String;

.field private final priority:J

.field private final rating:F

.field private final reviews:J

.field private final sku:Ljava/lang/String;

.field private final status:Lcom/smedialink/bots/data/model/BotStatus;

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/SmartTag;",
            ">;"
        }
    .end annotation
.end field

.field private final themes:J

.field private final title:Ljava/lang/String;

.field private final type:Lcom/smedialink/bots/data/model/BotType;

.field private final updated:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;Ljava/lang/String;JJJFIJJLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotType;Lcom/smedialink/bots/data/model/BotStatus;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/smedialink/bots/domain/model/BotLanguage;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJFIJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/SmartTag;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/smedialink/bots/data/model/BotType;",
            "Lcom/smedialink/bots/data/model/BotStatus;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p19

    move-object/from16 v7, p20

    move-object/from16 v8, p21

    move-object/from16 v9, p23

    move-object/from16 v10, p24

    move-object/from16 v11, p25

    const-string v12, "botId"

    invoke-static {p1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "avatar"

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "language"

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "title"

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "description"

    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "created"

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "updated"

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "tags"

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "downloadLink"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "type"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "status"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v1, v0, Lcom/smedialink/bots/domain/model/ShopItem;->botId:Ljava/lang/String;

    move-object v1, p2

    .line 8
    iput-object v1, v0, Lcom/smedialink/bots/domain/model/ShopItem;->sku:Ljava/lang/String;

    .line 9
    iput-object v2, v0, Lcom/smedialink/bots/domain/model/ShopItem;->avatar:Ljava/lang/String;

    .line 10
    iput-object v3, v0, Lcom/smedialink/bots/domain/model/ShopItem;->language:Lcom/smedialink/bots/domain/model/BotLanguage;

    .line 11
    iput-object v4, v0, Lcom/smedialink/bots/domain/model/ShopItem;->title:Ljava/lang/String;

    .line 12
    iput-object v5, v0, Lcom/smedialink/bots/domain/model/ShopItem;->description:Ljava/lang/String;

    move-wide/from16 v1, p7

    .line 13
    iput-wide v1, v0, Lcom/smedialink/bots/domain/model/ShopItem;->installs:J

    move-wide/from16 v1, p9

    .line 14
    iput-wide v1, v0, Lcom/smedialink/bots/domain/model/ShopItem;->priority:J

    move-wide/from16 v1, p11

    .line 15
    iput-wide v1, v0, Lcom/smedialink/bots/domain/model/ShopItem;->reviews:J

    move/from16 v1, p13

    .line 16
    iput v1, v0, Lcom/smedialink/bots/domain/model/ShopItem;->rating:F

    move/from16 v1, p14

    .line 17
    iput v1, v0, Lcom/smedialink/bots/domain/model/ShopItem;->ownRating:I

    move-wide/from16 v1, p15

    .line 18
    iput-wide v1, v0, Lcom/smedialink/bots/domain/model/ShopItem;->phrases:J

    move-wide/from16 v1, p17

    .line 19
    iput-wide v1, v0, Lcom/smedialink/bots/domain/model/ShopItem;->themes:J

    .line 20
    iput-object v6, v0, Lcom/smedialink/bots/domain/model/ShopItem;->created:Ljava/lang/String;

    .line 21
    iput-object v7, v0, Lcom/smedialink/bots/domain/model/ShopItem;->updated:Ljava/lang/String;

    .line 22
    iput-object v8, v0, Lcom/smedialink/bots/domain/model/ShopItem;->tags:Ljava/util/List;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lcom/smedialink/bots/domain/model/ShopItem;->price:Ljava/lang/String;

    .line 24
    iput-object v9, v0, Lcom/smedialink/bots/domain/model/ShopItem;->downloadLink:Ljava/lang/String;

    .line 25
    iput-object v10, v0, Lcom/smedialink/bots/domain/model/ShopItem;->type:Lcom/smedialink/bots/data/model/BotType;

    .line 26
    iput-object v11, v0, Lcom/smedialink/bots/domain/model/ShopItem;->status:Lcom/smedialink/bots/data/model/BotStatus;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/bots/domain/model/ShopItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;Ljava/lang/String;JJJFIJJLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotType;Lcom/smedialink/bots/data/model/BotStatus;ILjava/lang/Object;)Lcom/smedialink/bots/domain/model/ShopItem;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p26

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/smedialink/bots/domain/model/ShopItem;->botId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/smedialink/bots/domain/model/ShopItem;->sku:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/smedialink/bots/domain/model/ShopItem;->avatar:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/smedialink/bots/domain/model/ShopItem;->language:Lcom/smedialink/bots/domain/model/BotLanguage;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/smedialink/bots/domain/model/ShopItem;->title:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/smedialink/bots/domain/model/ShopItem;->description:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-wide v8, v0, Lcom/smedialink/bots/domain/model/ShopItem;->installs:J

    goto :goto_6

    :cond_6
    move-wide/from16 v8, p7

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-wide v10, v0, Lcom/smedialink/bots/domain/model/ShopItem;->priority:J

    goto :goto_7

    :cond_7
    move-wide/from16 v10, p9

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-wide v12, v0, Lcom/smedialink/bots/domain/model/ShopItem;->reviews:J

    goto :goto_8

    :cond_8
    move-wide/from16 v12, p11

    :goto_8
    and-int/lit16 v14, v1, 0x200

    if-eqz v14, :cond_9

    iget v14, v0, Lcom/smedialink/bots/domain/model/ShopItem;->rating:F

    goto :goto_9

    :cond_9
    move/from16 v14, p13

    :goto_9
    and-int/lit16 v15, v1, 0x400

    if-eqz v15, :cond_a

    iget v15, v0, Lcom/smedialink/bots/domain/model/ShopItem;->ownRating:I

    goto :goto_a

    :cond_a
    move/from16 v15, p14

    :goto_a
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x800

    move/from16 p13, v14

    if-eqz v15, :cond_b

    iget-wide v14, v0, Lcom/smedialink/bots/domain/model/ShopItem;->phrases:J

    goto :goto_b

    :cond_b
    move-wide/from16 v14, p15

    :goto_b
    move-wide/from16 p15, v14

    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-wide v14, v0, Lcom/smedialink/bots/domain/model/ShopItem;->themes:J

    goto :goto_c

    :cond_c
    move-wide/from16 v14, p17

    :goto_c
    move-wide/from16 p17, v14

    and-int/lit16 v14, v1, 0x2000

    if-eqz v14, :cond_d

    iget-object v14, v0, Lcom/smedialink/bots/domain/model/ShopItem;->created:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v14, p19

    :goto_d
    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/smedialink/bots/domain/model/ShopItem;->updated:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p20

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/smedialink/bots/domain/model/ShopItem;->tags:Ljava/util/List;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p21

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/smedialink/bots/domain/model/ShopItem;->price:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p22

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/smedialink/bots/domain/model/ShopItem;->downloadLink:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p23

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/smedialink/bots/domain/model/ShopItem;->type:Lcom/smedialink/bots/data/model/BotType;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p24

    :goto_12
    const/high16 v16, 0x80000

    and-int v1, v1, v16

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/smedialink/bots/domain/model/ShopItem;->status:Lcom/smedialink/bots/data/model/BotStatus;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p25

    :goto_13
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-wide/from16 p7, v8

    move-wide/from16 p9, v10

    move-wide/from16 p11, v12

    move-object/from16 p19, v14

    move-object/from16 p24, v15

    move-object/from16 p25, v1

    invoke-virtual/range {p0 .. p25}, Lcom/smedialink/bots/domain/model/ShopItem;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;Ljava/lang/String;JJJFIJJLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotType;Lcom/smedialink/bots/data/model/BotStatus;)Lcom/smedialink/bots/domain/model/ShopItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->botId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()F
    .locals 1

    iget v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->rating:F

    return v0
.end method

.method public final component11()I
    .locals 1

    iget v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->ownRating:I

    return v0
.end method

.method public final component12()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->phrases:J

    return-wide v0
.end method

.method public final component13()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->themes:J

    return-wide v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->created:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->updated:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/SmartTag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->price:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->downloadLink:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()Lcom/smedialink/bots/data/model/BotType;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->type:Lcom/smedialink/bots/data/model/BotType;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Lcom/smedialink/bots/data/model/BotStatus;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->status:Lcom/smedialink/bots/data/model/BotStatus;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/smedialink/bots/domain/model/BotLanguage;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->language:Lcom/smedialink/bots/domain/model/BotLanguage;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->installs:J

    return-wide v0
.end method

.method public final component8()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->priority:J

    return-wide v0
.end method

.method public final component9()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->reviews:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;Ljava/lang/String;JJJFIJJLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotType;Lcom/smedialink/bots/data/model/BotStatus;)Lcom/smedialink/bots/domain/model/ShopItem;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/smedialink/bots/domain/model/BotLanguage;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJFIJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/SmartTag;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/smedialink/bots/data/model/BotType;",
            "Lcom/smedialink/bots/data/model/BotStatus;",
            ")",
            "Lcom/smedialink/bots/domain/model/ShopItem;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move/from16 v13, p13

    move/from16 v14, p14

    move-wide/from16 v15, p15

    move-wide/from16 v17, p17

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    const-string v0, "botId"

    move-object/from16 v26, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatar"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "created"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updated"

    move-object/from16 v1, p20

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    move-object/from16 v1, p21

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadLink"

    move-object/from16 v1, p23

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v1, p24

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v1, p25

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v27, Lcom/smedialink/bots/domain/model/ShopItem;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct/range {v0 .. v25}, Lcom/smedialink/bots/domain/model/ShopItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;Ljava/lang/String;JJJFIJJLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotType;Lcom/smedialink/bots/data/model/BotStatus;)V

    return-object v27
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/bots/domain/model/ShopItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/bots/domain/model/ShopItem;

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->botId:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/bots/domain/model/ShopItem;->botId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->sku:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/bots/domain/model/ShopItem;->sku:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->avatar:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/bots/domain/model/ShopItem;->avatar:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->language:Lcom/smedialink/bots/domain/model/BotLanguage;

    iget-object v3, p1, Lcom/smedialink/bots/domain/model/ShopItem;->language:Lcom/smedialink/bots/domain/model/BotLanguage;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/bots/domain/model/ShopItem;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/bots/domain/model/ShopItem;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/smedialink/bots/domain/model/ShopItem;->installs:J

    iget-wide v5, p1, Lcom/smedialink/bots/domain/model/ShopItem;->installs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/smedialink/bots/domain/model/ShopItem;->priority:J

    iget-wide v5, p1, Lcom/smedialink/bots/domain/model/ShopItem;->priority:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/smedialink/bots/domain/model/ShopItem;->reviews:J

    iget-wide v5, p1, Lcom/smedialink/bots/domain/model/ShopItem;->reviews:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->rating:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/smedialink/bots/domain/model/ShopItem;->rating:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->ownRating:I

    iget v3, p1, Lcom/smedialink/bots/domain/model/ShopItem;->ownRating:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-wide v3, p0, Lcom/smedialink/bots/domain/model/ShopItem;->phrases:J

    iget-wide v5, p1, Lcom/smedialink/bots/domain/model/ShopItem;->phrases:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Lcom/smedialink/bots/domain/model/ShopItem;->themes:J

    iget-wide v5, p1, Lcom/smedialink/bots/domain/model/ShopItem;->themes:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->created:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/bots/domain/model/ShopItem;->created:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->updated:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/bots/domain/model/ShopItem;->updated:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->tags:Ljava/util/List;

    iget-object v3, p1, Lcom/smedialink/bots/domain/model/ShopItem;->tags:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->price:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/bots/domain/model/ShopItem;->price:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->downloadLink:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/bots/domain/model/ShopItem;->downloadLink:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->type:Lcom/smedialink/bots/data/model/BotType;

    iget-object v3, p1, Lcom/smedialink/bots/domain/model/ShopItem;->type:Lcom/smedialink/bots/data/model/BotType;

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->status:Lcom/smedialink/bots/data/model/BotStatus;

    iget-object p1, p1, Lcom/smedialink/bots/domain/model/ShopItem;->status:Lcom/smedialink/bots/data/model/BotStatus;

    if-eq v1, p1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public final getAvatar()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getBotId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->botId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreated()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->created:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDownloadLink()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->downloadLink:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstalls()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->installs:J

    return-wide v0
.end method

.method public final getLanguage()Lcom/smedialink/bots/domain/model/BotLanguage;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->language:Lcom/smedialink/bots/domain/model/BotLanguage;

    return-object v0
.end method

.method public final getOwnRating()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->ownRating:I

    return v0
.end method

.method public final getPhrases()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->phrases:J

    return-wide v0
.end method

.method public final getPrice()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->price:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->priority:J

    return-wide v0
.end method

.method public final getRating()F
    .locals 1

    .line 16
    iget v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->rating:F

    return v0
.end method

.method public final getReviews()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->reviews:J

    return-wide v0
.end method

.method public final getSearchField()Ljava/lang/String;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSku()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lcom/smedialink/bots/data/model/BotStatus;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->status:Lcom/smedialink/bots/data/model/BotStatus;

    return-object v0
.end method

.method public final getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/SmartTag;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final getThemes()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->themes:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/smedialink/bots/data/model/BotType;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->type:Lcom/smedialink/bots/data/model/BotType;

    return-object v0
.end method

.method public final getUpdated()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->updated:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/smedialink/bots/domain/model/ShopItem;->botId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->sku:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->avatar:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->language:Lcom/smedialink/bots/domain/model/BotLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/smedialink/bots/domain/model/ShopItem;->installs:J

    invoke-static {v3, v4}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/smedialink/bots/domain/model/ShopItem;->priority:J

    invoke-static {v3, v4}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/smedialink/bots/domain/model/ShopItem;->reviews:J

    invoke-static {v3, v4}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->rating:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->ownRating:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/smedialink/bots/domain/model/ShopItem;->phrases:J

    invoke-static {v3, v4}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/smedialink/bots/domain/model/ShopItem;->themes:J

    invoke-static {v3, v4}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->created:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->updated:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->tags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->price:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->downloadLink:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->type:Lcom/smedialink/bots/data/model/BotType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->status:Lcom/smedialink/bots/data/model/BotStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShopItem(botId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->botId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sku="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->language:Lcom/smedialink/bots/domain/model/BotLanguage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", installs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->installs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->priority:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", reviews="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->reviews:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->rating:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ownRating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->ownRating:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phrases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->phrases:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", themes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->themes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->created:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->updated:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->tags:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->downloadLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->type:Lcom/smedialink/bots/data/model/BotType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/domain/model/ShopItem;->status:Lcom/smedialink/bots/data/model/BotStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
