.class public final synthetic Lcom/iMe/ui/profile/ProfilePresenter$WhenMappings;
.super Ljava/lang/Object;
.source "ProfilePresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/profile/ProfilePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/iMe/model/group/GroupMembersFilter;->values()[Lcom/iMe/model/group/GroupMembersFilter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/iMe/model/group/GroupMembersFilter;->ALL:Lcom/iMe/model/group/GroupMembersFilter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/iMe/model/group/GroupMembersFilter;->ADMINISTRATORS:Lcom/iMe/model/group/GroupMembersFilter;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v3, Lcom/iMe/model/group/GroupMembersFilter;->BOTS:Lcom/iMe/model/group/GroupMembersFilter;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v0, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lcom/iMe/model/group/GroupMembersFilter;->CONTACTS:Lcom/iMe/model/group/GroupMembersFilter;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v0, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/iMe/model/group/GroupMembersFilter;->RESTRICTED:Lcom/iMe/model/group/GroupMembersFilter;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v0, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/iMe/model/group/GroupMembersFilter;->BLOCKED:Lcom/iMe/model/group/GroupMembersFilter;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v0, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/iMe/model/group/GroupMembersFilter;->DELETED:Lcom/iMe/model/group/GroupMembersFilter;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x7

    aput v4, v0, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    sput-object v0, Lcom/iMe/ui/profile/ProfilePresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/iMe/fork/enums/ProfileTwitterAction;->values()[Lcom/iMe/fork/enums/ProfileTwitterAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v3, Lcom/iMe/fork/enums/ProfileTwitterAction;->OPEN:Lcom/iMe/fork/enums/ProfileTwitterAction;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v3, Lcom/iMe/fork/enums/ProfileTwitterAction;->RESET:Lcom/iMe/fork/enums/ProfileTwitterAction;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    sput-object v0, Lcom/iMe/ui/profile/ProfilePresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/iMe/storage/domain/model/twitter/TwitterAuthStatus;->values()[Lcom/iMe/storage/domain/model/twitter/TwitterAuthStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_9
    sget-object v3, Lcom/iMe/storage/domain/model/twitter/TwitterAuthStatus;->ACTIVE:Lcom/iMe/storage/domain/model/twitter/TwitterAuthStatus;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lcom/iMe/storage/domain/model/twitter/TwitterAuthStatus;->VERIFICATION:Lcom/iMe/storage/domain/model/twitter/TwitterAuthStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    sput-object v0, Lcom/iMe/ui/profile/ProfilePresenter$WhenMappings;->$EnumSwitchMapping$2:[I

    return-void
.end method