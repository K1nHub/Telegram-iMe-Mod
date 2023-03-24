.class public Lorg/telegram/ui/LoginActivity$PhoneView;
.super Lorg/telegram/ui/Components/SlideView;
.source "LoginActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhoneView"
.end annotation


# instance fields
.field private chevronRight:Landroid/widget/ImageView;

.field private codeDividerView:Landroid/view/View;

.field private codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

.field private codesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/telegram/ui/CountrySelectActivity$Country;",
            ">;>;"
        }
    .end annotation
.end field

.field private confirmedNumber:Z

.field private countriesArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/CountrySelectActivity$Country;",
            ">;"
        }
    .end annotation
.end field

.field private countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

.field private countryCodeForHint:Ljava/lang/String;

.field private countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

.field private countryState:I

.field private currentCountry:Lorg/telegram/ui/CountrySelectActivity$Country;

.field private ignoreOnPhoneChange:Z

.field private ignoreOnTextChange:Z

.field private ignoreSelection:Z

.field private nextPressed:Z

.field private numberFilled:Z

.field private phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

.field private phoneFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

.field private plusTextView:Landroid/widget/TextView;

.field private searchByTelWarningTextView:Landroid/widget/TextView;

.field private subtitleView:Landroid/widget/TextView;

.field private syncContactsBox:Lorg/telegram/ui/Cells/CheckBoxCell;

.field private testBackendCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

.field private testBackendLongTapCount:I

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field private titleView:Landroid/widget/TextView;

.field private wasCountryHintIndex:I


