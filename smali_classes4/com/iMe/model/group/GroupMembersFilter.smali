.class public final enum Lcom/iMe/model/group/GroupMembersFilter;
.super Ljava/lang/Enum;
.source "GroupMembersFilter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/group/GroupMembersFilter$Companion;,
        Lcom/iMe/model/group/GroupMembersFilter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/model/group/GroupMembersFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/model/group/GroupMembersFilter;

.field public static final enum ADMINISTRATORS:Lcom/iMe/model/group/GroupMembersFilter;

.field public static final enum ALL:Lcom/iMe/model/group/GroupMembersFilter;

.field public static final enum BLOCKED:Lcom/iMe/model/group/GroupMembersFilter;

.field public static final enum BOTS:Lcom/iMe/model/group/GroupMembersFilter;

.field public static final enum CONTACTS:Lcom/iMe/model/group/GroupMembersFilter;

.field public static final Companion:Lcom/iMe/model/group/GroupMembersFilter$Companion;

.field public static final enum DELETED:Lcom/iMe/model/group/GroupMembersFilter;

.field public static final enum PREMIUM:Lcom/iMe/model/group/GroupMembersFilter;

.field public static final enum RESTRICTED:Lcom/iMe/model/group/GroupMembersFilter;

.field public static defaultValue:Lcom/iMe/model/group/GroupMembersFilter;


# instance fields
.field private final needShowAction:Z

