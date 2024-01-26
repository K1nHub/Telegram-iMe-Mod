.class public Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;
.super Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;
.source "ParticipantsTypeCell.java"


# static fields
.field public static TYPE_ALL:I = 0x0

.field public static TYPE_NEW:I = 0x1


# instance fields
.field private selectedType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 28
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getSelectedType()I
    .locals 1

    .line 32
    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->selectedType:I

    return v0
.end method

.method protected needCheck()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setType(IZZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$TL_help_country;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->selectedType:I

    .line 37
    sget v0, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->TYPE_ALL:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 38
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v0, Lorg/telegram/messenger/R$string;->BoostingAllSubscribers:I

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BoostingAllSubscribers"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 39
    :cond_0
    sget v0, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->TYPE_NEW:I

    if-ne p1, v0, :cond_1

    .line 40
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v0, Lorg/telegram/messenger/R$string;->BoostingNewSubscribers:I

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BoostingNewSubscribers"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 42
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    .line 43
    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setDivider(Z)V

    .line 44
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 46
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 47
    sget p1, Lorg/telegram/messenger/R$string;->BoostingFromAllCountries:I

    const-string p2, "BoostingFromAllCountries"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->withArrow(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 48
    :cond_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x3

    if-gt p1, p2, :cond_5

    .line 49
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_3

    .line 50
    sget p1, Lorg/telegram/messenger/R$string;->BoostingFromAllCountries1:I

    new-array p2, p3, [Ljava/lang/Object;

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    aput-object p3, p2, v1

    const-string p3, "BoostingFromAllCountries1"

    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->withArrow(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 51
    :cond_3
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 52
    sget p1, Lorg/telegram/messenger/R$string;->BoostingFromAllCountries2:I

    new-array p2, v0, [Ljava/lang/Object;

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    aput-object v0, p2, v1

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    aput-object p4, p2, p3

    const-string p3, "BoostingFromAllCountries2"

    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->withArrow(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 54
    :cond_4
    sget p1, Lorg/telegram/messenger/R$string;->BoostingFromAllCountries3:I

    new-array p2, p2, [Ljava/lang/Object;

    .line 55
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    aput-object v2, p2, v1

    .line 56
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    aput-object v1, p2, p3

    .line 57
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    aput-object p3, p2, v0

    const-string p3, "BoostingFromAllCountries3"

    .line 54
    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->withArrow(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 60
    :cond_5
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "BoostingFromCountriesCount"

    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->withArrow(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setSubtitle(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
