.class public final enum Lcom/iMe/model/contacts/ContactsFilter;
.super Ljava/lang/Enum;
.source "ContactsFilter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/contacts/ContactsFilter$Companion;
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


# instance fields
.field private final icon:I

.field private final needShowDelete:Z

.field private final title:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/model/contacts/ContactsFilter;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iMe/model/contacts/ContactsFilter;

    sget-object v1, Lcom/iMe/model/contacts/ContactsFilter;->ALL:Lcom/iMe/model/contacts/ContactsFilter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/contacts/ContactsFilter;->ONLINE:Lcom/iMe/model/contacts/ContactsFilter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/contacts/ContactsFilter;->MUTUAL:Lcom/iMe/model/contacts/ContactsFilter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/contacts/ContactsFilter;->NOT_MUTUAL:Lcom/iMe/model/contacts/ContactsFilter;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/contacts/ContactsFilter;->BLOCKED:Lcom/iMe/model/contacts/ContactsFilter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 12
    new-instance v6, Lcom/iMe/model/contacts/ContactsFilter;

    sget v3, Lorg/telegram/messenger/R$string;->contacts_filter_all:I

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_contacts:I

    const-string v1, "ALL"

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/iMe/model/contacts/ContactsFilter;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/iMe/model/contacts/ContactsFilter;->ALL:Lcom/iMe/model/contacts/ContactsFilter;

    .line 13
    new-instance v0, Lcom/iMe/model/contacts/ContactsFilter;

    sget v10, Lorg/telegram/messenger/R$string;->contacts_filter_online:I

    sget v11, Lorg/telegram/messenger/R$drawable;->fork_ic_online_26:I

    const-string v8, "ONLINE"

    const/4 v9, 0x1

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/iMe/model/contacts/ContactsFilter;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/iMe/model/contacts/ContactsFilter;->ONLINE:Lcom/iMe/model/contacts/ContactsFilter;

    .line 14
    new-instance v0, Lcom/iMe/model/contacts/ContactsFilter;

    sget v4, Lorg/telegram/messenger/R$string;->contacts_filter_mutual:I

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    const-string v2, "MUTUAL"

    const/4 v3, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/iMe/model/contacts/ContactsFilter;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/iMe/model/contacts/ContactsFilter;->MUTUAL:Lcom/iMe/model/contacts/ContactsFilter;

    .line 15
    new-instance v0, Lcom/iMe/model/contacts/ContactsFilter;

    sget v10, Lorg/telegram/messenger/R$string;->contacts_filter_not_mutual:I

    sget v11, Lorg/telegram/messenger/R$drawable;->fork_ic_unmutal_users_28:I

    const-string v8, "NOT_MUTUAL"

    const/4 v9, 0x3

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/iMe/model/contacts/ContactsFilter;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/iMe/model/contacts/ContactsFilter;->NOT_MUTUAL:Lcom/iMe/model/contacts/ContactsFilter;

    .line 16
    new-instance v0, Lcom/iMe/model/contacts/ContactsFilter;

    sget v4, Lorg/telegram/messenger/R$string;->contacts_filter_blocked:I

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_block:I

    const-string v2, "BLOCKED"

    const/4 v3, 0x4

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/iMe/model/contacts/ContactsFilter;-><init>(Ljava/lang/String;IIIZ)V

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

.method private constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput p3, p0, Lcom/iMe/model/contacts/ContactsFilter;->title:I

    .line 9
    iput p4, p0, Lcom/iMe/model/contacts/ContactsFilter;->icon:I

    .line 10
    iput-boolean p5, p0, Lcom/iMe/model/contacts/ContactsFilter;->needShowDelete:Z

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

    .line 9
    iget v0, p0, Lcom/iMe/model/contacts/ContactsFilter;->icon:I

    return v0
.end method

.method public final getNeedShowDelete()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/iMe/model/contacts/ContactsFilter;->needShowDelete:Z

    return v0
.end method

.method public final getTitle()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/model/contacts/ContactsFilter;->title:I

    return v0
.end method
