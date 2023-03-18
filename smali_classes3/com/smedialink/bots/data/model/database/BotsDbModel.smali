.class public final Lcom/smedialink/bots/data/model/database/BotsDbModel;
.super Ljava/lang/Object;
.source "BotsDbModel.kt"


# instance fields
.field private final avatarOriginal:Ljava/lang/String;

.field private final avatarRounded:Ljava/lang/String;

.field private final botUpdated:I

.field private final created:Ljava/util/Date;

.field private final description:Ljava/lang/String;

.field private final descriptionLocales:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final file:Ljava/lang/String;

.field private final hash:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final installLogged:I

.field private final installs:J

.field private final lang:Lcom/smedialink/bots/domain/model/BotLanguage;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final themes:J

.field private final title:Ljava/lang/String;

.field private final titleLocales:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/smedialink/bots/data/model/BotType;

.field private final updated:Ljava/util/Date;

.field private final useAssets:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JJJFIIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Date;Ljava/util/Date;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotType;Lcom/smedialink/bots/data/model/BotStatus;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/smedialink/bots/domain/model/BotLanguage;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJFIIII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Lcom/smedialink/bots/data/model/BotType;",
            "Lcom/smedialink/bots/data/model/BotStatus;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p21

    move-object/from16 v10, p22

    move-object/from16 v11, p23

    move-object/from16 v12, p28

    move-object/from16 v13, p29

    move-object/from16 v14, p31

    move-object/from16 v15, p32

    const-string v0, "id"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lang"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarOriginal"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarRounded"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleLocales"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptionLocales"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hash"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "created"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updated"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    .line 12
    iput-object v1, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->id:Ljava/lang/String;

    move-object/from16 v1, p2

    .line 14
    iput-object v1, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->sku:Ljava/lang/String;

    .line 15
    iput-object v2, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->lang:Lcom/smedialink/bots/domain/model/BotLanguage;

    .line 16
    iput-object v3, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->avatarOriginal:Ljava/lang/String;

    .line 17
    iput-object v4, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->avatarRounded:Ljava/lang/String;

    .line 18
    iput-object v5, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->titleLocales:Ljava/util/Map;

    .line 19
    iput-object v6, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->descriptionLocales:Ljava/util/Map;

    .line 20
    iput-object v7, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->title:Ljava/lang/String;

    .line 21
    iput-object v8, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->description:Ljava/lang/String;

    move-wide/from16 v1, p10

    .line 22
    iput-wide v1, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->installs:J

    move-wide/from16 v1, p12

    .line 23
    iput-wide v1, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->priority:J

    move-wide/from16 v1, p14

    .line 24
    iput-wide v1, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->reviews:J

    move/from16 v1, p16

    .line 25
    iput v1, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->rating:F

    move/from16 v1, p17

    .line 26
    iput v1, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->ownRating:I

    move/from16 v1, p18

    .line 27
    iput v1, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->installLogged:I

    move/from16 v1, p19

    .line 28
    iput v1, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->useAssets:I

    move/from16 v1, p20

    .line 29
    iput v1, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->botUpdated:I

    .line 30
    iput-object v9, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->tags:Ljava/util/List;

    .line 31
    iput-object v10, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->file:Ljava/lang/String;

    .line 32
    iput-object v11, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->hash:Ljava/lang/String;

    move-wide/from16 v1, p24

    .line 33
    iput-wide v1, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->phrases:J

    move-wide/from16 v1, p26

    .line 34
    iput-wide v1, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->themes:J

    .line 35
    iput-object v12, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->created:Ljava/util/Date;

    .line 36
    iput-object v13, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->updated:Ljava/util/Date;

    move-object/from16 v1, p30

    .line 37
    iput-object v1, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->price:Ljava/lang/String;

    .line 38
    iput-object v14, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->type:Lcom/smedialink/bots/data/model/BotType;

    .line 39
    iput-object v15, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->status:Lcom/smedialink/bots/data/model/BotStatus;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JJJFIIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Date;Ljava/util/Date;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotType;Lcom/smedialink/bots/data/model/BotStatus;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 36

    move/from16 v0, p33

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 15
    sget-object v1, Lcom/smedialink/bots/domain/model/BotLanguage;->RU:Lcom/smedialink/bots/domain/model/BotLanguage;

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    const-string v3, ""

    if-eqz v1, :cond_2

    move-object v7, v3

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    move-object v8, v3

    goto :goto_3

    :cond_3
    move-object/from16 v8, p5

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    .line 18
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v9, v1

    goto :goto_4

    :cond_4
    move-object/from16 v9, p6

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    .line 19
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v10, v1

    goto :goto_5

    :cond_5
    move-object/from16 v10, p7

    :goto_5
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    move-object v11, v3

    goto :goto_6

    :cond_6
    move-object/from16 v11, p8

    :goto_6
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_7

    move-object v12, v3

    goto :goto_7

    :cond_7
    move-object/from16 v12, p9

    :goto_7
    and-int/lit16 v1, v0, 0x200

    const-wide/16 v13, 0x0

    if-eqz v1, :cond_8

    move-wide v15, v13

    goto :goto_8

    :cond_8
    move-wide/from16 v15, p10

    :goto_8
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_9

    move-wide/from16 v17, v13

    goto :goto_9

    :cond_9
    move-wide/from16 v17, p12

    :goto_9
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_a

    move-wide/from16 v19, v13

    goto :goto_a

    :cond_a
    move-wide/from16 v19, p14

    :goto_a
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_b

    :cond_b
    move/from16 v1, p16

    :goto_b
    and-int/lit16 v4, v0, 0x2000

    const/16 v21, 0x0

    if-eqz v4, :cond_c

    const/16 v22, 0x0

    goto :goto_c

    :cond_c
    move/from16 v22, p17

    :goto_c
    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_d

    const/16 v23, 0x0

    goto :goto_d

    :cond_d
    move/from16 v23, p18

    :goto_d
    const v4, 0x8000

    and-int/2addr v4, v0

    if-eqz v4, :cond_e

    const/16 v24, 0x0

    goto :goto_e

    :cond_e
    move/from16 v24, p19

    :goto_e
    const/high16 v4, 0x10000

    and-int/2addr v4, v0

    if-eqz v4, :cond_f

    const/16 v25, 0x0

    goto :goto_f

    :cond_f
    move/from16 v25, p20

    :goto_f
    const/high16 v4, 0x20000

    and-int/2addr v4, v0

    if-eqz v4, :cond_10

    .line 30
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object/from16 v26, v4

    goto :goto_10

    :cond_10
    move-object/from16 v26, p21

    :goto_10
    const/high16 v4, 0x40000

    and-int/2addr v4, v0

    if-eqz v4, :cond_11

    move-object/from16 v27, v3

    goto :goto_11

    :cond_11
    move-object/from16 v27, p22

    :goto_11
    const/high16 v4, 0x80000

    and-int/2addr v4, v0

    if-eqz v4, :cond_12

    move-object/from16 v28, v3

    goto :goto_12

    :cond_12
    move-object/from16 v28, p23

    :goto_12
    const/high16 v3, 0x100000

    and-int/2addr v3, v0

    if-eqz v3, :cond_13

    move-wide/from16 v29, v13

    goto :goto_13

    :cond_13
    move-wide/from16 v29, p24

    :goto_13
    const/high16 v3, 0x200000

    and-int/2addr v3, v0

    if-eqz v3, :cond_14

    move-wide/from16 v31, v13

    goto :goto_14

    :cond_14
    move-wide/from16 v31, p26

    :goto_14
    const/high16 v3, 0x400000

    and-int/2addr v3, v0

    if-eqz v3, :cond_15

    .line 35
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    move-object/from16 v33, v3

    goto :goto_15

    :cond_15
    move-object/from16 v33, p28

    :goto_15
    const/high16 v3, 0x800000

    and-int/2addr v3, v0

    if-eqz v3, :cond_16

    .line 36
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    move-object/from16 v34, v3

    goto :goto_16

    :cond_16
    move-object/from16 v34, p29

    :goto_16
    const/high16 v3, 0x1000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_17

    goto :goto_17

    :cond_17
    move-object/from16 v2, p30

    :goto_17
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide v13, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, v19

    move/from16 v19, v1

    move/from16 v20, v22

    move/from16 v21, v23

    move/from16 v22, v24

    move/from16 v23, v25

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-object/from16 v26, v28

    move-wide/from16 v27, v29

    move-wide/from16 v29, v31

    move-object/from16 v31, v33

    move-object/from16 v32, v34

    move-object/from16 v33, v2

    move-object/from16 v34, p31

    move-object/from16 v35, p32

    .line 11
    invoke-direct/range {v3 .. v35}, Lcom/smedialink/bots/data/model/database/BotsDbModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JJJFIIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Date;Ljava/util/Date;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotType;Lcom/smedialink/bots/data/model/BotStatus;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/bots/data/model/database/BotsDbModel;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JJJFIIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Date;Ljava/util/Date;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotType;Lcom/smedialink/bots/data/model/BotStatus;ILjava/lang/Object;)Lcom/smedialink/bots/data/model/database/BotsDbModel;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p33

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->sku:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->lang:Lcom/smedialink/bots/domain/model/BotLanguage;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->avatarOriginal:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->avatarRounded:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->titleLocales:Ljava/util/Map;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->descriptionLocales:Ljava/util/Map;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->title:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->description:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-wide v11, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->installs:J

    goto :goto_9

    :cond_9
    move-wide/from16 v11, p10

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-wide v13, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->priority:J

    goto :goto_a

    :cond_a
    move-wide/from16 v13, p12

    :goto_a
    and-int/lit16 v15, v1, 0x800

    move-wide/from16 p12, v13

    if-eqz v15, :cond_b

    iget-wide v13, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->reviews:J

    goto :goto_b

    :cond_b
    move-wide/from16 v13, p14

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget v15, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->rating:F

    goto :goto_c

    :cond_c
    move/from16 v15, p16

    :goto_c
    move/from16 p16, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->ownRating:I

    goto :goto_d

    :cond_d
    move/from16 v15, p17

    :goto_d
    move/from16 p17, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget v15, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->installLogged:I

    goto :goto_e

    :cond_e
    move/from16 v15, p18

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p18, v15

    if-eqz v16, :cond_f

    iget v15, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->useAssets:I

    goto :goto_f

    :cond_f
    move/from16 v15, p19

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p19, v15

    if-eqz v16, :cond_10

    iget v15, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->botUpdated:I

    goto :goto_10

    :cond_10
    move/from16 v15, p20

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move/from16 p20, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->tags:Ljava/util/List;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p21

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->file:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p22

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->hash:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p23

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-wide/from16 p14, v13

    if-eqz v16, :cond_14

    iget-wide v13, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->phrases:J

    goto :goto_14

    :cond_14
    move-wide/from16 v13, p24

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-wide/from16 p24, v13

    if-eqz v16, :cond_15

    iget-wide v13, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->themes:J

    goto :goto_15

    :cond_15
    move-wide/from16 v13, p26

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-wide/from16 p26, v13

    if-eqz v16, :cond_16

    iget-object v13, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->created:Ljava/util/Date;

    goto :goto_16

    :cond_16
    move-object/from16 v13, p28

    :goto_16
    const/high16 v14, 0x800000

    and-int/2addr v14, v1

    if-eqz v14, :cond_17

    iget-object v14, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->updated:Ljava/util/Date;

    goto :goto_17

    :cond_17
    move-object/from16 v14, p29

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p29, v14

    if-eqz v16, :cond_18

    iget-object v14, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->price:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v14, p30

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-object/from16 p30, v14

    if-eqz v16, :cond_19

    iget-object v14, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->type:Lcom/smedialink/bots/data/model/BotType;

    goto :goto_19

    :cond_19
    move-object/from16 v14, p31

    :goto_19
    const/high16 v16, 0x4000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->status:Lcom/smedialink/bots/data/model/BotStatus;

    goto :goto_1a

    :cond_1a
    move-object/from16 v1, p32

    :goto_1a
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-wide/from16 p10, v11

    move-object/from16 p23, v15

    move-object/from16 p28, v13

    move-object/from16 p31, v14

    move-object/from16 p32, v1

    invoke-virtual/range {p0 .. p32}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JJJFIIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Date;Ljava/util/Date;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotType;Lcom/smedialink/bots/data/model/BotStatus;)Lcom/smedialink/bots/data/model/database/BotsDbModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->installs:J

    return-wide v0
