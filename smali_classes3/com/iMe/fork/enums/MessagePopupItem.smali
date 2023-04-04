.class public final enum Lcom/iMe/fork/enums/MessagePopupItem;
.super Ljava/lang/Enum;
.source "MessagePopupItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/enums/MessagePopupItem$Companion;,
        Lcom/iMe/fork/enums/MessagePopupItem$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/enums/MessagePopupItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/enums/MessagePopupItem;

.field public static final enum COPY_IMAGE:Lcom/iMe/fork/enums/MessagePopupItem;

.field public static final enum COPY_PART:Lcom/iMe/fork/enums/MessagePopupItem;

.field public static final Companion:Lcom/iMe/fork/enums/MessagePopupItem$Companion;

.field public static final enum FORWARD_CLOUD:Lcom/iMe/fork/enums/MessagePopupItem;

.field public static final enum FORWARD_MESSENGERS:Lcom/iMe/fork/enums/MessagePopupItem;

.field public static final enum SAVE_AS:Lcom/iMe/fork/enums/MessagePopupItem;

.field public static final enum SHARE:Lcom/iMe/fork/enums/MessagePopupItem;

.field public static final enum TRANSLATE:Lcom/iMe/fork/enums/MessagePopupItem;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/enums/MessagePopupItem;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/iMe/fork/enums/MessagePopupItem;

    sget-object v1, Lcom/iMe/fork/enums/MessagePopupItem;->FORWARD_CLOUD:Lcom/iMe/fork/enums/MessagePopupItem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/MessagePopupItem;->SHARE:Lcom/iMe/fork/enums/MessagePopupItem;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/MessagePopupItem;->FORWARD_MESSENGERS:Lcom/iMe/fork/enums/MessagePopupItem;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/MessagePopupItem;->TRANSLATE:Lcom/iMe/fork/enums/MessagePopupItem;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/MessagePopupItem;->COPY_PART:Lcom/iMe/fork/enums/MessagePopupItem;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/MessagePopupItem;->COPY_IMAGE:Lcom/iMe/fork/enums/MessagePopupItem;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/MessagePopupItem;->SAVE_AS:Lcom/iMe/fork/enums/MessagePopupItem;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/iMe/fork/enums/MessagePopupItem;

    const-string v1, "FORWARD_CLOUD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/MessagePopupItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/MessagePopupItem;->FORWARD_CLOUD:Lcom/iMe/fork/enums/MessagePopupItem;

    .line 8
    new-instance v0, Lcom/iMe/fork/enums/MessagePopupItem;

    const-string v1, "SHARE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/MessagePopupItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/MessagePopupItem;->SHARE:Lcom/iMe/fork/enums/MessagePopupItem;

    .line 9
    new-instance v0, Lcom/iMe/fork/enums/MessagePopupItem;

    const-string v1, "FORWARD_MESSENGERS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/MessagePopupItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/MessagePopupItem;->FORWARD_MESSENGERS:Lcom/iMe/fork/enums/MessagePopupItem;

    .line 10
    new-instance v0, Lcom/iMe/fork/enums/MessagePopupItem;

    const-string v1, "TRANSLATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/MessagePopupItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/MessagePopupItem;->TRANSLATE:Lcom/iMe/fork/enums/MessagePopupItem;

    .line 11
    new-instance v0, Lcom/iMe/fork/enums/MessagePopupItem;

    const-string v1, "COPY_PART"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/MessagePopupItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/MessagePopupItem;->COPY_PART:Lcom/iMe/fork/enums/MessagePopupItem;

    .line 12
    new-instance v0, Lcom/iMe/fork/enums/MessagePopupItem;

    const-string v1, "COPY_IMAGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/MessagePopupItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/MessagePopupItem;->COPY_IMAGE:Lcom/iMe/fork/enums/MessagePopupItem;

    .line 13
    new-instance v0, Lcom/iMe/fork/enums/MessagePopupItem;

    const-string v1, "SAVE_AS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/MessagePopupItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/MessagePopupItem;->SAVE_AS:Lcom/iMe/fork/enums/MessagePopupItem;

    invoke-static {}, Lcom/iMe/fork/enums/MessagePopupItem;->$values()[Lcom/iMe/fork/enums/MessagePopupItem;

    move-result-object v0

    sput-object v0, Lcom/iMe/fork/enums/MessagePopupItem;->$VALUES:[Lcom/iMe/fork/enums/MessagePopupItem;

    new-instance v0, Lcom/iMe/fork/enums/MessagePopupItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/enums/MessagePopupItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/MessagePopupItem;->Companion:Lcom/iMe/fork/enums/MessagePopupItem$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/MessagePopupItem;
    .locals 1

    const-class v0, Lcom/iMe/fork/enums/MessagePopupItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/enums/MessagePopupItem;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/enums/MessagePopupItem;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/MessagePopupItem;->$VALUES:[Lcom/iMe/fork/enums/MessagePopupItem;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/MessagePopupItem;

    return-object v0
.end method


# virtual methods
.method public final getTitle()Ljava/lang/String;
    .locals 2

    .line 15
    sget-object v0, Lcom/iMe/fork/enums/MessagePopupItem$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 22
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    sget v0, Lorg/telegram/messenger/R$string;->message_document_file_save_as:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026ge_document_file_save_as)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :pswitch_1
    sget v0, Lorg/telegram/messenger/R$string;->chat_message_popup_option_copy_image:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026_popup_option_copy_image)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :pswitch_2
    sget v0, Lorg/telegram/messenger/R$string;->chat_message_popup_option_copy_part:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026e_popup_option_copy_part)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :pswitch_3
    sget v0, Lorg/telegram/messenger/R$string;->chat_long_action_translate:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026at_long_action_translate)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :pswitch_4
    sget v0, Lorg/telegram/messenger/R$string;->settings_interface_message_popup_item_forward_messengers:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026_item_forward_messengers)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :pswitch_5
    sget v0, Lorg/telegram/messenger/R$string;->ShareFile:I

    const-string v1, "ShareFile"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"ShareFile\", R.string.ShareFile)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :pswitch_6
    sget v0, Lorg/telegram/messenger/R$string;->chat_message_popup_option_forward_cloud:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026pup_option_forward_cloud)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
