.class final Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$containerButton$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FormattingMessagesWeb.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;-><init>(Landroid/content/Context;Lcom/iMe/fork/controller/FormattingTextController;Lorg/telegram/ui/Components/ChatActivityEnterView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/widget/LinearLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;


# direct methods
.method constructor <init>(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$containerButton$2;->this$0:Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/LinearLayout;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$containerButton$2;->this$0:Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;

    invoke-static {v0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->access$initContainerButton(Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb$containerButton$2;->invoke()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method
