.class public final Lcom/smedialink/utils/extentions/model/filter/FilterFabExtKt;
.super Ljava/lang/Object;
.source "FilterFabExt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/utils/extentions/model/filter/FilterFabExtKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final iconResId(Lcom/smedialink/storage/domain/model/filters/FilterFab;Z)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/smedialink/utils/extentions/model/filter/FilterFabExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 16
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_plus:I

    goto :goto_0

    :pswitch_1
    if-eqz p1, :cond_0

    .line 15
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_fab_albums:I

    goto :goto_0

    :cond_0
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_mini_fab_albums:I

    goto :goto_0

    :pswitch_2
    if-eqz p1, :cond_1

    .line 14
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_fab_music:I

    goto :goto_0

    :cond_1
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_mini_fab_music:I

    goto :goto_0

    :pswitch_3
    if-eqz p1, :cond_2

    .line 13
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_fab_contacts:I

    goto :goto_0

    :cond_2
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_mini_fab_contacts:I

    goto :goto_0

    :pswitch_4
    if-eqz p1, :cond_3

    .line 12
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_fab_wallet:I

    goto :goto_0

    :cond_3
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_mini_fab_wallet:I

    goto :goto_0

    :pswitch_5
    if-eqz p1, :cond_4

    .line 11
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_fab_mark_all_read:I

    goto :goto_0

    :cond_4
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_mini_fab_mark_all_read:I

    goto :goto_0

    :pswitch_6
    if-eqz p1, :cond_5

    .line 10
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_fab_cloud:I

    goto :goto_0

    :cond_5
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_mini_fab_cloud:I

    goto :goto_0

    :pswitch_7
    if-eqz p1, :cond_6

    .line 9
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_fab_archive:I

    goto :goto_0

    :cond_6
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_mini_fab_archive:I

    goto :goto_0

    :pswitch_8
    if-eqz p1, :cond_7

    .line 8
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_fab_create_chat:I

    goto :goto_0

    :cond_7
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_mini_fab_create_chat:I

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static final nameResId(Lcom/smedialink/storage/domain/model/filters/FilterFab;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/smedialink/utils/extentions/model/filter/FilterFabExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 28
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    sget p0, Lorg/telegram/messenger/R$string;->cloud_albums_intro_button:I

    goto :goto_0

    .line 27
    :pswitch_1
    sget p0, Lorg/telegram/messenger/R$string;->music_albums_tab:I

    goto :goto_0

    .line 26
    :pswitch_2
    sget p0, Lorg/telegram/messenger/R$string;->cloud_filter_music:I

    goto :goto_0

    .line 25
    :pswitch_3
    sget p0, Lorg/telegram/messenger/R$string;->folder_fab_settings_fab_contacts:I

    goto :goto_0

    .line 24
    :pswitch_4
    sget p0, Lorg/telegram/messenger/R$string;->folder_fab_settings_fab_wallet:I

    goto :goto_0

    .line 23
    :pswitch_5
    sget p0, Lorg/telegram/messenger/R$string;->folder_fab_settings_fab_mark_all_read:I

    goto :goto_0

    .line 22
    :pswitch_6
    sget p0, Lorg/telegram/messenger/R$string;->folder_fab_settings_fab_cloud:I

    goto :goto_0

    .line 21
    :pswitch_7
    sget p0, Lorg/telegram/messenger/R$string;->folder_fab_settings_fab_archive:I

    goto :goto_0

    .line 20
    :pswitch_8
    sget p0, Lorg/telegram/messenger/R$string;->folder_fab_settings_fab_create_chat:I

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