.field private final serverFilter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/model/group/GroupMembersFilter;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/iMe/model/group/GroupMembersFilter;

    sget-object v1, Lcom/iMe/model/group/GroupMembersFilter;->ALL:Lcom/iMe/model/group/GroupMembersFilter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/group/GroupMembersFilter;->ADMINISTRATORS:Lcom/iMe/model/group/GroupMembersFilter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/group/GroupMembersFilter;->BOTS:Lcom/iMe/model/group/GroupMembersFilter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/group/GroupMembersFilter;->CONTACTS:Lcom/iMe/model/group/GroupMembersFilter;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/group/GroupMembersFilter;->PREMIUM:Lcom/iMe/model/group/GroupMembersFilter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/group/GroupMembersFilter;->RESTRICTED:Lcom/iMe/model/group/GroupMembersFilter;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/group/GroupMembersFilter;->BLOCKED:Lcom/iMe/model/group/GroupMembersFilter;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/group/GroupMembersFilter;->DELETED:Lcom/iMe/model/group/GroupMembersFilter;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 12
    new-instance v0, Lcom/iMe/model/group/GroupMembersFilter;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    const-string v2, "ALL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/iMe/model/group/GroupMembersFilter;-><init>(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;Z)V

    sput-object v0, Lcom/iMe/model/group/GroupMembersFilter;->ALL:Lcom/iMe/model/group/GroupMembersFilter;

    .line 13
    new-instance v1, Lcom/iMe/model/group/GroupMembersFilter;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;-><init>()V

    const-string v4, "ADMINISTRATORS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/iMe/model/group/GroupMembersFilter;-><init>(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;Z)V

    sput-object v1, Lcom/iMe/model/group/GroupMembersFilter;->ADMINISTRATORS:Lcom/iMe/model/group/GroupMembersFilter;

    .line 14
    new-instance v1, Lcom/iMe/model/group/GroupMembersFilter;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBots;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBots;-><init>()V

    const-string v4, "BOTS"

    const/4 v6, 0x2

    invoke-direct {v1, v4, v6, v2, v3}, Lcom/iMe/model/group/GroupMembersFilter;-><init>(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;Z)V

    sput-object v1, Lcom/iMe/model/group/GroupMembersFilter;->BOTS:Lcom/iMe/model/group/GroupMembersFilter;

    .line 15
    new-instance v1, Lcom/iMe/model/group/GroupMembersFilter;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsContacts;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsContacts;-><init>()V

    const-string v4, "CONTACTS"

    const/4 v6, 0x3

    invoke-direct {v1, v4, v6, v2, v3}, Lcom/iMe/model/group/GroupMembersFilter;-><init>(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;Z)V

    sput-object v1, Lcom/iMe/model/group/GroupMembersFilter;->CONTACTS:Lcom/iMe/model/group/GroupMembersFilter;

    .line 16
    new-instance v1, Lcom/iMe/model/group/GroupMembersFilter;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    const-string v4, "PREMIUM"

    const/4 v6, 0x4

    invoke-direct {v1, v4, v6, v2, v3}, Lcom/iMe/model/group/GroupMembersFilter;-><init>(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;Z)V

    sput-object v1, Lcom/iMe/model/group/GroupMembersFilter;->PREMIUM:Lcom/iMe/model/group/GroupMembersFilter;

    .line 17
    new-instance v1, Lcom/iMe/model/group/GroupMembersFilter;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBanned;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBanned;-><init>()V

    const-string v4, "RESTRICTED"

    const/4 v6, 0x5

    invoke-direct {v1, v4, v6, v2, v3}, Lcom/iMe/model/group/GroupMembersFilter;-><init>(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;Z)V

    sput-object v1, Lcom/iMe/model/group/GroupMembersFilter;->RESTRICTED:Lcom/iMe/model/group/GroupMembersFilter;

    .line 18
    new-instance v1, Lcom/iMe/model/group/GroupMembersFilter;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;-><init>()V

    const-string v3, "BLOCKED"

    const/4 v4, 0x6

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/iMe/model/group/GroupMembersFilter;-><init>(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;Z)V

    sput-object v1, Lcom/iMe/model/group/GroupMembersFilter;->BLOCKED:Lcom/iMe/model/group/GroupMembersFilter;

    .line 19
    new-instance v1, Lcom/iMe/model/group/GroupMembersFilter;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    const-string v3, "DELETED"

    const/4 v4, 0x7

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/iMe/model/group/GroupMembersFilter;-><init>(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;Z)V

    sput-object v1, Lcom/iMe/model/group/GroupMembersFilter;->DELETED:Lcom/iMe/model/group/GroupMembersFilter;

    invoke-static {}, Lcom/iMe/model/group/GroupMembersFilter;->$values()[Lcom/iMe/model/group/GroupMembersFilter;

    move-result-object v1

    sput-object v1, Lcom/iMe/model/group/GroupMembersFilter;->$VALUES:[Lcom/iMe/model/group/GroupMembersFilter;

    new-instance v1, Lcom/iMe/model/group/GroupMembersFilter$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/iMe/model/group/GroupMembersFilter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/iMe/model/group/GroupMembersFilter;->Companion:Lcom/iMe/model/group/GroupMembersFilter$Companion;

    .line 36
    sput-object v0, Lcom/iMe/model/group/GroupMembersFilter;->defaultValue:Lcom/iMe/model/group/GroupMembersFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;",
            "Z)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput-object p3, p0, Lcom/iMe/model/group/GroupMembersFilter;->serverFilter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 10
    iput-boolean p4, p0, Lcom/iMe/model/group/GroupMembersFilter;->needShowAction:Z

    return-void
.end method

.method public static final getAvailableFilters(ZZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lcom/iMe/model/group/GroupMembersFilter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/model/group/GroupMembersFilter;->Companion:Lcom/iMe/model/group/GroupMembersFilter$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/iMe/model/group/GroupMembersFilter$Companion;->getAvailableFilters(ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/model/group/GroupMembersFilter;
    .locals 1

    const-class v0, Lcom/iMe/model/group/GroupMembersFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/model/group/GroupMembersFilter;

    return-object p0
.end method

.method public static values()[Lcom/iMe/model/group/GroupMembersFilter;
    .locals 1

    sget-object v0, Lcom/iMe/model/group/GroupMembersFilter;->$VALUES:[Lcom/iMe/model/group/GroupMembersFilter;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/model/group/GroupMembersFilter;

    return-object v0
.end method


# virtual methods
.method public final getNeedShowAction()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/iMe/model/group/GroupMembersFilter;->needShowAction:Z

    return v0
.end method

.method public final getServerFilter()Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/model/group/GroupMembersFilter;->serverFilter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .line 23
    sget-object v0, Lcom/iMe/model/group/GroupMembersFilter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 31
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    sget v0, Lorg/telegram/messenger/R$string;->profile_group_filter_deleted:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026ile_group_filter_deleted)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :pswitch_1
    sget v0, Lorg/telegram/messenger/R$string;->profile_group_filter_blocked:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026ile_group_filter_blocked)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :pswitch_2
    sget v0, Lorg/telegram/messenger/R$string;->profile_group_filter_restricted:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026_group_filter_restricted)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :pswitch_3
    sget v0, Lorg/telegram/messenger/R$string;->LimitPremium:I

    const-string v1, "LimitPremium"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"LimitPremium\", R.string.LimitPremium)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :pswitch_4
    sget v0, Lorg/telegram/messenger/R$string;->profile_group_filter_contacts:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026le_group_filter_contacts)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :pswitch_5
    sget v0, Lorg/telegram/messenger/R$string;->profile_group_filter_bots:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026rofile_group_filter_bots)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :pswitch_6
    sget v0, Lorg/telegram/messenger/R$string;->profile_group_filter_administrator:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026oup_filter_administrator)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :pswitch_7
    sget v0, Lorg/telegram/messenger/R$string;->profile_group_filter_all:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026profile_group_filter_all)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final isDefault()Z
    .locals 1

    .line 21
    sget-object v0, Lcom/iMe/model/group/GroupMembersFilter;->defaultValue:Lcom/iMe/model/group/GroupMembersFilter;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
