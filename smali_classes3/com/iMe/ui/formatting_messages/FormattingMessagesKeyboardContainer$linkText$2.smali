.class final Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$linkText$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FormattingMessagesKeyboardContainer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/EditTextCaption;Lcom/iMe/fork/controller/FormattingTextController;Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;


# direct methods
.method constructor <init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$linkText$2;->this$0:Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$linkText$2;->this$0:Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;

    invoke-static {v0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->access$initLinkText(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;)Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$linkText$2;->invoke()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;

    move-result-object v0

    return-object v0
.end method
