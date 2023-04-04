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

    .line 8
    sget-object v0, Lcom/iMe/utils/extentions/model/topic/TopicExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 80
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_yellow:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_other:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_other_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 79
    :pswitch_1
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_red:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_glasses:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 78
    :pswitch_2
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_yellow:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_umbrella:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 77
    :pswitch_3
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_purple:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_trophy:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 76
    :pswitch_4
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_dark_blue:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_darts:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 75
    :pswitch_5
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_pink:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_sun:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 74
    :pswitch_6
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_green:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_melon:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 73
    :pswitch_7
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_red:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_scissors:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 72
    :pswitch_8
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_light_blue:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_duck:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 71
    :pswitch_9
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_purple:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_ufo:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 70
    :pswitch_a
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_pink:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_rocket:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 69
    :pswitch_b
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_yellow:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_pizza:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 68
    :pswitch_c
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_pink:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_pingpong:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 67
    :pswitch_d
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_dark_blue:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_pill:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 66
    :pswitch_e
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_green:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_pagoda:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 65
    :pswitch_f
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_pink:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_mission:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 64
    :pswitch_10
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_yellow:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_medal:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 63
    :pswitch_11
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_pink:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_wand:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 62
    :pswitch_12
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_light_blue:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_palm:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 61
    :pswitch_13
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_green:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_shoe:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 60
    :pswitch_14
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_red:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_funds:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 59
    :pswitch_15
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_light_blue:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_flower:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 58
    :pswitch_16
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_dark_blue:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_cubes:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 57
    :pswitch_17
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_red:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_colosseum:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 56
    :pswitch_18
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_pink:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_coffee:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 55
    :pswitch_19
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_green:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_cloche:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 54
    :pswitch_1a
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_light_blue:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_chess:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 53
    :pswitch_1b
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_yellow:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_chef:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 52
    :pswitch_1c
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_pink:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_beard:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 51
    :pswitch_1d
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_green:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_calculator:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 50
    :pswitch_1e
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v1, Lorg/telegram/messenger/R$color;->topic_purple:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_bot:I

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 49
    :pswitch_1f
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_pink:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_adulthood:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_adulthood_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 48
    :pswitch_20
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_purple:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_tv:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_tv_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 47
    :pswitch_21
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_dark_blue:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_travel:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_travel_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 46
    :pswitch_22
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_blue:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_telegram:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_telegram_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 45
    :pswitch_23
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_purple:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_technology:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_technology_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 44
    :pswitch_24
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_dark_blue:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_sport:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_sport_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 43
    :pswitch_25
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_light_blue:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_science:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_science_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 42
    :pswitch_26
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_dark_blue:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_sales:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_sales_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 41
    :pswitch_27
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_yellow:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_religion:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_religion_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 40
    :pswitch_28
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_red:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_quotes:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_quotes_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 39
    :pswitch_29
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_dark_blue:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_politics:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_politics_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 38
    :pswitch_2a
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_pink:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_news:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_news_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 37
    :pswitch_2b
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_yellow:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_music:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_music_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 36
    :pswitch_2c
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_pink:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_medicine:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_medicine_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 35
    :pswitch_2d
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_dark_blue:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_marketing:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_marketing_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 34
    :pswitch_2e
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_purple:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_lifehack:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_lifehack_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 33
    :pswitch_2f
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_blue:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_laws:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_laws_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 32
    :pswitch_30
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_red:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_job:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_job_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 31
    :pswitch_31
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_blue:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_it:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_it_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 30
    :pswitch_32
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_purple:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_humor:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_humor_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 29
    :pswitch_33
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_red:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_home:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_home_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 28
    :pswitch_34
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_purple:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_hobbies:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_hobbies_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 27
    :pswitch_35
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_dark_blue:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_games:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_games_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 26
    :pswitch_36
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_pink:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_friends:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_friends_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 25
    :pswitch_37
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_green:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_food:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_food_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 24
    :pswitch_38
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_blue:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_finance:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_finance_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 23
    :pswitch_39
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_purple:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_films:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_films_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 22
    :pswitch_3a
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_red:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_fashion:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_fashion_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 21
    :pswitch_3b
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_green:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_family:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_family_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 20
    :pswitch_3c
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_blue:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_education:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_education_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 19
    :pswitch_3d
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_blue:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_economy:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_economy_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto/16 :goto_0

    .line 18
    :pswitch_3e
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_light_blue:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_develop:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_develop_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto :goto_0

    .line 17
    :pswitch_3f
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_green:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_design:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_design_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto :goto_0

    .line 16
    :pswitch_40
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_purple:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_crypto:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_crypto_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto :goto_0

    .line 15
    :pswitch_41
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_orange:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_business:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_business_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto :goto_0

    .line 14
    :pswitch_42
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_blue:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_books:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_books_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto :goto_0

    .line 13
    :pswitch_43
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_orange:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_blogs:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_blogs_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto :goto_0

    .line 12
    :pswitch_44
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_dark_blue:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_auto:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_auto_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto :goto_0

    .line 11
    :pswitch_45
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_orange:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_astrology:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_astrology_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto :goto_0

    .line 10
    :pswitch_46
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_orange:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_art:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_art_small:I

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/topics/TopicInfo;-><init>(III)V

    goto :goto_0

    .line 9
    :pswitch_47
    new-instance p0, Lcom/iMe/ui/topics/TopicInfo;

    sget v0, Lorg/telegram/messenger/R$color;->topic_green:I

    sget v1, Lorg/telegram/messenger/R$string;->topics_title_animals:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_animals_small:I

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
