.class Lorg/telegram/ui/PaymentFormActivity$7;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final PREFIXES_14:[Ljava/lang/String;

.field public final PREFIXES_15:[Ljava/lang/String;

.field public final PREFIXES_16:[Ljava/lang/String;

.field private actionPosition:I

.field private characterAction:I

.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1310
    iput-object v1, v0, Lorg/telegram/ui/PaymentFormActivity$7;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "34"

    const-string v2, "37"

    .line 1312
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/PaymentFormActivity$7;->PREFIXES_15:[Ljava/lang/String;

    const-string v2, "300"

    const-string v3, "301"

    const-string v4, "302"

    const-string v5, "303"

    const-string v6, "304"

    const-string v7, "305"

    const-string v8, "309"

    const-string v9, "36"

    const-string v10, "38"

    const-string v11, "39"

    .line 1313
    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/PaymentFormActivity$7;->PREFIXES_14:[Ljava/lang/String;

    const-string v2, "2221"

    const-string v3, "2222"

    const-string v4, "2223"

    const-string v5, "2224"

    const-string v6, "2225"

    const-string v7, "2226"

    const-string v8, "2227"

    const-string v9, "2228"

    const-string v10, "2229"

    const-string v11, "2200"

    const-string v12, "2201"

    const-string v13, "2202"

    const-string v14, "2203"

    const-string v15, "2204"

    const-string v16, "223"

    const-string v17, "224"

    const-string v18, "225"

    const-string v19, "226"

    const-string v20, "227"

    const-string v21, "228"

    const-string v22, "229"

    const-string v23, "23"

    const-string v24, "24"

    const-string v25, "25"

    const-string v26, "26"

    const-string v27, "270"

    const-string v28, "271"

    const-string v29, "2720"

    const-string v30, "50"

    const-string v31, "51"

    const-string v32, "52"

    const-string v33, "53"

    const-string v34, "54"

    const-string v35, "55"

    const-string v36, "4"

    const-string v37, "60"

    const-string v38, "62"

    const-string v39, "64"

    const-string v40, "65"

    const-string v41, "35"

    .line 1314
    filled-new-array/range {v2 .. v41}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/PaymentFormActivity$7;->PREFIXES_16:[Ljava/lang/String;

    const/4 v1, -0x1

    .line 1333
    iput v1, v0, Lorg/telegram/ui/PaymentFormActivity$7;->characterAction:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1359
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity$7;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$2700(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1362
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity$7;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$1500(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 1363
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    .line 1365
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1366
    iget v5, v0, Lorg/telegram/ui/PaymentFormActivity$7;->characterAction:I

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ne v5, v6, :cond_1

    .line 1367
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v0, Lorg/telegram/ui/PaymentFormActivity$7;->actionPosition:I

    invoke-virtual {v4, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lorg/telegram/ui/PaymentFormActivity$7;->actionPosition:I

    add-int/2addr v8, v7

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, -0x1

    .line 1370
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v8, 0x0

    .line 1371
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_3

    add-int/lit8 v9, v8, 0x1

    .line 1372
    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v10, "0123456789"

    .line 1373
    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1374
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    move v8, v9

    goto :goto_0

    .line 1377
    :cond_3
    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity$7;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v4, v7}, Lorg/telegram/ui/PaymentFormActivity;->access$2702(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    const/4 v4, 0x0

    const/16 v8, 0x64

    .line 1380
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_b

    .line 1381
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v6, :cond_a

    if-eqz v10, :cond_5

    if-eq v10, v7, :cond_4

    .line 1399
    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity$7;->PREFIXES_14:[Ljava/lang/String;

    const/16 v12, 0xe

    const-string v13, "xxxx xxxx xxxx xx"

    goto :goto_2

    .line 1393
    :cond_4
    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity$7;->PREFIXES_15:[Ljava/lang/String;

    const/16 v12, 0xf

    const-string v13, "xxxx xxxx xxxx xxx"

    goto :goto_2

    .line 1388
    :cond_5
    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity$7;->PREFIXES_16:[Ljava/lang/String;

    const/16 v12, 0x10

    const-string v13, "xxxx xxxx xxxx xxxx"

    :goto_2
    const/4 v14, 0x0

    .line 1404
    :goto_3
    array-length v15, v11

    if-ge v14, v15, :cond_8

    .line 1405
    aget-object v15, v11, v14

    .line 1406
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v2, v6, :cond_6

    .line 1407
    invoke-virtual {v15, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    .line 1413
    :cond_6
    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_4
    move v8, v12

    move-object v4, v13

    goto :goto_5

    :cond_7
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x3

    goto :goto_3

    :cond_8
    :goto_5
    if-eqz v4, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x3

    goto :goto_1

    .line 1424
    :cond_a
    :goto_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v2, v8, :cond_b

    .line 1425
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_b
    const-string v2, "windowBackgroundWhiteBlackText"

    if-eqz v4, :cond_f

    .line 1429
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ne v6, v8, :cond_c

    .line 1430
    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity$7;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v6}, Lorg/telegram/ui/PaymentFormActivity;->access$1500(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v6

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 1432
    :cond_c
    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity$7;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v6, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    const/4 v2, 0x0

    .line 1433
    :goto_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v2, v6, :cond_11

    .line 1434
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x2

    const/16 v9, 0x20

    if-ge v2, v6, :cond_e

    .line 1435
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_d

    .line 1436
    invoke-virtual {v5, v2, v9}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    if-ne v3, v2, :cond_d

    .line 1438
    iget v6, v0, Lorg/telegram/ui/PaymentFormActivity$7;->characterAction:I

    if-eq v6, v8, :cond_d

    const/4 v8, 0x3

    if-eq v6, v8, :cond_d

    add-int/lit8 v3, v3, 0x1

    :cond_d
    add-int/2addr v2, v7

    goto :goto_7

    .line 1443
    :cond_e
    invoke-virtual {v5, v2, v9}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/2addr v2, v7

    if-ne v3, v2, :cond_11

    .line 1444
    iget v2, v0, Lorg/telegram/ui/PaymentFormActivity$7;->characterAction:I

    if-eq v2, v8, :cond_11

    const/4 v4, 0x3

    if-eq v2, v4, :cond_11

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1451
    :cond_f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_10

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity$7;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const-string v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_8

    :cond_10
    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity$7;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    :goto_8
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1453
    :cond_11
    :goto_9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1454
    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v2

    move-object/from16 v4, p1

    const/4 v6, 0x0

    invoke-interface {v4, v6, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_a

    :cond_12
    const/4 v6, 0x0

    :goto_a
    if-ltz v3, :cond_13

    .line 1457
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1459
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity$7;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1, v6}, Lorg/telegram/ui/PaymentFormActivity;->access$2702(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x1

    if-nez p3, :cond_0

    if-ne p4, v0, :cond_0

    .line 1339
    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$7;->characterAction:I

    goto :goto_0

    :cond_0
    if-ne p3, v0, :cond_2

    if-nez p4, :cond_2

    .line 1341
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 p3, 0x20

    if-ne p1, p3, :cond_1

    if-lez p2, :cond_1

    const/4 p1, 0x3

    .line 1342
    iput p1, p0, Lorg/telegram/ui/PaymentFormActivity$7;->characterAction:I

    sub-int/2addr p2, v0

    .line 1343
    iput p2, p0, Lorg/telegram/ui/PaymentFormActivity$7;->actionPosition:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 1345
    iput p1, p0, Lorg/telegram/ui/PaymentFormActivity$7;->characterAction:I

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 1348
    iput p1, p0, Lorg/telegram/ui/PaymentFormActivity$7;->characterAction:I

    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
