.class Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;
.super Ljava/lang/Object;
.source "CaptionContainerView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/CaptionContainerView;-><init>(Landroid/content/Context;ILorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

.field final synthetic val$currentAccount:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;I)V
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->val$currentAccount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 181
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 182
    invoke-virtual {p1}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {p1}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    const/16 v2, 0xb4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p1, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreClipTop:Z

    .line 189
    :cond_1
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    .line 193
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->val$currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->storyCaptionLengthLimit:I

    add-int/lit8 v2, v0, 0x19

    if-le v2, v1, :cond_2

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 197
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView;->cancelAnimation()V

    .line 198
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-lt v0, v1, :cond_3

    const v0, -0x138889

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    .line 167
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/ui/Components/EditTextEffects;->suppressOnTextChanged:Z

    if-eqz p2, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p3, p2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-nez p3, :cond_1

    .line 171
    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$100(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    .line 173
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 174
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object p2

    iget p3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->val$currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setUserOrChar(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 175
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/CharSequence;ILjava/util/ArrayList;ZZ)V

    :cond_2
    return-void
.end method
