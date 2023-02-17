.class public Lorg/telegram/ui/Components/PhonebookShareAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "PhonebookShareAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhonebookShareAlert$ListAdapter;,
        Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;,
        Lorg/telegram/ui/Components/PhonebookShareAlert$UserCell;
    }
.end annotation


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private actionBarAnimation:Landroid/animation/AnimatorSet;

.field private actionBarShadow:Landroid/view/View;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private buttonTextView:Landroid/widget/TextView;

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private delegate:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;

.field private inLayout:Z

.field private isImport:Z

.field private linearLayout:Landroid/widget/LinearLayout;

.field private listAdapter:Lorg/telegram/ui/Components/PhonebookShareAlert$ListAdapter;

.field private other:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/AndroidUtilities$VcardItem;",
            ">;"
        }
    .end annotation
.end field

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private phoneEndRow:I

.field private phoneStartRow:I

.field private phones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/AndroidUtilities$VcardItem;",
            ">;"
        }
    .end annotation
.end field

.field private rowCount:I

.field private scrollOffsetY:I

.field private scrollView:Landroidx/core/widget/NestedScrollView;

.field private shadow:Landroid/view/View;

.field private shadowAnimation:Landroid/animation/AnimatorSet;

.field private userRow:I

.field private vcardEndRow:I

.field private vcardStartRow:I


