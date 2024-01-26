.class public final Lcom/iMe/fork/controller/FormattingTextController;
.super Lorg/telegram/messenger/BaseController;
.source "FormattingTextController.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/controller/FormattingTextController$Companion;,
        Lcom/iMe/fork/controller/FormattingTextController$TextStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFormattingTextController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FormattingTextController.kt\ncom/iMe/fork/controller/FormattingTextController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,304:1\n1864#2,3:305\n1747#2,3:308\n1855#2,2:311\n1855#2,2:313\n766#2:315\n857#2,2:316\n766#2:318\n857#2,2:319\n*S KotlinDebug\n*F\n+ 1 FormattingTextController.kt\ncom/iMe/fork/controller/FormattingTextController\n*L\n65#1:305,3\n76#1:308,3\n82#1:311,2\n128#1:313,2\n268#1:315\n268#1:316,2\n273#1:318\n273#1:319,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/fork/controller/FormattingTextController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/iMe/fork/controller/FormattingTextController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private formattingMessagesContainer:Landroid/view/View;

.field private formattingPanelType:Lcom/iMe/fork/enums/FormattingPanelType;

.field private final listSpansFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/fork/controller/FormattingTextController$TextStyle;",
            ">;"
        }
    .end annotation
.end field

.field private final listTextStyleSpanFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$m79tygdUbYpyrXoSwCqsWV6NegQ(Lcom/iMe/fork/controller/FormattingTextController;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/controller/FormattingTextController;->createChooseSelectedFormattingPanelType$lambda$7$lambda$6(Lcom/iMe/fork/controller/FormattingTextController;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/controller/FormattingTextController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/controller/FormattingTextController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/controller/FormattingTextController;->Companion:Lcom/iMe/fork/controller/FormattingTextController$Companion;

    .line 297
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/iMe/fork/controller/FormattingTextController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 39
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/FormattingTextController;->listSpansFlags:Ljava/util/List;

    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const/4 v1, 0x2

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    const/4 v0, 0x4

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    const/16 v1, 0x8

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, p1, v2

    const/16 v1, 0x10

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/16 v0, 0x100

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p1, v1

    const/4 v0, 0x6

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    .line 44
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/FormattingTextController;->listTextStyleSpanFlags:Ljava/util/List;

    .line 53
    sget-object p1, Lcom/iMe/fork/enums/FormattingPanelType;->DEFAULT:Lcom/iMe/fork/enums/FormattingPanelType;

    iput-object p1, p0, Lcom/iMe/fork/controller/FormattingTextController;->formattingPanelType:Lcom/iMe/fork/enums/FormattingPanelType;

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 39
    sget-object v0, Lcom/iMe/fork/controller/FormattingTextController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static final createChooseSelectedFormattingPanelType$lambda$7$lambda$6(Lcom/iMe/fork/controller/FormattingTextController;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.iMe.fork.enums.FormattingPanelType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/iMe/fork/enums/FormattingPanelType;

    .line 172
    iget-object v0, p0, Lcom/iMe/fork/controller/FormattingTextController;->formattingPanelType:Lcom/iMe/fork/enums/FormattingPanelType;

    if-ne p2, v0, :cond_0

    return-void

    .line 175
    :cond_0
    iput-object p2, p0, Lcom/iMe/fork/controller/FormattingTextController;->formattingPanelType:Lcom/iMe/fork/enums/FormattingPanelType;

    .line 176
    invoke-virtual {p0}, Lcom/iMe/fork/controller/FormattingTextController;->saveConfig()V

    .line 177
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static final getInstance(I)Lcom/iMe/fork/controller/FormattingTextController;
    .locals 1

    sget-object v0, Lcom/iMe/fork/controller/FormattingTextController;->Companion:Lcom/iMe/fork/controller/FormattingTextController$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/controller/FormattingTextController$Companion;->getInstance(I)Lcom/iMe/fork/controller/FormattingTextController;

    move-result-object p0

    return-object p0
.end method

.method private final getList(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    sget-object v1, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->Companion:Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Companion;

    invoke-virtual {v1}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Companion;->getListTextStyleSpanFlags()Ljava/util/List;

    move-result-object v1

    .line 766
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-gt v6, p1, :cond_1

    move v4, v5

    :cond_1
    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :cond_2
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v5

    if-eqz v1, :cond_5

    .line 270
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sub-int/2addr p1, v1

    .line 273
    sget-object v1, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->Companion:Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Companion;

    invoke-virtual {v1}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Companion;->getListTextStyleSpanFlags()Ljava/util/List;

    move-result-object v1

    .line 766
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-gt v6, p1, :cond_4

    move v6, v5

    goto :goto_2

    :cond_4
    move v6, v4

    :goto_2
    if-eqz v6, :cond_3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method private final getTextStyle(Lorg/telegram/ui/Components/EditTextCaption;II)V
    .locals 10

    .line 215
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const-class v0, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/CharacterStyle;

    const-string v0, "characterStyle"

    .line 216
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    aget-object v0, p1, v2

    instance-of v0, v0, Lorg/telegram/ui/Components/TextStyleSpan;

    if-eqz v0, :cond_1

    .line 217
    aget-object v0, p1, v2

    const-string v1, "null cannot be cast to non-null type org.telegram.ui.Components.TextStyleSpan"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TextStyleSpan;->getStyleFlags()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/iMe/fork/controller/FormattingTextController;->getList(I)Ljava/util/List;

    move-result-object v8

    .line 218
    iget-object v0, p0, Lcom/iMe/fork/controller/FormattingTextController;->listSpansFlags:Ljava/util/List;

    .line 219
    new-instance v9, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    .line 222
    aget-object p1, p1, v2

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/TextStyleSpan;->getStyleFlags()I

    move-result v6

    const-string v7, ""

    move-object v3, v9

    move v4, p2

    move v5, p3

    .line 219
    invoke-direct/range {v3 .. v8}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;-><init>(IIILjava/lang/String;Ljava/util/List;)V

    .line 218
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 227
    :cond_1
    array-length v0, p1

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    xor-int/2addr v0, v1

    if-eqz v0, :cond_4

    aget-object v0, p1, v2

    instance-of v0, v0, Lorg/telegram/ui/Components/URLSpanReplacement;

    if-eqz v0, :cond_4

    .line 228
    aget-object p1, p1, v2

    const-string v0, "null cannot be cast to non-null type org.telegram.ui.Components.URLSpanReplacement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/ui/Components/URLSpanReplacement;

    .line 229
    invoke-virtual {p1}, Lorg/telegram/ui/Components/URLSpanReplacement;->getTextStyleRun()Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    move-result-object v0

    const-string v1, "urlSpanReplacement.url"

    if-eqz v0, :cond_3

    .line 230
    invoke-virtual {p1}, Lorg/telegram/ui/Components/URLSpanReplacement;->getTextStyleRun()Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    invoke-direct {p0, v0}, Lcom/iMe/fork/controller/FormattingTextController;->getList(I)Ljava/util/List;

    move-result-object v7

    .line 231
    iget-object v0, p0, Lcom/iMe/fork/controller/FormattingTextController;->listSpansFlags:Ljava/util/List;

    .line 232
    new-instance v8, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    .line 235
    invoke-virtual {p1}, Lorg/telegram/ui/Components/URLSpanReplacement;->getTextStyleRun()Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    move-result-object v2

    iget v5, v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 236
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v8

    move v3, p2

    move v4, p3

    .line 232
    invoke-direct/range {v2 .. v7}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;-><init>(IIILjava/lang/String;Ljava/util/List;)V

    .line 231
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/iMe/fork/controller/FormattingTextController;->listSpansFlags:Ljava/util/List;

    .line 242
    new-instance v8, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    const/4 v5, 0x0

    .line 246
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v8

    move v3, p2

    move v4, p3

    .line 242
    invoke-direct/range {v2 .. v7}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;-><init>(IIILjava/lang/String;Ljava/util/List;)V

    .line 241
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 252
    :cond_4
    iget-object p1, p0, Lcom/iMe/fork/controller/FormattingTextController;->listSpansFlags:Ljava/util/List;

    .line 253
    new-instance v6, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    const/4 v3, 0x0

    .line 258
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v4, ""

    move-object v0, v6

    move v1, p2

    move v2, p3

    .line 253
    invoke-direct/range {v0 .. v5}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;-><init>(IIILjava/lang/String;Ljava/util/List;)V

    .line 252
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method


# virtual methods
.method public final createChooseSelectedFormattingPanelType(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    sget v1, Lorg/telegram/messenger/R$string;->settings_messages_formatting_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 156
    sget v1, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 158
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 159
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 161
    invoke-static {}, Lcom/iMe/fork/enums/FormattingPanelType;->values()[Lcom/iMe/fork/enums/FormattingPanelType;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    .line 162
    new-instance v8, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-direct {v8, p1}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 163
    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v9, 0x4

    .line 164
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v8, v10, v5, v9, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 166
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    .line 167
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    .line 165
    invoke-virtual {v8, v9, v10}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 169
    invoke-virtual {v7}, Lcom/iMe/fork/enums/FormattingPanelType;->getTitle()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/iMe/fork/controller/FormattingTextController;->formattingPanelType:Lcom/iMe/fork/enums/FormattingPanelType;

    if-ne v10, v7, :cond_0

    move v7, v2

    goto :goto_1

    :cond_0
    move v7, v5

    :goto_1
    invoke-virtual {v8, v9, v7}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 170
    new-instance v7, Lcom/iMe/fork/controller/FormattingTextController$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v0}, Lcom/iMe/fork/controller/FormattingTextController$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/controller/FormattingTextController;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public final getAllSpans(Lorg/telegram/ui/Components/EditTextCaption;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/Components/EditTextCaption;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/fork/controller/FormattingTextController$TextStyle;",
            ">;"
        }
    .end annotation

    const-string v0, "messageEditText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "messageEditText.text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 60
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 58
    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 64
    iget-object v2, p0, Lcom/iMe/fork/controller/FormattingTextController;->listSpansFlags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const-string v2, " "

    .line 65
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1865
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v4, Ljava/lang/String;

    if-nez v2, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    .line 68
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 71
    invoke-direct {p0, p1, v3, v0}, Lcom/iMe/fork/controller/FormattingTextController;->getTextStyle(Lorg/telegram/ui/Components/EditTextCaption;II)V

    move v2, v5

    move v7, v3

    move v3, v0

    move v0, v7

    goto :goto_0

    .line 73
    :cond_3
    iget-object p1, p0, Lcom/iMe/fork/controller/FormattingTextController;->listSpansFlags:Ljava/util/List;

    return-object p1
.end method

.method public final getFormattingPanelType()Lcom/iMe/fork/enums/FormattingPanelType;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/iMe/fork/controller/FormattingTextController;->formattingPanelType:Lcom/iMe/fork/enums/FormattingPanelType;

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 39
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getListSpansFlags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/fork/controller/FormattingTextController$TextStyle;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/iMe/fork/controller/FormattingTextController;->listSpansFlags:Ljava/util/List;

    return-object v0
.end method

.method public final getListTextStyleSpanFlags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/iMe/fork/controller/FormattingTextController;->listTextStyleSpanFlags:Ljava/util/List;

    return-object v0
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 3

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/iMe/fork/enums/FormattingPanelType;->Companion:Lcom/iMe/fork/enums/FormattingPanelType$Companion;

    .line 187
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedFormattingPanelType()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->selectedFormattingPanelType()Lcom/iMe/fork/enums/FormattingPanelType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-virtual {v0, p1}, Lcom/iMe/fork/enums/FormattingPanelType$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/FormattingPanelType;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/FormattingTextController;->formattingPanelType:Lcom/iMe/fork/enums/FormattingPanelType;

    return-void
.end method

.method public final replaceSpans(Lorg/telegram/ui/Components/EditTextCaption;Landroid/view/View;)V
    .locals 9

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 80
    invoke-virtual {p0, v0}, Lcom/iMe/fork/controller/FormattingTextController;->searchTag(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    .line 82
    iget-object v1, p0, Lcom/iMe/fork/controller/FormattingTextController;->listSpansFlags:Ljava/util/List;

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    .line 83
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getListFlags()Ljava/util/List;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 85
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getListFlags()Ljava/util/List;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getSummaryFlags()I

    move-result v6

    sub-int/2addr v6, v0

    .line 87
    invoke-virtual {v4, v6}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->setSummaryFlags(I)V

    if-nez v6, :cond_4

    .line 91
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getStartIndexWord()I

    move-result v6

    .line 92
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getEndIndexWord()I

    move-result v7

    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v2

    .line 89
    :goto_1
    invoke-static {v2, v6, v7, v8, v5}, Lorg/telegram/messenger/MediaDataController;->addStyleToText(Lorg/telegram/ui/Components/TextStyleSpan;IILandroid/text/Spannable;Z)V

    .line 96
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_2

    move v5, v3

    :cond_2
    if-eqz v5, :cond_3

    if-eqz p1, :cond_3

    .line 97
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 98
    new-instance v6, Lorg/telegram/ui/Components/URLSpanReplacement;

    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getStartIndexWord()I

    move-result v7

    .line 100
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getEndIndexWord()I

    move-result v4

    const/16 v8, 0x21

    .line 97
    invoke-interface {v5, v6, v7, v4, v8}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextCaption;->getDelegate()Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;->onSpansChanged()V

    goto :goto_0

    .line 106
    :cond_4
    new-instance v7, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v7}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 107
    iput v6, v7, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 109
    new-instance v6, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    .line 110
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getStartIndexWord()I

    move-result v7

    .line 111
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getEndIndexWord()I

    move-result v4

    if-eqz p1, :cond_5

    .line 112
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    goto :goto_2

    :cond_5
    move-object v8, v2

    .line 108
    :goto_2
    invoke-static {v6, v7, v4, v8, v5}, Lorg/telegram/messenger/MediaDataController;->addStyleToText(Lorg/telegram/ui/Components/TextStyleSpan;IILandroid/text/Spannable;Z)V

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextCaption;->getDelegate()Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;->onSpansChanged()V

    goto/16 :goto_0

    .line 119
    :cond_6
    iget-object p1, p0, Lcom/iMe/fork/controller/FormattingTextController;->formattingMessagesContainer:Landroid/view/View;

    .line 120
    instance-of v0, p1, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;

    .line 121
    check-cast p2, Landroid/widget/TextView;

    .line 120
    invoke-virtual {p1, p2, v5}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->updateBackgroundButton(Landroid/widget/TextView;Z)V

    goto/16 :goto_5

    .line 125
    :cond_7
    instance-of v0, p1, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;

    invoke-virtual {p1, p2, v5}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->updateBackgroundButton(Landroid/view/View;Z)V

    goto :goto_5

    .line 128
    :cond_8
    iget-object v1, p0, Lcom/iMe/fork/controller/FormattingTextController;->listSpansFlags:Ljava/util/List;

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    .line 129
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getListFlags()Ljava/util/List;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getSummaryFlags()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->setSummaryFlags(I)V

    .line 131
    new-instance v5, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v5}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 132
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getSummaryFlags()I

    move-result v6

    iput v6, v5, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 134
    new-instance v6, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v6, v5}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    .line 135
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getStartIndexWord()I

    move-result v5

    .line 136
    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getEndIndexWord()I

    move-result v4

    if-eqz p1, :cond_a

    .line 137
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    goto :goto_4

    :cond_a
    move-object v7, v2

    .line 133
    :goto_4
    invoke-static {v6, v5, v4, v7, v3}, Lorg/telegram/messenger/MediaDataController;->addStyleToText(Lorg/telegram/ui/Components/TextStyleSpan;IILandroid/text/Spannable;Z)V

    if-eqz p1, :cond_9

    .line 140
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextCaption;->getDelegate()Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-interface {v4}, Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;->onSpansChanged()V

    goto :goto_3

    .line 142
    :cond_b
    iget-object p1, p0, Lcom/iMe/fork/controller/FormattingTextController;->formattingMessagesContainer:Landroid/view/View;

    .line 143
    instance-of v0, p1, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;

    .line 144
    check-cast p2, Landroid/widget/TextView;

    .line 143
    invoke-virtual {p1, p2, v3}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->updateBackgroundButton(Landroid/widget/TextView;Z)V

    goto :goto_5

    .line 148
    :cond_c
    instance-of v0, p1, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;

    invoke-virtual {p1, p2, v3}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->updateBackgroundButton(Landroid/view/View;Z)V

    :cond_d
    :goto_5
    return-void
.end method

.method public final restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V
    .locals 1

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getFormattingPanelType()Lcom/iMe/fork/enums/FormattingPanelType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getFormattingPanelType()Lcom/iMe/fork/enums/FormattingPanelType;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/FormattingTextController;->formattingPanelType:Lcom/iMe/fork/enums/FormattingPanelType;

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/fork/controller/FormattingTextController;->saveConfig()V

    return-void
.end method

.method public final saveConfig()V
    .locals 3

    .line 193
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 194
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedFormattingPanelType()Ljava/lang/String;

    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/iMe/fork/controller/FormattingTextController;->formattingPanelType:Lcom/iMe/fork/enums/FormattingPanelType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 196
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final searchTag(I)Z
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/iMe/fork/controller/FormattingTextController;->listSpansFlags:Ljava/util/List;

    .line 1747
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1748
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    .line 76
    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getListFlags()Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method public final setFormattingMessagesContainer(Landroid/view/View;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/iMe/fork/controller/FormattingTextController;->formattingMessagesContainer:Landroid/view/View;

    return-void
.end method

.method public final setFormattingPanelType(Lcom/iMe/fork/enums/FormattingPanelType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/iMe/fork/controller/FormattingTextController;->formattingPanelType:Lcom/iMe/fork/enums/FormattingPanelType;

    return-void
.end method
