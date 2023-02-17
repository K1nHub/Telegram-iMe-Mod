.class public Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
.source "CountrySelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CountrySelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CountryAdapter"
.end annotation


# instance fields
.field private countries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/CountrySelectActivity$Country;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private sortedCountries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/CountrySelectActivity;


# direct methods
.method public static synthetic $r8$lambda$5fnu7nmYDbk95oPaMLlL0wUdyCo(Ljava/util/Comparator;Lorg/telegram/ui/CountrySelectActivity$Country;Lorg/telegram/ui/CountrySelectActivity$Country;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->lambda$new$0(Ljava/util/Comparator;Lorg/telegram/ui/CountrySelectActivity$Country;Lorg/telegram/ui/CountrySelectActivity$Country;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/CountrySelectActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/CountrySelectActivity$Country;",
            ">;)V"
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;-><init>()V

    .line 265
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    .line 266
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    .line 269
    iput-object p2, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    .line 272
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 273
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 274
    iget-object v2, v1, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-virtual {v2, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 275
    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 277
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 278
    iget-object v4, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v4, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_1
    :try_start_0
    sget-object p3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p3

    const-string v0, "countries.txt"

    invoke-virtual {p3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p3

    .line 286
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 288
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, ";"

    .line 289
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 290
    new-instance v2, Lorg/telegram/ui/CountrySelectActivity$Country;

    invoke-direct {v2}, Lorg/telegram/ui/CountrySelectActivity$Country;-><init>()V

    const/4 v3, 0x2

    .line 291
    aget-object v3, v1, v3

    iput-object v3, v2, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    .line 292
    aget-object v4, v1, p2

    iput-object v4, v2, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    .line 293
    aget-object v1, v1, p1

    iput-object v1, v2, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    .line 294
    invoke-virtual {v3, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 295
    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 297
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 298
    iget-object v4, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v4, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 303
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 304
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 306
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 310
    :cond_4
    :goto_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_6

    .line 311
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object p1

    goto :goto_3

    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    .line 312
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter$$ExternalSyntheticLambda0;-><init>(Ljava/text/Collator;)V

    goto :goto_4

    .line 314
    :cond_6
    sget-object p2, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/CountrySelectActivity$CountryAdapter$$ExternalSyntheticLambda2;

    .line 316
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 318
    iget-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    .line 319
    new-instance v0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter$$ExternalSyntheticLambda1;-><init>(Ljava/util/Comparator;)V

    invoke-static {p3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_5

    :cond_7
    return-void
.end method

.method private static synthetic lambda$new$0(Ljava/util/Comparator;Lorg/telegram/ui/CountrySelectActivity$Country;Lorg/telegram/ui/CountrySelectActivity$Country;)I
    .locals 0

    .line 319
    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 2

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 353
    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getCountries()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/CountrySelectActivity$Country;",
            ">;>;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    return-object v0
.end method

.method public bridge synthetic getItem(II)Ljava/lang/Object;
    .locals 0

    .line 261
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->getItem(II)Lorg/telegram/ui/CountrySelectActivity$Country;

    move-result-object p1

    return-object p1
.end method

.method public getItem(II)Lorg/telegram/ui/CountrySelectActivity$Country;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 329
    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 332
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-ltz p2, :cond_2

    .line 333
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    goto :goto_0

    .line 336
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/CountrySelectActivity$Country;

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getItemViewType(II)I
    .locals 2

    .line 392
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 393
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 1

    .line 398
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 400
    iget-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 402
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V
    .locals 0

    .line 407
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getItemCount()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    aput p1, p3, p2

    const/4 p1, 0x1

    .line 408
    aput p2, p3, p1

    return-void
.end method

.method public getSectionCount()I
    .locals 1

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)Z
    .locals 1

    .line 341
    iget-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 342
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 382
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_1

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 384
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 385
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 386
    invoke-static {p1}, Lorg/telegram/ui/CountrySelectActivity;->access$600(Lorg/telegram/ui/CountrySelectActivity$Country;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextSettingsCell;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p3, v0, v1, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/CountrySelectActivity;->access$700(Lorg/telegram/ui/CountrySelectActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p3, p1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    if-eqz p2, :cond_0

    .line 373
    new-instance p1, Lorg/telegram/ui/Cells/DividerCell;

    iget-object p2, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/DividerCell;-><init>(Landroid/content/Context;)V

    const/16 p2, 0x18

    .line 374
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 369
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lorg/telegram/ui/CountrySelectActivity;->access$500(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSettingsCell;

    move-result-object p1

    .line 377
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
