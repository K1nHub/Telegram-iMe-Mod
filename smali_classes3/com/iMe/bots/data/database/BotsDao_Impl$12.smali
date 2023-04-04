.class Lcom/iMe/bots/data/database/BotsDao_Impl$12;
.super Ljava/lang/Object;
.source "BotsDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/bots/data/database/BotsDao_Impl;->streamBot(Ljava/lang/String;)Lio/reactivex/Flowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/iMe/bots/data/model/database/BotsDbModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/bots/data/database/BotsDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/iMe/bots/data/database/BotsDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_statement"
        }
    .end annotation

    .line 954
    iput-object p1, p0, Lcom/iMe/bots/data/database/BotsDao_Impl$12;->this$0:Lcom/iMe/bots/data/database/BotsDao_Impl;

    iput-object p2, p0, Lcom/iMe/bots/data/database/BotsDao_Impl$12;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/iMe/bots/data/model/database/BotsDbModel;
    .locals 61
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 957
    iget-object v0, v1, Lcom/iMe/bots/data/database/BotsDao_Impl$12;->this$0:Lcom/iMe/bots/data/database/BotsDao_Impl;

    invoke-static {v0}, Lcom/iMe/bots/data/database/BotsDao_Impl;->access$300(Lcom/iMe/bots/data/database/BotsDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lcom/iMe/bots/data/database/BotsDao_Impl$12;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    .line 959
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "sku"

    .line 960
    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v5, "lang"

    .line 961
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "avatarOriginal"

    .line 962
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "avatarRounded"

    .line 963
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "titleLocales"

    .line 964
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "descriptionLocales"

    .line 965
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "title"

    .line 966
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "description"

    .line 967
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "installs"

    .line 968
    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "priority"

    .line 969
    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "reviews"

    .line 970
    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "rating"

    .line 971
    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v4, "ownRating"

    .line 972
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "installLogged"

    .line 973
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v16, v1

    const-string v1, "useAssets"

    .line 974
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "botUpdated"

    .line 975
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "tags"

    .line 976
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "file"

    .line 977
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "hash"

    .line 978
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "phrases"

    .line 979
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "themes"

    .line 980
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "created"

    .line 981
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "updated"

    .line 982
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "price"

    .line 983
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "type"

    .line 984
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "status"

    .line 985
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 987
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v28

    if-eqz v28, :cond_11

    .line 989
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_0

    const/16 v29, 0x0

    goto :goto_0

    .line 992
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v29, v0

    .line 995
    :goto_0
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v30, 0x0

    goto :goto_1

    .line 998
    :cond_1
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v30, v0

    .line 1002
    :goto_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 1005
    :cond_2
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1007
    :goto_2
    invoke-static {v0}, Lcom/iMe/bots/data/database/converter/Converter;->toBotLanguage(Ljava/lang/String;)Lcom/iMe/bots/domain/model/BotLanguage;

    move-result-object v31

    .line 1009
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v32, 0x0

    goto :goto_3

    .line 1012
    :cond_3
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v32, v0

    .line 1015
    :goto_3
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v33, 0x0

    goto :goto_4

    .line 1018
    :cond_4
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v33, v0

    .line 1022
    :goto_4
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_5

    .line 1025
    :cond_5
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1027
    :goto_5
    invoke-static {v0}, Lcom/iMe/bots/data/database/converter/Converter;->toMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v34

    .line 1030
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_6

    .line 1033
    :cond_6
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1035
    :goto_6
    invoke-static {v0}, Lcom/iMe/bots/data/database/converter/Converter;->toMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v35

    .line 1037
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v36, 0x0

    goto :goto_7

    .line 1040
    :cond_7
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v36, v0

    .line 1043
    :goto_7
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v37, 0x0

    goto :goto_8

    .line 1046
    :cond_8
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v37, v0

    .line 1049
    :goto_8
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 1051
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 1053
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 1055
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getFloat(I)F

    move-result v44

    .line 1057
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    move/from16 v0, v16

    .line 1059
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    move/from16 v0, v17

    .line 1061
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    move/from16 v0, v18

    .line 1063
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    move/from16 v0, v19

    .line 1066
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v0, 0x0

    goto :goto_9

    .line 1069
    :cond_9
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1071
    :goto_9
    invoke-static {v0}, Lcom/iMe/bots/data/database/converter/Converter;->fromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v49

    move/from16 v0, v20

    .line 1073
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_a

    move/from16 v0, v21

    const/16 v50, 0x0

    goto :goto_a

    .line 1076
    :cond_a
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v50, v0

    move/from16 v0, v21

    .line 1079
    :goto_a
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_b

    move/from16 v0, v22

    const/16 v51, 0x0

    goto :goto_b

    .line 1082
    :cond_b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v51, v0

    move/from16 v0, v22

    .line 1085
    :goto_b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    move/from16 v0, v23

    .line 1087
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    move/from16 v0, v24

    .line 1090
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v0, 0x0

    goto :goto_c

    .line 1093
    :cond_c
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1095
    :goto_c
    invoke-static {v0}, Lcom/iMe/bots/data/database/converter/Converter;->fromTimeStamp(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v56

    move/from16 v0, v25

    .line 1098
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v0, 0x0

    goto :goto_d

    .line 1101
    :cond_d
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1103
    :goto_d
    invoke-static {v0}, Lcom/iMe/bots/data/database/converter/Converter;->fromTimeStamp(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v57

    move/from16 v0, v26

    .line 1105
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_e

    move/from16 v0, v27

    const/16 v58, 0x0

    goto :goto_e

    .line 1108
    :cond_e
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v58, v0

    move/from16 v0, v27

    .line 1112
    :goto_e
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v0, 0x0

    goto :goto_f

    .line 1115
    :cond_f
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1117
    :goto_f
    invoke-static {v0}, Lcom/iMe/bots/data/database/converter/Converter;->toBotsDbModelType(Ljava/lang/String;)Lcom/iMe/bots/data/model/BotType;

    move-result-object v59

    .line 1120
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v4, 0x0

    goto :goto_10

    .line 1123
    :cond_10
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1125
    :goto_10
    invoke-static {v4}, Lcom/iMe/bots/data/database/converter/Converter;->toBotsDbModelStatus(Ljava/lang/String;)Lcom/iMe/bots/data/model/BotStatus;

    move-result-object v60

    .line 1126
    new-instance v4, Lcom/iMe/bots/data/model/database/BotsDbModel;

    move-object/from16 v28, v4

    invoke-direct/range {v28 .. v60}, Lcom/iMe/bots/data/model/database/BotsDbModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/bots/domain/model/BotLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JJJFIIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Date;Ljava/util/Date;Ljava/lang/String;Lcom/iMe/bots/data/model/BotType;Lcom/iMe/bots/data/model/BotStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_11

    :cond_11
    const/4 v4, 0x0

    .line 1132
    :goto_11
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v4

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1133
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 954
    invoke-virtual {p0}, Lcom/iMe/bots/data/database/BotsDao_Impl$12;->call()Lcom/iMe/bots/data/model/database/BotsDbModel;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1

    .line 1138
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsDao_Impl$12;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
