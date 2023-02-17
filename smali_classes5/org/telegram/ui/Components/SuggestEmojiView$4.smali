.class Lorg/telegram/ui/Components/SuggestEmojiView$4;
.super Ljava/lang/Object;
.source "SuggestEmojiView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SuggestEmojiView;-><init>(Landroid/content/Context;ILorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

.field final synthetic val$enterView:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SuggestEmojiView;Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$4;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    iput-object p2, p0, Lorg/telegram/ui/Components/SuggestEmojiView$4;->val$enterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 271
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$4;->val$enterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 272
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$4;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->fireUpdate()V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
