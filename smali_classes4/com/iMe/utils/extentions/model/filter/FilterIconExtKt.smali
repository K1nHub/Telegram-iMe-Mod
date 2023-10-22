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

    .line 50
    sget-object v0, Lcom/iMe/utils/extentions/model/filter/FilterIconExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 256
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 257
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_support:I

    .line 258
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_support_filled:I

    .line 256
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 251
    :pswitch_1
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 252
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_gift:I

    .line 253
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_gift_filled:I

    .line 251
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 246
    :pswitch_2
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 247
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_favorites:I

    .line 248
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_favorites_filled:I

    .line 246
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 241
    :pswitch_3
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 242
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_security:I

    .line 243
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_security_filled:I

    .line 241
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 236
    :pswitch_4
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 237
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_pumpkin:I

    .line 238
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_pumpkin_filled:I

    .line 236
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 231
    :pswitch_5
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 232
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_flittermouse:I

    .line 233
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_flittermouse_filled:I

    .line 231
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 226
    :pswitch_6
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 227
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_telephone:I

    .line 228
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_telephone_filled:I

    .line 226
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 221
    :pswitch_7
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 222
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_game:I

    .line 223
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_game_filled:I

    .line 221
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 216
    :pswitch_8
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 217
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_gear:I

    .line 218
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_gear_filled:I

    .line 216
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 211
    :pswitch_9
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 212
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_ball:I

    .line 213
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_ball_filled:I

    .line 211
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 206
    :pswitch_a
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 207
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_mask:I

    .line 208
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_mask_filled:I

    .line 206
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 201
    :pswitch_b
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 202
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_camera:I

    .line 203
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_camera_filled:I

    .line 201
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 196
    :pswitch_c
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 197
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_gallery:I

    .line 198
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_gallery_filled:I

    .line 196
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 191
    :pswitch_d
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 192
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_folder:I

    .line 193
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_folder_filled:I

    .line 191
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 186
    :pswitch_e
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 187
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_globe:I

    .line 188
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_globe_filled:I

    .line 186
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 181
    :pswitch_f
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 182
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_call:I

    .line 183
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_call_filled:I

    .line 181
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 176
    :pswitch_10
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 177
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_headset:I

    .line 178
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_headset_filled:I

    .line 176
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 171
    :pswitch_11
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 172
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_micro:I

    .line 173
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_micro_filled:I

    .line 171
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 166
    :pswitch_12
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 167
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_chart:I

    .line 168
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_chart_filled:I

    .line 166
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 161
    :pswitch_13
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 162
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bubble_point:I

    .line 163
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bubble_point_filled:I

    .line 161
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 156
    :pswitch_14
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 157
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bubble:I

    .line 158
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bubble_filled:I

    .line 156
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 151
    :pswitch_15
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 152
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bubbles:I

    .line 153
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bubbles_filled:I

    .line 151
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 146
    :pswitch_16
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 147
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_star:I

    .line 148
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_star_filled:I

    .line 146
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 141
    :pswitch_17
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 142
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_grid_3x3:I

    .line 143
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_grid_3x3_filled:I

    .line 141
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 136
    :pswitch_18
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 137
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_flower:I

    .line 138
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_flower_filled:I

    .line 136
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 131
    :pswitch_19
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 132
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_plane:I

    .line 133
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_plane_filled:I

    .line 131
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 126
    :pswitch_1a
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 127
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_heart:I

    .line 128
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_heart_filled:I

    .line 126
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 121
    :pswitch_1b
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 122
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_home:I

    .line 123
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_home_filled:I

    .line 121
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 116
    :pswitch_1c
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 117
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_computer:I

    .line 118
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_computer_filled:I

    .line 116
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 111
    :pswitch_1d
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 112
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_wineglass:I

    .line 113
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_wineglass_filled:I

    .line 111
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 106
    :pswitch_1e
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 107
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bell:I

    .line 108
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bell_filled:I

    .line 106
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto/16 :goto_0

    .line 101
    :pswitch_1f
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 102
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_suitcase:I

    .line 103
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_suitcase_filled:I

    .line 101
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto :goto_0

    .line 96
    :pswitch_20
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 97
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bear:I

    .line 98
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bear_filled:I

    .line 96
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto :goto_0

    .line 91
    :pswitch_21
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 92
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_crown:I

    .line 93
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_crown_filled:I

    .line 91
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto :goto_0

    .line 86
    :pswitch_22
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 87
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_cloud:I

    .line 88
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_cloud_filled:I

    .line 86
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto :goto_0

    .line 81
    :pswitch_23
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 82
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_lock:I

    .line 83
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_lock_filled:I

    .line 81
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto :goto_0

    .line 76
    :pswitch_24
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 77
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bot:I

    .line 78
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bot_filled:I

    .line 76
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto :goto_0

    .line 71
    :pswitch_25
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 72
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_channel:I

    .line 73
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_channel_filled:I

    .line 71
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto :goto_0

    .line 66
    :pswitch_26
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 67
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_users:I

    .line 68
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_users_filled:I

    .line 66
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto :goto_0

    .line 61
    :pswitch_27
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 62
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_user:I

    .line 63
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_user_filled:I

    .line 61
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto :goto_0

    .line 56
    :pswitch_28
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 57
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_eye:I

    .line 58
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_eye_filled:I

    .line 56
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/folder/FilterIconInfo;-><init>(II)V

    goto :goto_0

    .line 51
    :pswitch_29
    new-instance p0, Lcom/iMe/ui/folder/FilterIconInfo;

    .line 52
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_grid_2x2:I

    .line 53
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_grid_2x2_filled:I

    .line 51
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