# direct methods
.method public static synthetic $r8$lambda$-adyTno6XWOsKzYfYBBLQdoOESY(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$9(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$2E6Jsqq157QHDGxWPXEd9jbZ0w4(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/util/HashMap;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$14(Ljava/util/HashMap;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4dlk8X3TrEUCBn39fgYXcXyK6Y4(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$loadCountries$16(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B6gWYIwm5PmjYveFckU6O7pYC0M(Lorg/telegram/ui/CountrySelectActivity$Country;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$12(Lorg/telegram/ui/CountrySelectActivity$Country;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$E8Hx42L-RyqEf2d2OqzUgKJI_w8(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$7(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FSX5PC5FvVk6DCtIQLsP3lYyS9w(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FzjMZdlTSDHb3KqmiuWL5O2Dc_A(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLObject;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$13(Lorg/telegram/tgnet/TLObject;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GpxK29D_vPTeXqqPxTjjOKf2nMM(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pec01d89YFKElIjc62aUi_pfLAw(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$2(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Q7aoPDcePc3r-KY75FZA9C4q7gU(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$18(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SGjUmnD0t1OCDOxUBj38T_SwkwQ(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$23(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SQefM2g7QWigQaaUX_nhS7PgCVc(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UCoH9CMXk8ve2jVMlMzf2LmwNoA(Lorg/telegram/ui/LoginActivity$PhoneView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$tryAuthWithTestBackend$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$X0El2wW4OQ08p6xk5L5eZipwlDI(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$22(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_uBghPuh6bitob1Y1_VvGs_DYHI(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b09bqiX1dbp7L1UPzrb0075KxZ4(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$20(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ccX8YveLBFM7STLEmJ9Ao5pi7hg(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$5(Lorg/telegram/ui/CountrySelectActivity$Country;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iHHMnPVAAsN1lXuIMDcTgWP2WAY(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$loadCountries$15(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iqPzMUgjVOpwPxBRxI57PmsaOqY(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m8VFEhgrEiByHIm8A1A3OYH5aLg(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$3(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$nNty-YkGSO90lelNuUfiN3ZQyi8(Lorg/telegram/ui/LoginActivity$PhoneView;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$19(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nVQs_UqHjp3OVz_yMlHaKgyBiMk(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$24(Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pSfxQvjxfP0H8MhzlldUYhSdk4Q(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$17(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pYjleMTdykei8IzljBTioMHi2VA(Lorg/telegram/ui/LoginActivity$PhoneView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$vo7BuKWP4bO_v8FK0BTN1Yfg80I(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$fillNumber$25(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xl2ppt3XU32m_CE1AOZ71sWH1SU(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$21(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zde9b2zFprpK4khR0nPLVpbRy7Y(Lorg/telegram/ui/LoginActivity$PhoneView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onShow$26()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    .line 1996
    iput-object v2, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 1997
    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 1981
    iput v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    .line 1985
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    .line 1986
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    .line 1987
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    .line 1989
    iput-boolean v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    .line 1990
    iput-boolean v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 1991
    iput-boolean v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnPhoneChange:Z

    .line 1993
    iput-boolean v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    .line 1994
    iput-boolean v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->confirmedNumber:Z

    const/4 v4, -0x1

    .line 2806
    iput v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->wasCountryHintIndex:I

    const/4 v5, 0x1

    .line 1999
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x11

    .line 2000
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2002
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    const/high16 v8, 0x41900000    # 18.0f

    .line 2003
    invoke-virtual {v7, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2004
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    const-string v8, "fonts/rmedium.ttf"

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2006
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$2800(Lorg/telegram/ui/LoginActivity;)Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_0

    .line 2007
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/messenger/R$string;->dialogs_tel_search:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2009
    :cond_0
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v9

    if-ne v9, v8, :cond_1

    sget v9, Lorg/telegram/messenger/R$string;->ChangePhoneNewNumber:I

    goto :goto_0

    :cond_1
    sget v9, Lorg/telegram/messenger/R$string;->YourNumber:I

    :goto_0
    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2010
    :goto_1
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 2011
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v7, v9, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2013
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    new-instance v9, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda7;

    invoke-direct {v9, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2018
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/4 v13, 0x1

    const/16 v14, 0x20

    const/4 v15, 0x0

    const/16 v16, 0x20

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2020
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Landroid/widget/TextView;

    .line 2022
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$2800(Lorg/telegram/ui/LoginActivity;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2023
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/messenger/R$string;->dialogs_tel_search_hint:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2025
    :cond_2
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Landroid/widget/TextView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v9

    if-ne v9, v8, :cond_3

    sget v9, Lorg/telegram/messenger/R$string;->ChangePhoneHelp:I

    goto :goto_2

    :cond_3
    sget v9, Lorg/telegram/messenger/R$string;->StartText:I

    :goto_2
    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2026
    :goto_3
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Landroid/widget/TextView;

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v7, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2027
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 2028
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v11, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2029
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Landroid/widget/TextView;

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/4 v13, 0x1

    const/16 v14, 0x20

    const/16 v15, 0x8

    const/16 v16, 0x20

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v7, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2031
    new-instance v7, Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/TextViewSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    .line 2032
    new-instance v11, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda10;

    invoke-direct {v11, v0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda10;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v11}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 2045
    sget v7, Lorg/telegram/messenger/R$anim;->text_in:I

    invoke-static {v0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    .line 2046
    sget-object v11, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2047
    iget-object v11, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v11, v7}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 2049
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->chevronRight:Landroid/widget/ImageView;

    .line 2050
    sget v11, Lorg/telegram/messenger/R$drawable;->msg_inputarrow:I

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2052
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2053
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v11, 0x10

    .line 2054
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2055
    iget-object v12, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    const/4 v13, 0x0

    const/4 v14, -0x2

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2056
    iget-object v12, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->chevronRight:Landroid/widget/ImageView;

    const/high16 v13, 0x41c00000    # 24.0f

    const/high16 v14, 0x41c00000    # 24.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x41600000    # 14.0f

    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinearRelatively(FFIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2058
    new-instance v12, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    iput-object v12, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    .line 2059
    sget v13, Lorg/telegram/messenger/R$string;->Country:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 2060
    iget-object v12, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x30

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v12, v7, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2061
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setForceUseCenter(Z)V

    .line 2062
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v7, v5}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2063
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2064
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    new-instance v12, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda6;

    invoke-direct {v12, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {v7, v12}, Landroid/widget/FrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2065
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/4 v12, -0x1

    const/16 v13, 0x3a

    const/16 v14, 0x10

    const/16 v15, 0x18

    const/16 v16, 0x10

    const/16 v17, 0xe

    invoke-static/range {v12 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v1, v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2066
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    new-instance v12, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda2;

    invoke-direct {v12, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {v7, v12}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2077
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2078
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2080
    new-instance v12, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    iput-object v12, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/4 v13, -0x1

    const/4 v14, -0x2

    const/16 v15, 0x10

    const/16 v17, 0x8

    const/16 v18, 0x10

    const/16 v19, 0x8

    .line 2081
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v12, v7, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2083
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v12

    const/16 v13, 0xa

    if-nez v12, :cond_4

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$2800(Lorg/telegram/ui/LoginActivity;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 2084
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 2085
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    iput v14, v12, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2086
    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2089
    :cond_4
    iget-object v12, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    sget v14, Lorg/telegram/messenger/R$string;->PhoneNumber:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 2090
    iget-object v12, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/4 v15, -0x1

    const/16 v16, 0x3a

    const/16 v17, 0x10

    const/16 v18, 0x8

    const/16 v19, 0x10

    const/16 v20, 0x8

    invoke-static/range {v15 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v1, v12, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2092
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v12, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->plusTextView:Landroid/widget/TextView;

    const-string v15, "+"

    .line 2093
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2094
    iget-object v12, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->plusTextView:Landroid/widget/TextView;

    const/high16 v15, 0x41800000    # 16.0f

    invoke-virtual {v12, v5, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2095
    iget-object v12, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->plusTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 2096
    iget-object v12, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->plusTextView:Landroid/widget/TextView;

    const/4 v11, -0x2

    invoke-static {v11, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v12, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2098
    new-instance v10, Lorg/telegram/ui/LoginActivity$PhoneView$1;

    invoke-direct {v10, v1, v0, v2}, Lorg/telegram/ui/LoginActivity$PhoneView$1;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v10, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/4 v12, 0x3

    .line 2109
    invoke-virtual {v10, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 2110
    iget-object v10, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/16 v18, 0x14

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 2111
    iget-object v10, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/high16 v11, 0x3fc00000    # 1.5f

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 2112
    iget-object v10, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v10, v6, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 2113
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v6, v5, v15}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setTextSize(IF)V

    .line 2114
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 2115
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/16 v10, 0x13

    invoke-virtual {v6, v10}, Landroid/widget/EditText;->setGravity(I)V

    .line 2116
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const v13, 0x10000005

    invoke-virtual {v6, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2117
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2119
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v6, v4, :cond_7

    .line 2120
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->hasCustomKeyboard()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$700(Lorg/telegram/ui/LoginActivity;)Z

    move-result v21

    if-eqz v21, :cond_5

    goto :goto_4

    :cond_5
    move v9, v3

    goto :goto_5

    :cond_6
    :goto_4
    move v9, v5

    :goto_5
    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    .line 2122
    :cond_7
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget v9, Lorg/telegram/messenger/R$string;->LoginAccessibilityCountryCode:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2123
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/16 v22, 0x37

    const/16 v23, 0x24

    const/16 v24, -0x9

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v22 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2124
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    new-instance v9, Lorg/telegram/ui/LoginActivity$PhoneView$2;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/LoginActivity$PhoneView$2;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2248
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    new-instance v9, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda9;

    invoke-direct {v9, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2256
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeDividerView:Landroid/view/View;

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, 0x4

    const/16 v25, 0x8

    const/16 v26, 0xc

    const/16 v27, 0x8

    .line 2257
    invoke-static/range {v22 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    const/high16 v9, 0x3f000000    # 0.5f

    .line 2258
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2259
    iget-object v9, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeDividerView:Landroid/view/View;

    invoke-virtual {v7, v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2261
    new-instance v4, Lorg/telegram/ui/LoginActivity$PhoneView$3;

    invoke-direct {v4, v1, v0, v2}, Lorg/telegram/ui/LoginActivity$PhoneView$3;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    .line 2304
    invoke-virtual {v4, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 2305
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 2306
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 2307
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 2308
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v5, v15}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setTextSize(IF)V

    .line 2309
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 2310
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setGravity(I)V

    .line 2311
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2312
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0x15

    if-lt v6, v4, :cond_a

    .line 2315
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->hasCustomKeyboard()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$700(Lorg/telegram/ui/LoginActivity;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_6

    :cond_8
    move v9, v3

    goto :goto_7

    :cond_9
    :goto_6
    move v9, v5

    :goto_7
    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    .line 2317
    :cond_a
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2318
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/16 v9, 0x24

    const/4 v10, -0x1

    invoke-static {v10, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2320
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v4

    if-nez v4, :cond_b

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$2800(Lorg/telegram/ui/LoginActivity;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2321
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/16 v22, -0x1

    const/16 v23, 0x24

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x7

    const/16 v28, 0x0

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2322
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v10, "dialogButtonSelector"

    .line 2323
    invoke-virtual {v2, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10, v3, v3}, Lorg/telegram/ui/ActionBar/Theme;->createCircleSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2324
    sget v10, Lorg/telegram/messenger/R$drawable;->msg_qr_mini:I

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2325
    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    const-string v11, "windowBackgroundWhiteInputFieldActivated"

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2326
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2327
    new-instance v10, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda3;

    invoke-direct {v10, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v10, 0x5

    .line 2370
    invoke-static {v9, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2373
    :cond_b
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    new-instance v7, Lorg/telegram/ui/LoginActivity$PhoneView$6;

    invoke-direct {v7, v1, v2}, Lorg/telegram/ui/LoginActivity$PhoneView$6;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2484
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    new-instance v7, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda8;

    invoke-direct {v7, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/16 v4, 0x48

    .line 2498
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$2800(Lorg/telegram/ui/LoginActivity;)Z

    move-result v7

    const/16 v9, 0x38

    const/16 v10, 0x3c

    const-string v11, ""

    if-eqz v7, :cond_c

    .line 2499
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->searchByTelWarningTextView:Landroid/widget/TextView;

    .line 2500
    sget v13, Lorg/telegram/messenger/R$string;->dialogs_tel_search_warning:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2501
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->searchByTelWarningTextView:Landroid/widget/TextView;

    const/high16 v13, 0x41600000    # 14.0f

    invoke-virtual {v7, v5, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2502
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->searchByTelWarningTextView:Landroid/widget/TextView;

    const/16 v13, 0x11

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 2503
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->searchByTelWarningTextView:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v7, v13, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2504
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->searchByTelWarningTextView:Landroid/widget/TextView;

    const/16 v22, -0x1

    const/16 v23, -0x2

    const/16 v24, 0x1

    const/16 v25, 0x20

    const/16 v26, 0x8

    const/16 v27, 0x20

    const/16 v28, 0x0

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v1, v7, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    .line 2506
    :cond_c
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$4600(Lorg/telegram/ui/LoginActivity;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v7

    if-nez v7, :cond_f

    .line 2507
    new-instance v4, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-direct {v4, v0, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;I)V

    iput-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->syncContactsBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 2508
    sget v7, Lorg/telegram/messenger/R$string;->SyncContacts:I

    const-string v13, "SyncContacts"

    invoke-static {v13, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$4700(Lorg/telegram/ui/LoginActivity;)Z

    move-result v13

    invoke-virtual {v4, v7, v11, v13, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 2509
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->syncContactsBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    const/16 v22, -0x2

    const/16 v23, -0x1

    const/16 v24, 0x33

    const/16 v25, 0x10

    const/16 v26, 0x0

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_e

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v7

    if-eqz v7, :cond_e

    const/16 v7, 0x15

    if-lt v6, v7, :cond_d

    move v7, v9

    goto :goto_8

    :cond_d
    move v7, v10

    goto :goto_8

    :cond_e
    move v7, v3

    :goto_8
    const/16 v13, 0x10

    add-int v27, v13, v7

    const/16 v28, 0x0

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x30

    .line 2511
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->syncContactsBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    new-instance v13, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda5;

    invoke-direct {v13, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {v7, v13}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2526
    :cond_f
    :goto_9
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v7, :cond_12

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v7

    if-nez v7, :cond_12

    .line 2527
    new-instance v7, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-direct {v7, v0, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;I)V

    iput-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->testBackendCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 2528
    sget v13, Lorg/telegram/messenger/R$string;->DebugTestBackend:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$4800(Lorg/telegram/ui/LoginActivity;)Z

    move-result v14

    invoke-virtual {v7, v13, v11, v14, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 2529
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->testBackendCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    const/16 v22, -0x2

    const/16 v23, -0x1

    const/16 v24, 0x33

    const/16 v25, 0x10

    const/16 v26, 0x0

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_11

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v11

    if-eqz v11, :cond_11

    const/16 v11, 0x15

    if-lt v6, v11, :cond_10

    goto :goto_a

    :cond_10
    move v9, v10

    goto :goto_a

    :cond_11
    move v9, v3

    :goto_a
    const/16 v6, 0x10

    add-int v27, v6, v9

    const/16 v28, 0x0

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, -0x18

    .line 2531
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->testBackendCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    new-instance v7, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda4;

    invoke-direct {v7, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    if-lez v4, :cond_13

    .line 2546
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v6

    if-nez v6, :cond_13

    .line 2547
    new-instance v6, Landroid/widget/Space;

    invoke-direct {v6, v0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 2548
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/Space;->setMinimumHeight(I)V

    const/4 v0, -0x2

    .line 2549
    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2552
    :cond_13
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2555
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v9, "countries.txt"

    invoke-virtual {v7, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2557
    :goto_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16

    const-string v7, ";"

    .line 2558
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2559
    new-instance v7, Lorg/telegram/ui/CountrySelectActivity$Country;

    invoke-direct {v7}, Lorg/telegram/ui/CountrySelectActivity$Country;-><init>()V

    .line 2560
    aget-object v9, v6, v8

    iput-object v9, v7, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    .line 2561
    aget-object v9, v6, v3

    iput-object v9, v7, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    .line 2562
    aget-object v9, v6, v5

    iput-object v9, v7, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    .line 2563
    iget-object v9, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v3, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2565
    iget-object v9, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    aget-object v10, v6, v3

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_14

    .line 2567
    iget-object v9, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    aget-object v10, v6, v3

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v11

    .line 2569
    :cond_14
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2571
    array-length v7, v6

    if-le v7, v12, :cond_15

    .line 2572
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    aget-object v9, v6, v3

    aget-object v10, v6, v12

    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2574
    :cond_15
    aget-object v7, v6, v5

    aget-object v6, v6, v8

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 2576
    :cond_16
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 2578
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2581
    :goto_c
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    sget-object v3, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda21;->INSTANCE:Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda21;

    invoke-static {v3}, Lj$/util/Comparator$-CC;->comparing(Lj$/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2586
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :catch_1
    move-exception v0

    .line 2591
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2597
    :goto_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_getNearestDc;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_getNearestDc;-><init>()V

    .line 2598
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda25;

    invoke-direct {v3, v1, v4}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/util/HashMap;)V

    const/16 v4, 0xa

    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 2608
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_17

    const/4 v2, 0x0

    .line 2609
    invoke-direct {v1, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->setCountryButtonText(Ljava/lang/CharSequence;)V

    .line 2610
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setHintText(Ljava/lang/String;)V

    .line 2611
    iput v5, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    .line 2614
    :cond_17
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_18

    .line 2615
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2616
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    goto :goto_e

    .line 2618
    :cond_18
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2621
    :goto_e
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->loadCountries()V

    return-void
.end method

.method static synthetic access$1602(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z
    .locals 0

    .line 1926
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->confirmedNumber:Z

    return p1
.end method

.method static synthetic access$3000(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;
    .locals 0

    .line 1926
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/OutlineTextContainerView;
    .locals 0

    .line 1926
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/LoginActivity$PhoneView;)Z
    .locals 0

    .line 1926
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    return p0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z
    .locals 0

    .line 1926
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;
    .locals 0

    .line 1926
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1926
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->setCountryButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$3500(Lorg/telegram/ui/LoginActivity$PhoneView;)I
    .locals 0

    .line 1926
    iget p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    return p0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/LoginActivity$PhoneView;I)I
    .locals 0

    .line 1926
    iput p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/HashMap;
    .locals 0

    .line 1926
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/ArrayList;
    .locals 0

    .line 1926
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3802(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z
    .locals 0

    .line 1926
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    return p1
.end method

.method static synthetic access$3902(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/CountrySelectActivity$Country;)Lorg/telegram/ui/CountrySelectActivity$Country;
    .locals 0

    .line 1926
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->currentCountry:Lorg/telegram/ui/CountrySelectActivity$Country;

    return-object p1
.end method

.method static synthetic access$4000(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 0

    .line 1926
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->setCountryHint(Ljava/lang/String;Lorg/telegram/ui/CountrySelectActivity$Country;)V

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/ui/LoginActivity$PhoneView;)Z
    .locals 0

    .line 1926
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnPhoneChange:Z

    return p0
.end method

.method static synthetic access$4402(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z
    .locals 0

    .line 1926
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnPhoneChange:Z

    return p1
.end method

.method static synthetic access$4500(Lorg/telegram/ui/LoginActivity$PhoneView;)V
    .locals 0

    .line 1926
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->invalidateCountryHint()V

    return-void
.end method

.method static synthetic access$9302(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z
    .locals 0

    .line 1926
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    return p1
.end method

.method private invalidateCountryHint()V
    .locals 12

    .line 2808
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryCodeForHint:Ljava/lang/String;

    .line 2809
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 2811
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 2813
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2814
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    const-string v8, "0"

    const-string v9, "X"

    const/4 v10, 0x0

    if-nez v7, :cond_2

    move v7, v10

    .line 2815
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_2

    .line 2816
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2817
    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_2
    if-ne v7, v6, :cond_6

    move v1, v10

    .line 2824
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 2825
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2826
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    move v7, v1

    :cond_5
    if-ne v7, v6, :cond_6

    goto :goto_5

    :cond_6
    move v10, v7

    .line 2836
    :goto_5
    iget v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->wasCountryHintIndex:I

    if-eq v1, v10, :cond_9

    .line 2837
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2838
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 2839
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    if-eqz v0, :cond_7

    const/16 v4, 0x58

    const/16 v5, 0x30

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    :cond_7
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setHintText(Ljava/lang/String;)V

    .line 2840
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    .line 2841
    iput v10, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->wasCountryHintIndex:I

    goto :goto_6

    .line 2843
    :cond_8
    iget v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->wasCountryHintIndex:I

    if-eq v0, v6, :cond_9

    .line 2844
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 2845
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setHintText(Ljava/lang/String;)V

    .line 2846
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    .line 2847
    iput v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->wasCountryHintIndex:I

    :cond_9
    :goto_6
    return-void
.end method

.method private synthetic lambda$fillNumber$25(Ljava/util/List;)V
    .locals 6

    .line 3330
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "firstloginshow"

    const/4 v2, 0x1

    .line 3331
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v5}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 3341
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    .line 3332
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3333
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3335
    sget v0, Lorg/telegram/messenger/R$raw;->incoming_calls:I

    const/16 v1, 0x2e

    const-string v3, "dialogTopBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v0, v1, v4, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3336
    sget v0, Lorg/telegram/messenger/R$string;->Continue:I

    const-string v1, "Continue"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3337
    sget v0, Lorg/telegram/messenger/R$string;->AllowFillNumber:I

    const-string v3, "AllowFillNumber"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3338
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {v0, p1, v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/LoginActivity;->access$8202(Lorg/telegram/ui/LoginActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 3339
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v2}, Lorg/telegram/ui/LoginActivity;->access$8102(Lorg/telegram/ui/LoginActivity;Z)Z

    :goto_1
    return-void
.end method

.method private synthetic lambda$loadCountries$15(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 8

    if-nez p1, :cond_c

    .line 2630
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2631
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 2632
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 2634
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_help_countriesList;

    const/4 p1, 0x0

    move v0, p1

    .line 2635
    :goto_0
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_help_countriesList;->countries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2636
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_help_countriesList;->countries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    move v2, p1

    .line 2637
    :goto_1
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->country_codes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 2638
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->country_codes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_help_countryCode;

    if-eqz v3, :cond_2

    .line 2640
    new-instance v4, Lorg/telegram/ui/CountrySelectActivity$Country;

    invoke-direct {v4}, Lorg/telegram/ui/CountrySelectActivity$Country;-><init>()V

    .line 2641
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->name:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    .line 2642
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/ui/CountrySelectActivity$Country;->defaultName:Ljava/lang/String;

    if-nez v5, :cond_0

    if-eqz v6, :cond_0

    .line 2644
    iput-object v6, v4, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    .line 2646
    :cond_0
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_help_countryCode;->country_code:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    .line 2647
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->iso2:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    .line 2649
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2650
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_help_countryCode;->country_code:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_1

    .line 2652
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_help_countryCode;->country_code:Ljava/lang/String;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v7

    .line 2654
    :cond_1
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2655
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_help_countryCode;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 2656
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_help_countryCode;->country_code:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_help_countryCode;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2662
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_c

    .line 2663
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$8800(Lorg/telegram/ui/LoginActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getClientPhone()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2665
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2666
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_c

    :goto_2
    const/4 v0, 0x1

    if-lt v1, v0, :cond_b

    .line 2668
    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2671
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    if-nez v3, :cond_5

    goto :goto_4

    .line 2674
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v0, :cond_9

    .line 2675
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2676
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phone_code_last_matched_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 2679
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 2680
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 2681
    iget-object v7, v6, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    invoke-static {v7, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v3, v6

    goto :goto_3

    .line 2687
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/CountrySelectActivity$Country;

    :cond_8
    :goto_3
    move-object v4, v3

    goto :goto_4

    .line 2690
    :cond_9
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/CountrySelectActivity$Country;

    :goto_4
    if-eqz v4, :cond_a

    .line 2695
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move v1, v0

    goto :goto_5

    :cond_a
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_b
    move v1, p1

    :goto_5
    if-nez v1, :cond_c

    .line 2700
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    return-void
.end method

.method private synthetic lambda$loadCountries$16(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 2628
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)Z
    .locals 0

    .line 2014
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->tryAuthWithTestBackend()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$new$10(Landroid/view/View;)V
    .locals 3

    .line 2512
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2515
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 2516
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$4700(Lorg/telegram/ui/LoginActivity;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$4702(Lorg/telegram/ui/LoginActivity;Z)Z

    .line 2517
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$4700(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 2518
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$4700(Lorg/telegram/ui/LoginActivity;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2519
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$8900(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->contacts_sync_on:I

    sget v1, Lorg/telegram/messenger/R$string;->SyncContactsOn:I

    const-string v2, "SyncContactsOn"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 2521
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$8900(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->contacts_sync_off:I

    sget v1, Lorg/telegram/messenger/R$string;->SyncContactsOff:I

    const-string v2, "SyncContactsOff"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$11(Landroid/view/View;)V
    .locals 3

    .line 2532
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2535
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 2536
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$4800(Lorg/telegram/ui/LoginActivity;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$4802(Lorg/telegram/ui/LoginActivity;Z)Z

    .line 2537
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$4800(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 2539
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->isTestBackend()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 2540
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$4800(Lorg/telegram/ui/LoginActivity;)Z

    move-result p1

    if-eq v2, p1, :cond_2

    .line 2541
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->switchBackend(Z)V

    .line 2543
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->loadCountries()V

    return-void
.end method

.method private static synthetic lambda$new$12(Lorg/telegram/ui/CountrySelectActivity$Country;)Ljava/lang/String;
    .locals 0

    .line 2581
    iget-object p0, p0, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$new$13(Lorg/telegram/tgnet/TLObject;Ljava/util/HashMap;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2602
    :cond_0
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_nearestDc;

    .line 2603
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2604
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_nearestDc;->country:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->setCountry(Ljava/util/HashMap;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$14(Ljava/util/HashMap;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 2598
    new-instance p3, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda17;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLObject;Ljava/util/HashMap;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$new$2(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 2033
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x10

    .line 2034
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 p0, 0x1

    const/high16 v1, 0x41800000    # 16.0f

    .line 2035
    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v1, "windowBackgroundWhiteBlackText"

    .line 2036
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "windowBackgroundWhiteHintText"

    .line 2037
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 2038
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2039
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2040
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2041
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    or-int/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method

.method private synthetic lambda$new$3(Landroid/view/View;Z)V
    .locals 0

    .line 2064
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(F)V

    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 2

    .line 2070
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$4100(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 2

    .line 2069
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->selectCountry(Lorg/telegram/ui/CountrySelectActivity$Country;)V

    .line 2070
    new-instance p1, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2071
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 2072
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 2

    .line 2067
    new-instance p1, Lorg/telegram/ui/CountrySelectActivity;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lorg/telegram/ui/CountrySelectActivity;-><init>(ZLjava/util/ArrayList;)V

    .line 2068
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/CountrySelectActivity;->setCountrySelectActivityDelegate(Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;)V

    .line 2074
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 2250
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 2251
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 8

    .line 2328
    new-instance p1, Lorg/telegram/ui/LoginActivity$PhoneView$4;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v0, Lorg/telegram/messenger/R$string;->login_token_help:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$9100(Lorg/telegram/ui/LoginActivity;)I

    move-result v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LoginActivity$PhoneView$4;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 2339
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$5;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->setupLoginTokenType(Lorg/telegram/ui/Components/QRCodeBottomSheet$LoginTokenCallback;)V

    .line 2368
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$new$9(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_1

    .line 2486
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$5600(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 2487
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$5600(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$9000(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->callOnClick()Z

    return p2

    :cond_0
    const/4 p1, 0x0

    .line 2490
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->onNextPressed(Ljava/lang/String;)V

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$onNextPressed$17(Ljava/lang/String;)V
    .locals 0

    .line 2923
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->onNextPressed(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$18(Ljava/lang/String;)V
    .locals 3

    .line 2923
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$onNextPressed$19(ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 3107
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-eq p2, p1, :cond_0

    .line 3108
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/LaunchActivity;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 3110
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$onNextPressed$20(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3247
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget-object p2, Lorg/telegram/messenger/BuildVars;->PLAYSTORE_APP_URL:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$21(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 3253
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    .line 3254
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/LoginActivity;->access$2700(Lorg/telegram/ui/LoginActivity;ZZ)V

    if-nez p1, :cond_1

    .line 3256
    check-cast p2, Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 3257
    invoke-static {p2, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/TLRPC$account_Password;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3258
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    const-string p3, "UpdateAppAlert"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 3261
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3262
    new-instance v1, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {p2}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v3

    invoke-direct {v1, v3}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 3263
    invoke-virtual {p2, v1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3264
    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    const-string v1, "password"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "phoneFormated"

    .line 3265
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3266
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p3, 0x6

    invoke-virtual {p2, p3, v2, p1, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_0

    .line 3268
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p3, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onNextPressed$22(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 3252
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$23(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    const/4 v0, 0x0

    .line 3223
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    const/4 v1, 0x1

    if-nez p1, :cond_3

    .line 3226
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeSuccess;

    if-eqz p1, :cond_2

    .line 3227
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeSuccess;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->authorization:Lorg/telegram/tgnet/TLRPC$auth_Authorization;

    .line 3228
    instance-of p4, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;

    if-eqz p4, :cond_1

    .line 3229
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;

    .line 3230
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;->terms_of_service:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    if-eqz p1, :cond_0

    .line 3231
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/LoginActivity;->access$8302(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    .line 3233
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v1, p3, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto/16 :goto_1

    .line 3235
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    invoke-static {p2, p1}, Lorg/telegram/ui/LoginActivity;->access$8400(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    goto/16 :goto_1

    .line 3238
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;

    invoke-static {p1, p3, p2}, Lorg/telegram/ui/LoginActivity;->access$8500(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    goto/16 :goto_1

    .line 3241
    :cond_3
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p2, :cond_e

    const-string p3, "UPDATE_APP_TO_LOGIN"

    .line 3243
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3244
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3245
    sget p2, Lorg/telegram/messenger/R$string;->UpdateApp:I

    const-string p3, "UpdateApp"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3246
    sget p2, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    const-string p3, "UpdateAppAlert"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Telegram"

    const-string p4, "iMe"

    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3247
    sget p2, Lorg/telegram/messenger/R$string;->Update:I

    const-string p3, "Update"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3248
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto/16 :goto_1

    .line 3250
    :cond_4
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "SESSION_PASSWORD_NEEDED"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 3251
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;-><init>()V

    .line 3252
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$8600(Lorg/telegram/ui/LoginActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda24;

    invoke-direct {p3, p0, p4}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;)V

    const/16 p4, 0xa

    invoke-virtual {p2, p1, p3, p4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_1

    .line 3271
    :cond_5
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_NUMBER_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 3272
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, p4, p5, v0}, Lorg/telegram/ui/LoginActivity;->needShowInvalidAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Z)V

    goto/16 :goto_1

    .line 3273
    :cond_6
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_PASSWORD_FLOOD"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string p3, "FloodWait"

    if-eqz p2, :cond_7

    .line 3274
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p4, Lorg/telegram/messenger/R$string;->FloodWait:I

    invoke-static {p3, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3275
    :cond_7
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "PHONE_NUMBER_FLOOD"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 3276
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->PhoneNumberFlood:I

    const-string p4, "PhoneNumberFlood"

    invoke-static {p4, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3277
    :cond_8
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "PHONE_NUMBER_BANNED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 3278
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, p4, p5, v1}, Lorg/telegram/ui/LoginActivity;->needShowInvalidAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Z)V

    goto/16 :goto_1

    .line 3279
    :cond_9
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p4, "PHONE_CODE_EMPTY"

    invoke-virtual {p2, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_d

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p4, "PHONE_CODE_INVALID"

    invoke-virtual {p2, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_0

    .line 3281
    :cond_a
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p4, "PHONE_CODE_EXPIRED"

    invoke-virtual {p2, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 3282
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 3283
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 3284
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->CodeExpired:I

    const-string p4, "CodeExpired"

    invoke-static {p4, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3285
    :cond_b
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p4, "FLOOD_WAIT"

    invoke-virtual {p2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 3286
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p4, Lorg/telegram/messenger/R$string;->FloodWait:I

    invoke-static {p3, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3287
    :cond_c
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 p3, -0x3e8

    if-eq p2, p3, :cond_e

    .line 3288
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$8700(Lorg/telegram/ui/LoginActivity;)I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    new-array p4, v1, [Ljava/lang/Object;

    invoke-static {p5}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->access$2100(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Ljava/lang/String;

    move-result-object p5

    aput-object p5, p4, v0

    invoke-static {p2, p1, p3, p6, p4}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    goto :goto_1

    .line 3280
    :cond_d
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->InvalidCode:I

    const-string p4, "InvalidCode"

    invoke-static {p4, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3292
    :cond_e
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$5000(Lorg/telegram/ui/LoginActivity;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 3293
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Z)V

    :cond_f
    return-void
.end method

.method private synthetic lambda$onNextPressed$24(Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    .line 3222
    new-instance v8, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda19;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p6

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onShow$26()V
    .locals 2

    .line 3432
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    if-eqz v0, :cond_3

    .line 3433
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$8100(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3434
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 3435
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 3437
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3438
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3439
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->numberFilled:Z

    if-nez v0, :cond_1

    .line 3440
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 3442
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$4100(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z

    goto :goto_0

    .line 3444
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3445
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$4100(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$tryAuthWithTestBackend$0()V
    .locals 2

    .line 1952
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$9400(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1953
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Z)V

    const/4 v0, 0x0

    .line 1954
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    .line 1955
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->tryAuthWithTestBackend()V

    :cond_0
    return-void
.end method

.method private loadCountries()V
    .locals 4

    .line 2625
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_getCountriesList;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_getCountriesList;-><init>()V

    .line 2626
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_help_getCountriesList;->lang_code:Ljava/lang/String;

    .line 2627
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private setCountry(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2862
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 2863
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const/4 v0, 0x0

    move v1, v0

    .line 2865
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2866
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CountrySelectActivity$Country;

    iget-object v2, v2, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2867
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/CountrySelectActivity$Country;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 2872
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2873
    iput v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    :cond_2
    return-void
.end method

.method private setCountryButtonText(Ljava/lang/CharSequence;)V
    .locals 3

    .line 2852
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    sget v1, Lorg/telegram/messenger/R$anim;->text_out_down:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$anim;->text_out:I

    :goto_0
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2853
    sget-object v1, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2854
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 2856
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2857
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    .line 2858
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    if-eqz p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(F)V

    return-void
.end method

.method private setCountryHint(Ljava/lang/String;Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 5

    .line 2785
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2786
    iget-object v1, p2, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getLanguageFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2788
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2789
    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$7;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$7;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    .line 2797
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2789
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2799
    :cond_0
    iget-object p2, p2, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2800
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    const/16 v1, 0x14

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0, p2, v1, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->setCountryButtonText(Ljava/lang/CharSequence;)V

    .line 2801
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryCodeForHint:Ljava/lang/String;

    const/4 p1, -0x1

    .line 2802
    iput p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->wasCountryHintIndex:I

    .line 2803
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->invalidateCountryHint()V

    return-void
.end method

.method private tryAuthWithTestBackend()V
    .locals 5

    .line 1937
    iget v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->testBackendLongTapCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->testBackendLongTapCount:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    .line 1939
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->isTestBackend()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1940
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->switchBackend(Z)V

    .line 1942
    :cond_0
    invoke-static {}, Lcom/smedialink/utils/helper/telegram/TelegramTestAuthHelper;->getCountry()Lorg/telegram/ui/CountrySelectActivity$Country;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->selectCountry(Lorg/telegram/ui/CountrySelectActivity$Country;)V

    .line 1943
    invoke-static {}, Lcom/smedialink/utils/helper/telegram/TelegramTestAuthHelper;->generatePhoneNumber()Lcom/smedialink/utils/helper/telegram/TelegramTestPhoneNumber;

    move-result-object v0

    .line 1944
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Lcom/smedialink/utils/helper/telegram/TelegramTestPhoneNumber;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1945
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity;->access$1100(Lorg/telegram/ui/LoginActivity;)[Lorg/telegram/ui/Components/SlideView;

    move-result-object v3

    aget-object v3, v3, v2

    instance-of v3, v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    if-eqz v3, :cond_1

    .line 1946
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity;->access$1100(Lorg/telegram/ui/LoginActivity;)[Lorg/telegram/ui/Components/SlideView;

    move-result-object v3

    aget-object v2, v3, v2

    check-cast v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-virtual {v0}, Lcom/smedialink/utils/helper/telegram/TelegramTestPhoneNumber;->getConfirmXCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setGeneratedCode(Ljava/lang/String;)V

    .line 1948
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->confirmedNumber:Z

    const/4 v0, 0x0

    .line 1949
    invoke-virtual {p0, v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->onNextPressed(Ljava/lang/String;)V

    .line 1950
    iget v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->testBackendLongTapCount:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_3

    .line 1951
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    .line 1957
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 1951
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const-string v0, "\u00af\\_(\u30c4)_/\u00af"

    .line 1960
    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ContextExtKt;->longToast(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 3484
    sget p3, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    if-ne p1, p3, :cond_0

    .line 3485
    invoke-static {p2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result p1

    .line 3486
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$7900(Lorg/telegram/ui/LoginActivity;)I

    move-result p2

    if-eq p2, p1, :cond_2

    .line 3487
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/LoginActivity;->access$7902(Lorg/telegram/ui/LoginActivity;I)I

    .line 3488
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/LoginActivity;->access$8000(Lorg/telegram/ui/LoginActivity;Z)V

    goto :goto_0

    .line 3490
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    if-ne p1, p2, :cond_1

    .line 3491
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/LoginActivity;->access$8000(Lorg/telegram/ui/LoginActivity;Z)V

    goto :goto_0

    .line 3493
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_2

    .line 3494
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public fillNumber()V
    .locals 11

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 3302
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$2800(Lorg/telegram/ui/LoginActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3306
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->numberFilled:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_7

    .line 3310
    :cond_1
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 3311
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3314
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v2, v3, :cond_a

    .line 3315
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    const-string v6, "android.permission.READ_PHONE_NUMBERS"

    const/16 v7, 0x1a

    if-lt v2, v7, :cond_4

    .line 3317
    :try_start_1
    iget-object v8, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    move v8, v4

    goto :goto_2

    :cond_4
    :goto_1
    move v8, v5

    .line 3319
    :goto_2
    iget-object v9, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v9}, Lorg/telegram/ui/LoginActivity;->access$7400(Lorg/telegram/ui/LoginActivity;)Z

    move-result v9

    if-eqz v9, :cond_b

    if-eqz v3, :cond_5

    if-nez v8, :cond_b

    .line 3320
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$7500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-nez v3, :cond_6

    .line 3322
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$7500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-nez v8, :cond_7

    if-lt v2, v7, :cond_7

    .line 3325
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$7500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3327
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$7500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3328
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$7500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3329
    new-instance v1, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/util/List;)V

    .line 3344
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$7600(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3345
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$7702(Lorg/telegram/ui/LoginActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_3

    .line 3347
    :cond_8
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_9
    :goto_3
    return-void

    :cond_a
    move v3, v5

    move v8, v3

    .line 3353
    :cond_b
    iput-boolean v5, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->numberFilled:Z

    .line 3354
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$4600(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz v3, :cond_15

    if-eqz v8, :cond_15

    .line 3355
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setAlpha(F)V

    .line 3356
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setAlpha(F)V

    .line 3358
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3361
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 3362
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-le v1, v2, :cond_12

    :goto_4
    if-lt v2, v5, :cond_11

    .line 3364
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3367
    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_c

    move-object v6, v3

    goto :goto_5

    .line 3370
    :cond_c
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v5, :cond_e

    .line 3371
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v7

    .line 3372
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "phone_code_last_matched_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3374
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/CountrySelectActivity$Country;

    if-eqz v7, :cond_f

    .line 3376
    iget-object v8, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 3377
    iget-object v10, v9, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    invoke-static {v10, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    move-object v6, v9

    goto :goto_5

    .line 3384
    :cond_e
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/CountrySelectActivity$Country;

    :cond_f
    :goto_5
    if-eqz v6, :cond_10

    .line 3389
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 3390
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object v3, v2

    move v1, v5

    goto :goto_6

    :cond_10
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_11
    move v1, v4

    :goto_6
    if-nez v1, :cond_12

    .line 3395
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 3396
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    if-eqz v3, :cond_13

    .line 3400
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3401
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3402
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 3406
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_14

    .line 3407
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    .line 3408
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v5, [F

    aput v1, v7, v4

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v5, [F

    aput v1, v7, v4

    .line 3409
    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v2, v5

    .line 3408
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3410
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 3412
    iput-boolean v5, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->confirmedNumber:Z

    goto :goto_7

    .line 3414
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAlpha(F)V

    .line 3415
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAlpha(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 3420
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_15
    :goto_7
    return-void
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 2

    .line 3454
    sget v0, Lorg/telegram/messenger/R$string;->YourPhone:I

    const-string v1, "YourPhone"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCustomKeyboard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 2759
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2760
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-static {}, Lorg/telegram/ui/LoginActivity;->access$4900()[I

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 2761
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onCancelPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 2880
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 2766
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2767
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-static {}, Lorg/telegram/ui/LoginActivity;->access$4900()[I

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 2768
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 2885
    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2886
    iput-boolean p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 2889
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 2890
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 2891
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2892
    iput-boolean p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    return-void
.end method

.method public onNextPressed(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const-string v1, "ephone"

    .line 2902
    iget-object v2, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_32

    iget-boolean v2, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    if-nez v2, :cond_32

    iget-object v2, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->access$5000(Lorg/telegram/ui/LoginActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1b

    .line 2906
    :cond_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2907
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_1

    .line 2908
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2910
    :cond_1
    iget-object v4, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_31

    iget-object v4, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_1a

    .line 2914
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2916
    iget-object v4, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v4}, Lorg/telegram/ui/LoginActivity;->access$2800(Lorg/telegram/ui/LoginActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2917
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$5200(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/ContactsController;->searchAccountByTel(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    return-void

    .line 2921
    :cond_3
    iget-boolean v4, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->confirmedNumber:Z

    const/16 v9, 0x14

    if-nez v4, :cond_5

    .line 2922
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v2, v1, :cond_4

    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$200(Lorg/telegram/ui/LoginActivity;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$5300(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-le v1, v2, :cond_4

    .line 2923
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    new-instance v2, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda14;

    invoke-direct {v2, v7, v0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/LoginActivity;->access$5402(Lorg/telegram/ui/LoginActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2924
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$5500(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void

    .line 2928
    :cond_4
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    new-instance v2, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    iget-object v3, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity;->access$5700(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v3, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity;->access$5800(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/view/ViewGroup;

    iget-object v3, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity;->access$100(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object v13

    new-instance v15, Lorg/telegram/ui/LoginActivity$PhoneView$8;

    invoke-direct {v15, v7, v0}, Lorg/telegram/ui/LoginActivity$PhoneView$8;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;)V

    const/16 v16, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;Lorg/telegram/ui/LoginActivity$1;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/LoginActivity;->access$5602(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    .line 3015
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$5600(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$6600(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    return-void

    .line 3017
    :cond_5
    iput-boolean v5, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->confirmedNumber:Z

    .line 3019
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$5600(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3020
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$5600(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$1500(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    .line 3023
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSimAvailable()Z

    move-result v0

    .line 3029
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v4, v10, :cond_18

    if-eqz v0, :cond_18

    .line 3030
    iget-object v10, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v13, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v10, v13}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_7

    const/4 v10, 0x1

    goto :goto_0

    :cond_7
    move v10, v5

    .line 3031
    :goto_0
    iget-object v14, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "android.permission.CALL_PHONE"

    invoke-virtual {v14, v15}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_8

    const/4 v14, 0x1

    goto :goto_1

    :cond_8
    move v14, v5

    :goto_1
    const/16 v9, 0x1c

    const-string v11, "android.permission.READ_CALL_LOG"

    if-lt v4, v9, :cond_a

    .line 3032
    iget-object v9, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_9

    goto :goto_2

    :cond_9
    move v9, v5

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v9, 0x1

    :goto_3
    const-string v5, "android.permission.READ_PHONE_NUMBERS"

    const/16 v12, 0x1a

    if-lt v4, v12, :cond_c

    .line 3034
    iget-object v12, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_b

    const/4 v12, 0x1

    goto :goto_4

    :cond_b
    const/4 v12, 0x0

    :goto_4
    move-object/from16 v17, v1

    goto :goto_5

    :cond_c
    move-object/from16 v17, v1

    const/4 v12, 0x1

    .line 3036
    :goto_5
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$6000(Lorg/telegram/ui/LoginActivity;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3037
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$6100(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-nez v10, :cond_d

    .line 3039
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$6100(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    if-nez v14, :cond_e

    .line 3042
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$6100(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    if-nez v9, :cond_f

    .line 3045
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$6100(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    if-nez v12, :cond_10

    const/16 v1, 0x1a

    if-lt v4, v1, :cond_10

    .line 3048
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$6100(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3050
    :cond_10
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$6100(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 3051
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "firstlogin"

    const/4 v2, 0x1

    .line 3052
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v2, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_6

    .line 3073
    :cond_11
    :try_start_0
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$6100(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    .line 3075
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 3053
    :cond_12
    :goto_6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3054
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3056
    sget v1, Lorg/telegram/messenger/R$string;->Continue:I

    const-string v2, "Continue"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    if-nez v10, :cond_14

    if-eqz v14, :cond_13

    if-nez v9, :cond_14

    .line 3059
    :cond_13
    sget v1, Lorg/telegram/messenger/R$string;->AllowReadCallAndLog:I

    const-string v2, "AllowReadCallAndLog"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3060
    sget v1, Lorg/telegram/messenger/R$raw;->calls_log:I

    goto :goto_8

    :cond_14
    if-eqz v14, :cond_16

    if-nez v9, :cond_15

    goto :goto_7

    .line 3065
    :cond_15
    sget v1, Lorg/telegram/messenger/R$string;->AllowReadCall:I

    const-string v2, "AllowReadCall"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3066
    sget v1, Lorg/telegram/messenger/R$raw;->incoming_calls:I

    goto :goto_8

    .line 3062
    :cond_16
    :goto_7
    sget v1, Lorg/telegram/messenger/R$string;->AllowReadCallLog:I

    const-string v2, "AllowReadCallLog"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3063
    sget v1, Lorg/telegram/messenger/R$raw;->calls_log:I

    :goto_8
    const/16 v2, 0x2e

    const-string v3, "dialogTopBackground"

    .line 3068
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3069
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/telegram/ui/LoginActivity;->access$6202(Lorg/telegram/ui/LoginActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 3070
    iput-boolean v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->confirmedNumber:Z

    :goto_9
    return-void

    :cond_17
    const/4 v1, 0x1

    goto :goto_a

    :cond_18
    move-object/from16 v17, v1

    const/4 v1, 0x1

    move v9, v1

    move v10, v9

    move v14, v10

    .line 3083
    :goto_a
    iget v4, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    if-ne v4, v1, :cond_19

    .line 3084
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v1, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->ChooseCountry:I

    const-string v3, "ChooseCountry"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3085
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Z)V

    return-void

    :cond_19
    const/4 v1, 0x2

    if-ne v4, v1, :cond_1a

    .line 3087
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v4, :cond_1a

    .line 3088
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v1, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->WrongCountry:I

    const-string v3, "WrongCountry"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3089
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Z)V

    return-void

    .line 3092
    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3093
    iget-object v5, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v5}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v5

    if-nez v5, :cond_1d

    .line 3094
    iget-object v5, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/ui/LaunchActivity;

    if-eqz v5, :cond_1d

    const/4 v5, 0x0

    :goto_b
    const/4 v11, 0x5

    if-ge v5, v11, :cond_1d

    .line 3096
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v11

    .line 3097
    invoke-virtual {v11}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v12

    if-nez v12, :cond_1b

    goto :goto_c

    .line 3100
    :cond_1b
    invoke-virtual {v11}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 3101
    invoke-static {v4, v11}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/tgnet/ConnectionsManager;->isTestBackend()Z

    move-result v11

    iget-object v12, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->access$4800(Lorg/telegram/ui/LoginActivity;)Z

    move-result v12

    if-ne v11, v12, :cond_1c

    .line 3103
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3104
    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3105
    sget v1, Lorg/telegram/messenger/R$string;->AccountAlreadyLoggedIn:I

    const-string v2, "AccountAlreadyLoggedIn"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3106
    sget v1, Lorg/telegram/messenger/R$string;->AccountSwitch:I

    const-string v2, "AccountSwitch"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda1;

    invoke-direct {v2, v7, v5}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;I)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3112
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v2, "OK"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3113
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 3114
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Z)V

    return-void

    :cond_1c
    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 3121
    :cond_1d
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;-><init>()V

    if-eqz v0, :cond_1e

    if-eqz v10, :cond_1e

    if-eqz v14, :cond_1e

    if-eqz v9, :cond_1e

    const/4 v9, 0x1

    goto :goto_d

    :cond_1e
    const/4 v9, 0x0

    .line 3122
    :goto_d
    iput-boolean v9, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_flashcall:Z

    if-eqz v0, :cond_1f

    if-eqz v10, :cond_1f

    const/4 v0, 0x1

    goto :goto_e

    :cond_1f
    const/4 v0, 0x0

    .line 3123
    :goto_e
    iput-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_missed_call:Z

    .line 3124
    sget-object v0, Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;->INSTANCE:Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;->hasServices()Z

    move-result v0

    iput-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_firebase:Z

    iput-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_app_hash:Z

    .line 3125
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$6900(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lorg/telegram/messenger/BuildVars;->SAFETYNET_KEY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    const/4 v9, 0x0

    .line 3126
    iput-boolean v9, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_firebase:Z

    .line 3129
    :cond_21
    invoke-static {}, Lorg/telegram/messenger/AuthTokensHelper;->getSavedLogInTokens()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_26

    const/4 v9, 0x0

    .line 3131
    :goto_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_26

    .line 3132
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->future_auth_token:[B

    if-nez v10, :cond_22

    goto :goto_10

    .line 3135
    :cond_22
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    if-nez v10, :cond_23

    .line 3136
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    .line 3138
    :cond_23
    sget-boolean v10, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v10, :cond_24

    .line 3139
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "login token to check "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->future_auth_token:[B

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v12, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3141
    :cond_24
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->future_auth_token:[B

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3142
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v11, 0x14

    if-lt v10, v11, :cond_25

    goto :goto_11

    :cond_25
    :goto_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 3147
    :cond_26
    :goto_11
    invoke-static {}, Lorg/telegram/messenger/AuthTokensHelper;->getSavedLogOutTokens()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2a

    const/4 v9, 0x0

    .line 3149
    :goto_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_29

    .line 3150
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    if-nez v10, :cond_27

    .line 3151
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    .line 3153
    :cond_27
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;->future_auth_token:[B

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3154
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v11, 0x14

    if-lt v10, v11, :cond_28

    goto :goto_13

    :cond_28
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    .line 3158
    :cond_29
    :goto_13
    invoke-static {v0}, Lorg/telegram/messenger/AuthTokensHelper;->saveLogOutTokens(Ljava/util/ArrayList;)V

    .line 3160
    :cond_2a
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    if-eqz v0, :cond_2b

    .line 3161
    iget v0, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    .line 3163
    :cond_2b
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v9, "mainconfig"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3164
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "sms_hash_code"

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3165
    iget-boolean v9, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_app_hash:Z

    const-string v10, "sms_hash"

    if-eqz v9, :cond_2c

    .line 3166
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v9, Lorg/telegram/messenger/BuildVars;->SMS_HASH:Ljava/lang/String;

    invoke-interface {v0, v10, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_14

    .line 3168
    :cond_2c
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3170
    :goto_14
    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_flashcall:Z

    if-eqz v0, :cond_2f

    .line 3172
    :try_start_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 3173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 3174
    invoke-static {v4, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->current_number:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v0, :cond_2f

    const/4 v2, 0x0

    .line 3176
    :try_start_2
    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_flashcall:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_16

    .line 3179
    :cond_2d
    :try_start_3
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getActivatedAccountsCount()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-lez v0, :cond_2e

    const/4 v2, 0x0

    .line 3180
    :try_start_4
    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_flashcall:Z

    goto :goto_16

    :cond_2e
    const/4 v2, 0x0

    .line 3182
    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->current_number:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_16

    :catch_1
    move-exception v0

    goto :goto_15

    :catch_2
    move-exception v0

    const/4 v2, 0x0

    .line 3186
    :goto_15
    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_flashcall:Z

    .line 3187
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3192
    :cond_2f
    :goto_16
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    if-ne v0, v1, :cond_30

    .line 3193
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;-><init>()V

    .line 3194
    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;->phone_number:Ljava/lang/String;

    .line 3195
    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;->settings:Lorg/telegram/tgnet/TLRPC$TL_codeSettings;

    goto :goto_17

    .line 3198
    :cond_30
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$7000(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cleanup(Z)V

    .line 3200
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;-><init>()V

    .line 3201
    sget-object v1, Lorg/telegram/messenger/BuildVars;->APP_HASH:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->api_hash:Ljava/lang/String;

    .line 3202
    sget v1, Lorg/telegram/messenger/BuildVars;->APP_ID:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->api_id:I

    .line 3203
    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->phone_number:Ljava/lang/String;

    .line 3204
    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->settings:Lorg/telegram/tgnet/TLRPC$TL_codeSettings;

    :goto_17
    move-object v9, v0

    .line 3208
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3211
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v1, v17

    :try_start_6
    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_19

    :catch_3
    move-exception v0

    goto :goto_18

    :catch_4
    move-exception v0

    move-object/from16 v1, v17

    .line 3213
    :goto_18
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    const-string v0, "phoneFormated"

    .line 3216
    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3217
    iput-boolean v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    .line 3218
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneInputData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneInputData;-><init>(Lorg/telegram/ui/LoginActivity$1;)V

    .line 3219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->access$2102(Lorg/telegram/ui/LoginActivity$PhoneInputData;Ljava/lang/String;)Ljava/lang/String;

    .line 3220
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->currentCountry:Lorg/telegram/ui/CountrySelectActivity$Country;

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->access$2002(Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/ui/CountrySelectActivity$Country;)Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 3221
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    iget-object v2, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->access$1902(Lorg/telegram/ui/LoginActivity$PhoneInputData;Ljava/util/List;)Ljava/util/List;

    .line 3222
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$7200(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v10, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda23;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v5

    move-object v5, v0

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;)V

    const/16 v0, 0x1b

    invoke-virtual {v8, v9, v10, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    .line 3296
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/LoginActivity;->access$7300(Lorg/telegram/ui/LoginActivity;I)V

    return-void

    .line 2911
    :cond_31
    :goto_1a
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$5100(Lorg/telegram/ui/LoginActivity;Landroid/view/View;Z)V

    :cond_32
    :goto_1b
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onShow()V
    .locals 3

    .line 3426
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 3427
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->fillNumber()V

    .line 3428
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->syncContactsBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v0, :cond_0

    .line 3429
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$4700(Lorg/telegram/ui/LoginActivity;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 3431
    :cond_0
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    .line 3449
    invoke-static {}, Lorg/telegram/ui/LoginActivity;->access$7800()I

    move-result v1

    int-to-long v1, v1

    .line 3431
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "phoneview_code"

    .line 3471
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3473
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "phoneview_phone"

    .line 3475
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3477
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .locals 2

    .line 3459
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3460
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "phoneview_code"

    .line 3461
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3463
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3464
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "phoneview_phone"

    .line 3465
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public selectCountry(Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 3

    const/4 v0, 0x1

    .line 2772
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 2773
    iget-object v0, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    .line 2774
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2775
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->setCountryHint(Ljava/lang/String;Lorg/telegram/ui/CountrySelectActivity$Country;)V

    .line 2776
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->currentCountry:Lorg/telegram/ui/CountrySelectActivity$Country;

    const/4 v0, 0x0

    .line 2777
    iput v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    .line 2778
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 2780
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone_code_last_matched_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateColors()V
    .locals 5

    .line 2713
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->searchByTelWarningTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText6"

    if-eqz v0, :cond_0

    .line 2714
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2717
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    const-string v2, "windowBackgroundWhiteBlackText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2718
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    .line 2719
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getChildCount()I

    move-result v1

    const-string v3, "windowBackgroundWhiteHintText"

    if-ge v0, v1, :cond_1

    .line 2720
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2721
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2722
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2725
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->chevronRight:Landroid/widget/ImageView;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2726
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->chevronRight:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v4, "listSelectorSDK21"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2728
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->plusTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2730
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setTextColor(I)V

    .line 2731
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const-string v1, "windowBackgroundWhiteInputFieldActivated"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 2733
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeDividerView:Landroid/view/View;

    const-string v4, "windowBackgroundWhiteInputField"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2735
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setTextColor(I)V

    .line 2736
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 2737
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 2739
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->syncContactsBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    const-string v1, "checkboxSquareCheck"

    const-string v2, "checkboxSquareBackground"

    const-string v3, "checkboxSquareUnchecked"

    if-eqz v0, :cond_2

    .line 2740
    invoke-virtual {v0, v3, v2, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setSquareCheckBoxColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2741
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->syncContactsBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->updateTextColor()V

    .line 2743
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->testBackendCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v0, :cond_3

    .line 2744
    invoke-virtual {v0, v3, v2, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setSquareCheckBoxColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2745
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->testBackendCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->updateTextColor()V

    .line 2748
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;->updateColor()V

    .line 2749
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;->updateColor()V

    return-void
.end method
