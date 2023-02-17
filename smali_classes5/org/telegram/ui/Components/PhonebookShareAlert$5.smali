.class Lorg/telegram/ui/Components/PhonebookShareAlert$5;
.super Ljava/lang/Object;
.source "PhonebookShareAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhonebookShareAlert;->lambda$new$5(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhonebookShareAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhonebookShareAlert;)V
    .locals 0

    .line 637
    iput-object p1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$5;->this$0:Lorg/telegram/ui/Components/PhonebookShareAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fillRowWithType(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 5

    const-string v0, "X-"

    .line 640
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "data3"

    const/4 v3, 0x0

    .line 641
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "data2"

    if-eqz v0, :cond_0

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 642
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    const-string v0, "PREF"

    .line 643
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0xc

    .line 644
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_1
    const-string v0, "HOME"

    .line 645
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    .line 646
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_2
    const-string v0, "MOBILE"

    .line 647
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "CELL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string v0, "OTHER"

    .line 649
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x7

    .line 650
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_4
    const-string v0, "WORK"

    .line 651
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x3

    .line 652
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_5
    const-string v0, "RADIO"

    .line 653
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "VOICE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const-string v0, "PAGER"

    .line 655
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x6

    .line 656
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_7
    const-string v0, "CALLBACK"

    .line 657
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0x8

    .line 658
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_8
    const-string v0, "CAR"

    .line 659
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p1, 0x9

    .line 660
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_9
    const-string v0, "ASSISTANT"

    .line 661
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p1, 0x13

    .line 662
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_a
    const-string v0, "MMS"

    .line 663
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p1, 0x14

    .line 664
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_b
    const-string v0, "FAX"

    .line 665
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x4

    .line 666
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 668
    :cond_c
    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 669
    invoke-virtual {p2, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    :goto_0
    const/16 p1, 0xe

    .line 654
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 648
    :cond_e
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_2
    return-void
.end method

.method private fillUrlRowWithType(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 5

    const-string v0, "X-"

    .line 674
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "data3"

    const/4 v3, 0x0

    .line 675
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "data2"

    if-eqz v0, :cond_0

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 676
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "HOMEPAGE"

    .line 677
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 678
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "BLOG"

    .line 679
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 680
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const-string v0, "PROFILE"

    .line 681
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    .line 682
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_3
    const-string v0, "HOME"

    .line 683
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x4

    .line 684
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_4
    const-string v0, "WORK"

    .line 685
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x5

    .line 686
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_5
    const-string v0, "FTP"

    .line 687
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x6

    .line 688
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_6
    const-string v0, "OTHER"

    .line 689
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x7

    .line 690
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 692
    :cond_7
    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 693
    invoke-virtual {p2, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v0, p2

    const/4 v2, 0x1

    .line 797
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez v0, :cond_0

    .line 701
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "vnd.android.cursor.dir/raw_contact"

    .line 702
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 704
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "vnd.android.cursor.item/contact"

    .line 705
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 708
    :goto_0
    iget-object v4, v1, Lorg/telegram/ui/Components/PhonebookShareAlert$5;->this$0:Lorg/telegram/ui/Components/PhonebookShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/PhonebookShareAlert;->access$200(Lorg/telegram/ui/Components/PhonebookShareAlert;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v1, Lorg/telegram/ui/Components/PhonebookShareAlert$5;->this$0:Lorg/telegram/ui/Components/PhonebookShareAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/PhonebookShareAlert;->access$200(Lorg/telegram/ui/Components/PhonebookShareAlert;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 712
    :goto_1
    iget-object v7, v1, Lorg/telegram/ui/Components/PhonebookShareAlert$5;->this$0:Lorg/telegram/ui/Components/PhonebookShareAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/PhonebookShareAlert;->access$000(Lorg/telegram/ui/Components/PhonebookShareAlert;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const-string v8, "data1"

    const-string v9, "mimetype"

    if-ge v6, v7, :cond_2

    .line 713
    iget-object v7, v1, Lorg/telegram/ui/Components/PhonebookShareAlert$5;->this$0:Lorg/telegram/ui/Components/PhonebookShareAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/PhonebookShareAlert;->access$000(Lorg/telegram/ui/Components/PhonebookShareAlert;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    .line 715
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v11, "vnd.android.cursor.item/phone_v2"

    .line 716
    invoke-virtual {v10, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual {v7, v5}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    invoke-virtual {v7, v5}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getRawType(Z)Ljava/lang/String;

    move-result-object v7

    .line 720
    invoke-direct {v1, v7, v10}, Lorg/telegram/ui/Components/PhonebookShareAlert$5;->fillRowWithType(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 721
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 725
    :goto_2
    iget-object v10, v1, Lorg/telegram/ui/Components/PhonebookShareAlert$5;->this$0:Lorg/telegram/ui/Components/PhonebookShareAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/PhonebookShareAlert;->access$100(Lorg/telegram/ui/Components/PhonebookShareAlert;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_2b

    .line 726
    iget-object v10, v1, Lorg/telegram/ui/Components/PhonebookShareAlert$5;->this$0:Lorg/telegram/ui/Components/PhonebookShareAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/PhonebookShareAlert;->access$100(Lorg/telegram/ui/Components/PhonebookShareAlert;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    .line 728
    iget v11, v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    if-ne v11, v2, :cond_3

    .line 729
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v12, "vnd.android.cursor.item/email_v2"

    .line 730
    invoke-virtual {v11, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-virtual {v10, v5}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    invoke-virtual {v10, v5}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getRawType(Z)Ljava/lang/String;

    move-result-object v10

    .line 733
    invoke-direct {v1, v10, v11}, Lorg/telegram/ui/Components/PhonebookShareAlert$5;->fillRowWithType(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 734
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object/from16 v16, v0

    move/from16 v17, v6

    move/from16 v18, v7

    const/4 v11, 0x0

    goto/16 :goto_d

    :cond_3
    const/4 v12, 0x3

    if-ne v11, v12, :cond_4

    .line 736
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v12, "vnd.android.cursor.item/website"

    .line 737
    invoke-virtual {v11, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-virtual {v10, v5}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-virtual {v10, v5}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getRawType(Z)Ljava/lang/String;

    move-result-object v10

    .line 740
    invoke-direct {v1, v10, v11}, Lorg/telegram/ui/Components/PhonebookShareAlert$5;->fillUrlRowWithType(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 741
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    const/4 v13, 0x4

    if-ne v11, v13, :cond_5

    .line 743
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v12, "vnd.android.cursor.item/note"

    .line 744
    invoke-virtual {v11, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    invoke-virtual {v10, v5}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    const/4 v14, 0x5

    const-string v15, "data2"

    if-ne v11, v14, :cond_6

    .line 748
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v13, "vnd.android.cursor.item/contact_event"

    .line 749
    invoke-virtual {v11, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-virtual {v10, v5}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 752
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    const-string v14, "HOME"

    const-string v13, "data6"

    const-string v12, "OTHER"

    const-string v2, "WORK"

    const-string v5, "data4"

    move-object/from16 v16, v0

    const/4 v0, 0x2

    move/from16 v17, v6

    const-string v6, "data5"

    if-ne v11, v0, :cond_11

    .line 754
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "vnd.android.cursor.item/postal-address_v2"

    .line 755
    invoke-virtual {v11, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-virtual {v10}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getRawValue()[Ljava/lang/String;

    move-result-object v0

    .line 757
    array-length v1, v0

    move/from16 v18, v7

    if-lez v1, :cond_7

    const/4 v1, 0x0

    .line 758
    aget-object v7, v0, v1

    invoke-virtual {v11, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    :cond_7
    array-length v1, v0

    const/4 v6, 0x1

    if-le v1, v6, :cond_8

    .line 761
    aget-object v1, v0, v6

    invoke-virtual {v11, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    :cond_8
    array-length v1, v0

    const/4 v6, 0x2

    if-le v1, v6, :cond_9

    .line 764
    aget-object v1, v0, v6

    invoke-virtual {v11, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_9
    array-length v1, v0

    const/4 v5, 0x3

    if-le v1, v5, :cond_a

    .line 767
    aget-object v1, v0, v5

    const-string v5, "data7"

    invoke-virtual {v11, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :cond_a
    array-length v1, v0

    const/4 v5, 0x4

    if-le v1, v5, :cond_b

    .line 770
    aget-object v1, v0, v5

    const-string v5, "data8"

    invoke-virtual {v11, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :cond_b
    array-length v1, v0

    const/4 v5, 0x5

    if-le v1, v5, :cond_c

    .line 773
    aget-object v1, v0, v5

    const-string v5, "data9"

    invoke-virtual {v11, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_c
    array-length v1, v0

    const/4 v5, 0x6

    if-le v1, v5, :cond_d

    .line 776
    aget-object v0, v0, v5

    const-string v1, "data10"

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    .line 779
    invoke-virtual {v10, v0}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getRawType(Z)Ljava/lang/String;

    move-result-object v1

    .line 780
    invoke-virtual {v14, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 781
    invoke-virtual {v11, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    .line 782
    :cond_e
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    .line 783
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    .line 784
    :cond_f
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x3

    .line 785
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 787
    :cond_10
    :goto_4
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_11
    move/from16 v18, v7

    const/16 v0, 0x14

    if-ne v11, v0, :cond_1e

    .line 789
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "vnd.android.cursor.item/im"

    .line 790
    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 791
    invoke-virtual {v10, v1}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getRawType(Z)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    .line 792
    invoke-virtual {v10, v1}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getRawType(Z)Ljava/lang/String;

    move-result-object v7

    .line 793
    invoke-virtual {v10, v1}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "AIM"

    .line 794
    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 795
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_5

    :cond_12
    const-string v1, "MSN"

    .line 796
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 797
    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_5

    :cond_13
    const-string v1, "YAHOO"

    .line 798
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x2

    .line 799
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_5

    :cond_14
    const-string v1, "SKYPE"

    .line 800
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x3

    .line 801
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    :cond_15
    const-string v1, "QQ"

    .line 802
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x4

    .line 803
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    :cond_16
    const-string v1, "GOOGLE-TALK"

    .line 804
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x5

    .line 805
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    :cond_17
    const-string v1, "ICQ"

    .line 806
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x6

    .line 807
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    :cond_18
    const-string v1, "JABBER"

    .line 808
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x7

    .line 809
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    :cond_19
    const-string v1, "NETMEETING"

    .line 810
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 v1, 0x8

    .line 811
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    :cond_1a
    const/4 v1, -0x1

    .line 813
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x1

    .line 814
    invoke-virtual {v10, v1}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getRawType(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :goto_5
    invoke-virtual {v14, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 817
    invoke-virtual {v0, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_6

    .line 818
    :cond_1b
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x2

    .line 819
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_6

    .line 820
    :cond_1c
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x3

    .line 821
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 823
    :cond_1d
    :goto_6
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_1e
    const/4 v0, 0x6

    if-ne v11, v0, :cond_2a

    if-eqz v18, :cond_1f

    goto/16 :goto_c

    .line 829
    :cond_1f
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "vnd.android.cursor.item/organization"

    .line 830
    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p0

    move/from16 v7, v17

    .line 831
    :goto_7
    iget-object v10, v1, Lorg/telegram/ui/Components/PhonebookShareAlert$5;->this$0:Lorg/telegram/ui/Components/PhonebookShareAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/PhonebookShareAlert;->access$100(Lorg/telegram/ui/Components/PhonebookShareAlert;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_29

    .line 832
    iget-object v10, v1, Lorg/telegram/ui/Components/PhonebookShareAlert$5;->this$0:Lorg/telegram/ui/Components/PhonebookShareAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/PhonebookShareAlert;->access$100(Lorg/telegram/ui/Components/PhonebookShareAlert;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    .line 833
    iget v11, v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    const/4 v13, 0x6

    if-eq v11, v13, :cond_20

    :goto_8
    const/4 v10, 0x2

    const/4 v11, 0x0

    goto :goto_b

    :cond_20
    const/4 v11, 0x1

    .line 836
    invoke-virtual {v10, v11}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getRawType(Z)Ljava/lang/String;

    move-result-object v14

    const-string v13, "ORG"

    .line 837
    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_24

    .line 838
    invoke-virtual {v10}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getRawValue()[Ljava/lang/String;

    move-result-object v13

    .line 839
    array-length v14, v13

    if-nez v14, :cond_21

    goto :goto_8

    .line 842
    :cond_21
    array-length v14, v13

    if-lt v14, v11, :cond_22

    const/4 v14, 0x0

    .line 843
    aget-object v11, v13, v14

    invoke-virtual {v0, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    :cond_22
    array-length v11, v13

    const/4 v14, 0x2

    if-lt v11, v14, :cond_23

    const/4 v11, 0x1

    .line 846
    aget-object v13, v13, v11

    invoke-virtual {v0, v6, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    const/4 v11, 0x0

    goto :goto_9

    :cond_24
    const-string v11, "TITLE"

    .line 848
    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_25

    const/4 v11, 0x0

    .line 849
    invoke-virtual {v10, v11}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v5, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_25
    const/4 v11, 0x0

    const-string v13, "ROLE"

    .line 850
    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_26

    .line 851
    invoke-virtual {v10, v11}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v5, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    :goto_9
    const/4 v13, 0x1

    .line 854
    invoke-virtual {v10, v13}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getRawType(Z)Ljava/lang/String;

    move-result-object v10

    .line 855
    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_27

    .line 856
    invoke-virtual {v0, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_a

    .line 857
    :cond_27
    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_28

    const/4 v10, 0x2

    .line 858
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_b

    :cond_28
    :goto_a
    const/4 v10, 0x2

    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    :cond_29
    const/4 v11, 0x0

    .line 861
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_e

    :cond_2a
    :goto_c
    const/4 v11, 0x0

    move-object/from16 v1, p0

    :goto_d
    move/from16 v7, v18

    :goto_e
    add-int/lit8 v6, v17, 0x1

    move-object/from16 v0, v16

    const/4 v2, 0x1

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_2b
    move-object/from16 v16, v0

    const-string v0, "finishActivityOnSaveCompleted"

    move-object/from16 v2, v16

    const/4 v3, 0x1

    .line 865
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "data"

    .line 866
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 869
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/Components/PhonebookShareAlert$5;->this$0:Lorg/telegram/ui/Components/PhonebookShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhonebookShareAlert;->access$4500(Lorg/telegram/ui/Components/PhonebookShareAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 870
    iget-object v0, v1, Lorg/telegram/ui/Components/PhonebookShareAlert$5;->this$0:Lorg/telegram/ui/Components/PhonebookShareAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :catch_0
    move-exception v0

    .line 872
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_f
    return-void
.end method
