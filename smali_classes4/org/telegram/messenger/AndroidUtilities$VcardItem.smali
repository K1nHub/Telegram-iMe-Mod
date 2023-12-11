.class public Lorg/telegram/messenger/AndroidUtilities$VcardItem;
.super Ljava/lang/Object;
.source "AndroidUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/AndroidUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VcardItem"
.end annotation


# instance fields
.field public checked:Z

.field public fullData:Ljava/lang/String;

.field public type:I

.field public vcardData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->vcardData:Ljava/util/ArrayList;

    const-string v0, ""

    .line 1713
    iput-object v0, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1715
    iput-boolean v0, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->checked:Z

    return-void
.end method


# virtual methods
.method public getRawType(Z)Ljava/lang/String;
    .locals 6

    .line 1835
    iget-object v0, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v1, ""

    if-gez v0, :cond_0

    return-object v1

    .line 1839
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1840
    iget v2, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    const/16 v4, 0x14

    const-string v5, ";"

    if-ne v2, v4, :cond_3

    const/4 v2, 0x2

    .line 1841
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1842
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 1844
    aget-object v1, v0, v3

    goto :goto_0

    .line 1845
    :cond_1
    array-length p1, v0

    const/4 v2, 0x1

    if-le p1, v2, :cond_2

    .line 1846
    array-length p1, v0

    sub-int/2addr p1, v2

    aget-object v1, v0, p1

    :cond_2
    :goto_0
    return-object v1

    .line 1851
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1852
    :goto_1
    array-length v1, p1

    if-ge v3, v1, :cond_5

    .line 1853
    aget-object v1, p1, v3

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    goto :goto_2

    .line 1856
    :cond_4
    aget-object v0, p1, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public getRawValue()[Ljava/lang/String;
    .locals 11

    .line 1718
    iget-object v0, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 1723
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1724
    iget-object v3, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    const/4 v4, 0x1

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const-string v5, ";"

    .line 1728
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v6, "UTF-8"

    move v7, v1

    .line 1729
    :goto_0
    array-length v8, v2

    if-ge v7, v8, :cond_4

    .line 1730
    aget-object v8, v2, v7

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1731
    array-length v9, v8

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    goto :goto_1

    .line 1734
    :cond_1
    aget-object v9, v8, v1

    const-string v10, "CHARSET"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1735
    aget-object v6, v8, v4

    goto :goto_1

    .line 1736
    :cond_2
    aget-object v9, v8, v1

    const-string v10, "ENCODING"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1737
    aget-object v3, v8, v4

    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1740
    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1742
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_7

    .line 1743
    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    const-string v2, "QUOTED-PRINTABLE"

    .line 1746
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1747
    aget-object v2, v0, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->decodeQuotedPrintable([B)[B

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1748
    array-length v4, v2

    if-eqz v4, :cond_6

    .line 1750
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v4, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 9

    .line 1864
    iget v0, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1865
    sget v0, Lorg/telegram/messenger/R$string;->ContactBirthday:I

    const-string v1, "ContactBirthday"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x6

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 1867
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getRawType(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ORG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1868
    sget v0, Lorg/telegram/messenger/R$string;->ContactJob:I

    const-string v1, "ContactJob"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1870
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->ContactJobTitle:I

    const-string v1, "ContactJobTitle"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1873
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_3

    const-string v0, ""

    return-object v0

    .line 1877
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1878
    iget v2, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    const/16 v5, 0x14

    const-string v6, ";"

    const/4 v7, 0x2

    if-ne v2, v5, :cond_4

    .line 1879
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1880
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1881
    aget-object v0, v0, v4

    goto/16 :goto_4

    .line 1883
    :cond_4
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v5, v4

    .line 1884
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_6

    .line 1885
    aget-object v6, v2, v5

    const/16 v8, 0x3d

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_5

    goto :goto_1

    .line 1888
    :cond_5
    aget-object v0, v2, v5

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    const-string v2, "X-"

    .line 1890
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1891
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1893
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_2
    move v1, v2

    goto :goto_3

    :sswitch_0
    const-string v5, "OTHER"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_2

    :sswitch_1
    const-string v1, "WORK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x4

    goto :goto_3

    :sswitch_2
    const-string v1, "PREF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    const/4 v1, 0x3

    goto :goto_3

    :sswitch_3
    const-string v1, "HOME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    move v1, v7

    goto :goto_3

    :sswitch_4
    const-string v1, "CELL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    move v1, v3

    goto :goto_3

    :sswitch_5
    const-string v1, "MOBILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    move v1, v4

    :cond_d
    :goto_3
    packed-switch v1, :pswitch_data_0

    goto :goto_4

    .line 1905
    :pswitch_0
    sget v0, Lorg/telegram/messenger/R$string;->PhoneOther:I

    const-string v1, "PhoneOther"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1908
    :pswitch_1
    sget v0, Lorg/telegram/messenger/R$string;->PhoneWork:I

    const-string v1, "PhoneWork"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1895
    :pswitch_2
    sget v0, Lorg/telegram/messenger/R$string;->PhoneMain:I

    const-string v1, "PhoneMain"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1898
    :pswitch_3
    sget v0, Lorg/telegram/messenger/R$string;->PhoneHome:I

    const-string v1, "PhoneHome"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1902
    :pswitch_4
    sget v0, Lorg/telegram/messenger/R$string;->PhoneMobile:I

    const-string v1, "PhoneMobile"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1912
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78227b5e -> :sswitch_5
        0x1f8162 -> :sswitch_4
        0x21ecdf -> :sswitch_3
        0x259a23 -> :sswitch_2
        0x28bf11 -> :sswitch_1
        0x48086f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getValue(Z)Ljava/lang/String;
    .locals 12

    .line 1761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1763
    iget-object v1, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    const-string p1, ""

    return-object p1

    .line 1768
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, ", "

    .line 1769
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1773
    iget-object v4, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    const/4 v5, 0x1

    add-int/2addr v1, v5

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const-string v6, ";"

    .line 1777
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v7, "UTF-8"

    move v8, v3

    .line 1778
    :goto_0
    array-length v9, v2

    const/4 v10, 0x2

    if-ge v8, v9, :cond_5

    .line 1779
    aget-object v9, v2, v8

    const-string v11, "="

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1780
    array-length v11, v9

    if-eq v11, v10, :cond_2

    goto :goto_1

    .line 1783
    :cond_2
    aget-object v10, v9, v3

    const-string v11, "CHARSET"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1784
    aget-object v7, v9, v5

    goto :goto_1

    .line 1785
    :cond_3
    aget-object v10, v9, v3

    const-string v11, "ENCODING"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1786
    aget-object v4, v9, v5

    :cond_4
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1789
    :cond_5
    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v2, v3

    move v6, v2

    .line 1791
    :goto_2
    array-length v8, v1

    if-ge v2, v8, :cond_b

    .line 1792
    aget-object v8, v1, v2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    const-string v8, "QUOTED-PRINTABLE"

    .line 1795
    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1796
    aget-object v8, v1, v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->decodeQuotedPrintable([B)[B

    move-result-object v8

    if-eqz v8, :cond_7

    .line 1797
    array-length v9, v8

    if-eqz v9, :cond_7

    .line 1799
    :try_start_0
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v9, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    if-eqz v6, :cond_8

    .line 1805
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_8

    const-string v8, " "

    .line 1806
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1808
    :cond_8
    aget-object v8, v1, v2

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_a

    .line 1810
    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_9

    move v6, v5

    goto :goto_3

    :cond_9
    move v6, v3

    :cond_a
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    if-eqz p1, :cond_d

    .line 1815
    iget p1, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    if-nez p1, :cond_c

    .line 1816
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    const/4 v1, 0x5

    if-ne p1, v1, :cond_d

    .line 1818
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "T"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1819
    array-length v2, p1

    if-lez v2, :cond_d

    .line 1820
    aget-object p1, p1, v3

    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1821
    array-length v2, p1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_d

    .line 1822
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1823
    aget-object v2, p1, v3

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 1824
    aget-object v2, p1, v5

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v0, v10, v2}, Ljava/util/Calendar;->set(II)V

    .line 1825
    aget-object p1, p1, v10

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 1826
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/LocaleController;->formatterYearMax:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1831
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
