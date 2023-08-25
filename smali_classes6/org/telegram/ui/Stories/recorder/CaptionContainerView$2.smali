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
.field private lastLength:I

.field private lastOverLimit:Z

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

.field final synthetic val$currentAccount:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;I)V
    .locals 0

    .line 163
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->val$currentAccount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 188
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 189
    invoke-virtual {p1}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 191
    invoke-virtual {p1}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    const/16 v3, 0x78

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p1, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreClipTop:Z

    .line 196
    :cond_1
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move p1, v1

    :goto_1
    const/4 v2, 0x0

    .line 200
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->val$currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v3

    .line 201
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->val$currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    if-eqz v3, :cond_2

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->storyCaptionLengthLimitPremium:I

    goto :goto_2

    :cond_2
    iget v4, v4, Lorg/telegram/messenger/MessagesController;->storyCaptionLengthLimitDefault:I

    :goto_2
    add-int/lit8 v5, p1, 0x19

    if-le v5, v4, :cond_3

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v5, v4, p1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedTextView;->cancelAnimation()V

    .line 206
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-lt p1, v4, :cond_4

    const v5, -0x138889

    goto :goto_3

    :cond_4
    const/4 v5, -0x1

    :goto_3
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    if-le p1, v4, :cond_5

    if-nez v3, :cond_5

    .line 208
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->val$currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->storyCaptionLengthLimitPremium:I

    if-ge p1, v2, :cond_5

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->lastLength:I

    if-le p1, v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->captionLimitToast()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 209
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object v3, v2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$200(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)I

    move-result v5

    neg-int v5, v5

    invoke-static {v2, v5}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$202(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 210
    sget-object v2, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v2}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 212
    :cond_5
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->lastLength:I

    if-le p1, v4, :cond_6

    goto :goto_4

    :cond_6
    move v0, v1

    .line 215
    :goto_4
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->lastOverLimit:Z

    if-eq v0, p1, :cond_7

    .line 216
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onCaptionLimitUpdate(Z)V

    .line 218
    :cond_7
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->lastOverLimit:Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    .line 171
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/ui/Components/EditTextEffects;->suppressOnTextChanged:Z

    if-eqz p2, :cond_0

    return-void

    .line 174
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p3, p2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-nez p3, :cond_1

    .line 175
    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$100(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    .line 177
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 178
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

    .line 179
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
