.class public final enum Lcom/iMe/fork/enums/ChatAttachAlertButton;
.super Ljava/lang/Enum;
.source "ChatAttachAlertButton.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/enums/ChatAttachAlertButton$Companion;,
        Lcom/iMe/fork/enums/ChatAttachAlertButton$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/enums/ChatAttachAlertButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/enums/ChatAttachAlertButton;

.field public static final enum BINANCE:Lcom/iMe/fork/enums/ChatAttachAlertButton;

.field public static final enum CONTACT:Lcom/iMe/fork/enums/ChatAttachAlertButton;

.field public static final Companion:Lcom/iMe/fork/enums/ChatAttachAlertButton$Companion;

.field public static final enum DOCUMENTS:Lcom/iMe/fork/enums/ChatAttachAlertButton;

.field public static final enum GEO:Lcom/iMe/fork/enums/ChatAttachAlertButton;

.field public static final enum MUSIC:Lcom/iMe/fork/enums/ChatAttachAlertButton;

.field public static final enum POLL:Lcom/iMe/fork/enums/ChatAttachAlertButton;

.field public static final enum WALLET:Lcom/iMe/fork/enums/ChatAttachAlertButton;


# instance fields
.field private final iconResId:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/enums/ChatAttachAlertButton;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/iMe/fork/enums/ChatAttachAlertButton;

    sget-object v1, Lcom/iMe/fork/enums/ChatAttachAlertButton;->DOCUMENTS:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ChatAttachAlertButton;->WALLET:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ChatAttachAlertButton;->BINANCE:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ChatAttachAlertButton;->GEO:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ChatAttachAlertButton;->POLL:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ChatAttachAlertButton;->MUSIC:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ChatAttachAlertButton;->CONTACT:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;

    sget v1, Lorg/telegram/messenger/R$raw;->attach_file:I

    const-string v2, "DOCUMENTS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/fork/enums/ChatAttachAlertButton;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;->DOCUMENTS:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    .line 10
    new-instance v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;

    sget v1, Lorg/telegram/messenger/R$raw;->fork_attach_wallet:I

    const-string v2, "WALLET"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/fork/enums/ChatAttachAlertButton;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;->WALLET:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    .line 11
    new-instance v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;

    sget v1, Lorg/telegram/messenger/R$raw;->fork_attach_binance:I

    const-string v2, "BINANCE"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/fork/enums/ChatAttachAlertButton;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;->BINANCE:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    .line 12
    new-instance v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;

    sget v1, Lorg/telegram/messenger/R$raw;->attach_location:I

    const-string v2, "GEO"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/fork/enums/ChatAttachAlertButton;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;->GEO:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    .line 13
    new-instance v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;

    sget v1, Lorg/telegram/messenger/R$raw;->attach_poll:I

    const-string v2, "POLL"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/fork/enums/ChatAttachAlertButton;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;->POLL:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    .line 14
    new-instance v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;

    sget v1, Lorg/telegram/messenger/R$raw;->attach_music:I

    const-string v2, "MUSIC"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/fork/enums/ChatAttachAlertButton;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;->MUSIC:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    .line 15
    new-instance v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;

    sget v1, Lorg/telegram/messenger/R$raw;->attach_contact:I

    const-string v2, "CONTACT"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/fork/enums/ChatAttachAlertButton;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;->CONTACT:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    invoke-static {}, Lcom/iMe/fork/enums/ChatAttachAlertButton;->$values()[Lcom/iMe/fork/enums/ChatAttachAlertButton;

    move-result-object v0

    sput-object v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;->$VALUES:[Lcom/iMe/fork/enums/ChatAttachAlertButton;

    new-instance v0, Lcom/iMe/fork/enums/ChatAttachAlertButton$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/enums/ChatAttachAlertButton$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;->Companion:Lcom/iMe/fork/enums/ChatAttachAlertButton$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/iMe/fork/enums/ChatAttachAlertButton;->iconResId:I

    return-void
.end method

.method public static final mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/iMe/fork/enums/ChatAttachAlertButton;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;->Companion:Lcom/iMe/fork/enums/ChatAttachAlertButton$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/enums/ChatAttachAlertButton$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/iMe/fork/enums/ChatAttachAlertButton;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;->Companion:Lcom/iMe/fork/enums/ChatAttachAlertButton$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/enums/ChatAttachAlertButton$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/ChatAttachAlertButton;
    .locals 1

    const-class v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/enums/ChatAttachAlertButton;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/enums/ChatAttachAlertButton;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;->$VALUES:[Lcom/iMe/fork/enums/ChatAttachAlertButton;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/ChatAttachAlertButton;

    return-object v0
.end method


# virtual methods
.method public final getBackgroundColor()I
    .locals 2

    .line 28
    sget-object v0, Lcom/iMe/fork/enums/ChatAttachAlertButton$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 35
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachContactBackground:I

    goto :goto_0

    .line 34
    :pswitch_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachAudioBackground:I

    goto :goto_0

    .line 33
    :pswitch_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPollBackground:I

    goto :goto_0

    .line 32
    :pswitch_3
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachLocationBackground:I

    goto :goto_0

    .line 31
    :pswitch_4
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachBinanceBackground:I

    goto :goto_0

    .line 30
    :pswitch_5
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachWalletBackground:I

    goto :goto_0

    .line 29
    :pswitch_6
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachFileBackground:I

    .line 27
    :goto_0
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    return v0

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

.method public final getIconResId()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/fork/enums/ChatAttachAlertButton;->iconResId:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .line 17
    sget-object v0, Lcom/iMe/fork/enums/ChatAttachAlertButton$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 24
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    sget v0, Lorg/telegram/messenger/R$string;->AttachContact:I

    const-string v1, "AttachContact"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"AttachContact\", R.string.AttachContact)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :pswitch_1
    sget v0, Lorg/telegram/messenger/R$string;->AttachMusic:I

    const-string v1, "AttachMusic"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"AttachMusic\", R.string.AttachMusic)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :pswitch_2
    sget v0, Lorg/telegram/messenger/R$string;->Poll:I

    const-string v1, "Poll"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"Poll\", R.string.Poll)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :pswitch_3
    sget v0, Lorg/telegram/messenger/R$string;->ChatLocation:I

    const-string v1, "ChatLocation"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"ChatLocation\", R.string.ChatLocation)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :pswitch_4
    sget v0, Lorg/telegram/messenger/R$string;->wallet_binance_attach_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026let_binance_attach_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :pswitch_5
    sget v0, Lorg/telegram/messenger/R$string;->drawer_wallet_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026drawer_wallet_item_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :pswitch_6
    sget v0, Lorg/telegram/messenger/R$string;->ChatDocument:I

    const-string v1, "ChatDocument"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"ChatDocument\", R.string.ChatDocument)"

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
