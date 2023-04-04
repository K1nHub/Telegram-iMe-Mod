.class public final Lcom/iMe/utils/extentions/model/filter/FilterIconExtKt;
.super Ljava/lang/Object;
.source "FilterIconExt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/utils/extentions/model/filter/FilterIconExtKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final iconInfo(Lcom/iMe/storage/domain/model/filters/FilterIcon;)Lcom/iMe/ui/folder/FilterIconInfo;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/iMe/utils/extentions/model/filter/FilterIconExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 51
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_support:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_support_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 50
    :pswitch_1
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_gift:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_gift_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 49
    :pswitch_2
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_favorites:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_favorites_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 48
    :pswitch_3
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_security:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_security_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 47
    :pswitch_4
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_pumpkin:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_pumpkin_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 46
    :pswitch_5
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_flittermouse:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_flittermouse_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 45
    :pswitch_6
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_telephone:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_telephone_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 44
    :pswitch_7
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_game:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_game_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 43
    :pswitch_8
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_gear:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_gear_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 42
    :pswitch_9
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_ball:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_ball_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 41
    :pswitch_a
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_mask:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_mask_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 40
    :pswitch_b
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_camera:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_camera_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 39
    :pswitch_c
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_gallery:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_gallery_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 38
    :pswitch_d
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_folder:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_folder_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 37
    :pswitch_e
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_globe:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_globe_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 36
    :pswitch_f
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_call:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_call_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 35
    :pswitch_10
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_headset:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_headset_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 34
    :pswitch_11
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_micro:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_micro_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 33
    :pswitch_12
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_chart:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_chart_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 32
    :pswitch_13
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bubble_point:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bubble_point_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 31
    :pswitch_14
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bubble:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bubble_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 30
    :pswitch_15
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bubbles:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bubbles_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 29
    :pswitch_16
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_star:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_star_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 28
    :pswitch_17
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_grid_3x3:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_grid_3x3_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 27
    :pswitch_18
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_flower:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_flower_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 26
    :pswitch_19
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_plane:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_plane_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 25
    :pswitch_1a
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_heart:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_heart_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 24
    :pswitch_1b
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_home:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_home_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 23
    :pswitch_1c
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_computer:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_computer_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 22
    :pswitch_1d
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_wineglass:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_wineglass_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 21
    :pswitch_1e
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bell:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bell_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 20
    :pswitch_1f
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_suitcase:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_suitcase_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto :goto_0

    .line 19
    :pswitch_20
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bear:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bear_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto :goto_0

    .line 18
    :pswitch_21
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_crown:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_crown_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto :goto_0

    .line 17
    :pswitch_22
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_cloud:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_cloud_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto :goto_0

    .line 16
    :pswitch_23
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_lock:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_lock_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto :goto_0

    .line 15
    :pswitch_24
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bot:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bot_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto :goto_0

    .line 14
    :pswitch_25
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_channel:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_channel_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto :goto_0

    .line 13
    :pswitch_26
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_users:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_users_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto :goto_0

    .line 12
    :pswitch_27
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_user:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_user_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto :goto_0

    .line 11
    :pswitch_28
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_eye:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_eye_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto :goto_0

    .line 10
    :pswitch_29
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_grid_2x2:I

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_grid_2x2_filled:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
