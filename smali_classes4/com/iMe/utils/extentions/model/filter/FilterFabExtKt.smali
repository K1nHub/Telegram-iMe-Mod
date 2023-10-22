.class public final Lcom/iMe/utils/extentions/model/filter/FilterFabExtKt;
.super Ljava/lang/Object;
.source "FilterFabExt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/utils/extentions/model/filter/FilterFabExtKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final bindBig(Lcom/iMe/storage/domain/model/filters/FilterFab;Lorg/telegram/ui/Components/RLottieImageView;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/iMe/utils/extentions/model/filter/FilterFabExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 31
    :pswitch_0
    sget p0, Lorg/telegram/messenger/R$raw;->write_contacts_fab_icon_camera:I

    const/16 v0, 0x38

    invoke-virtual {p1, p0, v0, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto :goto_0

    .line 30
    :pswitch_1
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_clear:I

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_0

    .line 29
    :pswitch_2
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_add:I

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_0

    .line 28
    :pswitch_3
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_fab_albums:I

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_0

    .line 27
    :pswitch_4
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_fab_music:I

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_0

    .line 26
    :pswitch_5
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_fab_contacts:I

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_0

    .line 25
    :pswitch_6
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_fab_wallet:I

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_0

    .line 24
    :pswitch_7
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_fab_mark_all_read:I

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_0

    .line 23
    :pswitch_8
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_fab_cloud:I

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_0

    .line 22
    :pswitch_9
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_fab_archive:I

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_0

    .line 21
    :pswitch_a
    sget p0, Lorg/telegram/messenger/R$raw;->write_contacts_fab_icon:I

    const/16 v0, 0x34

    invoke-virtual {p1, p0, v0, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static final bindMini(Lcom/iMe/storage/domain/model/filters/FilterFab;Lorg/telegram/ui/Components/RLottieImageView;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/iMe/utils/extentions/model/filter/FilterFabExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 47
    :pswitch_0
    sget p0, Lorg/telegram/messenger/R$raw;->write_contacts_fab_icon_camera:I

    const/16 v0, 0x2c

    invoke-virtual {p1, p0, v0, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto :goto_0

    .line 46
    :pswitch_1
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_clear:I

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_0

    .line 45
    :pswitch_2
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_add:I

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_0

    .line 44
    :pswitch_3
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_mini_fab_albums:I

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_0

    .line 43
    :pswitch_4
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_mini_fab_music:I

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_0

    .line 42
    :pswitch_5
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_mini_fab_contacts:I

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_0

    .line 41
    :pswitch_6
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_mini_fab_wallet:I

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_0

    .line 40
    :pswitch_7
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_mini_fab_mark_all_read:I

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_0

    .line 39
    :pswitch_8
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_mini_fab_cloud:I

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_0

    .line 38
    :pswitch_9
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_mini_fab_archive:I

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_0

    .line 37
    :pswitch_a
    sget p0, Lorg/telegram/messenger/R$drawable;->fab_compose_small:I

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static final nameResId(Lcom/iMe/storage/domain/model/filters/FilterFab;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/iMe/utils/extentions/model/filter/FilterFabExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 66
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    sget p0, Lorg/telegram/messenger/R$string;->Story:I

    const-string v0, "Story"

    invoke-static {v0, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(\"Story\", R.string.Story)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    :pswitch_1
    sget p0, Lorg/telegram/messenger/R$string;->AreYouSureClearDraftsTitle:I

    const-string v0, "AreYouSureClearDraftsTitle"

    .line 61
    invoke-static {v0, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(\n        \"AreY\u2026ureClearDraftsTitle\n    )"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :pswitch_2
    sget p0, Lorg/telegram/messenger/R$string;->cloud_albums_intro_button:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getInternalString(R.stri\u2026loud_albums_intro_button)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_3
    sget p0, Lorg/telegram/messenger/R$string;->music_albums_tab:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getInternalString(R.string.music_albums_tab)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :pswitch_4
    sget p0, Lorg/telegram/messenger/R$string;->cloud_filter_music:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getInternalString(R.string.cloud_filter_music)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :pswitch_5
    sget p0, Lorg/telegram/messenger/R$string;->folder_fab_settings_fab_contacts:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getInternalString(R.stri\u2026ab_settings_fab_contacts)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_6
    sget p0, Lorg/telegram/messenger/R$string;->folder_fab_settings_fab_wallet:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getInternalString(R.stri\u2026_fab_settings_fab_wallet)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_7
    sget p0, Lorg/telegram/messenger/R$string;->folder_fab_settings_fab_mark_all_read:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getInternalString(R.stri\u2026ttings_fab_mark_all_read)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :pswitch_8
    sget p0, Lorg/telegram/messenger/R$string;->folder_fab_settings_fab_cloud:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getInternalString(R.stri\u2026r_fab_settings_fab_cloud)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :pswitch_9
    sget p0, Lorg/telegram/messenger/R$string;->folder_fab_settings_fab_archive:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getInternalString(R.stri\u2026fab_settings_fab_archive)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :pswitch_a
    sget p0, Lorg/telegram/messenger/R$string;->folder_fab_settings_fab_create_chat:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getInternalString(R.stri\u2026settings_fab_create_chat)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