# direct methods
.method public static synthetic $r8$lambda$1MODlscE9H6zuYmbNAssDMEE6Cw(Lorg/telegram/ui/Components/PhonebookShareAlert;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PhonebookShareAlert;->lambda$new$4(ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1jsWLOhLoGgd-FZun4yUqL0PLz8(Lorg/telegram/ui/Components/PhonebookShareAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PhonebookShareAlert;->lambda$new$5(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JIsdQC1-PpbkRa7xwokhGamH_ok(Lorg/telegram/ui/Components/PhonebookShareAlert;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/PhonebookShareAlert;->lambda$new$3(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$o6UUiUcuxgbZ9ViFHXa2xYmtVbI(Lorg/telegram/ui/Components/PhonebookShareAlert;ILandroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PhonebookShareAlert;->lambda$new$2(ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oOQ71v9aVIC_vtHhWE2xbFy9JvM(Lorg/telegram/ui/Components/PhonebookShareAlert;Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/PhonebookShareAlert;->lambda$new$0(Landroidx/core/widget/NestedScrollView;IIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$tJWxc-I16iAfrNmUcfDLxa4Xtf4(Lorg/telegram/ui/Components/PhonebookShareAlert;Lorg/telegram/messenger/AndroidUtilities$VcardItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PhonebookShareAlert;->lambda$new$1(Lorg/telegram/messenger/AndroidUtilities$VcardItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/tgnet/TLRPC$User;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 243
    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/PhonebookShareAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/tgnet/TLRPC$User;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/tgnet/TLRPC$User;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p8

    .line 247
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 75
    new-instance v4, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->backgroundPaint:Landroid/graphics/Paint;

    .line 92
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->other:Ljava/util/ArrayList;

    .line 93
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    .line 249
    invoke-static/range {p6 .. p7}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 251
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    .line 254
    iget v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2, v9, v5, v7, v4}, Lorg/telegram/messenger/AndroidUtilities;->loadVCardFromStream(Landroid/net/Uri;IZLjava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    .line 256
    invoke-static/range {p5 .. p5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iget v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2, v9, v5, v7, v4}, Lorg/telegram/messenger/AndroidUtilities;->loadVCardFromStream(Landroid/net/Uri;IZLjava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 257
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->delete()Z

    .line 258
    iput-boolean v6, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->isImport:Z

    goto :goto_0

    .line 259
    :cond_1
    iget-object v2, v1, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 260
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v9, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 261
    iget v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2, v9, v6, v7, v4}, Lorg/telegram/messenger/AndroidUtilities;->loadVCardFromStream(Landroid/net/Uri;IZLjava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 263
    :cond_2
    new-instance v2, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-direct {v2}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;-><init>()V

    .line 264
    iput v5, v2, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    .line 265
    iget-object v4, v2, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->vcardData:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TEL;MOBILE:+"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v8

    :goto_0
    if-nez p3, :cond_3

    if-eqz v1, :cond_3

    .line 269
    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_1

    :cond_3
    move-object/from16 v1, p3

    :goto_1
    if-eqz v2, :cond_a

    const/4 v4, 0x0

    .line 272
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_8

    .line 273
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    .line 274
    iget v10, v9, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    if-nez v10, :cond_7

    const/4 v10, 0x0

    .line 276
    :goto_3
    iget-object v11, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 277
    iget-object v11, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-virtual {v11, v5}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v5}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v10, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_6

    .line 283
    iput-boolean v5, v9, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->checked:Z

    goto :goto_5

    .line 286
    :cond_6
    iget-object v10, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 288
    :cond_7
    iget-object v10, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->other:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 291
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 292
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 293
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    .line 294
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 295
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 296
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    goto :goto_6

    :cond_9
    move-object/from16 v7, p6

    move-object/from16 v2, p7

    goto :goto_6

    :cond_a
    move-object/from16 v7, p6

    move-object/from16 v2, p7

    move-object v4, v8

    .line 300
    :goto_6
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;-><init>()V

    iput-object v9, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_b

    .line 302
    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v10, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    .line 303
    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    iput-wide v10, v9, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    .line 304
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 305
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 306
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 307
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 308
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v1, v9, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 310
    iput-object v4, v9, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    goto :goto_7

    .line 313
    :cond_b
    iput-object v7, v9, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 314
    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_c
    :goto_7
    move-object/from16 v1, p1

    .line 317
    iput-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 318
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 319
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhonebookShareAlert;->updateRows()V

    .line 321
    new-instance v2, Lorg/telegram/ui/Components/PhonebookShareAlert$1;

    invoke-direct {v2, v0, v1, v1}, Lorg/telegram/ui/Components/PhonebookShareAlert$1;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;Landroid/content/Context;Landroid/content/Context;)V

    .line 427
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 428
    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 429
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    .line 430
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 432
    new-instance v4, Lorg/telegram/ui/Components/PhonebookShareAlert$ListAdapter;

    invoke-direct {v4, v0, v8}, Lorg/telegram/ui/Components/PhonebookShareAlert$ListAdapter;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;Lorg/telegram/ui/Components/PhonebookShareAlert$1;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->listAdapter:Lorg/telegram/ui/Components/PhonebookShareAlert$ListAdapter;

    .line 434
    new-instance v4, Lorg/telegram/ui/Components/PhonebookShareAlert$2;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/PhonebookShareAlert$2;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    .line 458
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 459
    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVerticalScrollBarEnabled(Z)V

    .line 460
    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v9, 0x33

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x4d

    move/from16 p1, v7

    move/from16 p2, v8

    move/from16 p3, v9

    move/from16 p4, v10

    move/from16 p5, v11

    move/from16 p6, v12

    move/from16 p7, v13

    invoke-static/range {p1 .. p7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->linearLayout:Landroid/widget/LinearLayout;

    .line 462
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 463
    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v7, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v8, 0x33

    const/4 v9, -0x1

    invoke-static {v9, v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    new-instance v7, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda4;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;)V

    invoke-virtual {v4, v7}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 466
    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->listAdapter:Lorg/telegram/ui/Components/PhonebookShareAlert$ListAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/PhonebookShareAlert$ListAdapter;->getItemCount()I

    move-result v4

    const/4 v7, 0x0

    :goto_8
    const/4 v8, -0x2

    if-ge v7, v4, :cond_10

    .line 467
    iget-object v10, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->listAdapter:Lorg/telegram/ui/Components/PhonebookShareAlert$ListAdapter;

    invoke-virtual {v10, v1, v7}, Lorg/telegram/ui/Components/PhonebookShareAlert$ListAdapter;->createView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v10

    .line 469
    iget-object v11, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->linearLayout:Landroid/widget/LinearLayout;

    invoke-static {v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v11, v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    iget v8, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneStartRow:I

    if-lt v7, v8, :cond_d

    iget v8, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneEndRow:I

    if-lt v7, v8, :cond_e

    :cond_d
    iget v8, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardStartRow:I

    if-lt v7, v8, :cond_f

    iget v8, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardEndRow:I

    if-ge v7, v8, :cond_f

    .line 471
    :cond_e
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    new-instance v8, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda1;

    invoke-direct {v8, v0, v7, v10}, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;ILandroid/view/View;)V

    invoke-virtual {v10, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    new-instance v8, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda3;

    invoke-direct {v8, v0, v7, v3, v1}, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;)V

    invoke-virtual {v10, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 577
    :cond_10
    new-instance v4, Lorg/telegram/ui/Components/PhonebookShareAlert$3;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/PhonebookShareAlert$3;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v7, "dialogBackground"

    .line 584
    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 585
    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v7, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 586
    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v7, "dialogTextBlack"

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v4, v10, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 587
    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v10, "dialogButtonSelector"

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v4, v10, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 588
    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 589
    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 590
    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 591
    iget-boolean v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->isImport:Z

    const-string v10, "AddContactPhonebookTitle"

    const-string v11, "ShareContactTitle"

    if-eqz v4, :cond_11

    .line 592
    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v12, Lorg/telegram/messenger/R$string;->AddContactPhonebookTitle:I

    invoke-static {v10, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 594
    :cond_11
    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v12, Lorg/telegram/messenger/R$string;->ShareContactTitle:I

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 596
    :goto_9
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v12, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v12, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 597
    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v8, Lorg/telegram/ui/Components/PhonebookShareAlert$4;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/PhonebookShareAlert$4;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;)V

    invoke-virtual {v4, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 606
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarShadow:Landroid/view/View;

    .line 607
    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    .line 608
    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarShadow:Landroid/view/View;

    const-string v8, "dialogShadowLine"

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 609
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v12, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarShadow:Landroid/view/View;

    invoke-static {v9, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v12, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadow:Landroid/view/View;

    .line 612
    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 613
    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadow:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    .line 614
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v7, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadow:Landroid/view/View;

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/16 v12, 0x53

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x4d

    move/from16 p1, v8

    move/from16 p2, v9

    move/from16 p3, v12

    move/from16 p4, v13

    move/from16 p5, v14

    move/from16 p6, v15

    move/from16 p7, v16

    invoke-static/range {p1 .. p7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    const/16 v1, 0x22

    .line 617
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v4, v7, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 618
    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 619
    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    const-string v4, "featuredStickers_buttonText"

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 620
    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v1, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 621
    iget-boolean v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->isImport:Z

    if-eqz v1, :cond_12

    .line 622
    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->AddContactPhonebookTitle:I

    invoke-static {v10, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 624
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->ShareContactTitle:I

    invoke-static {v11, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 627
    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const-string v5, "featuredStickers_addButton"

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    const-string v6, "featuredStickers_addButtonPressed"

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 628
    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    const/4 v4, -0x1

    const/16 v5, 0x2a

    const/16 v6, 0x53

    const/16 v7, 0x10

    const/16 v8, 0x10

    const/16 v9, 0x10

    const/16 v10, 0x10

    move/from16 p1, v4

    move/from16 p2, v5

    move/from16 p3, v6

    move/from16 p4, v7

    move/from16 p5, v8

    move/from16 p6, v9

    move/from16 p7, v10

    invoke-static/range {p1 .. p7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PhonebookShareAlert;)Ljava/util/ArrayList;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PhonebookShareAlert;)Ljava/util/ArrayList;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->other:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollOffsetY:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/PhonebookShareAlert;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/PhonebookShareAlert;)Landroid/view/View;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarShadow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/PhonebookShareAlert;)Lorg/telegram/ui/Components/PhonebookShareAlert$ListAdapter;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->listAdapter:Lorg/telegram/ui/Components/PhonebookShareAlert$ListAdapter;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/PhonebookShareAlert;)Landroidx/core/widget/NestedScrollView;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    return-object p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/PhonebookShareAlert;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->inLayout:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/PhonebookShareAlert;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhonebookShareAlert;->updateLayout(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PhonebookShareAlert;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/PhonebookShareAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/PhonebookShareAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/PhonebookShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/PhonebookShareAlert;)Landroid/graphics/Paint;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/PhonebookShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/PhonebookShareAlert;)Landroid/widget/LinearLayout;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->linearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/PhonebookShareAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$3802(Lorg/telegram/ui/Components/PhonebookShareAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$3902(Lorg/telegram/ui/Components/PhonebookShareAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PhonebookShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->rowCount:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneStartRow:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneEndRow:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardStartRow:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/PhonebookShareAlert;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->userRow:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/PhonebookShareAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PhonebookShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PhonebookShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/PhonebookShareAlert;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->isImport:Z

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PhonebookShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/PhonebookShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    .line 464
    iget-boolean p1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->inLayout:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhonebookShareAlert;->updateLayout(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/messenger/AndroidUtilities$VcardItem;Landroid/content/DialogInterface;I)V
    .locals 1

    if-nez p3, :cond_0

    .line 506
    :try_start_0
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p3, "clipboard"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string p3, "label"

    const/4 v0, 0x0

    .line 507
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 508
    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 509
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 510
    iget-object p1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "TextCopied"

    sget p3, Lorg/telegram/messenger/R$string;->TextCopied:I

    invoke-static {p2, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 513
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2(ILandroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 474
    iget p3, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneStartRow:I

    if-lt p1, p3, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneEndRow:I

    if-ge p1, v0, :cond_0

    .line 475
    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    sub-int p3, p1, p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    goto :goto_0

    .line 476
    :cond_0
    iget p3, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardStartRow:I

    if-lt p1, p3, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardEndRow:I

    if-ge p1, v0, :cond_1

    .line 477
    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->other:Ljava/util/ArrayList;

    sub-int p3, p1, p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_2

    return-void

    .line 484
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->isImport:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 485
    iget p1, p3, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    if-nez p1, :cond_3

    .line 487
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.DIAL"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    .line 488
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 489
    iget-object p2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/16 p3, 0x1f4

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    .line 491
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_3
    if-ne p1, v1, :cond_4

    .line 494
    iget-object p1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mailto:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_4
    const/4 p2, 0x3

    if-ne p1, p2, :cond_6

    .line 496
    invoke-virtual {p3, v2}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "http"

    .line 497
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 498
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "http://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 500
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 502
    :cond_6
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array p2, v1, [Ljava/lang/CharSequence;

    .line 503
    sget v0, Lorg/telegram/messenger/R$string;->Copy:I

    const-string v1, "Copy"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    new-instance v0, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;Lorg/telegram/messenger/AndroidUtilities$VcardItem;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 517
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_4

    .line 520
    :cond_7
    iget-boolean v0, p3, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->checked:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p3, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->checked:Z

    .line 521
    iget v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneStartRow:I

    if-lt p1, v0, :cond_b

    iget v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneEndRow:I

    if-ge p1, v0, :cond_b

    const/4 p1, 0x0

    .line 523
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_9

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    iget-boolean v0, v0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->checked:Z

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    :goto_2
    const-string p1, "featuredStickers_buttonText"

    .line 529
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    .line 530
    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 531
    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->buttonTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    const v1, 0x7fffffff

    and-int/2addr p1, v1

    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 533
    :cond_b
    check-cast p2, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;

    .line 534
    iget-boolean p1, p3, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->checked:Z

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->setChecked(Z)V

    :goto_4
    return-void
.end method

.method private synthetic lambda$new$3(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;Landroid/view/View;)Z
    .locals 2

    .line 539
    iget p4, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneStartRow:I

    if-lt p1, p4, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneEndRow:I

    if-ge p1, v0, :cond_0

    .line 540
    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    sub-int/2addr p1, p4

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    goto :goto_0

    .line 541
    :cond_0
    iget p4, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardStartRow:I

    if-lt p1, p4, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardEndRow:I

    if-ge p1, v0, :cond_1

    .line 542
    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->other:Ljava/util/ArrayList;

    sub-int/2addr p1, p4

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 p4, 0x0

    if-nez p1, :cond_2

    return p4

    .line 549
    :cond_2
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 550
    invoke-virtual {p1, p4}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object p4

    const-string v1, "label"

    invoke-static {v1, p4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p4

    .line 551
    invoke-virtual {v0, p4}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 552
    iget-object p4, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p4}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_6

    .line 553
    iget p4, p1, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    const/4 v1, 0x3

    if-ne p4, v1, :cond_3

    .line 554
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_2

    .line 556
    :cond_3
    new-instance p4, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;

    invoke-direct {p4, p3, p2}, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 557
    iget p1, p1, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    if-nez p1, :cond_4

    .line 558
    iget-object p1, p4, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->textView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->PhoneCopied:I

    const-string p3, "PhoneCopied"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object p1, p4, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->imageView:Landroid/widget/ImageView;

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_calls:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    if-ne p1, v0, :cond_5

    .line 561
    iget-object p1, p4, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->textView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->EmailCopied:I

    const-string p3, "EmailCopied"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object p1, p4, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->imageView:Landroid/widget/ImageView;

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_mention:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 564
    :cond_5
    iget-object p1, p4, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->textView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->TextCopied:I

    const-string p3, "TextCopied"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    iget-object p1, p4, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->imageView:Landroid/widget/ImageView;

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_info:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 567
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 568
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast p1, Landroid/widget/FrameLayout;

    const/16 p2, 0x5dc

    invoke-static {p1, p4, p2}, Lorg/telegram/ui/Components/Bulletin;->make(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_6
    :goto_2
    return v0
.end method

.method private synthetic lambda$new$4(ZILjava/lang/String;)V
    .locals 2

    .line 918
    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;->didSelectContact(Lorg/telegram/tgnet/TLRPC$User;ZILjava/lang/String;)V

    .line 919
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 10

    .line 630
    iget-boolean p2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->isImport:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 631
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 632
    sget p2, Lorg/telegram/messenger/R$string;->AddContactTitle:I

    const-string v3, "AddContactTitle"

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 633
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v3, "Cancel"

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 634
    sget v0, Lorg/telegram/messenger/R$string;->CreateNewContact:I

    const-string v3, "CreateNewContact"

    .line 635
    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    sget v0, Lorg/telegram/messenger/R$string;->AddToExistingContact:I

    const-string v1, "AddToExistingContact"

    .line 636
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    new-instance v0, Lorg/telegram/ui/Components/PhonebookShareAlert$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PhonebookShareAlert$5;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;)V

    .line 634
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 876
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto/16 :goto_7

    .line 879
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 880
    new-instance p2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;->text:Ljava/lang/String;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 882
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v6, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "BEGIN:VCARD\nVERSION:3.0\nFN:%1$s\nEND:VCARD"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v3, "END:VCARD"

    .line 884
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_9

    .line 886
    iget-object v4, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 887
    iget-object v4, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_1
    const-string v5, "\n"

    if-ltz v4, :cond_5

    .line 888
    iget-object v6, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    .line 889
    iget-boolean v7, v6, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->checked:Z

    if-nez v7, :cond_2

    goto :goto_3

    .line 892
    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 893
    invoke-virtual {v6, v1}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    :cond_3
    const/4 v7, 0x0

    .line 895
    :goto_2
    iget-object v8, v6, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->vcardData:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 896
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v6, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->vcardData:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v3, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 899
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->other:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_4
    if-ltz v4, :cond_8

    .line 900
    iget-object v6, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->other:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    .line 901
    iget-boolean v7, v6, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->checked:Z

    if-nez v7, :cond_6

    goto :goto_6

    .line 904
    :cond_6
    iget-object v7, v6, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->vcardData:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v2

    :goto_5
    if-ltz v7, :cond_7

    .line 905
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v6, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->vcardData:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v3, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    :cond_7
    :goto_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 908
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 909
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;-><init>()V

    .line 910
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;->text:Ljava/lang/String;

    const-string p2, ""

    .line 911
    iput-object p2, v3, Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;->reason:Ljava/lang/String;

    .line 912
    iput-object p2, v3, Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;->platform:Ljava/lang/String;

    .line 913
    iget-object p2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, p2, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_a

    check-cast p2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p2

    if-nez p2, :cond_b

    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, p2, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_c

    check-cast p2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, v2, v2}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 916
    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v5, p2

    check-cast v5, Lorg/telegram/ui/ChatActivity;

    .line 917
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    new-instance v3, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;)V

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_7

    .line 922
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;

    iget-object p2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-interface {p1, p2, v2, v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;->didSelectContact(Lorg/telegram/tgnet/TLRPC$User;ZILjava/lang/String;)V

    .line 923
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :goto_7
    return-void
.end method

.method private updateLayout(Z)V
    .locals 17

    move-object/from16 v0, p0

    .line 951
    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 952
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    if-ltz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-gtz v3, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const-wide/16 v6, 0xb4

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    if-eqz v5, :cond_2

    .line 958
    iget-object v11, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_3

    :cond_2
    if-nez v5, :cond_b

    iget-object v11, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 959
    :cond_3
    iget-object v11, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v5, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_2

    :cond_4
    move-object v12, v8

    :goto_2
    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 960
    iget-object v11, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    if-eqz v11, :cond_5

    .line 961
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->cancel()V

    .line 962
    iput-object v8, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    :cond_5
    if-eqz p1, :cond_8

    .line 965
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v11, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    .line 966
    invoke-virtual {v11, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 967
    iget-object v11, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    const/4 v12, 0x2

    new-array v12, v12, [Landroid/animation/Animator;

    iget-object v13, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v15, v4, [F

    if-eqz v5, :cond_6

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_6
    const/16 v16, 0x0

    :goto_3
    aput v16, v15, v2

    .line 968
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v12, v2

    iget-object v13, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarShadow:Landroid/view/View;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v15, v4, [F

    if-eqz v5, :cond_7

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    aput v5, v15, v2

    .line 969
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v12, v4

    .line 967
    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 970
    iget-object v5, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance v11, Lorg/telegram/ui/Components/PhonebookShareAlert$7;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/PhonebookShareAlert$7;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;)V

    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 976
    iget-object v5, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_7

    .line 978
    :cond_8
    iget-object v11, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v5, :cond_9

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_9
    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 979
    iget-object v11, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->actionBarShadow:Landroid/view/View;

    if-eqz v5, :cond_a

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v11, v5}, Landroid/view/View;->setAlpha(F)V

    .line 982
    :cond_b
    :goto_7
    iget v5, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollOffsetY:I

    if-eq v5, v3, :cond_c

    .line 983
    iput v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollOffsetY:I

    .line 984
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    .line 987
    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 988
    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 989
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    if-le v1, v3, :cond_d

    const/4 v1, 0x1

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_e

    .line 990
    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadow:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_f

    :cond_e
    if-nez v1, :cond_15

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadow:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 991
    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadow:Landroid/view/View;

    if-eqz v1, :cond_10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_9

    :cond_10
    move-object v5, v8

    :goto_9
    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 992
    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadowAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_11

    .line 993
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 994
    iput-object v8, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadowAnimation:Landroid/animation/AnimatorSet;

    :cond_11
    if-eqz p1, :cond_13

    .line 997
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadowAnimation:Landroid/animation/AnimatorSet;

    .line 998
    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 999
    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadowAnimation:Landroid/animation/AnimatorSet;

    new-array v5, v4, [Landroid/animation/Animator;

    iget-object v6, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadow:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v4, [F

    if-eqz v1, :cond_12

    goto :goto_a

    :cond_12
    const/4 v9, 0x0

    :goto_a
    aput v9, v4, v2

    invoke-static {v6, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1000
    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadowAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/PhonebookShareAlert$8;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/PhonebookShareAlert$8;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1006
    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_c

    .line 1008
    :cond_13
    iget-object v2, v0, Lorg/telegram/ui/Components/PhonebookShareAlert;->shadow:Landroid/view/View;

    if-eqz v1, :cond_14

    goto :goto_b

    :cond_14
    const/4 v9, 0x0

    :goto_b
    invoke-virtual {v2, v9}, Landroid/view/View;->setAlpha(F)V

    :cond_15
    :goto_c
    return-void
.end method

.method private updateRows()V
    .locals 3

    const/4 v0, 0x0

    .line 1019
    iput v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->rowCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 1020
    iput v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->userRow:I

    .line 1021
    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->other:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    iput v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneStartRow:I

    .line 1023
    iput v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneEndRow:I

    .line 1024
    iput v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardStartRow:I

    .line 1025
    iput v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardEndRow:I

    goto :goto_1

    .line 1027
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1028
    iput v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneStartRow:I

    .line 1029
    iput v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneEndRow:I

    goto :goto_0

    .line 1031
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneStartRow:I

    .line 1032
    iget-object v2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->rowCount:I

    .line 1033
    iput v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->phoneEndRow:I

    .line 1035
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->other:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1036
    iput v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardStartRow:I

    .line 1037
    iput v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardEndRow:I

    goto :goto_1

    .line 1039
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardStartRow:I

    .line 1040
    iget-object v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->other:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->rowCount:I

    .line 1041
    iput v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->vcardEndRow:I

    :goto_1
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 2

    .line 931
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onStart()V

    .line 932
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/PhonebookShareAlert$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhonebookShareAlert$6;-><init>(Lorg/telegram/ui/Components/PhonebookShareAlert;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 942
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 943
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;)V
    .locals 0

    .line 947
    iput-object p1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;

    return-void
.end method
