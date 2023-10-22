.class public final Lcom/iMe/utils/extentions/model/topic/TopicExtKt;
.super Ljava/lang/Object;
.source "TopicExt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/utils/extentions/model/topic/TopicExtKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final info(Lcom/iMe/storage/data/repository/topics/Topic;)Lcom/iMe/ui/topics/TopicInfo;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/iMe/utils/extentions/model/topic/TopicExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 341
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 342
    sget v0, Lorg/telegram/messenger/R$color;->topic_yellow:I

    .line 343
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_other:I

    .line 344
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_other_small:I

    .line 341
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 340
    :pswitch_1
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_red:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_glasses:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 339
    :pswitch_2
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_yellow:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_umbrella:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 338
    :pswitch_3
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_purple:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_trophy:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 337
    :pswitch_4
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_dark_blue:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_darts:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 336
    :pswitch_5
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_pink:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_sun:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 335
    :pswitch_6
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_green:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_melon:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 334
    :pswitch_7
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_red:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_scissors:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 333
    :pswitch_8
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_light_blue:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_duck:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 332
    :pswitch_9
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_purple:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_ufo:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 331
    :pswitch_a
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_pink:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_rocket:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 330
    :pswitch_b
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_yellow:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_pizza:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 329
    :pswitch_c
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_pink:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_pingpong:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 328
    :pswitch_d
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_dark_blue:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_pill:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 327
    :pswitch_e
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_green:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_pagoda:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 326
    :pswitch_f
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_pink:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_mission:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 325
    :pswitch_10
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_yellow:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_medal:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 324
    :pswitch_11
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_pink:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_wand:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 323
    :pswitch_12
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_light_blue:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_palm:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 322
    :pswitch_13
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_green:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_shoe:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 321
    :pswitch_14
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_red:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_funds:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 320
    :pswitch_15
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_light_blue:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_flower:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 319
    :pswitch_16
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_dark_blue:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_cubes:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 318
    :pswitch_17
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_red:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_colosseum:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 317
    :pswitch_18
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_pink:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_coffee:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 316
    :pswitch_19
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_green:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_cloche:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 315
    :pswitch_1a
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_light_blue:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_chess:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 314
    :pswitch_1b
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_yellow:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_chef:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 313
    :pswitch_1c
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_pink:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_beard:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 312
    :pswitch_1d
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_green:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_calculator:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 311
    :pswitch_1e
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_purple:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_bot:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 305
    :pswitch_1f
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 306
    sget v0, Lorg/telegram/messenger/R$color;->topic_pink:I

    .line 307
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_adulthood:I

    .line 308
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_adulthood_small:I

    .line 305
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 304
    :pswitch_20
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_purple:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_tv:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_tv_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 298
    :pswitch_21
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 299
    sget v0, Lorg/telegram/messenger/R$color;->topic_dark_blue:I

    .line 300
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_travel:I

    .line 301
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_travel_small:I

    .line 298
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 292
    :pswitch_22
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 293
    sget v0, Lorg/telegram/messenger/R$color;->topic_blue:I

    .line 294
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_telegram:I

    .line 295
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_telegram_small:I

    .line 292
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 286
    :pswitch_23
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 287
    sget v0, Lorg/telegram/messenger/R$color;->topic_purple:I

    .line 288
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_technology:I

    .line 289
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_technology_small:I

    .line 286
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 280
    :pswitch_24
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 281
    sget v0, Lorg/telegram/messenger/R$color;->topic_dark_blue:I

    .line 282
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_sport:I

    .line 283
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_sport_small:I

    .line 280
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 274
    :pswitch_25
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 275
    sget v0, Lorg/telegram/messenger/R$color;->topic_light_blue:I

    .line 276
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_science:I

    .line 277
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_science_small:I

    .line 274
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 268
    :pswitch_26
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 269
    sget v0, Lorg/telegram/messenger/R$color;->topic_dark_blue:I

    .line 270
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_sales:I

    .line 271
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_sales_small:I

    .line 268
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 262
    :pswitch_27
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 263
    sget v0, Lorg/telegram/messenger/R$color;->topic_yellow:I

    .line 264
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_religion:I

    .line 265
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_religion_small:I

    .line 262
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 256
    :pswitch_28
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 257
    sget v0, Lorg/telegram/messenger/R$color;->topic_red:I

    .line 258
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_quotes:I

    .line 259
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_quotes_small:I

    .line 256
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 250
    :pswitch_29
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 251
    sget v0, Lorg/telegram/messenger/R$color;->topic_dark_blue:I

    .line 252
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_politics:I

    .line 253
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_politics_small:I

    .line 250
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 244
    :pswitch_2a
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 245
    sget v0, Lorg/telegram/messenger/R$color;->topic_pink:I

    .line 246
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_news:I

    .line 247
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_news_small:I

    .line 244
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 238
    :pswitch_2b
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 239
    sget v0, Lorg/telegram/messenger/R$color;->topic_yellow:I

    .line 240
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_music:I

    .line 241
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_music_small:I

    .line 238
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 232
    :pswitch_2c
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 233
    sget v0, Lorg/telegram/messenger/R$color;->topic_pink:I

    .line 234
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_medicine:I

    .line 235
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_medicine_small:I

    .line 232
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 226
    :pswitch_2d
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 227
    sget v0, Lorg/telegram/messenger/R$color;->topic_dark_blue:I

    .line 228
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_marketing:I

    .line 229
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_marketing_small:I

    .line 226
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 220
    :pswitch_2e
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 221
    sget v0, Lorg/telegram/messenger/R$color;->topic_purple:I

    .line 222
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_lifehack:I

    .line 223
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_lifehack_small:I

    .line 220
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 214
    :pswitch_2f
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 215
    sget v0, Lorg/telegram/messenger/R$color;->topic_blue:I

    .line 216
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_laws:I

    .line 217
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_laws_small:I

    .line 214
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 213
    :pswitch_30
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_red:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_job:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_job_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 212
    :pswitch_31
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_blue:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_it:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_it_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 206
    :pswitch_32
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 207
    sget v0, Lorg/telegram/messenger/R$color;->topic_purple:I

    .line 208
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_humor:I

    .line 209
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_humor_small:I

    .line 206
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 200
    :pswitch_33
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 201
    sget v0, Lorg/telegram/messenger/R$color;->topic_red:I

    .line 202
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_home:I

    .line 203
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_home_small:I

    .line 200
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 194
    :pswitch_34
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 195
    sget v0, Lorg/telegram/messenger/R$color;->topic_purple:I

    .line 196
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_hobbies:I

    .line 197
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_hobbies_small:I

    .line 194
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 188
    :pswitch_35
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 189
    sget v0, Lorg/telegram/messenger/R$color;->topic_dark_blue:I

    .line 190
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_games:I

    .line 191
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_games_small:I

    .line 188
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 182
    :pswitch_36
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 183
    sget v0, Lorg/telegram/messenger/R$color;->topic_pink:I

    .line 184
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_friends:I

    .line 185
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_friends_small:I

    .line 182
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 176
    :pswitch_37
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 177
    sget v0, Lorg/telegram/messenger/R$color;->topic_green:I

    .line 178
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_food:I

    .line 179
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_food_small:I

    .line 176
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 170
    :pswitch_38
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 171
    sget v0, Lorg/telegram/messenger/R$color;->topic_blue:I

    .line 172
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_finance:I

    .line 173
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_finance_small:I

    .line 170
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 164
    :pswitch_39
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 165
    sget v0, Lorg/telegram/messenger/R$color;->topic_purple:I

    .line 166
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_films:I

    .line 167
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_films_small:I

    .line 164
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 158
    :pswitch_3a
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 159
    sget v0, Lorg/telegram/messenger/R$color;->topic_red:I

    .line 160
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_fashion:I

    .line 161
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_fashion_small:I

    .line 158
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 152
    :pswitch_3b
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 153
    sget v0, Lorg/telegram/messenger/R$color;->topic_green:I

    .line 154
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_family:I

    .line 155
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_family_small:I

    .line 152
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 146
    :pswitch_3c
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 147
    sget v0, Lorg/telegram/messenger/R$color;->topic_blue:I

    .line 148
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_education:I

    .line 149
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_education_small:I

    .line 146
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 140
    :pswitch_3d
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 141
    sget v0, Lorg/telegram/messenger/R$color;->topic_blue:I

    .line 142
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_economy:I

    .line 143
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_economy_small:I

    .line 140
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 134
    :pswitch_3e
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 135
    sget v0, Lorg/telegram/messenger/R$color;->topic_light_blue:I

    .line 136
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_develop:I

    .line 137
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_develop_small:I

    .line 134
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto :goto_0

    .line 128
    :pswitch_3f
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 129
    sget v0, Lorg/telegram/messenger/R$color;->topic_green:I

    .line 130
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_design:I

    .line 131
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_design_small:I

    .line 128
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto :goto_0

    .line 122
    :pswitch_40
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 123
    sget v0, Lorg/telegram/messenger/R$color;->topic_purple:I

    .line 124
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_crypto:I

    .line 125
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_crypto_small:I

    .line 122
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto :goto_0

    .line 116
    :pswitch_41
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 117
    sget v0, Lorg/telegram/messenger/R$color;->topic_orange:I

    .line 118
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_business:I

    .line 119
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_business_small:I

    .line 116
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto :goto_0

    .line 110
    :pswitch_42
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 111
    sget v0, Lorg/telegram/messenger/R$color;->topic_blue:I

    .line 112
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_books:I

    .line 113
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_books_small:I

    .line 110
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto :goto_0

    .line 104
    :pswitch_43
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 105
    sget v0, Lorg/telegram/messenger/R$color;->topic_orange:I

    .line 106
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_blogs:I

    .line 107
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_blogs_small:I

    .line 104
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto :goto_0

    .line 98
    :pswitch_44
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 99
    sget v0, Lorg/telegram/messenger/R$color;->topic_dark_blue:I

    .line 100
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_auto:I

    .line 101
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_auto_small:I

    .line 98
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto :goto_0

    .line 92
    :pswitch_45
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 93
    sget v0, Lorg/telegram/messenger/R$color;->topic_orange:I

    .line 94
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_astrology:I

    .line 95
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_astrology_small:I

    .line 92
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto :goto_0

    .line 86
    :pswitch_46
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 87
    sget v0, Lorg/telegram/messenger/R$color;->topic_orange:I

    .line 88
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_art:I

    .line 89
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_art_small:I

    .line 86
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto :goto_0

    .line 80
    :pswitch_47
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    .line 81
    sget v0, Lorg/telegram/messenger/R$color;->topic_green:I

    .line 82
    sget v1, Lorg/telegram/messenger/R$string;->topics_title_animals:I

    .line 83
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_animals_small:I

    .line 80
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
