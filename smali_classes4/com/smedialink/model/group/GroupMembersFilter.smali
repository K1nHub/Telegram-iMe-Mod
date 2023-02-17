.class public final enum Lcom/smedialink/model/group/GroupMembersFilter;
.super Ljava/lang/Enum;
.source "GroupMembersFilter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/model/group/GroupMembersFilter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/model/group/GroupMembersFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/model/group/GroupMembersFilter;

.field public static final enum ADMINISTRATORS:Lcom/smedialink/model/group/GroupMembersFilter;

.field public static final enum ALL:Lcom/smedialink/model/group/GroupMembersFilter;

.field public static final enum BLOCKED:Lcom/smedialink/model/group/GroupMembersFilter;

.field public static final enum BOTS:Lcom/smedialink/model/group/GroupMembersFilter;

.field public static final enum CONTACTS:Lcom/smedialink/model/group/GroupMembersFilter;

.field public static final Companion:Lcom/smedialink/model/group/GroupMembersFilter$Companion;

.field public static final enum DELETED:Lcom/smedialink/model/group/GroupMembersFilter;

.field public static final enum RESTRICTED:Lcom/smedialink/model/group/GroupMembersFilter;

.field public static defaultValue:Lcom/smedialink/model/group/GroupMembersFilter;


# instance fields
.field private final icon:I

.field private final needShowAction:Z

.field private final serverFilter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

