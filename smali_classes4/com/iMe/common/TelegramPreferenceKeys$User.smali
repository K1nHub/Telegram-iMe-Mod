.class public final Lcom/iMe/common/TelegramPreferenceKeys$User;
.super Ljava/lang/Object;
.source "TelegramPreferenceKeys.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/common/TelegramPreferenceKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "User"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/common/TelegramPreferenceKeys$User$Default;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/common/TelegramPreferenceKeys$User;

    invoke-direct {v0}, Lcom/iMe/common/TelegramPreferenceKeys$User;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final appVersionRequiredUpdate()Ljava/lang/String;
    .locals 1

    const-string v0, "iMeAppVersionNeedUpdate"

    return-object v0
.end method

.method public static final buildBadPasscodeTriesKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;
    .locals 3

    const-string v0, "section"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "badPasscodeTries_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final buildEnabledChatAttachAlertButtonsKey(Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;
    .locals 3

    const-string v0, "dialogType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enabledChatAttachAlertButtons_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final buildIsSectionLockedKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;
    .locals 3

    const-string v0, "section"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSectionLocked_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final buildLastUptimeMillisKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;
    .locals 3

    const-string v0, "section"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastUptimeMillis_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final buildMultiPanelButtonEnabledKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;
    .locals 2

    const-string v0, "multiPanelButton"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iMeChatPanel_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_enabled"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final buildMultiPanelButtonPositionKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;
    .locals 2

    const-string v0, "multiPanelButton"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iMeChatPanel_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_position"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final buildPasscodeHashKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;
    .locals 3

    const-string v0, "section"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "passcodeHash_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final buildPasscodeRetryInMsKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;
    .locals 3

    const-string v0, "section"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "passcodeRetryInMs_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final buildPasscodeSaltStringKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;
    .locals 3

    const-string v0, "section"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "passcodeSaltString_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final buildPasscodeTypeKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;
    .locals 3

    const-string v0, "section"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "passcodeType_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final buildSortingTabEnabledKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;
    .locals 3

    const-string v0, "sortingFilter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sortingTab_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_enabled"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;
    .locals 3

    const-string v0, "sortingFilter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sortingTab_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_position"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final buildSortingTabSelectedFabsKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;
    .locals 3

    const-string v0, "sortingFilter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sortingTab_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_selectedFabs"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final buildTimeoutKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;
    .locals 3

    const-string v0, "section"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final buildUseFingerprintKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;
    .locals 3

    const-string v0, "section"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "useFingerprint_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final isAccountMuted()Ljava/lang/String;
    .locals 2

    .line 520
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "isAccountMuted"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isAllChatsTabEnabled()Ljava/lang/String;
    .locals 2

    .line 477
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "allChatsTabEnabled"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isArchiveSortingChatsEnabled()Ljava/lang/String;
    .locals 2

    .line 489
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "archiveSorting"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isAutoBackupEnabled()Ljava/lang/String;
    .locals 2

    .line 458
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "autoBackupEnabled"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isChannelWidePostsEnabled()Ljava/lang/String;
    .locals 2

    .line 569
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "channelWidePosts"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isFoldersFirstEnabled()Ljava/lang/String;
    .locals 2

    .line 474
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "foldersFirst"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isFoldersHidden()Ljava/lang/String;
    .locals 2

    .line 471
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "hideFolders"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isHiddenChatsHidden()Ljava/lang/String;
    .locals 2

    .line 712
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "hiddenChatsHidden"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isHideMultiPanelOnScrollEnabled()Ljava/lang/String;
    .locals 2

    .line 621
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "isHideMultiPanelOnScrollEnabled"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isIconInsteadAllChatsTabTitleEnabled()Ljava/lang/String;
    .locals 2

    .line 480
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "iconInsteadAllChatsTabTitle"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isMessagePopupAggregatorEnabled()Ljava/lang/String;
    .locals 2

    .line 566
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "isMessagePopupAggregatorEnabled"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isMultiPanelEnabled()Ljava/lang/String;
    .locals 1

    const-string v0, "iMeChatPanel_PanelEnabled"

    return-object v0
.end method

