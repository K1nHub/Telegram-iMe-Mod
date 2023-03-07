.class public final synthetic Lcom/smedialink/ui/profile/ProfilePresenter$WhenMappings;
.super Ljava/lang/Object;
.source "ProfilePresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/profile/ProfilePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/smedialink/model/group/GroupMembersFilter;->values()[Lcom/smedialink/model/group/GroupMembersFilter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/model/group/GroupMembersFilter;->ALL:Lcom/smedialink/model/group/GroupMembersFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/model/group/GroupMembersFilter;->ADMINISTRATORS:Lcom/smedialink/model/group/GroupMembersFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/model/group/GroupMembersFilter;->BOTS:Lcom/smedialink/model/group/GroupMembersFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/model/group/GroupMembersFilter;->CONTACTS:Lcom/smedialink/model/group/GroupMembersFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/model/group/GroupMembersFilter;->RESTRICTED:Lcom/smedialink/model/group/GroupMembersFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/model/group/GroupMembersFilter;->BLOCKED:Lcom/smedialink/model/group/GroupMembersFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/model/group/GroupMembersFilter;->DELETED:Lcom/smedialink/model/group/GroupMembersFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/ui/profile/ProfilePresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