.end method

.method public final component11()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->priority:J

    return-wide v0
.end method

.method public final component12()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->reviews:J

    return-wide v0
.end method

.method public final component13()F
    .locals 1

    iget v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->rating:F

    return v0
.end method

.method public final component14()I
    .locals 1

    iget v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->ownRating:I

    return v0
.end method

.method public final component15()I
    .locals 1

    iget v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->installLogged:I

    return v0
.end method

.method public final component16()I
    .locals 1

    iget v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->useAssets:I

    return v0
.end method

.method public final component17()I
    .locals 1

    iget v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->botUpdated:I

    return v0
.end method

.method public final component18()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->file:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public final component21()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->phrases:J

    return-wide v0
.end method

.method public final component22()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->themes:J

    return-wide v0
.end method

.method public final component23()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->created:Ljava/util/Date;

    return-object v0
.end method

.method public final component24()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public final component25()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->price:Ljava/lang/String;

    return-object v0
.end method

.method public final component26()Lcom/smedialink/bots/data/model/BotType;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->type:Lcom/smedialink/bots/data/model/BotType;

    return-object v0
.end method

.method public final component27()Lcom/smedialink/bots/data/model/BotStatus;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->status:Lcom/smedialink/bots/data/model/BotStatus;

    return-object v0
.end method

