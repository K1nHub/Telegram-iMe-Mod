.class public final enum Lcom/iMe/model/contacts/ContactsFilter;
.super Ljava/lang/Enum;
.source "ContactsFilter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/contacts/ContactsFilter$Companion;,
        Lcom/iMe/model/contacts/ContactsFilter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/model/contacts/ContactsFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/model/contacts/ContactsFilter;

.field public static final enum ALL:Lcom/iMe/model/contacts/ContactsFilter;

.field public static final enum BLOCKED:Lcom/iMe/model/contacts/ContactsFilter;

.field public static final Companion:Lcom/iMe/model/contacts/ContactsFilter$Companion;

.field public static final enum MUTUAL:Lcom/iMe/model/contacts/ContactsFilter;

.field public static final enum NOT_MUTUAL:Lcom/iMe/model/contacts/ContactsFilter;

.field public static final enum ONLINE:Lcom/iMe/model/contacts/ContactsFilter;

.field public static final enum PREMIUM:Lcom/iMe/model/contacts/ContactsFilter;


# instance fields
.field private final icon:I

.field private final needShowDelete:Z


# direct methods
.method private static final synthetic $values()[Lcom/iMe/model/contacts/ContactsFilter;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/iMe/model/contacts/ContactsFilter;

    sget-object v1, Lcom/iMe/model/contacts/ContactsFilter;->ALL:Lcom/iMe/model/contacts/ContactsFilter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/contacts/ContactsFilter;->ONLINE:Lcom/iMe/model/contacts/ContactsFilter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/contacts/ContactsFilter;->PREMIUM:Lcom/iMe/model/contacts/ContactsFilter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/contacts/ContactsFilter;->MUTUAL:Lcom/iMe/model/contacts/ContactsFilter;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/contacts/ContactsFilter;->NOT_MUTUAL:Lcom/iMe/model/contacts/ContactsFilter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/contacts/ContactsFilter;->BLOCKED:Lcom/iMe/model/contacts/ContactsFilter;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lcom/iMe/model/contacts/ContactsFilter;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_contacts:I

    const-string v2, "ALL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/iMe/model/contacts/ContactsFilter;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/iMe/model/contacts/ContactsFilter;->ALL:Lcom/iMe/model/contacts/ContactsFilter;

    .line 12
    new-instance v0, Lcom/iMe/model/contacts/ContactsFilter;

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_online_26:I

    const-string v2, "ONLINE"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1, v3}, Lcom/iMe/model/contacts/ContactsFilter;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/iMe/model/contacts/ContactsFilter;->ONLINE:Lcom/iMe/model/contacts/ContactsFilter;

    .line 13
    new-instance v0, Lcom/iMe/model/contacts/ContactsFilter;

    sget v1, Lorg/telegram/messenger/R$drawable;->photo_star:I

    const-string v2, "PREMIUM"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1, v3}, Lcom/iMe/model/contacts/ContactsFilter;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/iMe/model/contacts/ContactsFilter;->PREMIUM:Lcom/iMe/model/contacts/ContactsFilter;

    .line 14
    new-instance v0, Lcom/iMe/model/contacts/ContactsFilter;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    const-string v2, "MUTUAL"

    const/4 v5, 0x3

    invoke-direct {v0, v2, v5, v1, v3}, Lcom/iMe/model/contacts/ContactsFilter;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/iMe/model/contacts/ContactsFilter;->MUTUAL:Lcom/iMe/model/contacts/ContactsFilter;

    .line 15
    new-instance v0, Lcom/iMe/model/contacts/ContactsFilter;

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_unmutal_users_28:I

    const-string v2, "NOT_MUTUAL"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/iMe/model/contacts/ContactsFilter;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/iMe/model/contacts/ContactsFilter;->NOT_MUTUAL:Lcom/iMe/model/contacts/ContactsFilter;

    .line 16
    new-instance v0, Lcom/iMe/model/contacts/ContactsFilter;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_block:I

    const-string v2, "BLOCKED"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/iMe/model/contacts/ContactsFilter;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/iMe/model/contacts/ContactsFilter;->BLOCKED:Lcom/iMe/model/contacts/ContactsFilter;

    invoke-static {}, Lcom/iMe/model/contacts/ContactsFilter;->$values()[Lcom/iMe/model/contacts/ContactsFilter;

    move-result-object v0

    sput-object v0, Lcom/iMe/model/contacts/ContactsFilter;->$VALUES:[Lcom/iMe/model/contacts/ContactsFilter;

    new-instance v0, Lcom/iMe/model/contacts/ContactsFilter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/model/contacts/ContactsFilter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/model/contacts/ContactsFilter;->Companion:Lcom/iMe/model/contacts/ContactsFilter$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput p3, p0, Lcom/iMe/model/contacts/ContactsFilter;->icon:I

    .line 9
    iput-boolean p4, p0, Lcom/iMe/model/contacts/ContactsFilter;->needShowDelete:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/model/contacts/ContactsFilter;
    .locals 1

    const-class v0, Lcom/iMe/model/contacts/ContactsFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/model/contacts/ContactsFilter;

    return-object p0
.end method

.method public static values()[Lcom/iMe/model/contacts/ContactsFilter;
    .locals 1

    sget-object v0, Lcom/iMe/model/contacts/ContactsFilter;->$VALUES:[Lcom/iMe/model/contacts/ContactsFilter;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/model/contacts/ContactsFilter;

    return-object v0
.end method


# virtual methods
.method public final getIcon()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/model/contacts/ContactsFilter;->icon:I

    return v0
.end method

.method public final getNeedShowDelete()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/iMe/model/contacts/ContactsFilter;->needShowDelete:Z

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .line 18
    sget-object v0, Lcom/iMe/model/contacts/ContactsFilter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 24
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    sget v0, Lorg/telegram/messenger/R$string;->contacts_filter_blocked:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026.contacts_filter_blocked)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :pswitch_1
    sget v0, Lorg/telegram/messenger/R$string;->contacts_filter_not_mutual:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026ntacts_filter_not_mutual)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :pswitch_2
    sget v0, Lorg/telegram/messenger/R$string;->contacts_filter_mutual:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.string.contacts_filter_mutual)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :pswitch_3
    sget v0, Lorg/telegram/messenger/R$string;->LimitPremium:I

    const-string v1, "LimitPremium"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"LimitPremium\", R.string.LimitPremium)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :pswitch_4
    sget v0, Lorg/telegram/messenger/R$string;->contacts_filter_online:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.string.contacts_filter_online)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :pswitch_5
    sget v0, Lorg/telegram/messenger/R$string;->contacts_filter_all:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.string.contacts_filter_all)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