.method public static final isNeuroBotsAutoEnabledInGroups()Ljava/lang/String;
    .locals 2

    .line 654
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "neuroBotsAutoEnabledInGroups"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isNeuroBotsAutoEnabledInPersonalChats()Ljava/lang/String;
    .locals 2

    .line 651
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "neuroBotsAutoEnabledInPersonalChats"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isNeuroBotsEnabled()Ljava/lang/String;
    .locals 2

    .line 647
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "neuroBotsEnabled"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isNoTopicFirstEnabled()Ljava/lang/String;
    .locals 2

    .line 695
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "noTopicFirst"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isOpenAlbumsInsteadCloudEnabled()Ljava/lang/String;
    .locals 2

    .line 451
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "openAlbumsInsteadCloud"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isPremiumAnimateAvatars()Ljava/lang/String;
    .locals 2

    .line 535
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "premiumAnimateAvatars"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isPremiumAnimateStickers()Ljava/lang/String;
    .locals 2

    .line 526
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "premiumAnimateStickers"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isQuickReactionEnabled()Ljava/lang/String;
    .locals 2

    .line 523
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "quickReactionEnabled"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isRecentChatsEnabled()Ljava/lang/String;
    .locals 2

    .line 702
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "recentChatsEnabled"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isRememberLastDialogEnabled()Ljava/lang/String;
    .locals 2

    .line 677
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "rememberLastDialog"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isRevokeByDefault()Ljava/lang/String;
    .locals 2

    .line 572
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "deleteForAllSelectedByDefault"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isSaveArchiveRecentChatsEnabled()Ljava/lang/String;
    .locals 2

    .line 705
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "saveArchiveRecentChatsEnabled"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isShowChannelBottomPanel()Ljava/lang/String;
    .locals 2

    .line 556
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "showChannelBottomPanel"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isShowOftenUsedNeuroBotsEnabled()Ljava/lang/String;
    .locals 2

    .line 657
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "showOftenUsedNeuroBots"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isShowPremiumBadgeEnabled()Ljava/lang/String;
    .locals 2

    .line 529
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "premiumShowStar"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isShowPremiumStatusEnabled()Ljava/lang/String;
    .locals 2

    .line 532
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "premiumShowStatus"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isSilentSendingEnabled()Ljava/lang/String;
    .locals 2

    .line 671
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "silentSending"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isSortingChatsEnabled()Ljava/lang/String;
    .locals 1

    const-string v0, "sortingChatsEnabled"

    return-object v0
.end method

.method public static final isStoriesAvatarsEnabled()Ljava/lang/String;
    .locals 2

    .line 745
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "isStoriesAvatarsEnabled"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isStoriesBarEnabled()Ljava/lang/String;
    .locals 2

    .line 742
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "isStoriesBarEnabled"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isStoriesEnabled()Ljava/lang/String;
    .locals 2

    .line 739
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "isStoriesEnabled"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isStoriesProfileAvatarEnabled()Ljava/lang/String;
    .locals 2

    .line 748
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "isStoriesProfileAvatarEnabled"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Ljava/lang/String;
    .locals 2

    .line 549
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "swipeToGoToNextUnreadDialogConsiderArchive"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isSwipeToGoToNextUnreadDialogEnabled()Ljava/lang/String;
    .locals 2

    .line 545
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "swipeToGoToNextUnreadDialog"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isTopicsBarAtBottomEnabled()Ljava/lang/String;
    .locals 2

    .line 692
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "topicsBarAtBottom"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isTopicsBarEnabled()Ljava/lang/String;
    .locals 2

    .line 689
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "topicsEnabled"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final lastAutoBackupTime()Ljava/lang/String;
    .locals 2

    .line 464
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "lastAutoBackupTime"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final lastFilterTab()Ljava/lang/String;
    .locals 2

    .line 517
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "lastFilterTab"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final rememberLastDialogId()Ljava/lang/String;
    .locals 2

    .line 680
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "rememberLastDialogId"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final rememberLastDialogTopicId()Ljava/lang/String;
    .locals 2

    .line 683
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "rememberLastDialogTopicId"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedAllChatsTabFabs()Ljava/lang/String;
    .locals 2

    .line 483
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "selectedAllChatsTabFabs"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedAutoBackupInterval()Ljava/lang/String;
    .locals 2

    .line 461
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "autoBackupInterval"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedContactsFilter()Ljava/lang/String;
    .locals 2

    .line 538
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "contactsFilter"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedDialogTypesForSwipeToGoToNextUnreadDialog()Ljava/lang/String;
    .locals 2

    .line 553
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "swipeToGoToNextUnreadDialogTypes"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedDrawStatusTypes()Ljava/lang/String;
    .locals 2

    .line 732
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "selectedDrawStatusTypes"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedMessagePopupItems()Ljava/lang/String;
    .locals 2

    .line 563
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "messagePopupItems"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedMusicTab()Ljava/lang/String;
    .locals 2

    .line 640
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "lastMusicTab"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedRecentChatsDialogTypes()Ljava/lang/String;
    .locals 2

    .line 729
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "selectedRecentChatsDialogTypes"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedSentMessageFont()Ljava/lang/String;
    .locals 2

    .line 674
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "selectedSentMessageFont"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final sortingDeployVersion()Ljava/lang/String;
    .locals 2

    .line 514
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "SortingFilters_DeployVersion"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final templatesChannelId()Ljava/lang/String;
    .locals 2

    .line 664
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "templatesChannelId"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final walletFingerprintUnlockEnabled()Ljava/lang/String;
    .locals 2

    .line 722
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "walletFingerprintUnlockEnabled"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final walletPinCodeEncrypted()Ljava/lang/String;
    .locals 2

    .line 719
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "walletPinCodeEncrypted"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final walletRefreshToken()Ljava/lang/String;
    .locals 1

    const-string v0, "walletRefreshToken"

    return-object v0
.end method
