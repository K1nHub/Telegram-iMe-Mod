.class public final enum Lcom/iMe/fork/enums/ParticipantsActionType;
.super Ljava/lang/Enum;
.source "ParticipantsActionType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/enums/ParticipantsActionType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/enums/ParticipantsActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/enums/ParticipantsActionType;

.field public static final Companion:Lcom/iMe/fork/enums/ParticipantsActionType$Companion;

.field public static final enum DELETE:Lcom/iMe/fork/enums/ParticipantsActionType;

.field public static final enum RETURN:Lcom/iMe/fork/enums/ParticipantsActionType;

.field public static final enum UNBLOCK:Lcom/iMe/fork/enums/ParticipantsActionType;

.field public static defaultValue:Lcom/iMe/fork/enums/ParticipantsActionType;


# instance fields
.field private final confirmationButtonTextKey:Ljava/lang/String;

.field private final confirmationButtonTextResId:I

.field private final confirmationDescriptionTextResId:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/enums/ParticipantsActionType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/fork/enums/ParticipantsActionType;

    sget-object v1, Lcom/iMe/fork/enums/ParticipantsActionType;->DELETE:Lcom/iMe/fork/enums/ParticipantsActionType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ParticipantsActionType;->UNBLOCK:Lcom/iMe/fork/enums/ParticipantsActionType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ParticipantsActionType;->RETURN:Lcom/iMe/fork/enums/ParticipantsActionType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 11
    new-instance v6, Lcom/iMe/fork/enums/ParticipantsActionType;

    sget v3, Lorg/telegram/messenger/R$string;->profile_group_filter_confirm_remove_message:I

    sget v12, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v1, "DELETE"

    const/4 v2, 0x0

    const-string v4, "Delete"

    move-object v0, v6

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/iMe/fork/enums/ParticipantsActionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lcom/iMe/fork/enums/ParticipantsActionType;->DELETE:Lcom/iMe/fork/enums/ParticipantsActionType;

    .line 12
    new-instance v0, Lcom/iMe/fork/enums/ParticipantsActionType;

    sget v10, Lorg/telegram/messenger/R$string;->profile_group_filter_confirm_unban_message:I

    const-string v8, "UNBLOCK"

    const/4 v9, 0x1

    const-string v11, "Delete"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/iMe/fork/enums/ParticipantsActionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/ParticipantsActionType;->UNBLOCK:Lcom/iMe/fork/enums/ParticipantsActionType;

    .line 13
    new-instance v0, Lcom/iMe/fork/enums/ParticipantsActionType;

    sget v4, Lorg/telegram/messenger/R$string;->profile_group_filter_confirm_return_message:I

    sget v6, Lorg/telegram/messenger/R$string;->UserRestrictionsInviteUsers:I

    const-string v2, "RETURN"

    const/4 v3, 0x2

    const-string v5, "UserRestrictionsInviteUsers"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/iMe/fork/enums/ParticipantsActionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/ParticipantsActionType;->RETURN:Lcom/iMe/fork/enums/ParticipantsActionType;

    invoke-static {}, Lcom/iMe/fork/enums/ParticipantsActionType;->$values()[Lcom/iMe/fork/enums/ParticipantsActionType;

    move-result-object v1

    sput-object v1, Lcom/iMe/fork/enums/ParticipantsActionType;->$VALUES:[Lcom/iMe/fork/enums/ParticipantsActionType;

    new-instance v1, Lcom/iMe/fork/enums/ParticipantsActionType$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/iMe/fork/enums/ParticipantsActionType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/iMe/fork/enums/ParticipantsActionType;->Companion:Lcom/iMe/fork/enums/ParticipantsActionType$Companion;

    .line 17
    sput-object v0, Lcom/iMe/fork/enums/ParticipantsActionType;->defaultValue:Lcom/iMe/fork/enums/ParticipantsActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    iput p3, p0, Lcom/iMe/fork/enums/ParticipantsActionType;->confirmationDescriptionTextResId:I

    .line 8
    iput-object p4, p0, Lcom/iMe/fork/enums/ParticipantsActionType;->confirmationButtonTextKey:Ljava/lang/String;

    .line 9
    iput p5, p0, Lcom/iMe/fork/enums/ParticipantsActionType;->confirmationButtonTextResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/ParticipantsActionType;
    .locals 1

    const-class v0, Lcom/iMe/fork/enums/ParticipantsActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/enums/ParticipantsActionType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/enums/ParticipantsActionType;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/ParticipantsActionType;->$VALUES:[Lcom/iMe/fork/enums/ParticipantsActionType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/ParticipantsActionType;

    return-object v0
.end method


# virtual methods
.method public final getConfirmationButtonTextKey()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/fork/enums/ParticipantsActionType;->confirmationButtonTextKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getConfirmationButtonTextResId()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/fork/enums/ParticipantsActionType;->confirmationButtonTextResId:I

    return v0
.end method

.method public final getConfirmationDescriptionTextResId()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/iMe/fork/enums/ParticipantsActionType;->confirmationDescriptionTextResId:I

    return v0
.end method