.method public final component3()Lcom/smedialink/bots/domain/model/BotLanguage;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->lang:Lcom/smedialink/bots/domain/model/BotLanguage;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->avatarOriginal:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->avatarRounded:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->titleLocales:Ljava/util/Map;

    return-object v0
.end method

.method public final component7()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->descriptionLocales:Ljava/util/Map;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JJJFIIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Date;Ljava/util/Date;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotType;Lcom/smedialink/bots/data/model/BotStatus;)Lcom/smedialink/bots/data/model/database/BotsDbModel;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/smedialink/bots/domain/model/BotLanguage;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJFIIII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Lcom/smedialink/bots/data/model/BotType;",
            "Lcom/smedialink/bots/data/model/BotStatus;",
            ")",
            "Lcom/smedialink/bots/data/model/database/BotsDbModel;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-wide/from16 v24, p24

    move-wide/from16 v26, p26

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    move-object/from16 v32, p32

    const-string v0, "id"

    move-object/from16 v33, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lang"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarOriginal"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarRounded"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleLocales"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptionLocales"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    move-object/from16 v1, p21

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    move-object/from16 v1, p22

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hash"

    move-object/from16 v1, p23

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "created"

    move-object/from16 v1, p28

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updated"

    move-object/from16 v1, p29

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v1, p31

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v1, p32

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v34, Lcom/smedialink/bots/data/model/database/BotsDbModel;

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-direct/range {v0 .. v32}, Lcom/smedialink/bots/data/model/database/BotsDbModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JJJFIIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Date;Ljava/util/Date;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotType;Lcom/smedialink/bots/data/model/BotStatus;)V

    return-object v34
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->sku:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->sku:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->lang:Lcom/smedialink/bots/domain/model/BotLanguage;

    iget-object v3, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->lang:Lcom/smedialink/bots/domain/model/BotLanguage;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->avatarOriginal:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->avatarOriginal:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->avatarRounded:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->avatarRounded:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->titleLocales:Ljava/util/Map;

    iget-object v3, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->titleLocales:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->descriptionLocales:Ljava/util/Map;

    iget-object v3, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->descriptionLocales:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->installs:J

    iget-wide v5, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->installs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->priority:J

    iget-wide v5, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->priority:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c

    return v2

    :cond_c
    iget-wide v3, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->reviews:J

    iget-wide v5, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->reviews:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->rating:F

    iget v3, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->rating:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->ownRating:I

    iget v3, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->ownRating:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->installLogged:I

    iget v3, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->installLogged:I

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->useAssets:I

    iget v3, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->useAssets:I

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->botUpdated:I

    iget v3, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->botUpdated:I

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->tags:Ljava/util/List;

    iget-object v3, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->tags:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->file:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->file:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->hash:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->hash:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->phrases:J

    iget-wide v5, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->phrases:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_16

    return v2

    :cond_16
    iget-wide v3, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->themes:J

    iget-wide v5, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->themes:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->created:Ljava/util/Date;

    iget-object v3, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->created:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->updated:Ljava/util/Date;

    iget-object v3, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->updated:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->price:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->price:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->type:Lcom/smedialink/bots/data/model/BotType;

    iget-object v3, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->type:Lcom/smedialink/bots/data/model/BotType;

    if-eq v1, v3, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->status:Lcom/smedialink/bots/data/model/BotStatus;

    iget-object p1, p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;->status:Lcom/smedialink/bots/data/model/BotStatus;

    if-eq v1, p1, :cond_1c

    return v2

    :cond_1c
    return v0
