.class public Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;
.super Landroid/widget/FrameLayout;
.source "ChatAttachAlertContactsLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$CharSequenceCallback;
    }
.end annotation


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private currentId:I

.field private currentName:Ljava/lang/CharSequence;

.field private currentStatus:Ljava/lang/CharSequence;

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private formattedPhoneNumber:Ljava/lang/CharSequence;

.field private formattedPhoneNumberUser:Lorg/telegram/tgnet/TLRPC$User;

.field private lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private lastName:Ljava/lang/String;

.field private lastStatus:I

.field private nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private needDivider:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public static synthetic $r8$lambda$7iGi0c6sbendGkyQfsY7gDgzEH0(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lambda$setStatus$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$NeVClaXEknPN2lrz5-rXbD5wOL4(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lambda$setStatus$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$S-PiocGFMw0dSK7uxBLn0WJN-Zo(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lambda$setData$0(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$laT2eWYPh7XaC7oYSkb3RDeabyc(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$CharSequenceCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lambda$setData$1(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$CharSequenceCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 12

    .line 94
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 89
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 95
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 97
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 99
    new-instance p2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x17

    .line 100
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 101
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v1, 0x5

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    or-int/lit8 v6, v3, 0x30

    const/4 v3, 0x0

    const/16 v4, 0xe

    if-eqz v0, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    const/16 v8, 0x9

    if-eqz v0, :cond_2

    move v9, v4

    goto :goto_2

    :cond_2
    move v9, v3

    :goto_2
    const/4 v10, 0x0

    const/16 v4, 0x2e

    const/16 v5, 0x2e

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 110
    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 111
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v0, "dialogTextBlack"

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 112
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 114
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 115
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v3, -0x1

    const/16 v4, 0x14

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_4

    move v5, v1

    goto :goto_4

    :cond_4
    move v5, v2

    :goto_4
    or-int/lit8 v5, v5, 0x30

    const/16 v10, 0x1c

    const/16 v11, 0x48

    if-eqz v0, :cond_5

    move v6, v10

    goto :goto_5

    :cond_5
    move v6, v11

    :goto_5
    const/16 v7, 0xc

    if-eqz v0, :cond_6

    move v8, v11

    goto :goto_6

    :cond_6
    move v8, v10

    :goto_6
    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance p2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p1, 0xd

    .line 118
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 119
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string p2, "dialogTextGray2"

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 120
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_7

    move p2, v1

    goto :goto_7

    :cond_7
    move p2, v2

    :goto_7
    or-int/lit8 p2, p2, 0x30

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 121
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v3, -0x1

    const/16 v4, 0x14

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_8

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    or-int/lit8 v5, v1, 0x30

    if-eqz p2, :cond_9

    move v6, v10

    goto :goto_9

    :cond_9
    move v6, v11

    :goto_9
    const/16 v7, 0x24

    if-eqz p2, :cond_a

    move v8, v11

    goto :goto_a

    :cond_a
    move v8, v10

    :goto_a
    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private synthetic lambda$setData$0(Ljava/lang/CharSequence;)V
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->setStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$setData$1(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$CharSequenceCallback;)V
    .locals 1

    .line 152
    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$CharSequenceCallback;->run()Ljava/lang/CharSequence;

    move-result-object p1

    .line 153
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setStatus$2()V
    .locals 2

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->formattedPhoneNumber:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method private synthetic lambda$setStatus$3()V
    .locals 3

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 173
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->formattedPhoneNumber:Ljava/lang/CharSequence;

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->formattedPhoneNumberUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 175
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 269
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->needDivider:Z

    if-eqz v0, :cond_2

    .line 270
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v1, 0x46

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    move v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sub-int/2addr v0, v1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 186
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x40

    .line 187
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->needDivider:Z

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 185
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCurrentId(I)V
    .locals 0

    .line 125
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentId:I

    return-void
.end method

.method public setData(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 130
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentStatus:Ljava/lang/CharSequence;

    .line 131
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentName:Ljava/lang/CharSequence;

    .line 132
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string p3, ""

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 133
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 134
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 137
    :cond_0
    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentStatus:Ljava/lang/CharSequence;

    .line 138
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentName:Ljava/lang/CharSequence;

    .line 139
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 140
    iput-boolean p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->needDivider:Z

    xor-int/lit8 p1, p4, 0x1

    .line 141
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const/4 p1, 0x0

    .line 142
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->update(I)V

    return-void
.end method

.method public setData(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$CharSequenceCallback;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->setData(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 151
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$CharSequenceCallback;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 2

    .line 160
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentStatus:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_3

    .line 164
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 165
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v0, Lorg/telegram/messenger/R$string;->NumberUnknown:I

    const-string v1, "NumberUnknown"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 167
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->formattedPhoneNumberUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->formattedPhoneNumber:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 170
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 171
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public update(I)V
    .locals 10

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz p1, :cond_a

    .line 200
    sget v4, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr v4, p1

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 201
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-nez v4, :cond_2

    if-nez v2, :cond_3

    :cond_2
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v4, v6, :cond_4

    :cond_3
    move v4, v5

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    if-eqz v0, :cond_6

    if-nez v4, :cond_6

    .line 205
    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int/2addr v6, p1

    if-eqz v6, :cond_6

    .line 207
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v6, :cond_5

    .line 208
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_2

    :cond_5
    move v6, v3

    .line 210
    :goto_2
    iget v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lastStatus:I

    if-eq v6, v7, :cond_6

    move v4, v5

    :cond_6
    if-nez v4, :cond_8

    .line 214
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentName:Ljava/lang/CharSequence;

    if-nez v6, :cond_8

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lastName:Ljava/lang/String;

    if-eqz v6, :cond_8

    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int/2addr p1, v6

    if-eqz p1, :cond_8

    if-eqz v0, :cond_7

    .line 216
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    move-object p1, v1

    .line 218
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_8
    move-object p1, v1

    :cond_9
    move v5, v4

    :goto_4
    if-nez v5, :cond_b

    return-void

    :cond_a
    move-object p1, v1

    .line 227
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_d

    .line 228
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v0, :cond_c

    .line 230
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lastStatus:I

    goto :goto_5

    .line 232
    :cond_c
    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lastStatus:I

    goto :goto_5

    .line 234
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    .line 235
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentId:I

    int-to-long v4, v4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 237
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentId:I

    int-to-long v3, v3

    const-string v5, "#"

    invoke-virtual {v0, v3, v4, v5, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 240
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    .line 241
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lastName:Ljava/lang/String;

    .line 242
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_7

    .line 244
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_11

    if-nez p1, :cond_10

    .line 245
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    :cond_10
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lastName:Ljava/lang/String;

    goto :goto_6

    :cond_11
    const-string p1, ""

    .line 247
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lastName:Ljava/lang/String;

    .line 249
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 252
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentStatus:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->setStatus(Ljava/lang/CharSequence;)V

    .line 254
    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 255
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_12

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_8

    .line 258
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_8
    return-void
.end method
