.class public final enum Lcom/iMe/fork/enums/SentMessageFont;
.super Ljava/lang/Enum;
.source "SentMessageFont.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/enums/SentMessageFont$Companion;,
        Lcom/iMe/fork/enums/SentMessageFont$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/enums/SentMessageFont;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/enums/SentMessageFont;

.field public static final enum BOLD:Lcom/iMe/fork/enums/SentMessageFont;

.field public static final Companion:Lcom/iMe/fork/enums/SentMessageFont$Companion;

.field public static final enum ITALIC:Lcom/iMe/fork/enums/SentMessageFont;

.field public static final enum MONO:Lcom/iMe/fork/enums/SentMessageFont;

.field public static final enum REGULAR:Lcom/iMe/fork/enums/SentMessageFont;

.field public static final enum SPOILER:Lcom/iMe/fork/enums/SentMessageFont;

.field public static final enum STRIKE:Lcom/iMe/fork/enums/SentMessageFont;

.field public static final enum UNDERLINE:Lcom/iMe/fork/enums/SentMessageFont;


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final flag:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/enums/SentMessageFont;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/iMe/fork/enums/SentMessageFont;

    sget-object v1, Lcom/iMe/fork/enums/SentMessageFont;->REGULAR:Lcom/iMe/fork/enums/SentMessageFont;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SentMessageFont;->BOLD:Lcom/iMe/fork/enums/SentMessageFont;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SentMessageFont;->ITALIC:Lcom/iMe/fork/enums/SentMessageFont;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SentMessageFont;->UNDERLINE:Lcom/iMe/fork/enums/SentMessageFont;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SentMessageFont;->STRIKE:Lcom/iMe/fork/enums/SentMessageFont;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SentMessageFont;->MONO:Lcom/iMe/fork/enums/SentMessageFont;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SentMessageFont;->SPOILER:Lcom/iMe/fork/enums/SentMessageFont;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 18
    new-instance v0, Lcom/iMe/fork/enums/SentMessageFont;

    const-string v1, "REGULAR"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/iMe/fork/enums/SentMessageFont;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/SentMessageFont;->REGULAR:Lcom/iMe/fork/enums/SentMessageFont;

    .line 19
    new-instance v0, Lcom/iMe/fork/enums/SentMessageFont;

    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;

    const-string v2, "BOLD"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v4, v1}, Lcom/iMe/fork/enums/SentMessageFont;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/SentMessageFont;->BOLD:Lcom/iMe/fork/enums/SentMessageFont;

    .line 20
    new-instance v0, Lcom/iMe/fork/enums/SentMessageFont;

    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;

    const-string v2, "ITALIC"

    const/4 v4, 0x2

    invoke-direct {v0, v2, v4, v4, v1}, Lcom/iMe/fork/enums/SentMessageFont;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/SentMessageFont;->ITALIC:Lcom/iMe/fork/enums/SentMessageFont;

    .line 21
    new-instance v0, Lcom/iMe/fork/enums/SentMessageFont;

    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUnderline;

    const-string v2, "UNDERLINE"

    const/4 v4, 0x3

    const/16 v5, 0x10

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/iMe/fork/enums/SentMessageFont;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/SentMessageFont;->UNDERLINE:Lcom/iMe/fork/enums/SentMessageFont;

    .line 22
    new-instance v0, Lcom/iMe/fork/enums/SentMessageFont;

    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_messageEntityStrike;

    const-string v2, "STRIKE"

    const/4 v4, 0x4

    const/16 v5, 0x8

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/iMe/fork/enums/SentMessageFont;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/SentMessageFont;->STRIKE:Lcom/iMe/fork/enums/SentMessageFont;

    .line 23
    new-instance v0, Lcom/iMe/fork/enums/SentMessageFont;

    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;

    const-string v2, "MONO"

    const/4 v5, 0x5

    invoke-direct {v0, v2, v5, v4, v1}, Lcom/iMe/fork/enums/SentMessageFont;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/SentMessageFont;->MONO:Lcom/iMe/fork/enums/SentMessageFont;

    .line 24
    new-instance v0, Lcom/iMe/fork/enums/SentMessageFont;

    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_messageEntitySpoiler;

    const-string v2, "SPOILER"

    const/4 v4, 0x6

    const/16 v5, 0x100

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/iMe/fork/enums/SentMessageFont;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/SentMessageFont;->SPOILER:Lcom/iMe/fork/enums/SentMessageFont;

    invoke-static {}, Lcom/iMe/fork/enums/SentMessageFont;->$values()[Lcom/iMe/fork/enums/SentMessageFont;

    move-result-object v0

    sput-object v0, Lcom/iMe/fork/enums/SentMessageFont;->$VALUES:[Lcom/iMe/fork/enums/SentMessageFont;

    new-instance v0, Lcom/iMe/fork/enums/SentMessageFont$Companion;

    invoke-direct {v0, v3}, Lcom/iMe/fork/enums/SentMessageFont$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/SentMessageFont;->Companion:Lcom/iMe/fork/enums/SentMessageFont$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/iMe/fork/enums/SentMessageFont;->flag:I

    .line 16
    iput-object p4, p0, Lcom/iMe/fork/enums/SentMessageFont;->clazz:Ljava/lang/Class;

    return-void
.end method

.method public static final mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/SentMessageFont;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/SentMessageFont;->Companion:Lcom/iMe/fork/enums/SentMessageFont$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/enums/SentMessageFont$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/SentMessageFont;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/SentMessageFont;
    .locals 1

    const-class v0, Lcom/iMe/fork/enums/SentMessageFont;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/enums/SentMessageFont;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/enums/SentMessageFont;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/SentMessageFont;->$VALUES:[Lcom/iMe/fork/enums/SentMessageFont;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/SentMessageFont;

    return-object v0
.end method


# virtual methods
.method public final getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/iMe/fork/enums/SentMessageFont;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public final getFlag()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/iMe/fork/enums/SentMessageFont;->flag:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .line 26
    sget-object v0, Lcom/iMe/fork/enums/SentMessageFont$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 33
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    sget v0, Lorg/telegram/messenger/R$string;->Spoiler:I

    const-string v1, "Spoiler"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"Spoiler\", R.string.Spoiler)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :pswitch_1
    sget v0, Lorg/telegram/messenger/R$string;->Mono:I

    const-string v1, "Mono"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"Mono\", R.string.Mono)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :pswitch_2
    sget v0, Lorg/telegram/messenger/R$string;->Strike:I

    const-string v1, "Strike"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"Strike\", R.string.Strike)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :pswitch_3
    sget v0, Lorg/telegram/messenger/R$string;->Underline:I

    const-string v1, "Underline"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"Underline\", R.string.Underline)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :pswitch_4
    sget v0, Lorg/telegram/messenger/R$string;->Italic:I

    const-string v1, "Italic"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"Italic\", R.string.Italic)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :pswitch_5
    sget v0, Lorg/telegram/messenger/R$string;->Bold:I

    const-string v1, "Bold"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"Bold\", R.string.Bold)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :pswitch_6
    sget v0, Lorg/telegram/messenger/R$string;->Regular:I

    const-string v1, "Regular"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"Regular\", R.string.Regular)"

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
