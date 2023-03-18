.class public Lorg/telegram/ui/TextMessageEnterTransition;
.super Ljava/lang/Object;
.source "TextMessageEnterTransition.java"

# interfaces
.implements Lorg/telegram/ui/MessageEnterTransitionContainer$Transition;


# instance fields
.field private animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private animationIndex:I

.field private animator:Landroid/animation/ValueAnimator;

.field bitmapPaint:Landroid/graphics/Paint;

.field changeColor:Z

.field private chatActivity:Lorg/telegram/ui/ChatActivity;

.field container:Lorg/telegram/ui/MessageEnterTransitionContainer;

.field crossfade:Z

.field crossfadeTextBitmap:Landroid/graphics/Bitmap;

.field crossfadeTextOffset:F

.field private final currentAccount:I

.field currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field drawBitmaps:Z

.field private drawableFromBottom:F

.field drawableFromTop:F

.field enterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field fromColor:I

.field fromMessageDrawable:Landroid/graphics/drawable/Drawable;

.field private fromStartX:F

.field private fromStartY:F

.field private gradientMatrix:Landroid/graphics/Matrix;

.field private gradientPaint:Landroid/graphics/Paint;

.field private gradientShader:Landroid/graphics/LinearGradient;

.field hasReply:Z

.field initBitmaps:Z

.field layout:Landroid/text/StaticLayout;

.field private listView:Landroid/view/ViewGroup;

.field private messageId:I

.field messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

.field progress:F

.field replayFromColor:I

.field replayObjectFromColor:I

.field replyFromStartX:F

.field replyFromStartY:F

.field replyMessageDx:F

.field replyNameDx:F