.field private final title:I


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/model/group/GroupMembersFilter;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/smedialink/model/group/GroupMembersFilter;

    sget-object v1, Lcom/smedialink/model/group/GroupMembersFilter;->ALL:Lcom/smedialink/model/group/GroupMembersFilter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/group/GroupMembersFilter;->ADMINISTRATORS:Lcom/smedialink/model/group/GroupMembersFilter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/group/GroupMembersFilter;->BOTS:Lcom/smedialink/model/group/GroupMembersFilter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/group/GroupMembersFilter;->CONTACTS:Lcom/smedialink/model/group/GroupMembersFilter;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/group/GroupMembersFilter;->RESTRICTED:Lcom/smedialink/model/group/GroupMembersFilter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/group/GroupMembersFilter;->BLOCKED:Lcom/smedialink/model/group/GroupMembersFilter;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/group/GroupMembersFilter;->DELETED:Lcom/smedialink/model/group/GroupMembersFilter;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 22

    .line 15
    new-instance v7, Lcom/smedialink/model/group/GroupMembersFilter;

    sget v3, Lorg/telegram/messenger/R$string;->profile_group_filter_all:I

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_contacts:I

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    const-string v1, "ALL"

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/smedialink/model/group/GroupMembersFilter;-><init>(Ljava/lang/String;IIILorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;Z)V

    sput-object v7, Lcom/smedialink/model/group/GroupMembersFilter;->ALL:Lcom/smedialink/model/group/GroupMembersFilter;

    .line 16
    new-instance v0, Lcom/smedialink/model/group/GroupMembersFilter;

    sget v11, Lorg/telegram/messenger/R$string;->profile_group_filter_administrator:I

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_admins:I

    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;-><init>()V

    const-string v9, "ADMINISTRATORS"

    const/4 v10, 0x1

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/smedialink/model/group/GroupMembersFilter;-><init>(Ljava/lang/String;IIILorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;Z)V

    sput-object v0, Lcom/smedialink/model/group/GroupMembersFilter;->ADMINISTRATORS:Lcom/smedialink/model/group/GroupMembersFilter;

    .line 17
    new-instance v0, Lcom/smedialink/model/group/GroupMembersFilter;

    sget v18, Lorg/telegram/messenger/R$string;->profile_group_filter_bots:I

    sget v19, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bot:I

    new-instance v20, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBots;

    invoke-direct/range {v20 .. v20}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBots;-><init>()V

    const-string v16, "BOTS"

    const/16 v17, 0x2

    const/16 v21, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v21}, Lcom/smedialink/model/group/GroupMembersFilter;-><init>(Ljava/lang/String;IIILorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;Z)V

    sput-object v0, Lcom/smedialink/model/group/GroupMembersFilter;->BOTS:Lcom/smedialink/model/group/GroupMembersFilter;

    .line 18
    new-instance v0, Lcom/smedialink/model/group/GroupMembersFilter;

    sget v11, Lorg/telegram/messenger/R$string;->profile_group_filter_contacts:I

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsContacts;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsContacts;-><init>()V

    const-string v9, "CONTACTS"

    const/4 v10, 0x3

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/smedialink/model/group/GroupMembersFilter;-><init>(Ljava/lang/String;IIILorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;Z)V

    sput-object v0, Lcom/smedialink/model/group/GroupMembersFilter;->CONTACTS:Lcom/smedialink/model/group/GroupMembersFilter;

    .line 19
    new-instance v0, Lcom/smedialink/model/group/GroupMembersFilter;

    sget v18, Lorg/telegram/messenger/R$string;->profile_group_filter_restricted:I

    sget v19, Lorg/telegram/messenger/R$drawable;->msg_permissions:I

    new-instance v20, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBanned;

    invoke-direct/range {v20 .. v20}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBanned;-><init>()V

    const-string v16, "RESTRICTED"

    const/16 v17, 0x4

    move-object v15, v0

    invoke-direct/range {v15 .. v21}, Lcom/smedialink/model/group/GroupMembersFilter;-><init>(Ljava/lang/String;IIILorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;Z)V

    sput-object v0, Lcom/smedialink/model/group/GroupMembersFilter;->RESTRICTED:Lcom/smedialink/model/group/GroupMembersFilter;

    .line 20
    new-instance v0, Lcom/smedialink/model/group/GroupMembersFilter;

    sget v11, Lorg/telegram/messenger/R$string;->profile_group_filter_blocked:I

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_block:I

    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;-><init>()V

    const-string v9, "BLOCKED"

    const/4 v10, 0x5

    const/4 v14, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/smedialink/model/group/GroupMembersFilter;-><init>(Ljava/lang/String;IIILorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;Z)V

    sput-object v0, Lcom/smedialink/model/group/GroupMembersFilter;->BLOCKED:Lcom/smedialink/model/group/GroupMembersFilter;

    .line 21
    new-instance v0, Lcom/smedialink/model/group/GroupMembersFilter;

    sget v18, Lorg/telegram/messenger/R$string;->profile_group_filter_deleted:I

    sget v19, Lorg/telegram/messenger/R$drawable;->fork_ic_ghost_26:I

    new-instance v20, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct/range {v20 .. v20}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    const-string v16, "DELETED"

    const/16 v17, 0x6

    const/16 v21, 0x1

    move-object v15, v0

    invoke-direct/range {v15 .. v21}, Lcom/smedialink/model/group/GroupMembersFilter;-><init>(Ljava/lang/String;IIILorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;Z)V

    sput-object v0, Lcom/smedialink/model/group/GroupMembersFilter;->DELETED:Lcom/smedialink/model/group/GroupMembersFilter;

    invoke-static {}, Lcom/smedialink/model/group/GroupMembersFilter;->$values()[Lcom/smedialink/model/group/GroupMembersFilter;

    move-result-object v0

    sput-object v0, Lcom/smedialink/model/group/GroupMembersFilter;->$VALUES:[Lcom/smedialink/model/group/GroupMembersFilter;

    new-instance v0, Lcom/smedialink/model/group/GroupMembersFilter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/model/group/GroupMembersFilter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/model/group/GroupMembersFilter;->Companion:Lcom/smedialink/model/group/GroupMembersFilter$Companion;

    .line 27
    sput-object v7, Lcom/smedialink/model/group/GroupMembersFilter;->defaultValue:Lcom/smedialink/model/group/GroupMembersFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;",
            "Z)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lcom/smedialink/model/group/GroupMembersFilter;->title:I

    .line 11
    iput p4, p0, Lcom/smedialink/model/group/GroupMembersFilter;->icon:I

    .line 12
    iput-object p5, p0, Lcom/smedialink/model/group/GroupMembersFilter;->serverFilter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 13
    iput-boolean p6, p0, Lcom/smedialink/model/group/GroupMembersFilter;->needShowAction:Z

    return-void
.end method

.method public static final getAvailableFilters(ZZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lcom/smedialink/model/group/GroupMembersFilter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/smedialink/model/group/GroupMembersFilter;->Companion:Lcom/smedialink/model/group/GroupMembersFilter$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/smedialink/model/group/GroupMembersFilter$Companion;->getAvailableFilters(ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/model/group/GroupMembersFilter;
    .locals 1

    const-class v0, Lcom/smedialink/model/group/GroupMembersFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/model/group/GroupMembersFilter;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/model/group/GroupMembersFilter;
    .locals 1

    sget-object v0, Lcom/smedialink/model/group/GroupMembersFilter;->$VALUES:[Lcom/smedialink/model/group/GroupMembersFilter;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/model/group/GroupMembersFilter;

    return-object v0
.end method


# virtual methods
.method public final getIcon()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/smedialink/model/group/GroupMembersFilter;->icon:I

    return v0
.end method

.method public final getNeedShowAction()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/smedialink/model/group/GroupMembersFilter;->needShowAction:Z

    return v0
.end method

.method public final getServerFilter()Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/smedialink/model/group/GroupMembersFilter;->serverFilter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    return-object v0
.end method

.method public final getTitle()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/smedialink/model/group/GroupMembersFilter;->title:I

    return v0
.end method

.method public final isDefault()Z
    .locals 1

    .line 23
    sget-object v0, Lcom/smedialink/model/group/GroupMembersFilter;->defaultValue:Lcom/smedialink/model/group/GroupMembersFilter;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
