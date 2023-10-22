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

.method public static synthetic $r8$lambda$33tk2qyIAOkXTyXta3r-FkiXgTQ(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$24(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4dlk8X3TrEUCBn39fgYXcXyK6Y4(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$loadCountries$16(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AHWaqYK64mgbLX1Y6Qa7Yh60kBw(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$23(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B6gWYIwm5PmjYveFckU6O7pYC0M(Lorg/telegram/ui/CountrySelectActivity$Country;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$12(Lorg/telegram/ui/CountrySelectActivity$Country;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CpNYrGGA3ZQfFGKIE-LLEuOKK48(Lorg/telegram/ui/LoginActivity$PhoneView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onShow$28()V

    return-void
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

.method public static synthetic $r8$lambda$FoLWjh8JKTQnbwJFg9WMEwO2_t0(Lorg/telegram/ui/LoginActivity$PhoneView;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$21(ILandroid/content/DialogInterface;I)V

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

.method public static synthetic $r8$lambda$HtOqTBCLTxG5jDTHh5nvTtSO4KE(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$26(Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pec01d89YFKElIjc62aUi_pfLAw(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$2(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
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

.method public static synthetic $r8$lambda$WEtgn-2G_mI2DDWFkMZfkGihLu4(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$18(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z-wpJjiPB3Gz1G7MH1JeYTtpv9U(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$19(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z9NI_MTTJDVMF0DfInpIH7g3jfk(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$22(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bcWRlZp9MI1ZOme5PfC8ydNreCE(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$fillNumber$27(Ljava/util/List;)V

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

.method public static synthetic $r8$lambda$kzt8dl1Kbzk0ATHVNH-OdpW8EyA(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$25(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lZnbCZxOnjveOvcpl8uU5FyVq_s(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$17(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m8VFEhgrEiByHIm8A1A3OYH5aLg(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$3(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$pYjleMTdykei8IzljBTioMHi2VA(Lorg/telegram/ui/LoginActivity$PhoneView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$sm4Q-mYU_lm4TP3Xo6D1xK9ezKY(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$onNextPressed$20(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    .line 2221
    iput-object v2, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 2222
    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 2206
    iput v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    .line 2210
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    .line 2211
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    .line 2212
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    .line 2214
    iput-boolean v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    .line 2215
    iput-boolean v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 2216
    iput-boolean v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnPhoneChange:Z

    .line 2218
    iput-boolean v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    .line 2219
    iput-boolean v3, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->confirmedNumber:Z

    const/4 v4, -0x1

    .line 3011
    iput v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->wasCountryHintIndex:I

    const/4 v5, 0x1

    .line 2224
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x11

    .line 2225
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2227
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    const/high16 v8, 0x41900000    # 18.0f

    .line 2228
    invoke-virtual {v7, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2229
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    const-string v8, "fonts/rmedium.ttf"

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2231
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$3500(Lorg/telegram/ui/LoginActivity;)Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_0

    .line 2232
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/messenger/R$string;->dialogs_tel_search:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2234
    :cond_0
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$3600(Lorg/telegram/ui/LoginActivity;)I

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

    .line 2235
    :goto_1
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 2236
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v7, v9, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2238
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$3600(Lorg/telegram/ui/LoginActivity;)I

    move-result v7

    if-nez v7, :cond_2

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$3500(Lorg/telegram/ui/LoginActivity;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2239
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    new-instance v9, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda6;

    invoke-direct {v9, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2245
    :cond_2
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

    .line 2247
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Landroid/widget/TextView;

    .line 2249
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$3500(Lorg/telegram/ui/LoginActivity;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2250
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/messenger/R$string;->dialogs_tel_search_hint:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2252
    :cond_3
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Landroid/widget/TextView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$3600(Lorg/telegram/ui/LoginActivity;)I

    move-result v9

    if-ne v9, v8, :cond_4

    sget v9, Lorg/telegram/messenger/R$string;->ChangePhoneHelp:I

    goto :goto_2

    :cond_4
    sget v9, Lorg/telegram/messenger/R$string;->StartText:I

    :goto_2
    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2253
    :goto_3
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Landroid/widget/TextView;

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v7, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2254
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 2255
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v11, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2256
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

    .line 2258
    new-instance v7, Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/TextViewSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    .line 2259
    new-instance v11, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda9;

    invoke-direct {v11, v0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda9;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v11}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 2272
    sget v7, Lorg/telegram/messenger/R$anim;->text_in:I

    invoke-static {v0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    .line 2273
    sget-object v11, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2274
    iget-object v11, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v11, v7}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 2276
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->chevronRight:Landroid/widget/ImageView;

    .line 2277
    sget v11, Lorg/telegram/messenger/R$drawable;->msg_inputarrow:I

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2279
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2280
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v11, 0x10

    .line 2281
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2282
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

    .line 2283
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

    .line 2285
    new-instance v12, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    iput-object v12, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    .line 2286
    sget v13, Lorg/telegram/messenger/R$string;->Country:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 2287
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

    .line 2288
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setForceUseCenter(Z)V

    .line 2289
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v7, v5}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2290
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2291
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    new-instance v12, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda5;

    invoke-direct {v12, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {v7, v12}, Landroid/widget/FrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2292
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

    .line 2293
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    new-instance v12, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda2;

    invoke-direct {v12, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {v7, v12}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2304
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2305
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2307
    new-instance v12, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    iput-object v12, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/4 v13, -0x1

    const/4 v14, -0x2

    const/16 v15, 0x10

    const/16 v17, 0x8

    const/16 v18, 0x10

    const/16 v19, 0x8

    .line 2308
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v12, v7, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2310
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$3600(Lorg/telegram/ui/LoginActivity;)I

    move-result v12

    const/16 v13, 0xa

    if-nez v12, :cond_5

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$3500(Lorg/telegram/ui/LoginActivity;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 2311
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 2312
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    iput v14, v12, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2313
    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2316
    :cond_5
    iget-object v12, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    sget v14, Lorg/telegram/messenger/R$string;->PhoneNumber:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 2317
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

    .line 2319
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v12, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->plusTextView:Landroid/widget/TextView;

    const-string v15, "+"

    .line 2320
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2321
    iget-object v12, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->plusTextView:Landroid/widget/TextView;

    const/high16 v15, 0x41800000    # 16.0f

    invoke-virtual {v12, v5, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2322
    iget-object v12, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->plusTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 2323
    iget-object v12, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->plusTextView:Landroid/widget/TextView;

    const/4 v11, -0x2

    invoke-static {v11, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v12, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2325
    new-instance v10, Lorg/telegram/ui/LoginActivity$PhoneView$1;

    invoke-direct {v10, v1, v0, v2}, Lorg/telegram/ui/LoginActivity$PhoneView$1;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v10, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/4 v12, 0x3

    .line 2336
    invoke-virtual {v10, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 2337
    iget-object v10, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/16 v18, 0x14

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 2338
    iget-object v10, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/high16 v11, 0x3fc00000    # 1.5f

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 2339
    iget-object v10, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v10, v6, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 2340
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v6, v5, v15}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setTextSize(IF)V

    .line 2341
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 2342
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/16 v10, 0x13

    invoke-virtual {v6, v10}, Landroid/widget/EditText;->setGravity(I)V

    .line 2343
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const v13, 0x10000005

    invoke-virtual {v6, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2344
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2346
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v6, v4, :cond_8

    .line 2347
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->hasCustomKeyboard()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$1400(Lorg/telegram/ui/LoginActivity;)Z

    move-result v21

    if-eqz v21, :cond_6

    goto :goto_4

    :cond_6
    move v9, v3

    goto :goto_5

    :cond_7
    :goto_4
    move v9, v5

    :goto_5
    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    .line 2349
    :cond_8
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget v9, Lorg/telegram/messenger/R$string;->LoginAccessibilityCountryCode:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2350
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

    .line 2351
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    new-instance v9, Lorg/telegram/ui/LoginActivity$PhoneView$2;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/LoginActivity$PhoneView$2;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2475
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    new-instance v9, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda8;

    invoke-direct {v9, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2483
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeDividerView:Landroid/view/View;

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, 0x4

    const/16 v25, 0x8

    const/16 v26, 0xc

    const/16 v27, 0x8

    .line 2484
    invoke-static/range {v22 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    const/high16 v9, 0x3f000000    # 0.5f

    .line 2485
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2486
    iget-object v9, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeDividerView:Landroid/view/View;

    invoke-virtual {v7, v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2488
    new-instance v4, Lorg/telegram/ui/LoginActivity$PhoneView$3;

    invoke-direct {v4, v1, v0, v2}, Lorg/telegram/ui/LoginActivity$PhoneView$3;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    .line 2531
    invoke-virtual {v4, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 2532
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 2533
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 2534
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 2535
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v5, v15}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setTextSize(IF)V

    .line 2536
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 2537
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setGravity(I)V

    .line 2538
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2539
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0x15

    if-lt v6, v4, :cond_b

    .line 2542
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->hasCustomKeyboard()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$1400(Lorg/telegram/ui/LoginActivity;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_6

    :cond_9
    move v9, v3

    goto :goto_7

    :cond_a
    :goto_6
    move v9, v5

    :goto_7
    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    .line 2544
    :cond_b
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2545
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/16 v9, 0x24

    const/4 v10, -0x1

    invoke-static {v10, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2547
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$3600(Lorg/telegram/ui/LoginActivity;)I

    move-result v4

    if-nez v4, :cond_c

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$3500(Lorg/telegram/ui/LoginActivity;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 2548
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

    .line 2549
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2550
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-virtual {v2, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-static {v10, v3, v3}, Lorg/telegram/ui/ActionBar/Theme;->createCircleSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2551
    sget v10, Lorg/telegram/messenger/R$drawable;->msg_qr_mini:I

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2552
    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2553
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2554
    new-instance v10, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda3;

    invoke-direct {v10, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v10, 0x5

    .line 2577
    invoke-static {v9, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2580
    :cond_c
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    new-instance v7, Lorg/telegram/ui/LoginActivity$PhoneView$5;

    invoke-direct {v7, v1, v2}, Lorg/telegram/ui/LoginActivity$PhoneView$5;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2691
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    new-instance v7, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda7;

    invoke-direct {v7, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/16 v4, 0x48

    .line 2705
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$3500(Lorg/telegram/ui/LoginActivity;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 2706
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->searchByTelWarningTextView:Landroid/widget/TextView;

    .line 2707
    sget v7, Lorg/telegram/messenger/R$string;->dialogs_tel_search_warning:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2708
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->searchByTelWarningTextView:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2709
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->searchByTelWarningTextView:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 2710
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->searchByTelWarningTextView:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2711
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->searchByTelWarningTextView:Landroid/widget/TextView;

    const/16 v22, -0x1

    const/16 v23, -0x2

    const/16 v24, 0x1

    const/16 v25, 0x20

    const/16 v26, 0x8

    const/16 v27, 0x20

    const/16 v28, 0x0

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    .line 2713
    :cond_d
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$3600(Lorg/telegram/ui/LoginActivity;)I

    move-result v7

    if-nez v7, :cond_10

    .line 2714
    new-instance v4, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-direct {v4, v0, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;I)V

    iput-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->syncContactsBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 2715
    sget v7, Lorg/telegram/messenger/R$string;->SyncContacts:I

    const-string v9, "SyncContacts"

    invoke-static {v9, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$5300(Lorg/telegram/ui/LoginActivity;)Z

    move-result v9

    const-string v10, ""

    invoke-virtual {v4, v7, v10, v9, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 2716
    iget-object v4, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->syncContactsBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    const/16 v22, -0x2

    const/16 v23, -0x1

    const/16 v24, 0x33

    const/16 v25, 0x10

    const/16 v26, 0x0

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_f

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v7

    if-eqz v7, :cond_f

    const/16 v7, 0x15

    if-lt v6, v7, :cond_e

    const/16 v6, 0x38

    goto :goto_8

    :cond_e
    const/16 v6, 0x3c

    goto :goto_8

    :cond_f
    move v6, v3

    :goto_8
    const/16 v7, 0x10

    add-int v27, v7, v6

    const/16 v28, 0x0

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x30

    .line 2718
    iget-object v6, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->syncContactsBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    new-instance v7, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda4;

    invoke-direct {v7, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    :goto_9
    if-lez v4, :cond_11

    .line 2753
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v6

    if-nez v6, :cond_11

    .line 2754
    new-instance v6, Landroid/widget/Space;

    invoke-direct {v6, v0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 2755
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/Space;->setMinimumHeight(I)V

    const/4 v0, -0x2

    .line 2756
    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2759
    :cond_11
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2762
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

    .line 2764
    :goto_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_14

    const-string v7, ";"

    .line 2765
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2766
    new-instance v7, Lorg/telegram/ui/CountrySelectActivity$Country;

    invoke-direct {v7}, Lorg/telegram/ui/CountrySelectActivity$Country;-><init>()V

    .line 2767
    aget-object v9, v6, v8

    iput-object v9, v7, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    .line 2768
    aget-object v9, v6, v3

    iput-object v9, v7, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    .line 2769
    aget-object v9, v6, v5

    iput-object v9, v7, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    .line 2770
    iget-object v9, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v3, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2772
    iget-object v9, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    aget-object v10, v6, v3

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_12

    .line 2774
    iget-object v9, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    aget-object v10, v6, v3

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v11

    .line 2776
    :cond_12
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2778
    array-length v7, v6

    if-le v7, v12, :cond_13

    .line 2779
    iget-object v7, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    aget-object v9, v6, v3

    aget-object v10, v6, v12

    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2781
    :cond_13
    aget-object v7, v6, v5

    aget-object v6, v6, v8

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 2783
    :cond_14
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    .line 2785
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2788
    :goto_b
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    sget-object v3, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda22;->INSTANCE:Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda22;

    invoke-static {v3}, Lj$/util/Comparator$-CC;->comparing(Lj$/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2793
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    :catch_1
    move-exception v0

    .line 2798
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2804
    :goto_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_getNearestDc;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_getNearestDc;-><init>()V

    .line 2805
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda26;

    invoke-direct {v3, v1, v4}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/util/HashMap;)V

    const/16 v4, 0xa

    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 2815
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v2, 0x0

    .line 2816
    invoke-direct {v1, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->setCountryButtonText(Ljava/lang/CharSequence;)V

    .line 2817
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setHintText(Ljava/lang/String;)V

    .line 2818
    iput v5, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    .line 2821
    :cond_15
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_16

    .line 2822
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2823
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    goto :goto_d

    .line 2825
    :cond_16
    iget-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2828
    :goto_d
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->loadCountries()V

    return-void
.end method

.method static synthetic access$2302(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z
    .locals 0

    .line 2151
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->confirmedNumber:Z

    return p1
.end method

.method static synthetic access$3700(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;
    .locals 0

    .line 2151
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/OutlineTextContainerView;
    .locals 0

    .line 2151
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/LoginActivity$PhoneView;)Z
    .locals 0

    .line 2151
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    return p0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z
    .locals 0

    .line 2151
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    return p1
.end method

.method static synthetic access$4000(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;
    .locals 0

    .line 2151
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 2151
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->setCountryButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$4200(Lorg/telegram/ui/LoginActivity$PhoneView;)I
    .locals 0

    .line 2151
    iget p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    return p0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/LoginActivity$PhoneView;I)I
    .locals 0

    .line 2151
    iput p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    return p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/HashMap;
    .locals 0

    .line 2151
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/ArrayList;
    .locals 0

    .line 2151
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4502(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z
    .locals 0

    .line 2151
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    return p1
.end method

.method static synthetic access$4602(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/CountrySelectActivity$Country;)Lorg/telegram/ui/CountrySelectActivity$Country;
    .locals 0

    .line 2151
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->currentCountry:Lorg/telegram/ui/CountrySelectActivity$Country;

    return-object p1
.end method

.method static synthetic access$4700(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 0

    .line 2151
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->setCountryHint(Ljava/lang/String;Lorg/telegram/ui/CountrySelectActivity$Country;)V

    return-void
.end method

.method static synthetic access$5100(Lorg/telegram/ui/LoginActivity$PhoneView;)Z
    .locals 0

    .line 2151
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnPhoneChange:Z

    return p0
.end method

.method static synthetic access$5102(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z
    .locals 0

    .line 2151
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnPhoneChange:Z

    return p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/LoginActivity$PhoneView;)V
    .locals 0

    .line 2151
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->invalidateCountryHint()V

    return-void
.end method

.method private invalidateCountryHint()V
    .locals 12

    .line 3013
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryCodeForHint:Ljava/lang/String;

    .line 3014
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

    .line 3016
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

    .line 3018
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3019
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    const-string v8, "0"

    const-string v9, "X"

    const/4 v10, 0x0

    if-nez v7, :cond_2

    move v7, v10

    .line 3020
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_2

    .line 3021
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 3022
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

    .line 3029
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 3030
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3031
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

    move v7, v10

    .line 3041
    :cond_6
    iget v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->wasCountryHintIndex:I

    if-eq v1, v7, :cond_9

    .line 3042
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3043
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 3044
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    if-eqz v0, :cond_7

    const/16 v4, 0x58

    const/16 v5, 0x30

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    :cond_7
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setHintText(Ljava/lang/String;)V

    .line 3045
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    .line 3046
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    .line 3047
    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3045
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    .line 3049
    iput v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->wasCountryHintIndex:I

    goto :goto_5

    .line 3051
    :cond_8
    iget v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->wasCountryHintIndex:I

    if-eq v0, v6, :cond_9

    .line 3052
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 3053
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setHintText(Ljava/lang/String;)V

    .line 3054
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    .line 3055
    iput v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->wasCountryHintIndex:I

    :cond_9
    :goto_5
    return-void
.end method

.method private synthetic lambda$fillNumber$27(Ljava/util/List;)V
    .locals 6

    .line 3542
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "firstloginshow"

    const/4 v2, 0x1

    .line 3543
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

    .line 3553
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

    .line 3544
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3545
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3547
    sget v0, Lorg/telegram/messenger/R$raw;->incoming_calls:I

    const/16 v1, 0x2e

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v0, v1, v4, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3548
    sget v0, Lorg/telegram/messenger/R$string;->Continue:I

    const-string v1, "Continue"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3549
    sget v0, Lorg/telegram/messenger/R$string;->AllowFillNumber:I

    const-string v3, "AllowFillNumber"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3550
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {v0, p1, v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/LoginActivity;->access$8602(Lorg/telegram/ui/LoginActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 3551
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v2}, Lorg/telegram/ui/LoginActivity;->access$8502(Lorg/telegram/ui/LoginActivity;Z)Z

    :goto_1
    return-void
.end method

.method private synthetic lambda$loadCountries$15(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 8

    if-nez p1, :cond_c

    .line 2837
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2838
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 2839
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 2841
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_help_countriesList;

    const/4 p1, 0x0

    move v0, p1

    .line 2842
    :goto_0
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_help_countriesList;->countries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2843
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_help_countriesList;->countries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    move v2, p1

    .line 2844
    :goto_1
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->country_codes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 2845
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->country_codes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_help_countryCode;

    if-eqz v3, :cond_2

    .line 2847
    new-instance v4, Lorg/telegram/ui/CountrySelectActivity$Country;

    invoke-direct {v4}, Lorg/telegram/ui/CountrySelectActivity$Country;-><init>()V

    .line 2848
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->name:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    .line 2849
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/ui/CountrySelectActivity$Country;->defaultName:Ljava/lang/String;

    if-nez v5, :cond_0

    if-eqz v6, :cond_0

    .line 2851
    iput-object v6, v4, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    .line 2853
    :cond_0
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_help_countryCode;->country_code:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    .line 2854
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->iso2:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    .line 2856
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2857
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_help_countryCode;->country_code:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_1

    .line 2859
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_help_countryCode;->country_code:Ljava/lang/String;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v7

    .line 2861
    :cond_1
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2862
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_help_countryCode;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 2863
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

    .line 2869
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$3600(Lorg/telegram/ui/LoginActivity;)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_c

    .line 2870
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$9100(Lorg/telegram/ui/LoginActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getClientPhone()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2872
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2873
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_c

    :goto_2
    const/4 v0, 0x1

    if-lt v1, v0, :cond_b

    .line 2875
    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2878
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    if-nez v3, :cond_5

    goto :goto_4

    .line 2881
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v0, :cond_9

    .line 2882
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2883
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

    .line 2886
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 2887
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

    .line 2888
    iget-object v7, v6, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    invoke-static {v7, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v3, v6

    goto :goto_3

    .line 2894
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

    .line 2897
    :cond_9
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/CountrySelectActivity$Country;

    :goto_4
    if-eqz v4, :cond_a

    .line 2902
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

    .line 2907
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    return-void
.end method

.method private synthetic lambda$loadCountries$16(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 2835
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)Z
    .locals 0

    .line 2240
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->tryAuthWithTestBackend()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$new$10(Landroid/view/View;)V
    .locals 3

    .line 2719
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2722
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 2723
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$5300(Lorg/telegram/ui/LoginActivity;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$5302(Lorg/telegram/ui/LoginActivity;Z)Z

    .line 2724
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$5300(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 2725
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$5300(Lorg/telegram/ui/LoginActivity;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2726
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;

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

    .line 2728
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;

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

.method private static synthetic lambda$new$12(Lorg/telegram/ui/CountrySelectActivity$Country;)Ljava/lang/String;
    .locals 0

    .line 2788
    iget-object p0, p0, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$new$13(Lorg/telegram/tgnet/TLObject;Ljava/util/HashMap;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2809
    :cond_0
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_nearestDc;

    .line 2810
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2811
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_nearestDc;->country:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->setCountry(Ljava/util/HashMap;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$14(Ljava/util/HashMap;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 2805
    new-instance p3, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda18;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLObject;Ljava/util/HashMap;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$new$2(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 2260
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x10

    .line 2261
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

    .line 2262
    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2263
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2264
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 2265
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2266
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2267
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2268
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

    .line 2291
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

    .line 2297
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$4800(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 2

    .line 2296
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->selectCountry(Lorg/telegram/ui/CountrySelectActivity$Country;)V

    .line 2297
    new-instance p1, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2298
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 2299
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 2

    .line 2294
    new-instance p1, Lorg/telegram/ui/CountrySelectActivity;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lorg/telegram/ui/CountrySelectActivity;-><init>(ZLjava/util/ArrayList;)V

    .line 2295
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/CountrySelectActivity;->setCountrySelectActivityDelegate(Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;)V

    .line 2301
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 2477
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 2478
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
    .locals 9

    .line 2555
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    new-instance v8, Lorg/telegram/ui/LoginActivity$PhoneView$4;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v0, Lorg/telegram/messenger/R$string;->login_token_help:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$9300(Lorg/telegram/ui/LoginActivity;)I

    move-result v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LoginActivity$PhoneView$4;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-static {p1, v8}, Lorg/telegram/ui/LoginActivity;->access$002(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/Components/QRCodeBottomSheet;)Lorg/telegram/ui/Components/QRCodeBottomSheet;

    .line 2574
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/QRCodeBottomSheet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2575
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity;->access$9500(Lorg/telegram/ui/LoginActivity;Z)V

    return-void
.end method

.method private synthetic lambda$new$9(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_1

    .line 2693
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$6000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 2694
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$6000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$9200(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->callOnClick()Z

    return p2

    :cond_0
    const/4 p1, 0x0

    .line 2697
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->onNextPressed(Ljava/lang/String;)V

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$onNextPressed$17(Ljava/lang/Long;)V
    .locals 3

    .line 3128
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/telegram/ui/ProfileActivity;->newInstanceForDialogId(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method private synthetic lambda$onNextPressed$18(Ljava/lang/String;)V
    .locals 2

    .line 3129
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$onNextPressed$19(Ljava/lang/String;)V
    .locals 0

    .line 3136
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->onNextPressed(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$20(Ljava/lang/String;)V
    .locals 3

    .line 3136
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$onNextPressed$21(ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 3320
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-eq p2, p1, :cond_0

    .line 3321
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/LaunchActivity;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 3323
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$onNextPressed$22(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3459
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget-object p2, Lorg/telegram/messenger/BuildVars;->PLAYSTORE_APP_URL:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$23(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 3465
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    .line 3466
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/LoginActivity;->access$3400(Lorg/telegram/ui/LoginActivity;ZZ)V

    if-nez p1, :cond_1

    .line 3468
    check-cast p2, Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 3469
    invoke-static {p2, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/TLRPC$account_Password;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3470
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    const-string p3, "UpdateAppAlert"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 3473
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3474
    new-instance v1, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {p2}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v3

    invoke-direct {v1, v3}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 3475
    invoke-virtual {p2, v1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3476
    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    const-string v1, "password"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "phoneFormated"

    .line 3477
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3478
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p3, 0x6

    invoke-virtual {p2, p3, v2, p1, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_0

    .line 3480
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p3, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->access$7100(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onNextPressed$24(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 3464
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$25(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    const/4 v0, 0x0

    .line 3436
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    const/4 v1, 0x1

    if-nez p1, :cond_3

    .line 3438
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeSuccess;

    if-eqz p1, :cond_2

    .line 3439
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeSuccess;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->authorization:Lorg/telegram/tgnet/TLRPC$auth_Authorization;

    .line 3440
    instance-of p4, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;

    if-eqz p4, :cond_1

    .line 3441
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;

    .line 3442
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;->terms_of_service:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    if-eqz p1, :cond_0

    .line 3443
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/LoginActivity;->access$8702(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    .line 3445
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v1, p3, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto/16 :goto_1

    .line 3447
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    invoke-static {p2, p1}, Lorg/telegram/ui/LoginActivity;->access$100(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    goto/16 :goto_1

    .line 3450
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;

    invoke-static {p1, p3, p2}, Lorg/telegram/ui/LoginActivity;->access$8800(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    goto/16 :goto_1

    .line 3453
    :cond_3
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p2, :cond_e

    const-string p3, "UPDATE_APP_TO_LOGIN"

    .line 3455
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3456
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3457
    sget p2, Lorg/telegram/messenger/R$string;->UpdateApp:I

    const-string p3, "UpdateApp"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3458
    sget p2, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    const-string p3, "UpdateAppAlert"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Telegram"

    const-string p4, "iMe"

    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3459
    sget p2, Lorg/telegram/messenger/R$string;->Update:I

    const-string p3, "Update"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3460
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto/16 :goto_1

    .line 3462
    :cond_4
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "SESSION_PASSWORD_NEEDED"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 3463
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;-><init>()V

    .line 3464
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$8900(Lorg/telegram/ui/LoginActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda25;

    invoke-direct {p3, p0, p4}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;)V

    const/16 p4, 0xa

    invoke-virtual {p2, p1, p3, p4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_1

    .line 3483
    :cond_5
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_NUMBER_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 3484
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, p4, p5, v0}, Lorg/telegram/ui/LoginActivity;->needShowInvalidAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Z)V

    goto/16 :goto_1

    .line 3485
    :cond_6
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_PASSWORD_FLOOD"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string p3, "FloodWait"

    if-eqz p2, :cond_7

    .line 3486
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p4, Lorg/telegram/messenger/R$string;->FloodWait:I

    invoke-static {p3, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$7100(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3487
    :cond_7
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "PHONE_NUMBER_FLOOD"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 3488
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->PhoneNumberFlood:I

    const-string p4, "PhoneNumberFlood"

    invoke-static {p4, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$7100(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3489
    :cond_8
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "PHONE_NUMBER_BANNED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 3490
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, p4, p5, v1}, Lorg/telegram/ui/LoginActivity;->needShowInvalidAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Z)V

    goto/16 :goto_1

    .line 3491
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

    .line 3493
    :cond_a
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p4, "PHONE_CODE_EXPIRED"

    invoke-virtual {p2, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 3494
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 3495
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 3496
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->CodeExpired:I

    const-string p4, "CodeExpired"

    invoke-static {p4, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$7100(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3497
    :cond_b
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p4, "FLOOD_WAIT"

    invoke-virtual {p2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 3498
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p4, Lorg/telegram/messenger/R$string;->FloodWait:I

    invoke-static {p3, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$7100(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3499
    :cond_c
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 p3, -0x3e8

    if-eq p2, p3, :cond_e

    .line 3500
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$9000(Lorg/telegram/ui/LoginActivity;)I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    new-array p4, v1, [Ljava/lang/Object;

    invoke-static {p5}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->access$2800(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Ljava/lang/String;

    move-result-object p5

    aput-object p5, p4, v0

    invoke-static {p2, p1, p3, p6, p4}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    goto :goto_1

    .line 3492
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

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$7100(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3504
    :cond_e
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$5400(Lorg/telegram/ui/LoginActivity;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 3505
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity;->access$7200(Lorg/telegram/ui/LoginActivity;Z)V

    :cond_f
    return-void
.end method

.method private synthetic lambda$onNextPressed$26(Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    .line 3435
    new-instance v8, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda20;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p6

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onShow$28()V
    .locals 2

    .line 3644
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    if-eqz v0, :cond_3

    .line 3645
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$8500(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3646
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 3647
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 3649
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3650
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3651
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->numberFilled:Z

    if-nez v0, :cond_1

    .line 3652
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 3654
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$4800(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z

    goto :goto_0

    .line 3656
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3657
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$4800(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$tryAuthWithTestBackend$0()V
    .locals 2

    .line 2177
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$9600(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2178
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$7200(Lorg/telegram/ui/LoginActivity;Z)V

    const/4 v0, 0x0

    .line 2179
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    .line 2180
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->tryAuthWithTestBackend()V

    :cond_0
    return-void
.end method

.method private loadCountries()V
    .locals 4

    .line 2832
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_getCountriesList;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_getCountriesList;-><init>()V

    .line 2833
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

    .line 2834
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

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

    .line 3070
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 3071
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const/4 v0, 0x0

    move v1, v0

    .line 3073
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3074
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

    .line 3075
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

    .line 3080
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3081
    iput v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    :cond_2
    return-void
.end method

.method private setCountryButtonText(Ljava/lang/CharSequence;)V
    .locals 3

    .line 3060
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

    .line 3061
    sget-object v1, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3062
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 3064
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3065
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

    .line 3066
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

    .line 2990
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2991
    iget-object v1, p2, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getLanguageFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2993
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2994
    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$6;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$6;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    .line 3002
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2994
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3004
    :cond_0
    iget-object p2, p2, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3005
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

    .line 3006
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryCodeForHint:Ljava/lang/String;

    const/4 p1, -0x1

    .line 3007
    iput p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->wasCountryHintIndex:I

    .line 3008
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->invalidateCountryHint()V

    return-void
.end method

.method private tryAuthWithTestBackend()V
    .locals 6

    .line 2162
    iget v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->testBackendLongTapCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->testBackendLongTapCount:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    .line 2164
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->isTestBackend()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2165
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->switchBackend(Z)V

    .line 2167
    :cond_0
    invoke-static {}, Lcom/iMe/utils/helper/telegram/TelegramTestAuthHelper;->getCountry()Lorg/telegram/ui/CountrySelectActivity$Country;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->selectCountry(Lorg/telegram/ui/CountrySelectActivity$Country;)V

    .line 2168
    invoke-static {}, Lcom/iMe/utils/helper/telegram/TelegramTestAuthHelper;->generatePhoneNumber()Lcom/iMe/utils/helper/telegram/TelegramTestPhoneNumber;

    move-result-object v0

    .line 2169
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Lcom/iMe/utils/helper/telegram/TelegramTestPhoneNumber;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2170
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v4}, Lorg/telegram/ui/LoginActivity;->access$1800(Lorg/telegram/ui/LoginActivity;)[Lorg/telegram/ui/Components/SlideView;

    move-result-object v4

    aget-object v4, v4, v3

    instance-of v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    if-eqz v4, :cond_1

    .line 2171
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v4}, Lorg/telegram/ui/LoginActivity;->access$1800(Lorg/telegram/ui/LoginActivity;)[Lorg/telegram/ui/Components/SlideView;

    move-result-object v4

    aget-object v3, v4, v3

    check-cast v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-virtual {v0}, Lcom/iMe/utils/helper/telegram/TelegramTestPhoneNumber;->getConfirmXCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setGeneratedCode(Ljava/lang/String;)V

    .line 2173
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->confirmedNumber:Z

    .line 2174
    invoke-virtual {p0, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->onNextPressed(Ljava/lang/String;)V

    .line 2175
    iget v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->testBackendLongTapCount:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_3

    .line 2176
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    .line 2182
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 2176
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2185
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->info:I

    const-string v2, "\u00af\\_(\u30c4)_/\u00af"

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 3695
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    .line 3696
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public fillNumber()V
    .locals 11

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 3514
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$3500(Lorg/telegram/ui/LoginActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3518
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->numberFilled:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$3600(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_7

    .line 3522
    :cond_1
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 3523
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3526
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v2, v3, :cond_a

    .line 3527
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

    .line 3529
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

    .line 3531
    :goto_2
    iget-object v9, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v9}, Lorg/telegram/ui/LoginActivity;->access$7900(Lorg/telegram/ui/LoginActivity;)Z

    move-result v9

    if-eqz v9, :cond_b

    if-eqz v3, :cond_5

    if-nez v8, :cond_b

    .line 3532
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$8000(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-nez v3, :cond_6

    .line 3534
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$8000(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-nez v8, :cond_7

    if-lt v2, v7, :cond_7

    .line 3537
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$8000(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3539
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$8000(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3540
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$8000(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3541
    new-instance v1, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/util/List;)V

    .line 3556
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$8100(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3557
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$8202(Lorg/telegram/ui/LoginActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_3

    .line 3559
    :cond_8
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_9
    :goto_3
    return-void

    :cond_a
    move v3, v5

    move v8, v3

    .line 3565
    :cond_b
    iput-boolean v5, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->numberFilled:Z

    .line 3566
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$8300(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz v3, :cond_15

    if-eqz v8, :cond_15

    .line 3567
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setAlpha(F)V

    .line 3568
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setAlpha(F)V

    .line 3570
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3573
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 3574
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-le v1, v2, :cond_12

    :goto_4
    if-lt v2, v5, :cond_11

    .line 3576
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3579
    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_c

    move-object v6, v3

    goto :goto_5

    .line 3582
    :cond_c
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v5, :cond_e

    .line 3583
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v7

    .line 3584
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "phone_code_last_matched_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3586
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/CountrySelectActivity$Country;

    if-eqz v7, :cond_f

    .line 3588
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

    .line 3589
    iget-object v10, v9, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    invoke-static {v10, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    move-object v6, v9

    goto :goto_5

    .line 3596
    :cond_e
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/CountrySelectActivity$Country;

    :cond_f
    :goto_5
    if-eqz v6, :cond_10

    .line 3601
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 3602
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

    .line 3607
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 3608
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    if-eqz v3, :cond_13

    .line 3612
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3613
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3614
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 3618
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_14

    .line 3619
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    .line 3620
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

    .line 3621
    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v2, v5

    .line 3620
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3622
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 3624
    iput-boolean v5, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->confirmedNumber:Z

    goto :goto_7

    .line 3626
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAlpha(F)V

    .line 3627
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAlpha(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 3632
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_15
    :goto_7
    return-void
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 2

    .line 3666
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

    .line 2966
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2967
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onCancelPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 3088
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 2972
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2973
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

    .line 3093
    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 3094
    iput-boolean p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 3097
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 3098
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 3099
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3100
    iput-boolean p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    return-void
.end method

.method public onNextPressed(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const-string v1, "ephone"

    .line 3110
    iget-object v2, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_32

    iget-boolean v2, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    if-nez v2, :cond_32

    iget-object v2, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->access$5400(Lorg/telegram/ui/LoginActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1b

    .line 3114
    :cond_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 3115
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_1

    .line 3116
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

    .line 3118
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

    .line 3122
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

    .line 3124
    iget-object v4, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v4}, Lorg/telegram/ui/LoginActivity;->access$3500(Lorg/telegram/ui/LoginActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3125
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$5600(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    .line 3127
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

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda10;

    invoke-direct {v3, v7}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    new-instance v4, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda11;

    invoke-direct {v4, v7}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    .line 3125
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/ContactsController;->searchAccountByTel(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void

    .line 3134
    :cond_3
    iget-boolean v4, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->confirmedNumber:Z

    const/16 v9, 0x14

    if-nez v4, :cond_5

    .line 3135
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v2, v1, :cond_4

    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$600(Lorg/telegram/ui/LoginActivity;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$5700(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-le v1, v2, :cond_4

    .line 3136
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    new-instance v2, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda16;

    invoke-direct {v2, v7, v0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/LoginActivity;->access$5802(Lorg/telegram/ui/LoginActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3137
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$5900(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void

    .line 3141
    :cond_4
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    new-instance v2, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    iget-object v3, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity;->access$6100(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v3, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity;->access$6200(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/view/ViewGroup;

    iget-object v3, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity;->access$500(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object v13

    new-instance v15, Lorg/telegram/ui/LoginActivity$PhoneView$7;

    invoke-direct {v15, v7, v0}, Lorg/telegram/ui/LoginActivity$PhoneView$7;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;)V

    const/16 v16, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;Lorg/telegram/ui/LoginActivity$1;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/LoginActivity;->access$6002(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    .line 3228
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$6000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$7000(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    return-void

    .line 3230
    :cond_5
    iput-boolean v5, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->confirmedNumber:Z

    .line 3232
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$6000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3233
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$6000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$2200(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    .line 3236
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSimAvailable()Z

    move-result v0

    .line 3242
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v4, v10, :cond_18

    if-eqz v0, :cond_18

    .line 3243
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

    .line 3244
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

    .line 3245
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

    .line 3247
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

    .line 3249
    :goto_5
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$6400(Lorg/telegram/ui/LoginActivity;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3250
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$6500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-nez v10, :cond_d

    .line 3252
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$6500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    if-nez v14, :cond_e

    .line 3255
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$6500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    if-nez v9, :cond_f

    .line 3258
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$6500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    if-nez v12, :cond_10

    const/16 v1, 0x1a

    if-lt v4, v1, :cond_10

    .line 3261
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$6500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3263
    :cond_10
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$6500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 3264
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "firstlogin"

    const/4 v2, 0x1

    .line 3265
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

    .line 3286
    :cond_11
    :try_start_0
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$6500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

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

    .line 3288
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 3266
    :cond_12
    :goto_6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3267
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3269
    sget v1, Lorg/telegram/messenger/R$string;->Continue:I

    const-string v2, "Continue"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    if-nez v10, :cond_14

    if-eqz v14, :cond_13

    if-nez v9, :cond_14

    .line 3272
    :cond_13
    sget v1, Lorg/telegram/messenger/R$string;->AllowReadCallAndLog:I

    const-string v2, "AllowReadCallAndLog"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3273
    sget v1, Lorg/telegram/messenger/R$raw;->calls_log:I

    goto :goto_8

    :cond_14
    if-eqz v14, :cond_16

    if-nez v9, :cond_15

    goto :goto_7

    .line 3278
    :cond_15
    sget v1, Lorg/telegram/messenger/R$string;->AllowReadCall:I

    const-string v2, "AllowReadCall"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3279
    sget v1, Lorg/telegram/messenger/R$raw;->incoming_calls:I

    goto :goto_8

    .line 3275
    :cond_16
    :goto_7
    sget v1, Lorg/telegram/messenger/R$string;->AllowReadCallLog:I

    const-string v2, "AllowReadCallLog"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3276
    sget v1, Lorg/telegram/messenger/R$raw;->calls_log:I

    :goto_8
    const/16 v2, 0x2e

    .line 3281
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3282
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/telegram/ui/LoginActivity;->access$6602(Lorg/telegram/ui/LoginActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 3283
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

    .line 3296
    :goto_a
    iget v4, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    if-ne v4, v1, :cond_19

    .line 3297
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v1, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->ChooseCountry:I

    const-string v3, "ChooseCountry"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$7100(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3298
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$7200(Lorg/telegram/ui/LoginActivity;Z)V

    return-void

    :cond_19
    const/4 v1, 0x2

    if-ne v4, v1, :cond_1a

    .line 3300
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v4, :cond_1a

    .line 3301
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v1, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->WrongCountry:I

    const-string v3, "WrongCountry"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$7100(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3302
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$7200(Lorg/telegram/ui/LoginActivity;Z)V

    return-void

    .line 3305
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

    .line 3306
    iget-object v5, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v5}, Lorg/telegram/ui/LoginActivity;->access$3600(Lorg/telegram/ui/LoginActivity;)I

    move-result v5

    if-nez v5, :cond_1d

    .line 3307
    iget-object v5, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/ui/LaunchActivity;

    if-eqz v5, :cond_1d

    const/4 v5, 0x0

    :goto_b
    const/4 v11, 0x5

    if-ge v5, v11, :cond_1d

    .line 3309
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v11

    .line 3310
    invoke-virtual {v11}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v12

    if-nez v12, :cond_1b

    goto :goto_c

    .line 3313
    :cond_1b
    invoke-virtual {v11}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 3314
    invoke-static {v4, v11}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/tgnet/ConnectionsManager;->isTestBackend()Z

    move-result v11

    iget-object v12, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->access$7300(Lorg/telegram/ui/LoginActivity;)Z

    move-result v12

    if-ne v11, v12, :cond_1c

    .line 3316
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3317
    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3318
    sget v1, Lorg/telegram/messenger/R$string;->AccountAlreadyLoggedIn:I

    const-string v2, "AccountAlreadyLoggedIn"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3319
    sget v1, Lorg/telegram/messenger/R$string;->AccountSwitch:I

    const-string v2, "AccountSwitch"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda1;

    invoke-direct {v2, v7, v5}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;I)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3325
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v2, "OK"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3326
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 3327
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$7200(Lorg/telegram/ui/LoginActivity;Z)V

    return-void

    :cond_1c
    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 3334
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

    .line 3335
    :goto_d
    iput-boolean v9, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_flashcall:Z

    if-eqz v0, :cond_1f

    if-eqz v10, :cond_1f

    const/4 v0, 0x1

    goto :goto_e

    :cond_1f
    const/4 v0, 0x0

    .line 3336
    :goto_e
    iput-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_missed_call:Z

    .line 3337
    sget-object v0, Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;->INSTANCE:Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;->hasServices()Z

    move-result v0

    iput-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_firebase:Z

    iput-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_app_hash:Z

    .line 3338
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$7400(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lorg/telegram/messenger/BuildVars;->SAFETYNET_KEY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    const/4 v9, 0x0

    .line 3339
    iput-boolean v9, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_firebase:Z

    .line 3342
    :cond_21
    invoke-static {}, Lorg/telegram/messenger/AuthTokensHelper;->getSavedLogInTokens()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_26

    const/4 v9, 0x0

    .line 3344
    :goto_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_26

    .line 3345
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->future_auth_token:[B

    if-nez v10, :cond_22

    goto :goto_10

    .line 3348
    :cond_22
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    if-nez v10, :cond_23

    .line 3349
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    .line 3351
    :cond_23
    sget-boolean v10, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v10, :cond_24

    .line 3352
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

    .line 3354
    :cond_24
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->future_auth_token:[B

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3355
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

    .line 3360
    :cond_26
    :goto_11
    invoke-static {}, Lorg/telegram/messenger/AuthTokensHelper;->getSavedLogOutTokens()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2a

    const/4 v9, 0x0

    .line 3362
    :goto_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_29

    .line 3363
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    if-nez v10, :cond_27

    .line 3364
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    .line 3366
    :cond_27
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;->future_auth_token:[B

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3367
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v11, 0x14

    if-lt v10, v11, :cond_28

    goto :goto_13

    :cond_28
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    .line 3371
    :cond_29
    :goto_13
    invoke-static {v0}, Lorg/telegram/messenger/AuthTokensHelper;->saveLogOutTokens(Ljava/util/ArrayList;)V

    .line 3373
    :cond_2a
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->logout_tokens:Ljava/util/ArrayList;

    if-eqz v0, :cond_2b

    .line 3374
    iget v0, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->flags:I

    .line 3376
    :cond_2b
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v9, "mainconfig"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3377
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "sms_hash_code"

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3378
    iget-boolean v9, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_app_hash:Z

    const-string v10, "sms_hash"

    if-eqz v9, :cond_2c

    .line 3379
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v9, Lorg/telegram/messenger/BuildVars;->SMS_HASH:Ljava/lang/String;

    invoke-interface {v0, v10, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_14

    .line 3381
    :cond_2c
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3383
    :goto_14
    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_flashcall:Z

    if-eqz v0, :cond_2f

    .line 3385
    :try_start_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 3386
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 3387
    invoke-static {v4, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->current_number:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v0, :cond_2f

    const/4 v2, 0x0

    .line 3389
    :try_start_2
    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_flashcall:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_16

    .line 3392
    :cond_2d
    :try_start_3
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getActivatedAccountsCount()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-lez v0, :cond_2e

    const/4 v2, 0x0

    .line 3393
    :try_start_4
    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_flashcall:Z

    goto :goto_16

    :cond_2e
    const/4 v2, 0x0

    .line 3395
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

    .line 3399
    :goto_15
    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_flashcall:Z

    .line 3400
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3405
    :cond_2f
    :goto_16
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$3600(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    if-ne v0, v1, :cond_30

    .line 3406
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;-><init>()V

    .line 3407
    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;->phone_number:Ljava/lang/String;

    .line 3408
    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;->settings:Lorg/telegram/tgnet/TLRPC$TL_codeSettings;

    goto :goto_17

    .line 3411
    :cond_30
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$7500(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cleanup(Z)V

    .line 3413
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;-><init>()V

    .line 3414
    sget-object v1, Lorg/telegram/messenger/BuildVars;->APP_HASH:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->api_hash:Ljava/lang/String;

    .line 3415
    sget v1, Lorg/telegram/messenger/BuildVars;->APP_ID:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->api_id:I

    .line 3416
    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->phone_number:Ljava/lang/String;

    .line 3417
    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->settings:Lorg/telegram/tgnet/TLRPC$TL_codeSettings;

    :goto_17
    move-object v9, v0

    .line 3421
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3422
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

    .line 3424
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

    .line 3426
    :goto_18
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    const-string v0, "phoneFormated"

    .line 3429
    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3430
    iput-boolean v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    .line 3431
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneInputData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneInputData;-><init>(Lorg/telegram/ui/LoginActivity$1;)V

    .line 3432
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

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->access$2802(Lorg/telegram/ui/LoginActivity$PhoneInputData;Ljava/lang/String;)Ljava/lang/String;

    .line 3433
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->currentCountry:Lorg/telegram/ui/CountrySelectActivity$Country;

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->access$2702(Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/ui/CountrySelectActivity$Country;)Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 3434
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    iget-object v2, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->access$2602(Lorg/telegram/ui/LoginActivity$PhoneInputData;Ljava/util/List;)Ljava/util/List;

    .line 3435
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$7700(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v10, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda24;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v5

    move-object v5, v0

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/os/Bundle;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Lorg/telegram/tgnet/TLObject;)V

    const/16 v0, 0x1b

    invoke-virtual {v8, v9, v10, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    .line 3508
    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/LoginActivity;->access$7800(Lorg/telegram/ui/LoginActivity;I)V

    return-void

    .line 3119
    :cond_31
    :goto_1a
    iget-object v0, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v1, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$5500(Lorg/telegram/ui/LoginActivity;Landroid/view/View;Z)V

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

    .line 3638
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 3639
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->fillNumber()V

    .line 3640
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->syncContactsBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v0, :cond_0

    .line 3641
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$5300(Lorg/telegram/ui/LoginActivity;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 3643
    :cond_0
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V

    .line 3661
    invoke-static {}, Lorg/telegram/ui/LoginActivity;->access$8400()I

    move-result v1

    int-to-long v1, v1

    .line 3643
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "phoneview_code"

    .line 3683
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3685
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "phoneview_phone"

    .line 3687
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3689
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .locals 2

    .line 3671
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3672
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "phoneview_code"

    .line 3673
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3675
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3676
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "phoneview_phone"

    .line 3677
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public selectCountry(Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 3

    const/4 v0, 0x1

    .line 2977
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 2978
    iget-object v0, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    .line 2979
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2980
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->setCountryHint(Ljava/lang/String;Lorg/telegram/ui/CountrySelectActivity$Country;)V

    .line 2981
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->currentCountry:Lorg/telegram/ui/CountrySelectActivity$Country;

    const/4 v0, 0x0

    .line 2982
    iput v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    .line 2983
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 2985
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

    .line 2920
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->searchByTelWarningTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2921
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2924
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->titleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2925
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->subtitleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    .line 2926
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2927
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2928
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2929
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2932
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->chevronRight:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2933
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->chevronRight:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2935
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->plusTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2937
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setTextColor(I)V

    .line 2938
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 2940
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeDividerView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2942
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setTextColor(I)V

    .line 2943
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 2944
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 2946
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->syncContactsBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v0, :cond_2

    .line 2947
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareUnchecked:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareBackground:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareCheck:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setSquareCheckBoxColor(III)V

    .line 2948
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->syncContactsBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->updateTextColor()V

    .line 2950
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->testBackendCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v0, :cond_3

    .line 2951
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareUnchecked:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareBackground:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareCheck:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setSquareCheckBoxColor(III)V

    .line 2952
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->testBackendCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->updateTextColor()V

    .line 2955
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;->updateColor()V

    .line 2956
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;->updateColor()V

    return-void
.end method