.field private replyRoundRect:Landroid/graphics/Path;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private roundRectRadii:[F

.field rtlLayout:Landroid/text/StaticLayout;

.field private scaleFrom:F

.field private scaleY:F

.field textLayoutBitmap:Landroid/graphics/Bitmap;

.field textLayoutBitmapRtl:Landroid/graphics/Bitmap;

.field textLayoutBlock:Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

.field textX:F

.field textY:F

.field toColor:I

.field toXOffset:F

.field toXOffsetRtl:F


# direct methods
.method public static synthetic $r8$lambda$Qm9m1Yf91HgQ76GR3EP8xCcw7WI(Lorg/telegram/ui/TextMessageEnterTransition;Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/MessageEnterTransitionContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/TextMessageEnterTransition;->lambda$new$0(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/MessageEnterTransitionContainer;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/ChatActivity;Landroid/view/ViewGroup;Lorg/telegram/ui/MessageEnterTransitionContainer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 25

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v2, p4

    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->initBitmaps:Z

    .line 85
    iput-boolean v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->drawBitmaps:Z

    const/4 v1, -0x1

    .line 110
    iput v1, v6, Lorg/telegram/ui/TextMessageEnterTransition;->animationIndex:I

    move-object/from16 v1, p5

    .line 128
    iput-object v1, v6, Lorg/telegram/ui/TextMessageEnterTransition;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 129
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v1, v6, Lorg/telegram/ui/TextMessageEnterTransition;->currentAccount:I

    .line 130
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    if-eqz v1, :cond_24

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v8, :cond_24

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    const/16 v3, 0xa

    if-le v1, v3, :cond_0

    goto/16 :goto_11

    .line 133
    :cond_0
    iput-object v7, v6, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    move-object/from16 v1, p3

    .line 134
    iput-object v1, v6, Lorg/telegram/ui/TextMessageEnterTransition;->listView:Landroid/view/ViewGroup;

    .line 135
    iput-object v2, v6, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    move-object/from16 v5, p2

    .line 136
    iput-object v5, v6, Lorg/telegram/ui/TextMessageEnterTransition;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 137
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v4

    iput-object v4, v6, Lorg/telegram/ui/TextMessageEnterTransition;->enterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 139
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 140
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v9

    if-eqz v9, :cond_24

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v9

    if-nez v9, :cond_1

    goto/16 :goto_11

    .line 144
    :cond_1
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getRecordCircle()Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    .line 146
    iget-object v9, v6, Lorg/telegram/ui/TextMessageEnterTransition;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 147
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/TextMessageEnterTransition;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 149
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v9

    iget-boolean v9, v9, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    if-nez v9, :cond_2

    .line 150
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 153
    :cond_2
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->setEnterTransitionInProgress(Z)V

    .line 155
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditText()Landroid/text/Editable;

    move-result-object v9

    .line 156
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 158
    iput-boolean v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->crossfade:Z

    .line 160
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/text/Layout;->getHeight()I

    move-result v11

    .line 161
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    const/16 v13, 0x14

    .line 162
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    .line 163
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getEmojiOnlyCount()I

    move-result v14

    const/4 v15, 0x4

    const/4 v3, 0x2

    if-eqz v14, :cond_9

    .line 164
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v12

    iget v12, v12, Lorg/telegram/messenger/MessageObject;->emojiOnlyCount:I

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v14

    iget v14, v14, Lorg/telegram/messenger/MessageObject;->animatedEmojiCount:I

    if-ne v12, v14, :cond_3

    const/4 v12, 0x1

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    .line 165
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v14

    iget v14, v14, Lorg/telegram/messenger/MessageObject;->emojiOnlyCount:I

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->animatedEmojiCount:I

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v14, 0x3

    const/16 v17, 0x5

    packed-switch v0, :pswitch_data_0

    .line 187
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintEmoji:[Landroid/text/TextPaint;

    aget-object v0, v0, v17

    :goto_1
    move-object v12, v0

    goto :goto_2

    .line 181
    :pswitch_0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintEmoji:[Landroid/text/TextPaint;

    if-eqz v12, :cond_4

    aget-object v0, v0, v15

    goto :goto_1

    :cond_4
    aget-object v0, v0, v17

    goto :goto_1

    .line 178
    :pswitch_1
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintEmoji:[Landroid/text/TextPaint;

    if-eqz v12, :cond_5

    aget-object v0, v0, v14

    goto :goto_1

    :cond_5
    aget-object v0, v0, v17

    goto :goto_1

    .line 175
    :pswitch_2
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintEmoji:[Landroid/text/TextPaint;

    if-eqz v12, :cond_6

    aget-object v0, v0, v3

    goto :goto_1

    :cond_6
    aget-object v0, v0, v15

    goto :goto_1

    .line 172
    :pswitch_3
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintEmoji:[Landroid/text/TextPaint;

    if-eqz v12, :cond_7

    aget-object v0, v0, v8

    goto :goto_1

    :cond_7
    aget-object v0, v0, v14

    goto :goto_1

    .line 169
    :pswitch_4
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintEmoji:[Landroid/text/TextPaint;

    if-eqz v12, :cond_8

    const/4 v12, 0x0

    aget-object v0, v0, v12

    goto :goto_1

    :cond_8
    aget-object v0, v0, v3

    goto :goto_1

    :goto_2
    if-eqz v12, :cond_9

    .line 191
    invoke-virtual {v12}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v0, v13

    float-to-int v13, v0

    .line 195
    :cond_9
    instance-of v0, v10, Landroid/text/Spannable;

    if-eqz v0, :cond_a

    .line 196
    move-object v0, v10

    check-cast v0, Landroid/text/Spannable;

    .line 197
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v14

    const-class v15, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v14, v15}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 198
    array-length v0, v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    .line 200
    :goto_3
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-ne v3, v14, :cond_c

    if-eqz v0, :cond_b

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    .line 201
    :cond_c
    :goto_4
    iput-boolean v8, v6, Lorg/telegram/ui/TextMessageEnterTransition;->crossfade:Z

    new-array v0, v8, [I

    .line 203
    invoke-static {v9, v0}, Lorg/telegram/messenger/AndroidUtilities;->trim(Ljava/lang/CharSequence;[I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v14, 0x0

    .line 204
    aget v15, v0, v14

    if-lez v15, :cond_d

    .line 205
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v15

    aget v8, v0, v14

    invoke-virtual {v15, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    invoke-virtual {v11, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v16

    .line 206
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v11

    aget v0, v0, v14

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    sub-int v11, v0, v16

    move/from16 v0, v16

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    .line 208
    :goto_5
    invoke-static {v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cloneSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 209
    invoke-virtual {v12}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {v9, v3, v13, v14}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v10

    .line 212
    :goto_6
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getTextSize()F

    move-result v3

    invoke-virtual {v12}, Landroid/text/TextPaint;->getTextSize()F

    move-result v8

    div-float/2addr v3, v8

    iput v3, v6, Lorg/telegram/ui/TextMessageEnterTransition;->scaleFrom:F

    .line 214
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    .line 215
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/text/Layout;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, v6, Lorg/telegram/ui/TextMessageEnterTransition;->scaleFrom:F

    div-float/2addr v8, v9

    float-to-int v8, v8

    .line 217
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x18

    if-lt v9, v13, :cond_e

    .line 218
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v14, 0x0

    invoke-static {v10, v14, v9, v12, v8}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v9

    const/4 v15, 0x1

    .line 219
    invoke-virtual {v9, v15}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v9

    .line 220
    invoke-virtual {v9, v14}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v9

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 221
    invoke-virtual {v9, v14}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v9

    .line 222
    invoke-virtual {v9}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    goto :goto_7

    .line 224
    :cond_e
    new-instance v9, Landroid/text/StaticLayout;

    sget-object v21, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v12

    move/from16 v20, v8

    invoke-direct/range {v17 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v9, v6, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    .line 226
    :goto_7
    iget-object v9, v6, Lorg/telegram/ui/TextMessageEnterTransition;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v14, 0x1

    new-array v15, v14, [Landroid/text/Layout;

    iget-object v14, v6, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    const/16 v16, 0x0

    aput-object v14, v15, v16

    const/4 v14, 0x0

    const/4 v13, 0x2

    invoke-static {v13, v14, v9, v15}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/TextMessageEnterTransition;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 227
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v9

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->getY()F

    move-result v13

    add-float/2addr v9, v13

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getY()F

    move-result v13

    add-float/2addr v9, v13

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getY()F

    move-result v13

    add-float/2addr v9, v13

    .line 228
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getX()F

    move-result v13

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/EditText;->getX()F

    move-result v15

    add-float/2addr v13, v15

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getX()F

    move-result v15

    add-float/2addr v13, v15

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getX()F

    move-result v15

    add-float/2addr v13, v15

    iput v13, v6, Lorg/telegram/ui/TextMessageEnterTransition;->fromStartX:F

    const/16 v13, 0xa

    .line 229
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v13, v9

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/EditText;->getScrollY()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v13, v15

    int-to-float v0, v0

    add-float/2addr v13, v0

    iput v13, v6, Lorg/telegram/ui/TextMessageEnterTransition;->fromStartY:F

    const/4 v0, 0x0

    .line 230
    iput v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->toXOffset:F

    const v13, 0x7f7fffff    # Float.MAX_VALUE

    const v14, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v15, 0x0

    .line 232
    :goto_8
    iget-object v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-ge v15, v0, :cond_10

    .line 233
    iget-object v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v15}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    cmpg-float v18, v0, v14

    if-gez v18, :cond_f

    move v14, v0

    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_10
    cmpl-float v0, v14, v13

    if-eqz v0, :cond_11

    .line 239
    iput v14, v6, Lorg/telegram/ui/TextMessageEnterTransition;->toXOffset:F

    :cond_11
    int-to-float v0, v11

    .line 242
    iget-object v11, v6, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v11}, Landroid/text/StaticLayout;->getHeight()I

    move-result v11

    int-to-float v11, v11

    iget v14, v6, Lorg/telegram/ui/TextMessageEnterTransition;->scaleFrom:F

    mul-float v11, v11, v14

    div-float/2addr v0, v11

    iput v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->scaleY:F

    const/4 v0, 0x4

    .line 244
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v9

    iput v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->drawableFromTop:F

    .line 245
    iget-object v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->enterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isTopViewVisible()Z

    move-result v0

    const/16 v11, 0xc

    if-eqz v0, :cond_12

    .line 246
    iget v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->drawableFromTop:F

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v0, v14

    iput v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->drawableFromTop:F

    .line 248
    :cond_12
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v9, v0

    iput v9, v6, Lorg/telegram/ui/TextMessageEnterTransition;->drawableFromBottom:F

    .line 249
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iput-object v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->textLayoutBlock:Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    .line 250
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    const-string v9, "chat_messageTextOut"

    .line 254
    invoke-direct {v6, v9}, Lorg/telegram/ui/TextMessageEnterTransition;->getThemedColor(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v14

    const-string v13, "chat_messagePanelText"

    invoke-direct {v6, v13}, Lorg/telegram/ui/TextMessageEnterTransition;->getThemedColor(Ljava/lang/String;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v19

    sub-double v14, v14, v19

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v19, 0x3fc99999a0000000L    # 0.20000000298023224

    cmpl-double v21, v14, v19

    if-lez v21, :cond_13

    const/4 v14, 0x1

    .line 255
    iput-boolean v14, v6, Lorg/telegram/ui/TextMessageEnterTransition;->crossfade:Z

    .line 256
    iput-boolean v14, v6, Lorg/telegram/ui/TextMessageEnterTransition;->changeColor:Z

    .line 259
    :cond_13
    invoke-direct {v6, v13}, Lorg/telegram/ui/TextMessageEnterTransition;->getThemedColor(Ljava/lang/String;)I

    move-result v13

    iput v13, v6, Lorg/telegram/ui/TextMessageEnterTransition;->fromColor:I

    .line 260
    invoke-direct {v6, v9}, Lorg/telegram/ui/TextMessageEnterTransition;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    iput v9, v6, Lorg/telegram/ui/TextMessageEnterTransition;->toColor:I

    .line 262
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    iget-object v13, v6, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v13}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v13

    if-ne v9, v13, :cond_17

    .line 263
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_9
    if-ge v9, v3, :cond_16

    .line 265
    iget-object v15, v6, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-direct {v6, v15, v9}, Lorg/telegram/ui/TextMessageEnterTransition;->isRtlLine(Landroid/text/Layout;I)Z

    move-result v15

    if-eqz v15, :cond_14

    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    :cond_14
    add-int/lit8 v13, v13, 0x1

    .line 270
    :goto_a
    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v15

    iget-object v11, v6, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v11, v9}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v11

    if-eq v15, v11, :cond_15

    const/4 v11, 0x1

    .line 271
    iput-boolean v11, v6, Lorg/telegram/ui/TextMessageEnterTransition;->crossfade:Z

    goto :goto_b

    :cond_15
    const/4 v11, 0x1

    add-int/lit8 v9, v9, 0x1

    const/16 v11, 0xc

    goto :goto_9

    :cond_16
    const/4 v11, 0x1

    goto :goto_b

    :cond_17
    const/4 v11, 0x1

    .line 276
    iput-boolean v11, v6, Lorg/telegram/ui/TextMessageEnterTransition;->crossfade:Z

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 280
    :goto_b
    iget-boolean v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->crossfade:Z

    if-nez v0, :cond_1c

    if-lez v14, :cond_1c

    if-lez v13, :cond_1c

    .line 281
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 282
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v10, 0x0

    const v13, 0x7f7fffff    # Float.MAX_VALUE

    :goto_c
    if-ge v10, v3, :cond_1a

    .line 284
    iget-object v11, v6, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-direct {v6, v11, v10}, Lorg/telegram/ui/TextMessageEnterTransition;->isRtlLine(Landroid/text/Layout;I)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 285
    new-instance v11, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v11}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    iget-object v14, v6, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v14, v10}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v14

    iget-object v15, v6, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v15, v10}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v15

    const/4 v1, 0x0

    invoke-virtual {v0, v11, v14, v15, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 286
    iget-object v1, v6, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v1

    cmpg-float v11, v1, v13

    if-gez v11, :cond_18

    move v13, v1

    :cond_18
    const/4 v15, 0x0

    goto :goto_d

    .line 291
    :cond_19
    new-instance v1, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v1}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    iget-object v11, v6, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v11, v10}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v11

    iget-object v14, v6, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v14, v10}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v9, v1, v11, v14, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_d
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p3

    goto :goto_c

    :cond_1a
    const/4 v15, 0x0

    .line 295
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_1b

    .line 296
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-static {v0, v15, v1, v12, v8}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 297
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 298
    invoke-virtual {v0, v15}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 299
    invoke-virtual {v0, v3}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    .line 302
    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    move-result v0

    invoke-static {v9, v15, v0, v12, v8}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 303
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 304
    invoke-virtual {v0, v15}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 305
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->rtlLayout:Landroid/text/StaticLayout;

    goto :goto_e

    .line 308
    :cond_1b
    new-instance v1, Landroid/text/StaticLayout;

    sget-object v21, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v1

    move-object/from16 v18, v0

    move-object/from16 v19, v12

    move/from16 v20, v8

    invoke-direct/range {v17 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v6, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    .line 309
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v21, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v17, v0

    move-object/from16 v18, v9

    invoke-direct/range {v17 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->rtlLayout:Landroid/text/StaticLayout;

    .line 313
    :cond_1c
    :goto_e
    iget-object v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->toXOffsetRtl:F

    .line 316
    :try_start_0
    iget-boolean v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->drawBitmaps:Z

    if-eqz v0, :cond_1f

    .line 317
    iget-object v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    iget-object v1, v6, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->textLayoutBitmap:Landroid/graphics/Bitmap;

    .line 318
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, v6, Lorg/telegram/ui/TextMessageEnterTransition;->textLayoutBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 319
    iget-object v1, v6, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 321
    iget-object v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->rtlLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1d

    .line 322
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    iget-object v1, v6, Lorg/telegram/ui/TextMessageEnterTransition;->rtlLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->textLayoutBitmapRtl:Landroid/graphics/Bitmap;

    .line 323
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, v6, Lorg/telegram/ui/TextMessageEnterTransition;->textLayoutBitmapRtl:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 324
    iget-object v1, v6, Lorg/telegram/ui/TextMessageEnterTransition;->rtlLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 327
    :cond_1d
    iget-boolean v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->crossfade:Z

    if-eqz v0, :cond_1f

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    if-ge v0, v1, :cond_1e

    const/4 v0, 0x0

    .line 329
    iput v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->crossfadeTextOffset:F

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->crossfadeTextBitmap:Landroid/graphics/Bitmap;

    goto :goto_f

    .line 332
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->crossfadeTextOffset:F

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->crossfadeTextBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :catch_0
    const/4 v0, 0x0

    .line 338
    iput-boolean v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->drawBitmaps:Z

    .line 341
    :cond_1f
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getReplyMsgId()I

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, v7, Lorg/telegram/ui/Cells/ChatMessageCell;->replyNameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_10

    :cond_20
    const/4 v0, 0x0

    :goto_10
    iput-boolean v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->hasReply:Z

    if-eqz v0, :cond_21

    .line 344
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ChatActivity;->getReplyNameTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v1, v3

    iput v1, v6, Lorg/telegram/ui/TextMessageEnterTransition;->replyFromStartX:F

    .line 346
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr v1, v0

    iput v1, v6, Lorg/telegram/ui/TextMessageEnterTransition;->replyFromStartY:F

    .line 347
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ChatActivity;->getReplyObjectTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 350
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ChatActivity;->getReplyNameTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextColor()I

    move-result v0

    iput v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->replayFromColor:I

    .line 351
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ChatActivity;->getReplyObjectTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextColor()I

    move-result v0

    iput v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->replayObjectFromColor:I

    .line 352
    iget v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->drawableFromTop:F

    const/16 v1, 0x2e

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->drawableFromTop:F

    .line 355
    :cond_21
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->gradientMatrix:Landroid/graphics/Matrix;

    .line 356
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->gradientPaint:Landroid/graphics/Paint;

    .line 357
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 359
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v9, 0x0

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v10, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, -0x1000000

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->gradientShader:Landroid/graphics/LinearGradient;

    .line 360
    iget-object v1, v6, Lorg/telegram/ui/TextMessageEnterTransition;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 362
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->stableId:I

    iput v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->messageId:I

    .line 364
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAlpha(F)V

    const/4 v0, 0x1

    .line 365
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setTextTransitionIsRunning(Z)V

    .line 367
    iget-object v3, v7, Lorg/telegram/ui/Cells/ChatMessageCell;->replyNameLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v0, :cond_22

    .line 368
    iget-object v0, v7, Lorg/telegram/ui/Cells/ChatMessageCell;->replyNameLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_22

    .line 369
    iget-object v0, v7, Lorg/telegram/ui/Cells/ChatMessageCell;->replyNameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v7, Lorg/telegram/ui/Cells/ChatMessageCell;->replyNameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v3}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->replyNameDx:F

    .line 372
    :cond_22
    iget-object v0, v7, Lorg/telegram/ui/Cells/ChatMessageCell;->replyTextLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_23

    .line 373
    iget-object v0, v7, Lorg/telegram/ui/Cells/ChatMessageCell;->replyTextLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_23

    .line 374
    iget-object v0, v7, Lorg/telegram/ui/Cells/ChatMessageCell;->replyTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, v7, Lorg/telegram/ui/Cells/ChatMessageCell;->replyTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->replyMessageDx:F

    :cond_23
    const/4 v3, 0x2

    new-array v0, v3, [F

    .line 378
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->animator:Landroid/animation/ValueAnimator;

    .line 379
    new-instance v1, Lorg/telegram/ui/TextMessageEnterTransition$$ExternalSyntheticLambda0;

    invoke-direct {v1, v6, v4, v2}, Lorg/telegram/ui/TextMessageEnterTransition$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/TextMessageEnterTransition;Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/MessageEnterTransitionContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 386
    iget-object v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 387
    iget-object v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0xfa

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 389
    invoke-virtual {v2, v6}, Lorg/telegram/ui/MessageEnterTransitionContainer;->addTransition(Lorg/telegram/ui/MessageEnterTransitionContainer$Transition;)V

    .line 390
    iget v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v1, v6, Lorg/telegram/ui/TextMessageEnterTransition;->animationIndex:I

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v0

    iput v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->animationIndex:I

    .line 392
    iget-object v8, v6, Lorg/telegram/ui/TextMessageEnterTransition;->animator:Landroid/animation/ValueAnimator;

    new-instance v9, Lorg/telegram/ui/TextMessageEnterTransition$1;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    const/4 v10, 0x2

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/TextMessageEnterTransition$1;-><init>(Lorg/telegram/ui/TextMessageEnterTransition;Lorg/telegram/ui/MessageEnterTransitionContainer;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 407
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-ne v0, v10, :cond_24

    const/4 v0, 0x1

    .line 408
    invoke-virtual {v7, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentBackgroundDrawable(Z)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v0

    if-eqz v0, :cond_24

    const-string v1, "chat_messagePanelBackground"

    .line 410
    invoke-direct {v6, v1}, Lorg/telegram/ui/TextMessageEnterTransition;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getTransitionDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/TextMessageEnterTransition;->fromMessageDrawable:Landroid/graphics/drawable/Drawable;

    :cond_24
    :goto_11
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/TextMessageEnterTransition;)I
    .locals 0

    .line 53
    iget p0, p0, Lorg/telegram/ui/TextMessageEnterTransition;->animationIndex:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/TextMessageEnterTransition;)I
    .locals 0

    .line 53
    iget p0, p0, Lorg/telegram/ui/TextMessageEnterTransition;->currentAccount:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/TextMessageEnterTransition;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/telegram/ui/TextMessageEnterTransition;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-object p0
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 758
    iget-object v0, p0, Lorg/telegram/ui/TextMessageEnterTransition;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 759
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private isRtlLine(Landroid/text/Layout;I)Z
    .locals 2

    .line 422
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/MessageEnterTransitionContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 380
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iput p3, p0, Lorg/telegram/ui/TextMessageEnterTransition;->progress:F

    .line 381
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    iget p3, p0, Lorg/telegram/ui/TextMessageEnterTransition;->progress:F

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setAlpha(F)V

    .line 382
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 432
    iget-boolean v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->drawBitmaps:Z

    const/4 v8, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->initBitmaps:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->crossfadeTextBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    if-eqz v1, :cond_1

    .line 433
    iput-boolean v8, v0, Lorg/telegram/ui/TextMessageEnterTransition;->initBitmaps:Z

    .line 434
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->crossfadeTextBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 435
    iget v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->crossfadeTextOffset:F

    invoke-virtual {v1, v12, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 436
    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v2, v2, Lorg/telegram/ui/Cells/ChatMessageCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    if-eqz v2, :cond_0

    .line 437
    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->clearPositions()V

    .line 439
    :cond_0
    iget-object v13, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v13}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v15, v2, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->textXOffset:F

    const/16 v17, 0x1

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x1

    move-object v14, v1

    move/from16 v16, v2

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawMessageText(Landroid/graphics/Canvas;Ljava/util/ArrayList;FZFZ)V

    .line 440
    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2, v1, v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawAnimatedEmojis(Landroid/graphics/Canvas;F)V

    .line 442
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->listView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->listView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 444
    iget v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->fromStartX:F

    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    sub-float v13, v2, v3

    .line 445
    iget v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->fromStartY:F

    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    sub-float v14, v2, v3

    .line 447
    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTextX()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->textX:F

    .line 448
    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTextY()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->textY:F

    .line 453
    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->stableId:I

    iget v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageId:I

    if-eq v2, v3, :cond_2

    return-void

    .line 456
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->listView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    sub-float v9, v2, v3

    .line 457
    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->listView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    .line 458
    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->enterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getTopViewHeight()F

    move-result v3

    add-float v15, v2, v3

    .line 464
    sget-object v2, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iget v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->progress:F

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    .line 465
    iget v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->progress:F

    const v16, 0x3ecccccd    # 0.4f

    cmpl-float v3, v2, v16

    if-lez v3, :cond_3

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    div-float v3, v2, v16

    move v6, v3

    .line 467
    :goto_0
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    .line 468
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v5

    .line 470
    iget v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->textX:F

    add-float v17, v9, v2

    .line 471
    iget v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->textY:F

    add-float v18, v15, v2

    .line 473
    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v19, v11, v5

    mul-float v2, v2, v19

    mul-float v1, v1, v5

    add-float/2addr v2, v1

    float-to-int v4, v2

    .line 474
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->listView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    if-le v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x8

    if-eqz v1, :cond_5

    .line 475
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v15

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    int-to-float v3, v4

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lez v1, :cond_5

    const/16 v22, 0x1

    goto :goto_2

    :cond_5
    const/16 v22, 0x0

    :goto_2
    if-eqz v22, :cond_6

    const/4 v3, 0x0

    .line 478
    invoke-static {v12, v15}, Ljava/lang/Math;->max(FF)F

    move-result v23

    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/16 v25, 0xff

    const/16 v26, 0x1f

    move/from16 v27, v1

    move-object/from16 v1, p1

    move/from16 v24, v2

    move v2, v3

    move/from16 v3, v23

    move/from16 v29, v4

    move/from16 v4, v27

    move/from16 v30, v5

    move/from16 v5, v24

    move/from16 v31, v6

    move/from16 v6, v25

    move v8, v7

    move/from16 v7, v26

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_3

    :cond_6
    move/from16 v29, v4

    move/from16 v30, v5

    move/from16 v31, v6

    move v8, v7

    .line 480
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 481
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->listView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getChatListViewPadding()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v2, 0x3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v10, v12, v1, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 482
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 483
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v9

    iget v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->toXOffset:F

    sub-float v3, v17, v3

    sub-float v3, v13, v3

    mul-float v3, v3, v19

    add-float v7, v1, v3

    .line 484
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v15

    .line 485
    iget v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->drawableFromTop:F

    iget-object v4, v0, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float v23, v11, v8

    mul-float v3, v3, v23

    mul-float v4, v1, v8

    add-float v6, v3, v4

    .line 486
    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 487
    iget v4, v0, Lorg/telegram/ui/TextMessageEnterTransition;->drawableFromBottom:F

    iget-object v5, v0, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float v4, v4, v23

    add-float/2addr v1, v3

    mul-float v1, v1, v8

    add-float v5, v4, v1

    .line 488
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v9

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v19

    add-float/2addr v1, v3

    float-to-int v4, v1

    const/4 v1, 0x0

    .line 490
    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmojiStickers()Z

    move-result v3

    if-nez v3, :cond_7

    .line 491
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentBackgroundDrawable(Z)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v1

    :cond_7
    const/high16 v24, 0x437f0000    # 255.0f

    if-eqz v1, :cond_a

    .line 496
    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v12, v0, Lorg/telegram/ui/TextMessageEnterTransition;->listView:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getTop()I

    move-result v12

    sub-int/2addr v2, v12

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setBackgroundTopY(I)V

    .line 497
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move/from16 v12, v31

    cmpl-float v3, v12, v11

    if-eqz v3, :cond_8

    .line 499
    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->fromMessageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_8

    float-to-int v11, v7

    move/from16 v31, v13

    float-to-int v13, v6

    move/from16 v32, v8

    float-to-int v8, v5

    .line 500
    invoke-virtual {v3, v11, v13, v4, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 501
    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->fromMessageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    :cond_8
    move/from16 v32, v8

    move/from16 v31, v13

    :goto_4
    move/from16 v11, v30

    if-eqz v2, :cond_9

    mul-float v8, v11, v24

    float-to-int v8, v8

    .line 505
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    float-to-int v8, v7

    float-to-int v13, v6

    float-to-int v3, v5

    .line 506
    invoke-virtual {v2, v8, v13, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 507
    invoke-virtual {v2, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/16 v3, 0xff

    .line 508
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_9
    mul-float v2, v12, v24

    float-to-int v2, v2

    .line 511
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setAlpha(I)V

    float-to-int v2, v7

    float-to-int v3, v6

    float-to-int v8, v5

    .line 512
    invoke-virtual {v1, v2, v3, v4, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    const/4 v2, 0x1

    .line 513
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setDrawFullBubble(Z)V

    .line 514
    invoke-virtual {v1, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v13, 0x0

    .line 515
    invoke-virtual {v1, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setDrawFullBubble(Z)V

    const/16 v2, 0xff

    .line 516
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setAlpha(I)V

    goto :goto_5

    :cond_a
    move/from16 v32, v8

    move/from16 v11, v30

    move/from16 v12, v31

    move/from16 v31, v13

    const/4 v13, 0x0

    .line 518
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 520
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/16 v2, 0xa

    if-eqz v1, :cond_c

    .line 522
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 524
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v7

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v6

    .line 525
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int v8, v4, v8

    int-to-float v8, v8

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v5, v2

    .line 523
    invoke-virtual {v10, v1, v3, v8, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_6

    .line 529
    :cond_b
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v7

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v6

    .line 530
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int v3, v4, v3

    int-to-float v3, v3

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v5, v8

    .line 528
    invoke-virtual {v10, v1, v2, v3, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 534
    :cond_c
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->listView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float v2, v14, v18

    mul-float v2, v2, v23

    add-float v8, v15, v2

    invoke-virtual {v10, v1, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 535
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1, v10, v12, v13}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawTime(Landroid/graphics/Canvas;FZ)V

    .line 536
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1, v10, v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawNamesLayout(Landroid/graphics/Canvas;F)V

    .line 537
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1, v10, v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawCommentButton(Landroid/graphics/Canvas;F)V

    .line 538
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1, v10, v13, v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawCaptionLayout(Landroid/graphics/Canvas;ZF)V

    .line 539
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1, v10, v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawLinkPreview(Landroid/graphics/Canvas;F)V

    .line 540
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 543
    iget-boolean v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->hasReply:Z

    if-eqz v1, :cond_18

    .line 544
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getReplyNameTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 545
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getReplyObjectTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    const/16 v1, 0x23

    .line 547
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/16 v30, 0x7

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v33, Lorg/telegram/ui/ActionBar/Theme;->chat_replyNamePaint:Landroid/text/TextPaint;

    invoke-virtual/range {v33 .. v33}, Landroid/text/TextPaint;->getTextSize()F

    move-result v33

    add-float v3, v3, v33

    sget-object v33, Lorg/telegram/ui/ActionBar/Theme;->chat_replyTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v33 .. v33}, Landroid/text/TextPaint;->getTextSize()F

    move-result v33

    add-float v3, v3, v33

    invoke-static {v2, v3, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    const/16 v3, 0xa

    .line 548
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v2, v3

    const/high16 v34, 0x3fc00000    # 1.5f

    div-float v3, v3, v34

    const/16 v33, 0xa

    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v3, v1

    invoke-static {v13, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 550
    iget v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->replyFromStartX:F

    iget-object v13, v0, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v13}, Landroid/view/View;->getX()F

    move-result v13

    sub-float/2addr v3, v13

    .line 551
    iget v13, v0, Lorg/telegram/ui/TextMessageEnterTransition;->replyFromStartY:F

    move/from16 v33, v4

    iget-object v4, v0, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    sub-float/2addr v13, v4

    .line 552
    iget-object v4, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    move/from16 v35, v5

    iget v5, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->replyStartX:I

    int-to-float v5, v5

    add-float/2addr v9, v5

    .line 553
    iget v4, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->replyStartY:I

    int-to-float v4, v4

    add-float/2addr v15, v4

    .line 558
    iget-object v4, v0, Lorg/telegram/ui/TextMessageEnterTransition;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->hasValidReplyMessageObject()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, v0, Lorg/telegram/ui/TextMessageEnterTransition;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v5, v4, Lorg/telegram/messenger/MessageObject;->type:I

    if-eqz v5, :cond_d

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    :cond_d
    iget-object v4, v0, Lorg/telegram/ui/TextMessageEnterTransition;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-nez v5, :cond_e

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-nez v4, :cond_e

    const-string v4, "chat_outReplyMessageText"

    .line 559
    invoke-direct {v0, v4}, Lorg/telegram/ui/TextMessageEnterTransition;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    goto :goto_7

    :cond_e
    const-string v4, "chat_outReplyMediaMessageText"

    .line 561
    invoke-direct {v0, v4}, Lorg/telegram/ui/TextMessageEnterTransition;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    .line 564
    :goto_7
    iget-object v5, v0, Lorg/telegram/ui/TextMessageEnterTransition;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "chat_outReplyNameText"

    .line 565
    invoke-direct {v0, v5}, Lorg/telegram/ui/TextMessageEnterTransition;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    move/from16 v36, v5

    const-string v5, "chat_outReplyLine"

    .line 566
    invoke-direct {v0, v5}, Lorg/telegram/ui/TextMessageEnterTransition;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    goto :goto_8

    :cond_f
    const-string v5, "chat_inReplyNameText"

    .line 568
    invoke-direct {v0, v5}, Lorg/telegram/ui/TextMessageEnterTransition;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    move/from16 v36, v5

    const-string v5, "chat_inReplyLine"

    .line 569
    invoke-direct {v0, v5}, Lorg/telegram/ui/TextMessageEnterTransition;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    :goto_8
    move/from16 v37, v6

    move/from16 v42, v36

    move/from16 v36, v5

    move/from16 v5, v42

    .line 572
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_replyTextPaint:Landroid/text/TextPaint;

    move/from16 v38, v7

    iget v7, v0, Lorg/telegram/ui/TextMessageEnterTransition;->replayObjectFromColor:I

    move/from16 v39, v8

    move/from16 v8, v32

    invoke-static {v7, v4, v8}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 573
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_replyNamePaint:Landroid/text/TextPaint;

    iget v6, v0, Lorg/telegram/ui/TextMessageEnterTransition;->replayFromColor:I

    invoke-static {v6, v5, v8}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 575
    iget-object v4, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v4, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->needReplyImage:Z

    if-eqz v4, :cond_10

    const/16 v4, 0x2c

    .line 576
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    :cond_10
    mul-float v4, v3, v19

    mul-float v5, v9, v11

    add-float/2addr v5, v4

    const/16 v6, 0xc

    .line 579
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v8

    add-float/2addr v13, v6

    mul-float v13, v13, v23

    mul-float v15, v15, v8

    add-float/2addr v13, v15

    .line 581
    iget-object v6, v0, Lorg/telegram/ui/TextMessageEnterTransition;->replyRoundRect:Landroid/graphics/Path;

    if-nez v6, :cond_11

    .line 582
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/TextMessageEnterTransition;->replyRoundRect:Landroid/graphics/Path;

    goto :goto_9

    .line 584
    :cond_11
    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    .line 586
    :goto_9
    iget-object v6, v0, Lorg/telegram/ui/TextMessageEnterTransition;->roundRectRadii:[F

    if-nez v6, :cond_12

    const/16 v6, 0x8

    new-array v6, v6, [F

    .line 587
    iput-object v6, v0, Lorg/telegram/ui/TextMessageEnterTransition;->roundRectRadii:[F

    const/4 v15, 0x6

    const/16 v28, 0x2

    .line 588
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v30

    aput v7, v6, v15

    const/4 v15, 0x1

    aput v7, v6, v15

    const/16 v21, 0x0

    aput v7, v6, v21

    .line 589
    iget-object v6, v0, Lorg/telegram/ui/TextMessageEnterTransition;->roundRectRadii:[F

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    const/4 v15, 0x5

    aput v7, v6, v15

    aput v7, v6, v20

    const/4 v15, 0x3

    aput v7, v6, v15

    aput v7, v6, v28

    goto :goto_a

    :cond_12
    const/4 v15, 0x3

    .line 591
    :goto_a
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v5

    const/16 v15, 0x23

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    move/from16 v25, v8

    iget-object v8, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v8, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->replyHeight:F

    invoke-static {v15, v8, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    add-float/2addr v8, v13

    invoke-virtual {v6, v5, v13, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 592
    iget-object v7, v0, Lorg/telegram/ui/TextMessageEnterTransition;->replyRoundRect:Landroid/graphics/Path;

    iget-object v8, v0, Lorg/telegram/ui/TextMessageEnterTransition;->roundRectRadii:[F

    sget-object v15, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v6, v8, v15}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 593
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_replyLinePaint:Landroid/graphics/Paint;

    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v11

    float-to-int v7, v7

    move/from16 v8, v36

    invoke-static {v8, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 594
    iget-object v6, v0, Lorg/telegram/ui/TextMessageEnterTransition;->replyRoundRect:Landroid/graphics/Path;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_replyLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 596
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v6, v1

    mul-float v6, v6, v11

    const/4 v7, 0x0

    .line 597
    invoke-virtual {v10, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 599
    iget-object v6, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v6, v6, Lorg/telegram/ui/Cells/ChatMessageCell;->needReplyImage:Z

    if-eqz v6, :cond_13

    .line 600
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 601
    iget-object v6, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v6, v6, Lorg/telegram/ui/Cells/ChatMessageCell;->replyImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6, v5, v13, v2, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 602
    iget-object v6, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v6, v6, Lorg/telegram/ui/Cells/ChatMessageCell;->replyImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6, v10}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 603
    invoke-virtual {v10, v5, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 604
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v5, 0x1

    .line 605
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v1, v5

    int-to-float v1, v1

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 608
    :cond_13
    iget v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->replyMessageDx:F

    sub-float v2, v9, v1

    .line 609
    iget v5, v0, Lorg/telegram/ui/TextMessageEnterTransition;->replyNameDx:F

    sub-float/2addr v9, v5

    sub-float/2addr v3, v1

    mul-float v3, v3, v19

    mul-float v2, v2, v11

    add-float/2addr v3, v2

    mul-float v9, v9, v11

    add-float/2addr v4, v9

    .line 614
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->replyNameLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_14

    .line 615
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 616
    invoke-virtual {v10, v4, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 617
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->replyNameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 618
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 621
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->replyTextLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_17

    .line 622
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/16 v4, 0x13

    .line 623
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_replyNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    const/4 v5, 0x5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-static {v1, v2, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    add-float/2addr v13, v1

    invoke-virtual {v10, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 625
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 626
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->replySpoilers:Ljava/util/List;

    invoke-static {v10, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->clipOutCanvas(Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 627
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->replyTextLayout:Landroid/text/StaticLayout;

    iget-object v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->animatedEmojiReplyStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v5, 0x0

    iget-object v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->replySpoilers:Ljava/util/List;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    const/16 v15, 0x13

    move/from16 v21, v33

    move v4, v5

    move/from16 v28, v35

    move-object v5, v6

    move/from16 v30, v37

    move v6, v7

    move/from16 v32, v38

    move v7, v8

    move/from16 v40, v39

    move v8, v9

    move v9, v13

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 628
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->replyTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 629
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 631
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->replySpoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 632
    invoke-virtual {v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->shouldInvalidateColor()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->replyTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 633
    :cond_15
    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b

    .line 636
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_c

    :cond_17
    move/from16 v21, v33

    move/from16 v28, v35

    move/from16 v30, v37

    move/from16 v32, v38

    move/from16 v40, v39

    const/16 v15, 0x13

    .line 639
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_d

    :cond_18
    move/from16 v21, v4

    move/from16 v28, v5

    move/from16 v30, v6

    move/from16 v40, v8

    move/from16 v25, v32

    const/16 v15, 0x13

    move/from16 v32, v7

    .line 642
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 644
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v1, v15, :cond_1a

    .line 645
    :cond_19
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float v7, v32, v1

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float v6, v30, v1

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v4, v21, v1

    int-to-float v1, v4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float v5, v28, v2

    invoke-virtual {v10, v7, v6, v1, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 648
    :cond_1a
    iget v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->scaleFrom:F

    mul-float v1, v1, v19

    add-float v13, v11, v1

    .line 650
    iget-boolean v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->drawBitmaps:Z

    if-eqz v1, :cond_1b

    .line 651
    iget v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->scaleY:F

    mul-float v1, v1, v19

    add-float/2addr v1, v11

    goto :goto_e

    :cond_1b
    const/high16 v1, 0x3f800000    # 1.0f

    .line 656
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    mul-float v15, v31, v19

    .line 657
    iget v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->toXOffset:F

    sub-float v2, v17, v2

    mul-float v2, v2, v11

    add-float/2addr v2, v15

    mul-float v14, v14, v23

    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->textLayoutBlock:Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget v3, v3, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F

    add-float v3, v18, v3

    mul-float v3, v3, v25

    add-float/2addr v3, v14

    invoke-virtual {v10, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    mul-float v9, v13, v1

    const/4 v1, 0x0

    .line 658
    invoke-virtual {v10, v13, v9, v1, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 660
    iget-boolean v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->drawBitmaps:Z

    if-eqz v1, :cond_1d

    .line 661
    iget-boolean v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->crossfade:Z

    if-eqz v1, :cond_1c

    .line 662
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->bitmapPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, v12

    mul-float v3, v3, v24

    float-to-int v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 664
    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->textLayoutBitmap:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v10, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move/from16 v21, v13

    move v13, v9

    goto/16 :goto_f

    .line 666
    :cond_1d
    iget-boolean v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->crossfade:Z

    if-eqz v1, :cond_1e

    iget-boolean v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->changeColor:Z

    if-eqz v2, :cond_1e

    .line 667
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    move-result v8

    .line 668
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->fromColor:I

    iget v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->toColor:I

    invoke-static {v2, v3, v12}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 669
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v20, v1, v12

    mul-float v1, v20, v24

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 670
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 671
    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v21, 0x0

    move-object/from16 v1, p1

    move/from16 v41, v8

    move/from16 v8, v21

    move/from16 v21, v13

    move v13, v9

    move/from16 v9, v20

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 672
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    move/from16 v2, v41

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 673
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_f

    :cond_1e
    move/from16 v21, v13

    move v13, v9

    if-eqz v1, :cond_1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 675
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v9, v1, v12

    mul-float v1, v9, v24

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 676
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 677
    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 678
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_f

    .line 680
    :cond_1f
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 681
    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->layout:Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 684
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 686
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->rtlLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_24

    .line 687
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 688
    iget v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->toXOffsetRtl:F

    sub-float v1, v17, v1

    mul-float v1, v1, v11

    add-float/2addr v15, v1

    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->textLayoutBlock:Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget v1, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F

    add-float v18, v18, v1

    mul-float v18, v18, v25

    add-float v14, v14, v18

    invoke-virtual {v10, v15, v14}, Landroid/graphics/Canvas;->translate(FF)V

    move/from16 v5, v21

    const/4 v1, 0x0

    .line 689
    invoke-virtual {v10, v5, v13, v1, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 690
    iget-boolean v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->drawBitmaps:Z

    if-eqz v1, :cond_21

    .line 691
    iget-boolean v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->crossfade:Z

    if-eqz v1, :cond_20

    .line 692
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->bitmapPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v11, v2, v12

    mul-float v11, v11, v24

    float-to-int v2, v11

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 694
    :cond_20
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->textLayoutBitmapRtl:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v10, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_10

    .line 696
    :cond_21
    iget-boolean v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->crossfade:Z

    if-eqz v1, :cond_22

    iget-boolean v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->changeColor:Z

    if-eqz v2, :cond_22

    .line 697
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->rtlLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    .line 698
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 699
    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->rtlLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget v4, v0, Lorg/telegram/ui/TextMessageEnterTransition;->fromColor:I

    iget v6, v0, Lorg/telegram/ui/TextMessageEnterTransition;->toColor:I

    invoke-static {v4, v6, v12}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    int-to-float v2, v2

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v11, v6, v12

    mul-float v2, v2, v11

    float-to-int v2, v2

    invoke-static {v4, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 700
    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->rtlLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 701
    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->rtlLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_10

    :cond_22
    if-eqz v1, :cond_23

    .line 703
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->rtlLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v1

    .line 704
    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->rtlLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    int-to-float v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v11, v4, v12

    mul-float v3, v3, v11

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 705
    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->rtlLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 706
    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->rtlLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_10

    .line 708
    :cond_23
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->rtlLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 711
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_11

    :cond_24
    move/from16 v5, v21

    .line 714
    :goto_11
    iget-boolean v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->crossfade:Z

    if-eqz v1, :cond_27

    .line 715
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 716
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->listView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float v2, v31, v17

    mul-float v2, v2, v19

    add-float/2addr v1, v2

    move/from16 v15, v40

    invoke-virtual {v10, v1, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 717
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTextX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTextY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v10, v5, v13, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 718
    iget v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->crossfadeTextOffset:F

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v10, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 720
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->crossfadeTextBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_25

    .line 721
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->bitmapPaint:Landroid/graphics/Paint;

    mul-float v6, v12, v24

    float-to-int v3, v6

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 722
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->crossfadeTextBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_12

    .line 724
    :cond_25
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    move-result v7

    .line 725
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    iget v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->toColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 726
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move v5, v12

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawMessageText(Landroid/graphics/Canvas;Ljava/util/ArrayList;ZFZ)V

    .line 727
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1, v10, v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawAnimatedEmojis(Landroid/graphics/Canvas;F)V

    .line 728
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    if-eq v1, v7, :cond_26

    .line 729
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 732
    :cond_26
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 735
    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v22, :cond_28

    .line 738
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->gradientMatrix:Landroid/graphics/Matrix;

    move/from16 v2, v29

    int-to-float v3, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 739
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->gradientShader:Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    const/4 v2, 0x0

    .line 740
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/TextMessageEnterTransition;->gradientPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 741
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 744
    :cond_28
    iget v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->progress:F

    cmpl-float v2, v1, v16

    if-lez v2, :cond_29

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_13

    :cond_29
    div-float v2, v1, v16

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_13
    cmpl-float v3, v2, v1

    if-nez v3, :cond_2a

    .line 746
    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->enterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setTextTransitionIsRunning(Z)V

    .line 748
    :cond_2a
    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->enterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2b

    cmpg-float v1, v2, v1

    if-gez v1, :cond_2b

    .line 749
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 750
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->enterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->enterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v1, v3

    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->enterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v1, v3

    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->enterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v1, v3

    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    const/16 v3, 0x34

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    iget-object v2, v0, Lorg/telegram/ui/TextMessageEnterTransition;->enterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->enterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->enterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->enterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/TextMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 751
    iget-object v1, v0, Lorg/telegram/ui/TextMessageEnterTransition;->enterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 752
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 753
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2b
    return-void
.end method

.method public start()V
    .locals 1

    .line 416
    iget-object v0, p0, Lorg/telegram/ui/TextMessageEnterTransition;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