.end method

.method public final getAvatarOriginal()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->avatarOriginal:Ljava/lang/String;

    return-object v0
.end method

.method public final getAvatarRounded()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->avatarRounded:Ljava/lang/String;

    return-object v0
.end method

.method public final getBotUpdated()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->botUpdated:I

    return v0
.end method

.method public final getCreated()Ljava/util/Date;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->created:Ljava/util/Date;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescriptionLocales()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->descriptionLocales:Ljava/util/Map;

    return-object v0
.end method

.method public final getFile()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->file:Ljava/lang/String;

    return-object v0
.end method

.method public final getHash()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstallLogged()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->installLogged:I

    return v0
.end method

.method public final getInstalls()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->installs:J

    return-wide v0
.end method

.method public final getLang()Lcom/smedialink/bots/domain/model/BotLanguage;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->lang:Lcom/smedialink/bots/domain/model/BotLanguage;

    return-object v0
.end method

.method public final getOwnRating()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->ownRating:I

    return v0
.end method

.method public final getPhrases()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->phrases:J

    return-wide v0
.end method

.method public final getPrice()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->price:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->priority:J

    return-wide v0
.end method

.method public final getRating()F
    .locals 1

    .line 25
    iget v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->rating:F

    return v0
.end method

.method public final getReviews()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->reviews:J

    return-wide v0
