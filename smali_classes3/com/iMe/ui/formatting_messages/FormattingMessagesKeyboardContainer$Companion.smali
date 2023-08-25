.class public final Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Companion;
.super Ljava/lang/Object;
.source "FormattingMessagesKeyboardContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Companion;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 399
    invoke-static {}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->access$getListTextStyleSpanFlags$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
