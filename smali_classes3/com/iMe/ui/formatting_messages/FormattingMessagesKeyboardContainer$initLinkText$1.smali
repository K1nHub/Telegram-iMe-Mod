.class public final Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;
.super Lorg/telegram/ui/Components/EditTextBoldCursor;
.source "FormattingMessagesKeyboardContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->initLinkText()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;


# direct methods
.method constructor <init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;->this$0:Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;

    .line 282
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$initLinkText$1;->this$0:Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;

    invoke-virtual {v0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer;->getListener()Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Listener;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/formatting_messages/FormattingMessagesKeyboardContainer$Listener;->onSearchOpenClose(Ljava/lang/String;)V

    .line 286
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