.end method

.method public final getSku()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lcom/smedialink/bots/data/model/BotStatus;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->status:Lcom/smedialink/bots/data/model/BotStatus;

    return-object v0
.end method

.method public final getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final getThemes()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->themes:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitleLocales()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->titleLocales:Ljava/util/Map;

    return-object v0
.end method

.method public final getType()Lcom/smedialink/bots/data/model/BotType;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->type:Lcom/smedialink/bots/data/model/BotType;

    return-object v0
.end method

.method public final getUpdated()Ljava/util/Date;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public final getUseAssets()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->useAssets:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->sku:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->lang:Lcom/smedialink/bots/domain/model/BotLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->avatarOriginal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->avatarRounded:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->titleLocales:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->descriptionLocales:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->installs:J

    invoke-static {v3, v4}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->priority:J

    invoke-static {v3, v4}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->reviews:J

    invoke-static {v3, v4}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->rating:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->ownRating:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->installLogged:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->useAssets:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->botUpdated:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->tags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->file:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->hash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->phrases:J

    invoke-static {v3, v4}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->themes:J

    invoke-static {v3, v4}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->created:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->updated:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->price:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->type:Lcom/smedialink/bots/data/model/BotType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->status:Lcom/smedialink/bots/data/model/BotStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BotsDbModel(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sku="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->lang:Lcom/smedialink/bots/domain/model/BotLanguage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", avatarOriginal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->avatarOriginal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", avatarRounded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->avatarRounded:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", titleLocales="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->titleLocales:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", descriptionLocales="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->descriptionLocales:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", installs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->installs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->priority:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", reviews="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->reviews:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->rating:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ownRating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->ownRating:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", installLogged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->installLogged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", useAssets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->useAssets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", botUpdated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->botUpdated:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->tags:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phrases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->phrases:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", themes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->themes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->created:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->updated:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->type:Lcom/smedialink/bots/data/model/BotType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/BotsDbModel;->status:Lcom/smedialink/bots/data/model/BotStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
