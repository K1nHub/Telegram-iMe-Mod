.class public final enum Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;
.super Ljava/lang/Enum;
.source "ExtendedAvatarPreviewerItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

.field public static final enum ADD_TO_CONTACTS:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

.field public static final enum COPY_ID:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

.field public static final enum COPY_USERNAME:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

.field public static final Companion:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem$Companion;

.field public static final enum MENTION:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

.field public static final enum MENTION_BY_NAME:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

.field public static final enum OPEN_PROFILE:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

.field public static final enum REMOVE_CONTACT:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

.field public static final enum REMOVE_FROM_GROUP:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

.field public static final enum SEND_MESSAGE:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

.field public static final enum TRANSFER:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

.field public static final enum USER_MESSAGES:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;


# instance fields
.field private final iconResId:I

.field private final titleKey:Ljava/lang/String;

.field private final titleResId:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    sget-object v1, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->MENTION_BY_NAME:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->MENTION:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->COPY_ID:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->COPY_USERNAME:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->OPEN_PROFILE:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->SEND_MESSAGE:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->USER_MESSAGES:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->TRANSFER:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->ADD_TO_CONTACTS:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->REMOVE_CONTACT:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->REMOVE_FROM_GROUP:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 15
    new-instance v6, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    .line 17
    sget v4, Lorg/telegram/messenger/R$string;->chat_avatar_previewer_mention_by_name:I

    .line 18
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_avatar_previewer_mention_by_name:I

    const-string v1, "MENTION_BY_NAME"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v6, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->MENTION_BY_NAME:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    .line 20
    new-instance v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    sget v11, Lorg/telegram/messenger/R$string;->Mention:I

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_mention:I

    const-string v8, "MENTION"

    const/4 v9, 0x1

    const-string v10, "Mention"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->MENTION:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    .line 21
    new-instance v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    .line 23
    sget v5, Lorg/telegram/messenger/R$string;->wallet_user_id_dialog_copy_id_action:I

    .line 24
    sget v6, Lorg/telegram/messenger/R$drawable;->fork_avatar_previewer_copy_id:I

    const-string v2, "COPY_ID"

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v1, v0

    .line 21
    invoke-direct/range {v1 .. v6}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->COPY_ID:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    .line 26
    new-instance v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    .line 28
    sget v11, Lorg/telegram/messenger/R$string;->wallet_channel_name_dialog_copy_id_action:I

    .line 29
    sget v12, Lorg/telegram/messenger/R$drawable;->fork_avatar_previewer_copy_username:I

    const-string v8, "COPY_USERNAME"

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v7, v0

    .line 26
    invoke-direct/range {v7 .. v12}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->COPY_USERNAME:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    .line 31
    new-instance v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    sget v5, Lorg/telegram/messenger/R$string;->OpenProfile:I

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    const-string v2, "OPEN_PROFILE"

    const/4 v3, 0x4

    const-string v4, "OpenProfile"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->OPEN_PROFILE:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    .line 32
    new-instance v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    sget v11, Lorg/telegram/messenger/R$string;->SendMessage:I

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_discussion:I

    const-string v8, "SEND_MESSAGE"

    const/4 v9, 0x5

    const-string v10, "SendMessage"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->SEND_MESSAGE:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    .line 33
    new-instance v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    .line 35
    sget v5, Lorg/telegram/messenger/R$string;->chat_avatar_previewer_user_messages:I

    .line 36
    sget v6, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bubbles:I

    const-string v2, "USER_MESSAGES"

    const/4 v3, 0x6

    const/4 v4, 0x0

    move-object v1, v0

    .line 33
    invoke-direct/range {v1 .. v6}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->USER_MESSAGES:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    .line 38
    new-instance v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    .line 40
    sget v11, Lorg/telegram/messenger/R$string;->wallet_user_id_dialog_transfer_action:I

    .line 41
    sget v12, Lorg/telegram/messenger/R$drawable;->fork_avatar_previewer_transfer:I

    const-string v8, "TRANSFER"

    const/4 v9, 0x7

    const/4 v10, 0x0

    move-object v7, v0

    .line 38
    invoke-direct/range {v7 .. v12}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->TRANSFER:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    .line 43
    new-instance v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    sget v5, Lorg/telegram/messenger/R$string;->AddContact:I

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_addcontact:I

    const-string v2, "ADD_TO_CONTACTS"

    const/16 v3, 0x8

    const-string v4, "AddContact"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->ADD_TO_CONTACTS:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    .line 44
    new-instance v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    sget v11, Lorg/telegram/messenger/R$string;->DeleteContact:I

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    const-string v8, "REMOVE_CONTACT"

    const/16 v9, 0x9

    const-string v10, "DeleteContact"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->REMOVE_CONTACT:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    .line 45
    new-instance v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    sget v5, Lorg/telegram/messenger/R$string;->KickFromGroup:I

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_remove:I

    const-string v2, "REMOVE_FROM_GROUP"

    const/16 v3, 0xa

    const-string v4, "KickFromGroup"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->REMOVE_FROM_GROUP:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    invoke-static {}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->$values()[Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    move-result-object v0

    sput-object v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->$VALUES:[Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    new-instance v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->Companion:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->titleKey:Ljava/lang/String;

    .line 12
    iput p4, p0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->titleResId:I

    .line 13
    iput p5, p0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->iconResId:I

    return-void
.end method

.method public static final mapEnumsToNames(Ljava/util/List;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->Companion:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem$Companion;->mapEnumsToNames(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final mapNamesToEnums(Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->Companion:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final sortedBySettings()V
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->Companion:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem$Companion;

    invoke-virtual {v0}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem$Companion;->sortedBySettings()V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;
    .locals 1

    const-class v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->$VALUES:[Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    return-object v0
.end method


# virtual methods
.method public final getIconResId()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->iconResId:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->titleKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 49
    iget v1, p0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->titleResId:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_0
    iget v0, p0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->titleResId:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_0
    sget-object v1, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->COPY_ID:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    if-ne p0, v1, :cond_1

    const-string v1, "{\n            title\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "title"

    .line 56
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/StringExtKt;->capitalizeOnlyFirstSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final getTitleResId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->titleResId:I

    return v0
.end method
