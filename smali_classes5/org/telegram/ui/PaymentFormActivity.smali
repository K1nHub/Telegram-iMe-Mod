.class public Lorg/telegram/ui/PaymentFormActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PaymentFormActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;,
        Lorg/telegram/ui/PaymentFormActivity$LinkSpan;,
        Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;,
        Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;,
        Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;,
        Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;
    }
.end annotation


# static fields
.field private static final BLACKLISTED_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WEBVIEW_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private botUser:Lorg/telegram/tgnet/TLRPC$User;

.field private bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

.field private canceled:Z

.field private cardName:Ljava/lang/String;

.field private checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

.field private codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

.field private codesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countriesArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countriesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private country:Lorg/telegram/ui/CountrySelectActivity$Country;

.field private countryName:Ljava/lang/String;

.field private currentBotName:Ljava/lang/String;

.field private currentItemName:Ljava/lang/String;

.field private currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

.field private currentStep:I

.field private delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

.field private detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

.field private dividers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private doneItemAnimation:Landroid/animation/AnimatorSet;

.field private donePressed:Z

.field private emailCodeLength:I

.field private googlePayButton:Landroid/widget/FrameLayout;

.field private googlePayContainer:Landroid/widget/FrameLayout;

.field private googlePayCountryCode:Ljava/lang/String;

.field private googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

.field private googlePayParameters:Lorg/json/JSONObject;

.field private googlePayPublicKey:Ljava/lang/String;

.field private headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

.field private ignoreOnCardChange:Z

.field private ignoreOnPhoneChange:Z

.field private ignoreOnTextChange:Z

.field private initGooglePay:Z

.field private inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private invoicePremiumGiftCode:Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;

.field private invoiceSlug:Ljava/lang/String;

.field private invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

.field private isCheckoutPreview:Z

.field private isWebView:Z

.field private linearLayout2:Landroid/widget/LinearLayout;

.field private loadingPasswordInfo:Z

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private needPayAfterTransition:Z

.field private need_card_country:Z

.field private need_card_name:Z

.field private need_card_postcode:Z

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private passwordFragment:Lorg/telegram/ui/PaymentFormActivity;

.field private passwordOk:Z

.field private payTextView:Landroid/widget/TextView;

.field private paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

.field private paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

.field private paymentFormMethod:Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;

.field private paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

.field private paymentJson:Ljava/lang/String;

.field private paymentReceipt:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;

.field private paymentStatusSent:Z

.field private paymentsClient:Lcom/google/android/gms/wallet/PaymentsClient;

.field private phoneFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private prices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;",
            ">;"
        }
    .end annotation
.end field

.field private progressView:Lorg/telegram/ui/Components/ContextProgressView;

.field private progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

.field private providerApiKey:Ljava/lang/String;

.field private radioCells:[Lorg/telegram/ui/Cells/RadioCell;

.field private recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

.field private recurrentAccepted:Z

.field private requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private saveCardInfo:Z

.field private saveShippingInfo:Z

.field private savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

.field private scrollView:Landroid/widget/ScrollView;

.field private sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

.field private shiftDp:F

.field private shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

.field private shortPollRunnable:Ljava/lang/Runnable;

.field private shouldNavigateBack:Z

.field private swipeBackEnabled:Z

.field private textView:Landroid/widget/TextView;

.field private tipAmount:Ljava/lang/Long;

.field private tipLayout:Landroid/widget/LinearLayout;

.field private totalCell:Lorg/telegram/ui/Cells/TextPriceCell;

.field private totalPrice:[Ljava/lang/String;

.field private validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

.field private waitingForEmail:Z

.field private webView:Landroid/webkit/WebView;

.field private webViewUrl:Ljava/lang/String;

.field private webviewLoading:Z


# direct methods
.method public static synthetic $r8$lambda$20kIl2YO7mLVnhYjfjMILQmfRgo(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$23(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2NYYH2QmePUolMM7gskHeTj3HNg(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createGooglePayButton$32(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2b_n3b-Umbl0u59XdriRfODM0kE(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendForm$53(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5f30Pb-4wJfnrPLgJQ2V4qwgnIg(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendData$57(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$67XRe7sEYg3GjVyz48gcUG7DGqc(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendSavedForm$50(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6juoIX1H7H3CozBbO8zADrggN2E(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendData$58(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6s7gy2QH4uz4t7Ozw77kfstjbSU(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$account_Password;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$checkPassword$64(Lorg/telegram/tgnet/TLRPC$account_Password;[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$7fuEeUQymgV1HyD4Nked01qsi_U(Lorg/telegram/ui/PaymentFormActivity;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$initGooglePay$37(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7kN6JDOMN0kQ20NaKJmop43vzic(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$21(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8oiBrYVovzVK-mug2vbZpERQ3mo(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9FnUfLUuHmlGk81rZ3iNcRSD4I0(Lorg/telegram/ui/PaymentFormActivity;ILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$onActivityResultFragment$39(ILandroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AXtGCBbxGlfQpt89sEWGCzT3gL8(Lorg/telegram/ui/PaymentFormActivity;ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendSavePassword$47(ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B_ljr19GG_0cD5jM8BMNuUJA8YU(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendData$59(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EzcFUI36BgDgziFB3W_K8hcNN9Q(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$loadPasswordInfo$34(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GhNFB4R8cwePWHj7T9bUqX2ANSQ(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->lambda$loadPasswordInfo$33()V

    return-void
.end method

.method public static synthetic $r8$lambda$HI3G1KBPT_7GL-quBKTwMP2YByY(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$0(Lorg/telegram/ui/CountrySelectActivity$Country;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I35yD0FEyJxAoFLJKWEqgydw7pU(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$24(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IRtOp1ov7qa0yGKTPGuIwGihMuA(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendSavePassword$43(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$IfUWsdY6A3YdC7z4Rkp3xdEZ1P8(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JHDdt2gTzE1ZxcSgJJdzPaBVM3A(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendSavedForm$51(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JZT1OJVcMQD5ap8w_Cf7gTekbFY(Lorg/telegram/ui/PaymentFormActivity;ZLjava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendSavePassword$48(ZLjava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JxYbtIbKboLSs-HzfXjvDvmaLpA(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$27(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KiM4zvOFTJ2j8y_nk5CZ0yarWQ4(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    return-void
.end method

.method public static synthetic $r8$lambda$N1QyHlXesYiafcm1sHqRJiwBtGg(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/Runnable;Ljava/util/List;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/PaymentFormActivity;->lambda$showChoosePaymentMethod$31(Ljava/lang/Runnable;Ljava/util/List;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Olw4mziI4Y7UZ6FQRVf9ETMmZig(Lorg/telegram/ui/PaymentFormActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PexWzZmxWLN1J6v8efPEtLRkUHI(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q3CJyMaiEn_XcNLo_9TOqg5omGs(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$22(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qe9lPyhwhxZe8souv-blWZmAnho(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendData$60(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TRE2OsVpSnUxqbD-RAp5tffzVyM(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$19(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UOoKIkzkLhnzz156prQysEuP_KE(Lorg/telegram/ui/PaymentFormActivity;Landroid/widget/TextView;JLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$15(Landroid/widget/TextView;JLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UYszJifjCcn9zdx4lMAIxBxaeWU(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PaymentFormActivity;->lambda$checkPassword$65(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UfjDmciifvZuMnB3OesGxGqTc1M(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$checkPassword$62(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VLYtB2G85ebWkqf26i88M_wSyRU(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WFPXHFXUlkrMy0I7Ygj0k7B4m6A(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendForm$54(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XzomBkzVnAnjaV6SN-Js2LQ2of8(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y-OJb7A2GFUFSeWFYMPWvmZBsNo(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendSavePassword$45(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YH3cwzFl0XTVaM256A4WgSeE6nc(Lorg/telegram/ui/PaymentFormActivity;[Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendData$56([Lorg/telegram/tgnet/TLRPC$Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YMeFnG1zi0SfhsCCk86PBQIPZKI(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$10(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YW2XXxumOfappZunXL-L-j3ndTg(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$26(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YchlV1rSTYOrRwMOQuky52mFri8(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YeBdor95kzFbFuwJYeAeatuQHmA(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$28(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z1gfKo-FVhYV4t5pgcSUNaR3lSk(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendSavePassword$42(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_0tQHE-Z3NW4U6BNgdpehIL3dEo(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PaymentFormActivity;->lambda$checkPassword$66(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aXAUqIs8LZgIjzhMbkZqaWXHupQ(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bJHWj5XWO49_bvTcvyTQyZ9HIbw(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$20(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cvL2PmrtAz-lhXkk9DISaHjZOls(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dV2SPLRFx1BZeJbFlVb9XLiw1Qs(Lorg/telegram/ui/PaymentFormActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$25(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dvwdaAscCB8zpFt6AGfoCf517F0(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$checkPassword$63(Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e9RqJBJ1jQ4PDryfM6w6pSv02Wk(Lorg/telegram/ui/PaymentFormActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$11(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ek6c9E6r0Z2Hj7Tk0vNkTVSTJhs(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendSavePassword$46(Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f60AF-8P3_VjZtDm1SP9cKTzpiU(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendData$61(Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fOqX-GDh_rw9O-6g_C0RGmBdGw8(Lorg/telegram/ui/PaymentFormActivity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendSavePassword$44(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hNJVkBKmsIz6vuyMUGUEJB8nug4(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendForm$55(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jlq-JGxkzSvcIro8_7eKK1r8SCk(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendSavedForm$49(Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k96SbtHeT1NY2YcOTBRVbbT8l9I(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->lambda$goToNextStep$40()V

    return-void
.end method

.method public static synthetic $r8$lambda$nZ4_szZB3J8cd3WhiD7iwhnvYsk(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$14(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$oZ6CYMVqDLBoU6VIAo-Oluto9aE(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->lambda$onTransitionAnimationEnd$38()V

    return-void
.end method

.method public static synthetic $r8$lambda$pzIaHQiQj48E5KJaVc4pmkvewy8(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$29(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qZVXFXRtNbPKK6qiA177i381jgA(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendForm$52(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ru3YlCgxNhSntRWqEFwIVA2bjZE(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$loadPasswordInfo$35(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tYBCHRD5qJE9gLUKdrPoOZY19ls(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tytytvleKh1RdTRBq5ka0TZHf_Y(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$sendSavePassword$41(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ufBXhrNbvJlVLqcHkReQdB857HQ(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$6(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wMLn9Vf74ID51HAWsvp2D8aCMWE(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->lambda$showPayAlert$36(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wvzFRt8frphR91SsVkzCrJ5Me10(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$5(Lorg/telegram/ui/CountrySelectActivity$Country;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xR8Gbm-NkgnmgJUOUHnvYiFZMuY(Lorg/telegram/ui/PaymentFormActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$7(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xX7gPqWdjlYfKTgW27OpQdgiH2c(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zlR53o995lMytneShUvf0RPgwvo(Lorg/telegram/ui/PaymentFormActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;->lambda$createView$30(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http"

    const-string v1, "https"

    .line 159
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/PaymentFormActivity;->WEBVIEW_PROTOCOLS:Ljava/util/List;

    const-string v0, "tg"

    .line 163
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/PaymentFormActivity;->BLACKLISTED_PROTOCOLS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    move-object v0, p0

    .line 441
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    .line 205
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    .line 206
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    .line 207
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 223
    iput-boolean v1, v0, Lorg/telegram/ui/PaymentFormActivity;->swipeBackEnabled:Z

    const/4 v1, 0x3

    new-array v2, v1, [Lorg/telegram/ui/Cells/HeaderCell;

    .line 226
    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    .line 227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    new-array v2, v1, [Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 228
    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-array v1, v1, [Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 230
    iput-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 231
    iput-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v1, 0x7

    new-array v1, v1, [Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 245
    iput-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/high16 v1, -0x3f700000    # -4.5f

    .line 247
    iput v1, v0, Lorg/telegram/ui/PaymentFormActivity;->shiftDp:F

    const/4 v1, 0x6

    .line 251
    iput v1, v0, Lorg/telegram/ui/PaymentFormActivity;->emailCodeLength:I

    .line 442
    invoke-direct/range {p0 .. p14}, Lorg/telegram/ui/PaymentFormActivity;->init(Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 424
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 16

    move-object/from16 v15, p0

    .line 436
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v15, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v15, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v15, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 223
    iput-boolean v0, v15, Lorg/telegram/ui/PaymentFormActivity;->swipeBackEnabled:Z

    const/4 v1, 0x3

    new-array v2, v1, [Lorg/telegram/ui/Cells/HeaderCell;

    .line 226
    iput-object v2, v15, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    .line 227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v15, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    new-array v2, v1, [Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 228
    iput-object v2, v15, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-array v1, v1, [Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 230
    iput-object v1, v15, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 231
    iput-object v1, v15, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v1, 0x7

    new-array v1, v1, [Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 245
    iput-object v1, v15, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/high16 v1, -0x3f700000    # -4.5f

    .line 247
    iput v1, v15, Lorg/telegram/ui/PaymentFormActivity;->shiftDp:F

    const/4 v1, 0x6

    .line 251
    iput v1, v15, Lorg/telegram/ui/PaymentFormActivity;->emailCodeLength:I

    .line 437
    iput-boolean v0, v15, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    const/4 v1, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v14, p4

    .line 438
    invoke-direct/range {v0 .. v14}, Lorg/telegram/ui/PaymentFormActivity;->init(Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 433
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 15

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v14, p3

    .line 428
    invoke-direct/range {v0 .. v14}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v0, 0x1

    move-object v1, p0

    .line 429
    iput-boolean v0, v1, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;)V
    .locals 4

    .line 387
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 223
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->swipeBackEnabled:Z

    const/4 v0, 0x3

    new-array v1, v0, [Lorg/telegram/ui/Cells/HeaderCell;

    .line 226
    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    new-array v1, v0, [Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 228
    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-array v0, v0, [Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 230
    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 231
    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 245
    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/high16 v0, -0x3f700000    # -4.5f

    .line 247
    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity;->shiftDp:F

    const/4 v0, 0x6

    .line 251
    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity;->emailCodeLength:I

    const/4 v0, 0x5

    .line 388
    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    .line 389
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    .line 390
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentReceipt:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;

    .line 391
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->bot_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->bot_id:J

    .line 392
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    .line 393
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->provider_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->provider_id:J

    .line 394
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->users:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    .line 395
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->shipping:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    .line 396
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->tip_amount:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 397
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    .line 399
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->bot_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 403
    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    .line 405
    :goto_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->title:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentItemName:Ljava/lang/String;

    .line 406
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v0, :cond_3

    .line 407
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_2

    .line 410
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;-><init>()V

    .line 411
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->bot_id:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 412
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    goto :goto_1

    .line 414
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;-><init>()V

    .line 415
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;->slug:Ljava/lang/String;

    .line 416
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    .line 418
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    .line 420
    :cond_3
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->credentials_title:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 158
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 158
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 158
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->sendCardData()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->checkPassword()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PaymentFormActivity;Z)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->sendSavePassword(Z)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 158
    iget-boolean p0, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnTextChange:Z

    return p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .locals 0

    .line 158
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnTextChange:Z

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PaymentFormActivity;)Ljava/util/HashMap;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PaymentFormActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PaymentFormActivity;)Ljava/util/HashMap;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 158
    iget-boolean p0, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnPhoneChange:Z

    return p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .locals 0

    .line 158
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnPhoneChange:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PaymentFormActivity;)Landroid/view/View;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .locals 0

    .line 158
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->shouldNavigateBack:Z

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->webViewUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .locals 0

    .line 158
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->webviewLoading:Z

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PaymentFormActivity;ZZ)V
    .locals 0

    .line 158
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 158
    iget-boolean p0, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnCardChange:Z

    return p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .locals 0

    .line 158
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnCardChange:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/PaymentFormActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/CountrySelectActivity$Country;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->country:Lorg/telegram/ui/CountrySelectActivity$Country;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 158
    iget-boolean p0, p0, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$account_Password;)Lorg/telegram/tgnet/TLRPC$account_Password;
    .locals 0

    .line 158
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/Long;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 158
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateTotalPrice()V

    return-void
.end method

.method static synthetic access$3400()Ljava/util/List;
    .locals 1

    .line 158
    sget-object v0, Lorg/telegram/ui/PaymentFormActivity;->BLACKLISTED_PROTOCOLS:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3500()Ljava/util/List;
    .locals 1

    .line 158
    sget-object v0, Lorg/telegram/ui/PaymentFormActivity;->WEBVIEW_PROTOCOLS:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/PaymentFormActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/PaymentFormActivity;->emailCodeLength:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 158
    iget-boolean p0, p0, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 158
    iget-boolean p0, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    return p0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/PaymentFormActivity;
    .locals 0

    .line 158
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->passwordFragment:Lorg/telegram/ui/PaymentFormActivity;

    return-object p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 158
    iget-boolean p0, p0, Lorg/telegram/ui/PaymentFormActivity;->canceled:Z

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->providerApiKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4300(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-static {p0}, Lorg/telegram/ui/PaymentFormActivity;->getResponseBody(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/PaymentFormActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$4402(Lorg/telegram/ui/PaymentFormActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 158
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$4500(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/Components/ContextProgressView;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/Components/ContextProgressView;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    return-object p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/PaymentFormActivity;)Landroid/widget/TextView;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayPublicKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PaymentFormActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/PaymentFormActivity;)Lorg/json/JSONObject;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayParameters:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$5102(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;)Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;
    .locals 0

    .line 158
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    return-object p1
.end method

.method static synthetic access$5202(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .locals 0

    .line 158
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    return p1
.end method

.method static synthetic access$5302(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;)Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;
    .locals 0

    .line 158
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    return-object p1
.end method

.method static synthetic access$5400(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    return-object p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    return-object p0
.end method

.method static synthetic access$5502(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;)Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;
    .locals 0

    .line 158
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    return-object p1
.end method

.method static synthetic access$5600(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->setAddressFields(Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/PaymentFormActivity;Z)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->sendForm()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/RadioCell;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;)Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
    .locals 0

    .line 158
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    return-object p1
.end method

.method private checkPassword()V
    .locals 5

    .line 4163
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v0, :cond_0

    .line 4164
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->valid_until:I

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    add-int/lit8 v1, v1, 0x3c

    if-ge v0, v1, :cond_0

    .line 4165
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 4166
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 4169
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v0, :cond_1

    .line 4170
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->sendData()V

    return-void

    .line 4173
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_2

    .line 4175
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v1

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/widget/EditText;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4177
    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v1

    const/high16 v1, 0x40200000    # 2.5f

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    .line 4180
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4181
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 4182
    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 4183
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;-><init>()V

    .line 4184
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda58;

    invoke-direct {v4, p0, v0, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda58;-><init>(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;)V

    invoke-virtual {v3, v1, v4, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private createGooglePayButton(Landroid/content/Context;)V
    .locals 6

    .line 2770
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    .line 2771
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2772
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2774
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    .line 2775
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2776
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2777
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/messenger/R$drawable;->googlepay_button_no_shadow_background:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 2778
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayPublicKey:Ljava/lang/String;

    const/4 v2, 0x2

    if-nez v0, :cond_0

    .line 2779
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    const/16 v3, 0xa

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0

    .line 2781
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 2783
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    const/16 v3, 0x30

    const/4 v4, -0x1

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2784
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2849
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 2850
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    const/16 v2, 0x10

    .line 2851
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2852
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2853
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDuplicateParentStateEnabled(Z)V

    .line 2854
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2856
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2857
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2858
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 2859
    sget v3, Lorg/telegram/messenger/R$drawable;->buy_with_googlepay_button_content:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 2860
    invoke-static {v4, v3, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2862
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2863
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2864
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 2865
    sget p1, Lorg/telegram/messenger/R$drawable;->googlepay_button_overlay:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2866
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getBaseCardPaymentMethod()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "AMEX"

    const-string v1, "DISCOVER"

    const-string v2, "JCB"

    const-string v3, "MASTERCARD"

    const-string v4, "VISA"

    .line 2993
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "PAN_ONLY"

    const-string v2, "CRYPTOGRAM_3DS"

    .line 3000
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3004
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "type"

    const-string v4, "CARD"

    .line 3005
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3007
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 3008
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v1, "allowedAuthMethods"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3009
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v0, "allowedCardNetworks"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "parameters"

    .line 3011
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v2
.end method

.method private getBaseRequest()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2989
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "apiVersion"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "apiVersionMinor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static getResponseBody(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3842
    new-instance v0, Ljava/util/Scanner;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v1, "\\A"

    .line 3843
    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    .line 3844
    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .line 3845
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0
.end method

.method private getTotalPriceDecimalString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move v3, v0

    .line 3073
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 3074
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3076
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3, v0}, Lorg/telegram/messenger/LocaleController;->formatCurrencyDecimalString(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTotalPriceString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 3062
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3063
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3065
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 3066
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 3068
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private goToNextStep()V
    .locals 37

    move-object/from16 v0, p0

    .line 3266
    iget v1, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    if-eqz v1, :cond_11

    if-eq v1, v5, :cond_a

    if-eq v1, v7, :cond_7

    if-eq v1, v4, :cond_5

    if-eq v1, v6, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    goto/16 :goto_5

    .line 3393
    :cond_0
    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-boolean v9, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    invoke-interface/range {v6 .. v11}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;->didSelectNewCard(Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3394
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->invoicePremiumGiftCode:Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    const/4 v11, 0x4

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v19, v6

    move-object v6, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v6 .. v20}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_5

    .line 3396
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_5

    .line 3370
    :cond_2
    iget-boolean v1, v0, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    if-eqz v1, :cond_3

    .line 3371
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3373
    :cond_3
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3375
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->newMessageCallback:Lorg/telegram/messenger/MessagesController$NewMessageCallback;

    if-nez v1, :cond_4

    .line 3376
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->onCheckoutSuccess(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_19

    .line 3377
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_5

    .line 3380
    :cond_4
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda34;

    invoke-direct {v1, v0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_5

    .line 3361
    :cond_5
    iget-boolean v1, v0, Lorg/telegram/ui/PaymentFormActivity;->passwordOk:Z

    if-eqz v1, :cond_6

    move/from16 v27, v6

    goto :goto_0

    :cond_6
    move/from16 v27, v7

    .line 3366
    :goto_0
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->invoicePremiumGiftCode:Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v12, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v33, v11

    move/from16 v34, v12

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    invoke-direct/range {v22 .. v36}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_5

    .line 3324
    :cond_7
    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-boolean v1, v8, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    if-eqz v1, :cond_8

    .line 3325
    new-instance v2, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->invoicePremiumGiftCode:Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    const/4 v11, 0x6

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v20, v6

    move-object v6, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v1

    move-object/from16 v19, v5

    invoke-direct/range {v6 .. v20}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->passwordFragment:Lorg/telegram/ui/PaymentFormActivity;

    .line 3326
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    invoke-direct {v2, v1}, Lorg/telegram/ui/PaymentFormActivity;->setCurrentPassword(Lorg/telegram/tgnet/TLRPC$account_Password;)V

    .line 3327
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->passwordFragment:Lorg/telegram/ui/PaymentFormActivity;

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$24;

    invoke-direct {v2, v0}, Lorg/telegram/ui/PaymentFormActivity$24;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-direct {v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    .line 3349
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->passwordFragment:Lorg/telegram/ui/PaymentFormActivity;

    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_5

    .line 3351
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    if-eqz v3, :cond_9

    .line 3352
    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-boolean v6, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;->didSelectNewCard(Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;)Z

    .line 3353
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_5

    .line 3355
    :cond_9
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->invoicePremiumGiftCode:Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    const/4 v11, 0x4

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v20, v6

    move-object v6, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    invoke-direct/range {v6 .. v20}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_5

    .line 3299
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    if-nez v1, :cond_f

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    if-eqz v1, :cond_b

    goto :goto_1

    .line 3301
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v1, :cond_e

    .line 3302
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v1, :cond_c

    .line 3303
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->valid_until:I

    iget v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    add-int/lit8 v5, v5, 0x3c

    if-ge v1, v5, :cond_c

    .line 3304
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iput-object v2, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 3305
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 3308
    :cond_c
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v1, :cond_d

    goto :goto_1

    :cond_d
    move v13, v4

    goto :goto_2

    :cond_e
    move v13, v7

    goto :goto_2

    :cond_f
    :goto_1
    move v13, v6

    :goto_2
    if-ne v13, v7, :cond_10

    .line 3316
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    if-nez v1, :cond_10

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-nez v1, :cond_10

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    if-nez v1, :cond_10

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->additional_methods:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 3317
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda33;

    invoke-direct {v1, v0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showChoosePaymentMethod(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 3319
    :cond_10
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->invoicePremiumGiftCode:Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v6, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v22, v8

    move-object v8, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v21, v7

    invoke-direct/range {v8 .. v22}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_5

    .line 3268
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    if-eqz v1, :cond_12

    .line 3269
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    invoke-interface {v1, v2}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;->didSelectNewAddress(Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;)V

    .line 3270
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_5

    .line 3273
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flexible:Z

    if-eqz v1, :cond_13

    move v13, v5

    goto :goto_4

    .line 3275
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-nez v1, :cond_15

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    if-eqz v1, :cond_14

    goto :goto_3

    :cond_14
    move v13, v7

    goto :goto_4

    .line 3276
    :cond_15
    :goto_3
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v1, :cond_16

    .line 3277
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->valid_until:I

    iget v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    add-int/lit8 v5, v5, 0x3c

    if-ge v1, v5, :cond_16

    .line 3278
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iput-object v2, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 3279
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 3282
    :cond_16
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v1, :cond_17

    move v13, v6

    goto :goto_4

    :cond_17
    move v13, v4

    :goto_4
    if-ne v13, v7, :cond_18

    .line 3290
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-nez v1, :cond_18

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    if-nez v1, :cond_18

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->additional_methods:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 3291
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda33;

    invoke-direct {v1, v0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showChoosePaymentMethod(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 3293
    :cond_18
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->invoicePremiumGiftCode:Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v5, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v8, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    invoke-direct/range {v8 .. v22}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    :cond_19
    :goto_5
    return-void
.end method

.method private init(Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 476
    iput p5, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    .line 477
    iput-object p14, p0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 478
    iput-object p9, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    .line 479
    iput-object p13, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    .line 480
    iput-object p6, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    .line 481
    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    .line 482
    iput-object p7, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    .line 483
    iput-object p8, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    .line 484
    iput-object p3, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 485
    iput-object p4, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    .line 486
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->invoicePremiumGiftCode:Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;

    .line 487
    iput-boolean p12, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    .line 488
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_provider:Ljava/lang/String;

    const-string p3, "stripe"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_provider:Ljava/lang/String;

    const-string p5, "smartglocal"

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    move p1, p4

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    .line 489
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide p5, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->bot_id:J

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p1, p5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_1

    .line 491
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p1, ""

    .line 493
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    .line 495
    :goto_1
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->title:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentItemName:Ljava/lang/String;

    .line 496
    iput-object p11, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    .line 497
    iput-boolean p4, p0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    if-nez p12, :cond_3

    .line 498
    iget p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    goto :goto_2

    .line 501
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, p4

    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    goto :goto_3

    .line 499
    :cond_3
    :goto_2
    iput-boolean p12, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    :goto_3
    if-nez p10, :cond_4

    .line 504
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 505
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    .line 506
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->title:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    goto :goto_4

    .line 509
    :cond_4
    iput-object p10, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    :cond_5
    :goto_4
    return-void
.end method

.method private initGooglePay(Landroid/content/Context;)V
    .locals 3

    .line 3029
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3032
    :cond_0
    new-instance v0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;-><init>()V

    .line 3033
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->test:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->setEnvironment(I)Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    move-result-object v0

    .line 3034
    invoke-virtual {v0, v2}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->setTheme(I)Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    move-result-object v0

    .line 3035
    invoke-virtual {v0}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->build()Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    move-result-object v0

    .line 3036
    invoke-static {p1, v0}, Lcom/google/android/gms/wallet/Wallet;->getPaymentsClient(Landroid/content/Context;Lcom/google/android/gms/wallet/Wallet$WalletOptions;)Lcom/google/android/gms/wallet/PaymentsClient;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentsClient:Lcom/google/android/gms/wallet/PaymentsClient;

    .line 3038
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getIsReadyToPayRequest()Lj$/util/Optional;

    move-result-object p1

    .line 3039
    invoke-virtual {p1}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 3042
    :cond_2
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->fromJson(Ljava/lang/String;)Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 3047
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentsClient:Lcom/google/android/gms/wallet/PaymentsClient;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/PaymentsClient;->isReadyToPay(Lcom/google/android/gms/wallet/IsReadyToPayRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 3048
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$checkPassword$62(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4210
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 4211
    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    if-eqz p1, :cond_0

    .line 4213
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->passwordOk:Z

    .line 4214
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    iput-object p1, p2, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 4215
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 4216
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    goto :goto_0

    .line 4218
    :cond_0
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "PASSWORD_HASH_INVALID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4220
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    const/4 p2, 0x3

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4222
    :catch_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    const/high16 p2, 0x40500000    # 3.25f

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 4223
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4225
    :cond_1
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, p0, p3, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    :goto_0
    return-void
.end method

.method private synthetic lambda$checkPassword$63(Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 4209
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda41;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$checkPassword$64(Lorg/telegram/tgnet/TLRPC$account_Password;[B)V
    .locals 6

    .line 4199
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4200
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    .line 4201
    invoke-static {p2, v0}, Lorg/telegram/messenger/SRPHelper;->getX([BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)[B

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v2

    .line 4206
    :goto_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;-><init>()V

    const/16 v1, 0x708

    .line 4207
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;->period:I

    .line 4209
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda60;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda60;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;)V

    .line 4230
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    if-eqz v4, :cond_2

    .line 4231
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    .line 4232
    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->srp_id:J

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->srp_B:[B

    invoke-static {p2, v4, v5, p1, v3}, Lorg/telegram/messenger/SRPHelper;->startCheck([BJ[BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    if-nez p1, :cond_1

    .line 4234
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    const-string p2, "ALGO_INVALID"

    .line 4235
    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 4236
    invoke-interface {v1, v2, p1}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void

    .line 4239
    :cond_1
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_1

    .line 4241
    :cond_2
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    const-string p2, "PASSWORD_HASH_INVALID"

    .line 4242
    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 4243
    invoke-interface {v1, v2, p1}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$checkPassword$65(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 4186
    check-cast p2, Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 4187
    invoke-static {p2, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/TLRPC$account_Password;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4188
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    const-string p3, "UpdateAppAlert"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 4191
    :cond_0
    iget-boolean p1, p2, Lorg/telegram/tgnet/TLRPC$account_Password;->has_password:Z

    if-nez p1, :cond_1

    .line 4192
    iput-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->passwordOk:Z

    .line 4193
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    goto :goto_0

    .line 4195
    :cond_1
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 4197
    sget-object p3, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda50;

    invoke-direct {p4, p0, p2, p1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$account_Password;[B)V

    invoke-virtual {p3, p4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4248
    :cond_2
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, p0, p4, p3}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 4249
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 4250
    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$checkPassword$66(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 4184
    new-instance v6, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda46;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createGooglePayButton$32(Landroid/view/View;)V
    .locals 4

    .line 2785
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2787
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->getBaseRequest()Lorg/json/JSONObject;

    move-result-object p1

    .line 2789
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->getBaseCardPaymentMethod()Lorg/json/JSONObject;

    move-result-object v0

    .line 2790
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayPublicKey:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "tokenizationSpecification"

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayParameters:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 2791
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$22;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PaymentFormActivity$22;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 2799
    :cond_0
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$23;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PaymentFormActivity$23;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string v1, "allowedPaymentMethods"

    .line 2813
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2815
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2816
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2817
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-eqz v2, :cond_1

    .line 2818
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->prices:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const-string v2, "totalPrice"

    .line 2820
    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->getTotalPriceDecimalString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "totalPriceStatus"

    const-string v2, "FINAL"

    .line 2821
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2822
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCountryCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "countryCode"

    .line 2823
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v1, "currencyCode"

    .line 2825
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "checkoutOption"

    const-string v2, "COMPLETE_IMMEDIATE_PURCHASE"

    .line 2826
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "transactionInfo"

    .line 2827
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "merchantInfo"

    .line 2829
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "merchantName"

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2840
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wallet/PaymentDataRequest;->fromJson(Ljava/lang/String;)Lcom/google/android/gms/wallet/PaymentDataRequest;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2842
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentsClient:Lcom/google/android/gms/wallet/PaymentsClient;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/PaymentsClient;->loadPaymentData(Lcom/google/android/gms/wallet/PaymentDataRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x3df

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/wallet/AutoResolveHelper;->resolveTask(Lcom/google/android/gms/tasks/Task;Landroid/app/Activity;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2845
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$createView$0(Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 2

    .line 742
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->country:Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 743
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object v1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 744
    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 735
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 738
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 739
    new-instance p1, Lorg/telegram/ui/CountrySelectActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/CountrySelectActivity;-><init>(Z)V

    .line 740
    invoke-virtual {p1, p2}, Lorg/telegram/ui/CountrySelectActivity;->setDisableAnonymousNumbers(Z)V

    .line 741
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda66;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda66;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/CountrySelectActivity;->setCountrySelectActivityDelegate(Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;)V

    .line 746
    invoke-virtual {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return p2
.end method

.method private static synthetic lambda$createView$10(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$createView$11(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 1760
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->performClick()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$12(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1776
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->passwordOk:Z

    .line 1777
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    return-void
.end method

.method private synthetic lambda$createView$13(Landroid/view/View;)V
    .locals 1

    .line 1835
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1836
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private static synthetic lambda$createView$14(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x6

    if-ne p1, p2, :cond_0

    .line 1981
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$createView$15(Landroid/widget/TextView;JLandroid/view/View;)V
    .locals 7

    .line 2082
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2083
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2084
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnTextChange:Z

    .line 2085
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, p4

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2086
    iput-boolean p4, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnTextChange:Z

    const-wide/16 p1, 0x0

    .line 2087
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    .line 2088
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateTotalPrice()V

    goto :goto_0

    .line 2090
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, p4

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    move-wide v1, p2

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JZZZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2092
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p2, p1, p4

    aget-object p1, p1, p4

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    return-void
.end method

.method private synthetic lambda$createView$16(Landroid/view/View;)V
    .locals 0

    .line 2119
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2122
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->showChoosePaymentMethod()V

    return-void
.end method

.method private synthetic lambda$createView$17(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    .line 2155
    new-instance v15, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->invoicePremiumGiftCode:Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v13, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object v1, v15

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    move-object/from16 v18, v15

    move-object/from16 v15, v17

    invoke-direct/range {v1 .. v15}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2156
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$13;

    invoke-direct {v1, v0}, Lorg/telegram/ui/PaymentFormActivity$13;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    move-object/from16 v2, v18

    invoke-direct {v2, v1}, Lorg/telegram/ui/PaymentFormActivity;->setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    .line 2163
    invoke-virtual {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$18(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    .line 2178
    new-instance v15, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->invoicePremiumGiftCode:Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v13, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object v1, v15

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    move-object/from16 v18, v15

    move-object/from16 v15, v17

    invoke-direct/range {v1 .. v15}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2179
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$14;

    invoke-direct {v1, v0}, Lorg/telegram/ui/PaymentFormActivity$14;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    move-object/from16 v2, v18

    invoke-direct {v2, v1}, Lorg/telegram/ui/PaymentFormActivity;->setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    .line 2186
    invoke-virtual {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$19(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    .line 2201
    new-instance v15, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->invoicePremiumGiftCode:Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v13, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object v1, v15

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    move-object/from16 v18, v15

    move-object/from16 v15, v17

    invoke-direct/range {v1 .. v15}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2202
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$15;

    invoke-direct {v1, v0}, Lorg/telegram/ui/PaymentFormActivity$15;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    move-object/from16 v2, v18

    invoke-direct {v2, v1}, Lorg/telegram/ui/PaymentFormActivity;->setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    .line 2209
    invoke-virtual {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p3, 0x1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    .line 985
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_0
    add-int/2addr p1, p3

    .line 986
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v0, p2

    if-ge p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 988
    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 989
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    return p3

    :cond_2
    const/4 p1, 0x6

    if-ne p2, p1, :cond_3

    .line 995
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->performClick()Z

    return p3

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$20(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    .line 2224
    new-instance v15, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->invoicePremiumGiftCode:Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v13, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object v1, v15

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    move-object/from16 v18, v15

    move-object/from16 v15, v17

    invoke-direct/range {v1 .. v15}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2225
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$16;

    invoke-direct {v1, v0}, Lorg/telegram/ui/PaymentFormActivity$16;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    move-object/from16 v2, v18

    invoke-direct {v2, v1}, Lorg/telegram/ui/PaymentFormActivity;->setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    .line 2232
    invoke-virtual {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$21(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 2272
    invoke-direct {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 2273
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    return-void
.end method

.method private synthetic lambda$createView$22(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2322
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->showPayAlert(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createView$23(Ljava/lang/String;Landroid/view/View;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2258
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    iget-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->recurrentAccepted:Z

    if-nez v4, :cond_0

    .line 2259
    iget v1, v0, Lorg/telegram/ui/PaymentFormActivity;->shiftDp:F

    neg-float v1, v1

    iput v1, v0, Lorg/telegram/ui/PaymentFormActivity;->shiftDp:F

    .line 2260
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    iget v2, v0, Lorg/telegram/ui/PaymentFormActivity;->shiftDp:F

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 2261
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;

    move-result-object v1

    iget v2, v0, Lorg/telegram/ui/PaymentFormActivity;->shiftDp:F

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 2263
    :try_start_0
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 2268
    :cond_0
    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v5, :cond_1

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    if-nez v5, :cond_1

    .line 2269
    invoke-direct {v0, v4}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 2271
    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda37;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V

    invoke-direct {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->sendSavedForm(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const/4 v5, 0x0

    if-eqz v2, :cond_9

    .line 2278
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-nez v6, :cond_2

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$TL_invoice;->shipping_address_requested:Z

    if-nez v8, :cond_4

    iget-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-nez v8, :cond_4

    iget-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-nez v8, :cond_4

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v7, :cond_4

    :cond_2
    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-nez v7, :cond_3

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    if-nez v7, :cond_3

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    if-eqz v7, :cond_4

    :cond_3
    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-nez v7, :cond_9

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flexible:Z

    if-eqz v7, :cond_9

    :cond_4
    if-nez v6, :cond_6

    .line 2280
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$TL_invoice;->shipping_address_requested:Z

    if-nez v7, :cond_5

    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-nez v7, :cond_5

    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-nez v7, :cond_5

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-eqz v6, :cond_6

    :cond_5
    move v11, v5

    goto :goto_0

    .line 2282
    :cond_6
    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-nez v5, :cond_7

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    if-nez v5, :cond_7

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    if-nez v5, :cond_7

    move v11, v3

    goto :goto_0

    :cond_7
    move v11, v4

    :goto_0
    if-ne v11, v3, :cond_8

    .line 2287
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->additional_methods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2288
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda40;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda40;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->showChoosePaymentMethod(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2290
    :cond_8
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->invoicePremiumGiftCode:Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    const/16 v19, 0x0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v6, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v6 .. v20}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :goto_1
    return-void

    .line 2295
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    if-nez v1, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v1, :cond_c

    .line 2296
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v1, :cond_a

    .line 2297
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->valid_until:I

    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    add-int/lit8 v2, v2, 0x3c

    if-ge v1, v2, :cond_a

    .line 2298
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 2299
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2303
    :cond_a
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-nez v1, :cond_b

    .line 2304
    iput-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->needPayAfterTransition:Z

    .line 2305
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->invoicePremiumGiftCode:Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    const/4 v11, 0x3

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    const/4 v15, 0x0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    const/16 v19, 0x0

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v20, v6

    move-object v6, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    invoke-direct/range {v6 .. v20}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2306
    iput-boolean v5, v0, Lorg/telegram/ui/PaymentFormActivity;->needPayAfterTransition:Z

    return-void

    .line 2308
    :cond_b
    iget-boolean v1, v0, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    if-eqz v1, :cond_c

    .line 2309
    iput-boolean v5, v0, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    .line 2310
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2314
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_e

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-nez v1, :cond_e

    .line 2315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "payment_warning_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2316
    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2317
    invoke-interface {v2, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_d

    .line 2318
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2319
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2320
    sget v2, Lorg/telegram/messenger/R$string;->PaymentWarning:I

    const-string v6, "PaymentWarning"

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2321
    sget v2, Lorg/telegram/messenger/R$string;->PaymentWarningText:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    aput-object v6, v3, v5

    aput-object p1, v3, v4

    const-string v4, "PaymentWarningText"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2322
    sget v2, Lorg/telegram/messenger/R$string;->Continue:I

    const-string v3, "Continue"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2323
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_2

    .line 2325
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-direct {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showPayAlert(Ljava/lang/String;)V

    goto :goto_2

    .line 2328
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-direct {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showPayAlert(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$createView$24(Landroid/view/View;)V
    .locals 2

    .line 2436
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    if-eqz p1, :cond_0

    return-void

    .line 2440
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->recurrentAccepted:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->recurrentAccepted:Z

    .line 2441
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->setChecked(Z)V

    .line 2443
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->recurrentAccepted:Z

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->setChecked(ZZ)V

    return-void
.end method

.method private synthetic lambda$createView$25(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    .line 2467
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->sendSavePassword(Z)V

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method private static synthetic lambda$createView$26(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$createView$27(Landroid/view/View;)V
    .locals 2

    .line 2503
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_account_resendPasswordEmail;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_account_resendPasswordEmail;-><init>()V

    .line 2504
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda64;->INSTANCE:Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda64;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2507
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2508
    sget v0, Lorg/telegram/messenger/R$string;->ResendCodeInfo:I

    const-string v1, "ResendCodeInfo"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2509
    sget v0, Lorg/telegram/messenger/R$string;->AppName:I

    const-string v1, "AppName"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2510
    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    const-string v1, "OK"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2511
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$createView$28(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 2528
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->sendSavePassword(Z)V

    return-void
.end method

.method private synthetic lambda$createView$29(Landroid/view/View;)V
    .locals 3

    .line 2521
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2522
    sget v0, Lorg/telegram/messenger/R$string;->TurnPasswordOffQuestion:I

    const-string v1, "TurnPasswordOffQuestion"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2523
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$account_Password;->has_secure_values:Z

    if-eqz v1, :cond_0

    .line 2524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lorg/telegram/messenger/R$string;->TurnPasswordOffPassport:I

    const-string v2, "TurnPasswordOffPassport"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2526
    :cond_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2527
    sget v0, Lorg/telegram/messenger/R$string;->TurnPasswordOffQuestionTitle:I

    const-string v1, "TurnPasswordOffQuestionTitle"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2528
    sget v0, Lorg/telegram/messenger/R$string;->Disable:I

    const-string v1, "Disable"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2529
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v1, "Cancel"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2530
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 2531
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, -0x1

    .line 2532
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 2534
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 1

    .line 1036
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    .line 1037
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$createView$30(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p3, 0x1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 2607
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->performClick()Z

    return p3

    :cond_0
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    .line 2610
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    .line 2612
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, p3

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_1
    if-ne p1, p3, :cond_2

    .line 2614
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 p2, 0x2

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)V
    .locals 1

    .line 1193
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    .line 1194
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$createView$5(Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 2

    .line 1287
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->country:Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 1288
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1280
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1283
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 1284
    new-instance p1, Lorg/telegram/ui/CountrySelectActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/CountrySelectActivity;-><init>(Z)V

    .line 1285
    invoke-virtual {p1, p2}, Lorg/telegram/ui/CountrySelectActivity;->setDisableAnonymousNumbers(Z)V

    .line 1286
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda67;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda67;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/CountrySelectActivity;->setCountrySelectActivityDelegate(Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;)V

    .line 1290
    invoke-virtual {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return p2
.end method

.method private synthetic lambda$createView$7(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p3, 0x1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_3

    .line 1603
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_0
    add-int/2addr p1, p3

    .line 1604
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v0, p2

    if-ge p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 1609
    :cond_1
    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 1610
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2
    return p3

    :cond_3
    const/4 p1, 0x6

    if-ne p2, p1, :cond_4

    .line 1616
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->performClick()Z

    return p3

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$8(Landroid/view/View;)V
    .locals 1

    .line 1633
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    .line 1634
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/view/View;)V
    .locals 5

    .line 1682
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    .line 1683
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1684
    aget-object v2, v2, v1

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$goToNextStep$40()V
    .locals 2

    .line 3381
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/messenger/MessagesController;->newMessageCallback:Lorg/telegram/messenger/MessagesController$NewMessageCallback;

    .line 3382
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    sget-object v1, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PENDING:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3383
    sget-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->FAILED:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    .line 3384
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    if-eqz v1, :cond_0

    .line 3385
    invoke-interface {v1, v0}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;->onInvoiceStatusChanged(Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    .line 3387
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initGooglePay$37(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 3050
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3051
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 3052
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 3055
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    const-string v0, "isReadyToPay failed"

    invoke-static {v0, p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$loadPasswordInfo$33()V
    .locals 1

    .line 2953
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->shortPollRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    .line 2956
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->loadPasswordInfo()V

    const/4 v0, 0x0

    .line 2957
    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->shortPollRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$loadPasswordInfo$34(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    const/4 v0, 0x0

    .line 2935
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->loadingPasswordInfo:Z

    if-nez p1, :cond_3

    .line 2937
    check-cast p2, Lorg/telegram/tgnet/TLRPC$account_Password;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 2938
    invoke-static {p2, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/TLRPC$account_Password;Z)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 2939
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    const-string v1, "UpdateAppAlert"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 2942
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$account_Password;->has_password:Z

    if-eqz v1, :cond_1

    .line 2943
    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    .line 2944
    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->can_save_credentials:Z

    .line 2945
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    .line 2947
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationActivity;->initPasswordNewAlgo(Lorg/telegram/tgnet/TLRPC$account_Password;)V

    .line 2948
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->passwordFragment:Lorg/telegram/ui/PaymentFormActivity;

    if-eqz p1, :cond_2

    .line 2949
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    invoke-direct {p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->setCurrentPassword(Lorg/telegram/tgnet/TLRPC$account_Password;)V

    .line 2951
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->has_password:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->shortPollRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    .line 2952
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda32;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->shortPollRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    .line 2959
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$loadPasswordInfo$35(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 2934
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onActivityResultFragment$39(ILandroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_5

    .line 3216
    invoke-static {p2}, Lcom/google/android/gms/wallet/PaymentData;->getFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/wallet/PaymentData;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3220
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/wallet/PaymentData;->toJson()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3225
    :cond_1
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "paymentMethodData"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "tokenizationData"

    .line 3226
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v2, "type"

    .line 3227
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "token"

    .line 3228
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3230
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayPublicKey:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayParameters:Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 3241
    :cond_2
    invoke-static {v2}, Lcom/stripe/android/net/TokenParser;->parseToken(Ljava/lang/String;)Lcom/stripe/android/model/Token;

    move-result-object p1

    .line 3242
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "{\"type\":\"%1$s\", \"id\":\"%2$s\"}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/stripe/android/model/Token;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1}, Lcom/stripe/android/model/Token;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    .line 3243
    invoke-virtual {p1}, Lcom/stripe/android/model/Token;->getCard()Lcom/stripe/android/model/Card;

    move-result-object p1

    .line 3244
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/stripe/android/model/Card;->getBrand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " *"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/stripe/android/model/Card;->getLast4()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    goto :goto_1

    .line 3231
    :cond_3
    :goto_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    .line 3232
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->payment_token:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 3233
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->payment_token:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    const-string p2, "description"

    .line 3234
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 3236
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string p1, "Android Pay"

    .line 3238
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    .line 3246
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 3248
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    if-ne p1, v1, :cond_7

    .line 3252
    invoke-static {p2}, Lcom/google/android/gms/wallet/AutoResolveHelper;->getStatusFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 3253
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android pay error "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    const-string p1, ""

    :goto_2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3256
    :cond_7
    :goto_3
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 3257
    invoke-direct {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 3258
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_8

    .line 3259
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    :cond_8
    return-void
.end method

.method private synthetic lambda$onTransitionAnimationEnd$38()V
    .locals 2

    .line 3176
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3177
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$sendData$56([Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 10

    const/4 v0, 0x1

    .line 4053
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentStatusSent:Z

    .line 4054
    sget-object v1, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PAID:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    .line 4055
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    if-eqz v2, :cond_0

    .line 4056
    invoke-interface {v2, v1}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;->onInvoiceStatusChanged(Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    .line 4059
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    .line 4060
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_1

    .line 4061
    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4063
    sget v1, Lorg/telegram/messenger/R$string;->PaymentInfoHint:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aput-object v4, v3, v5

    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->currentItemName:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    const-wide/16 v3, 0x0

    const/16 v0, 0x4d

    .line 4064
    aget-object v7, p1, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, v0

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$sendData$57(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 9

    const/4 v0, 0x1

    .line 4086
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentStatusSent:Z

    .line 4087
    sget-object v1, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PAID:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    .line 4088
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    if-eqz v2, :cond_0

    .line 4089
    invoke-interface {v2, v1}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;->onInvoiceStatusChanged(Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    .line 4092
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->onCheckoutSuccess(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;)Z

    .line 4094
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p2, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz p2, :cond_1

    .line 4095
    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4097
    sget p1, Lorg/telegram/messenger/R$string;->PaymentInfoHint:I

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aput-object v2, p2, v3

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->currentItemName:Ljava/lang/String;

    aput-object v2, p2, v0

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const-wide/16 v2, 0x0

    const/16 v4, 0x4d

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p3

    .line 4098
    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$sendData$58(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 4

    .line 4084
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;

    if-eqz v0, :cond_0

    .line 4085
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda51;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$sendData$59(Lorg/telegram/tgnet/TLObject;)V
    .locals 6

    const/4 v0, 0x0

    .line 4070
    invoke-direct {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    const/4 v1, 0x1

    .line 4071
    iput-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->webviewLoading:Z

    .line 4072
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 4073
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    if-eqz v2, :cond_0

    .line 4074
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 4076
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_1

    .line 4077
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 4078
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4081
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    .line 4082
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    .line 4083
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda54;

    invoke-direct {v5, p0, v2, v3}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;)V

    iput-object v5, v4, Lorg/telegram/messenger/MessagesController;->newMessageCallback:Lorg/telegram/messenger/MessagesController$NewMessageCallback;

    .line 4107
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    if-eqz v2, :cond_2

    .line 4108
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 4109
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentVerificationNeeded;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentVerificationNeeded;->url:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->webViewUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 4112
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentStatusSent:Z

    .line 4113
    sget-object p1, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PENDING:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    .line 4114
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    if-eqz v0, :cond_3

    .line 4115
    invoke-interface {v0, p1}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;->onInvoiceStatusChanged(Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$sendData$60(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;)V
    .locals 3

    .line 4121
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p0, p2, v2}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 4122
    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 4123
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    const/4 p1, 0x1

    .line 4125
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentStatusSent:Z

    .line 4126
    sget-object p1, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->FAILED:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    .line 4127
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    if-eqz p2, :cond_0

    .line 4128
    invoke-interface {p2, p1}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;->onInvoiceStatusChanged(Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$sendData$61(Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    if-eqz p2, :cond_4

    .line 4038
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    if-eqz p1, :cond_3

    .line 4039
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->updates:Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 p2, 0x1

    new-array p2, p2, [Lorg/telegram/tgnet/TLRPC$Message;

    .line 4041
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 4042
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Update;

    .line 4043
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-eqz v3, :cond_0

    .line 4044
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    iget-object p3, v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    aput-object p3, p2, v0

    goto :goto_1

    .line 4046
    :cond_0
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v3, :cond_1

    .line 4047
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    iget-object p3, v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    aput-object p3, p2, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4051
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 4052
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda53;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/ui/PaymentFormActivity;[Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 4068
    :cond_3
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentVerificationNeeded;

    if-eqz p1, :cond_5

    .line 4069
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda39;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 4120
    :cond_4
    new-instance p2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda48;

    invoke-direct {p2, p0, p3, p1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private static synthetic lambda$sendForm$52(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$sendForm$53(Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    .line 3937
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    .line 3938
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    if-nez p1, :cond_0

    .line 3939
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;-><init>()V

    .line 3940
    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->info:Z

    .line 3941
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda65;->INSTANCE:Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda65;

    invoke-virtual {v1, p1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 3945
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    const/4 p1, 0x0

    .line 3946
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 3947
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    return-void
.end method

.method private synthetic lambda$sendForm$54(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 11

    const/4 v0, 0x0

    .line 3951
    invoke-direct {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    const/4 v1, 0x1

    .line 3952
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    if-eqz p1, :cond_9

    .line 3954
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "REQ_INFO_EMAIL_INVALID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "ADDRESS_STREET_LINE2_INVALID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    move v3, v5

    goto :goto_0

    :sswitch_2
    const-string v4, "REQ_INFO_PHONE_INVALID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v3, v6

    goto :goto_0

    :sswitch_3
    const-string v4, "ADDRESS_STATE_INVALID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v3, v7

    goto :goto_0

    :sswitch_4
    const-string v4, "ADDRESS_POSTCODE_INVALID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move v3, v8

    goto :goto_0

    :sswitch_5
    const-string v4, "REQ_INFO_NAME_INVALID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    move v3, v9

    goto :goto_0

    :sswitch_6
    const-string v4, "ADDRESS_COUNTRY_INVALID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    move v3, v10

    goto :goto_0

    :sswitch_7
    const-string v4, "ADDRESS_STREET_LINE1_INVALID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    move v3, v1

    goto :goto_0

    :sswitch_8
    const-string v4, "ADDRESS_CITY_INVALID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    move v3, v0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 3983
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p0, p2, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    goto :goto_1

    .line 3962
    :pswitch_0
    invoke-direct {p0, v5}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    goto :goto_1

    .line 3980
    :pswitch_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    goto :goto_1

    :pswitch_2
    const/16 p1, 0x9

    .line 3959
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    goto :goto_1

    .line 3974
    :pswitch_3
    invoke-direct {p0, v9}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    goto :goto_1

    .line 3971
    :pswitch_4
    invoke-direct {p0, v7}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    goto :goto_1

    .line 3956
    :pswitch_5
    invoke-direct {p0, v6}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    goto :goto_1

    .line 3965
    :pswitch_6
    invoke-direct {p0, v8}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    goto :goto_1

    .line 3977
    :pswitch_7
    invoke-direct {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    goto :goto_1

    .line 3968
    :pswitch_8
    invoke-direct {p0, v10}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    :cond_9
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7cbd4a72 -> :sswitch_8
        -0x60c55d5c -> :sswitch_7
        -0x48f7785d -> :sswitch_6
        -0x3d7f496d -> :sswitch_5
        -0x105574d0 -> :sswitch_4
        0x18e1a6de -> :sswitch_3
        0x2a39af76 -> :sswitch_2
        0x337f11a5 -> :sswitch_1
        0x34feafa4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$sendForm$55(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 3935
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    if-eqz v0, :cond_0

    .line 3936
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda38;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3950
    :cond_0
    new-instance p2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda45;

    invoke-direct {p2, p0, p3, p1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$sendSavePassword$41(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3527
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    if-nez p1, :cond_2

    .line 3529
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3532
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->shortPollRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 3533
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 3534
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->shortPollRunnable:Ljava/lang/Runnable;

    .line 3536
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    goto :goto_1

    .line 3538
    :cond_2
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "CODE_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3539
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->shakeView(Landroid/view/View;)V

    .line 3540
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    const-string v0, ""

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_1

    .line 3541
    :cond_3
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "FLOOD_WAIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "AppName"

    if-eqz v2, :cond_5

    .line 3542
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v2, 0x3c

    if-ge p1, v2, :cond_4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "Seconds"

    .line 3545
    invoke-static {v4, p1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3547
    :cond_4
    div-int/2addr p1, v2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "Minutes"

    invoke-static {v4, p1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3549
    :goto_0
    sget v2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->FloodWaitTime:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "FloodWaitTime"

    invoke-static {p1, v3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/PaymentFormActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3551
    :cond_5
    sget v0, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/PaymentFormActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$sendSavePassword$42(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 3526
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda42;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$sendSavePassword$43(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 3611
    check-cast p2, Lorg/telegram/tgnet/TLRPC$account_Password;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 3612
    invoke-static {p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->initPasswordNewAlgo(Lorg/telegram/tgnet/TLRPC$account_Password;)V

    .line 3613
    invoke-direct {p0, p3}, Lorg/telegram/ui/PaymentFormActivity;->sendSavePassword(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$sendSavePassword$44(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 3609
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$sendSavePassword$45(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x1

    .line 3635
    iput-boolean p2, p0, Lorg/telegram/ui/PaymentFormActivity;->waitingForEmail:Z

    .line 3636
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$account_Password;->email_unconfirmed_pattern:Ljava/lang/String;

    .line 3637
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updatePasswordFields()V

    return-void
.end method

.method private synthetic lambda$sendSavePassword$46(Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 3607
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "SRP_ID_INVALID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3608
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;-><init>()V

    .line 3609
    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance p4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda62;

    invoke-direct {p4, p0, p2}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda62;-><init>(Lorg/telegram/ui/PaymentFormActivity;Z)V

    const/16 p2, 0x8

    invoke-virtual {p3, p1, p4, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3618
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    if-eqz p2, :cond_1

    .line 3620
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->has_password:Z

    const/4 p2, 0x0

    .line 3621
    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    .line 3622
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    invoke-interface {p2, p1}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;->currentPasswordUpdated(Lorg/telegram/tgnet/TLRPC$account_Password;)V

    .line 3623
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_2

    :cond_1
    if-nez p1, :cond_3

    .line 3625
    instance-of p2, p3, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p2, :cond_3

    .line 3626
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 3629
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    goto/16 :goto_2

    :cond_3
    if-eqz p1, :cond_9

    .line 3631
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "EMAIL_UNCONFIRMED"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "EMAIL_UNCONFIRMED_"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    .line 3647
    :cond_4
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "EMAIL_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p3, "AppName"

    if-eqz p2, :cond_5

    .line 3648
    sget p1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {p3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->PasswordEmailInvalid:I

    const-string p3, "PasswordEmailInvalid"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3649
    :cond_5
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p4, "FLOOD_WAIT"

    invoke-virtual {p2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 3650
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x3c

    if-ge p1, p2, :cond_6

    new-array p2, v1, [Ljava/lang/Object;

    const-string p4, "Seconds"

    .line 3653
    invoke-static {p4, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3655
    :cond_6
    div-int/2addr p1, p2

    new-array p2, v1, [Ljava/lang/Object;

    const-string p4, "Minutes"

    invoke-static {p4, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3657
    :goto_0
    sget p2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->FloodWaitTime:I

    new-array p4, v0, [Ljava/lang/Object;

    aput-object p1, p4, v1

    const-string p1, "FloodWaitTime"

    invoke-static {p1, p3, p4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/PaymentFormActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3659
    :cond_7
    sget p2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/PaymentFormActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3632
    :cond_8
    :goto_1
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/PaymentFormActivity;->emailCodeLength:I

    .line 3633
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3634
    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    const-string p3, "OK"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, p4}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3639
    sget p2, Lorg/telegram/messenger/R$string;->YourEmailAlmostThereText:I

    const-string p3, "YourEmailAlmostThereText"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3640
    sget p2, Lorg/telegram/messenger/R$string;->YourEmailAlmostThere:I

    const-string p3, "YourEmailAlmostThere"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3641
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 3643
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3644
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_9
    :goto_2
    return-void
.end method

.method private synthetic lambda$sendSavePassword$47(ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 3606
    new-instance v6, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda49;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$sendSavePassword$48(ZLjava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;)V
    .locals 3

    .line 3606
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda63;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda63;-><init>(Lorg/telegram/ui/PaymentFormActivity;ZLjava/lang/String;)V

    const/16 p2, 0xa

    if-nez p1, :cond_2

    .line 3667
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 3668
    iget-object p3, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$account_Password;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3669
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    .line 3670
    iget-object v1, p4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    invoke-static {p1, p3}, Lorg/telegram/messenger/SRPHelper;->getVBytes([BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)[B

    move-result-object p1

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_password_hash:[B

    .line 3671
    iget-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_password_hash:[B

    if-nez p1, :cond_0

    .line 3672
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    const-string p3, "ALGO_INVALID"

    .line 3673
    iput-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 3674
    invoke-interface {v0, v2, p1}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    .line 3676
    :cond_0
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1, p4, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 3678
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    const-string p2, "PASSWORD_HASH_INVALID"

    .line 3679
    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 3680
    invoke-interface {v0, v2, p1}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    goto :goto_0

    .line 3683
    :cond_2
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1, p4, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$sendSavedForm$49(Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 0

    .line 3874
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    .line 3875
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 3876
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    const/4 p2, 0x1

    .line 3877
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    return-void
.end method

.method private synthetic lambda$sendSavedForm$50(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    const/4 v0, 0x0

    .line 3881
    invoke-direct {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    const/4 v1, 0x1

    .line 3882
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    if-eqz p1, :cond_0

    .line 3884
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p0, p2, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private synthetic lambda$sendSavedForm$51(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 3872
    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    if-eqz v0, :cond_0

    .line 3873
    new-instance p2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda40;

    invoke-direct {p2, p0, p3, p1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3880
    :cond_0
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda43;

    invoke-direct {p1, p0, p4, p2}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showChoosePaymentMethod$31(Ljava/lang/Runnable;Ljava/util/List;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p5

    .line 2672
    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$21;

    move-object/from16 v3, p1

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/PaymentFormActivity$21;-><init>(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/Runnable;)V

    .line 2694
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    :goto_1
    if-nez v3, :cond_2

    .line 2695
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    if-eqz v3, :cond_3

    :cond_2
    if-nez v1, :cond_3

    return-void

    :cond_3
    if-lt v1, v5, :cond_4

    .line 2698
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v5

    if-ge v1, v3, :cond_4

    sub-int/2addr v1, v5

    move-object/from16 v3, p2

    .line 2699
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iput-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    const/4 v3, 0x0

    .line 2700
    iget-object v4, v6, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->title:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v7

    invoke-interface/range {v1 .. v6}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;->didSelectNewCard(Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;)Z

    return-void

    :cond_4
    move-object/from16 v3, p2

    .line 2704
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    if-ge v1, v6, :cond_5

    .line 2705
    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->additional_methods:Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v1, v5

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;

    .line 2707
    new-instance v15, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->invoicePremiumGiftCode:Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    const/4 v8, 0x2

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v3, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    const/16 v16, 0x0

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move/from16 v17, v3

    move-object v3, v15

    move-object/from16 v18, v12

    const/4 v12, 0x0

    move-object/from16 v19, v15

    move/from16 v15, v17

    move-object/from16 v17, v18

    invoke-direct/range {v3 .. v17}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move-object/from16 v3, v19

    .line 2708
    invoke-direct {v3, v1}, Lorg/telegram/ui/PaymentFormActivity;->setPaymentMethod(Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;)V

    .line 2709
    invoke-direct {v3, v2}, Lorg/telegram/ui/PaymentFormActivity;->setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    .line 2710
    invoke-virtual {v0, v3}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_2

    .line 2711
    :cond_5
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_6

    .line 2712
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->invoicePremiumGiftCode:Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    const/4 v9, 0x2

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    const/4 v13, 0x0

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v3, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    const/16 v17, 0x0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v18, v4

    move-object v4, v1

    move/from16 v16, v3

    invoke-direct/range {v4 .. v18}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2713
    invoke-direct {v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    .line 2714
    invoke-virtual {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_6
    :goto_2
    return-void
.end method

.method private synthetic lambda$showPayAlert$36(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 2981
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 2982
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->sendData()V

    return-void
.end method

.method private loadPasswordInfo()V
    .locals 4

    .line 2929
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->loadingPasswordInfo:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2932
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->loadingPasswordInfo:Z

    .line 2933
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;-><init>()V

    .line 2934
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda56;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda56;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private onCheckoutSuccess(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;)Z
    .locals 4

    .line 3403
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->invoicePremiumGiftCode:Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 3405
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 3406
    instance-of v0, p2, Lorg/telegram/ui/PaymentFormActivity;

    if-eqz v0, :cond_0

    .line 3407
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    return v1

    .line 3414
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->premiumBotUsername:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->premiumInvoiceSlug:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->premiumInvoiceSlug:Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_5
    if-eqz p1, :cond_a

    .line 3416
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 3417
    instance-of v3, v1, Lorg/telegram/ui/ChatActivity;

    if-nez v3, :cond_7

    instance-of v3, v1, Lorg/telegram/ui/PremiumPreviewFragment;

    if-eqz v3, :cond_6

    .line 3418
    :cond_7
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    goto :goto_1

    .line 3422
    :cond_8
    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/telegram/ui/PremiumPreviewFragment;->setForcePremium()Lorg/telegram/ui/PremiumPreviewFragment;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinishing()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 3423
    instance-of p1, p2, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_9

    .line 3425
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3428
    :catch_0
    check-cast p2, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/LaunchActivity;->getFireworksOverlay()Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/FireworksOverlay;->start()V

    :cond_9
    return v2

    :cond_a
    return v1
.end method

.method private onPresentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 4374
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 4375
    instance-of v0, p1, Lorg/telegram/ui/PaymentFormActivity;

    if-eqz v0, :cond_0

    .line 4376
    check-cast p1, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    iput-object v0, p1, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    .line 4377
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object v0, p1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 4378
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->needPayAfterTransition:Z

    iput-boolean v0, p1, Lorg/telegram/ui/PaymentFormActivity;->needPayAfterTransition:Z

    .line 4379
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iput-object v0, p1, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    :cond_0
    return-void
.end method

.method private sendCardData()Z
    .locals 20

    move-object/from16 v1, p0

    .line 3692
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    .line 3693
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3694
    array-length v3, v0

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v3, v5, :cond_0

    .line 3695
    aget-object v3, v0, v6

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v3

    .line 3696
    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v0

    move-object v10, v0

    move-object v9, v3

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 3701
    :goto_0
    new-instance v0, Lcom/stripe/android/model/Card;

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    .line 3702
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v15, 0x3

    aget-object v3, v3, v15

    .line 3705
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v5

    .line 3706
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x0

    iget-object v7, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v4, 0x5

    aget-object v7, v7, v4

    .line 3708
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    iget-object v7, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x4

    aget-object v7, v7, v2

    .line 3709
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object v7, v0

    move v4, v15

    move-object v15, v3

    invoke-direct/range {v7 .. v19}, Lcom/stripe/android/model/Card;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3711
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/stripe/android/model/Card;->getBrand()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " *"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/stripe/android/model/Card;->getLast4()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    .line 3712
    invoke-virtual {v0}, Lcom/stripe/android/model/Card;->validateNumber()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3713
    invoke-direct {v1, v6}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return v6

    .line 3715
    :cond_1
    invoke-virtual {v0}, Lcom/stripe/android/model/Card;->validateExpMonth()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/stripe/android/model/Card;->validateExpYear()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/stripe/android/model/Card;->validateExpiryDate()Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_2

    .line 3718
    :cond_2
    iget-boolean v3, v1, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z

    if-eqz v3, :cond_3

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 3719
    invoke-direct {v1, v5}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return v6

    .line 3721
    :cond_3
    invoke-virtual {v0}, Lcom/stripe/android/model/Card;->validateCVC()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3722
    invoke-direct {v1, v4}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return v6

    .line 3724
    :cond_4
    iget-boolean v3, v1, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z

    if-eqz v3, :cond_5

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 3725
    invoke-direct {v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return v6

    .line 3727
    :cond_5
    iget-boolean v2, v1, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-eqz v2, :cond_6

    iget-object v2, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 3728
    invoke-direct {v1, v3}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return v6

    :cond_6
    const/4 v2, 0x1

    .line 3731
    invoke-direct {v1, v2, v2}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    :try_start_0
    const-string v2, "stripe"

    .line 3733
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_provider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3734
    new-instance v2, Lcom/stripe/android/Stripe;

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->providerApiKey:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/stripe/android/Stripe;-><init>(Ljava/lang/String;)V

    .line 3735
    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$25;

    invoke-direct {v3, v1}, Lorg/telegram/ui/PaymentFormActivity$25;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v2, v0, v3}, Lcom/stripe/android/Stripe;->createToken(Lcom/stripe/android/model/Card;Lcom/stripe/android/TokenCallback;)V

    goto :goto_1

    :cond_7
    const-string v2, "smartglocal"

    .line 3762
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_provider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3763
    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$26;

    invoke-direct {v2, v1, v0}, Lorg/telegram/ui/PaymentFormActivity$26;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lcom/stripe/android/model/Card;)V

    .line 3833
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v6

    const/4 v6, 0x1

    aput-object v4, v3, v6

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3836
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_8
    :goto_1
    const/4 v2, 0x1

    return v2

    :cond_9
    :goto_2
    const/4 v2, 0x1

    .line 3716
    invoke-direct {v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return v6
.end method

.method private sendData()V
    .locals 5

    .line 3993
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3996
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 3997
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;-><init>()V

    .line 3998
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->invoicePremiumGiftCode:Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;

    if-eqz v2, :cond_1

    .line 3999
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    goto :goto_0

    .line 4000
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_2

    .line 4001
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;-><init>()V

    .line 4002
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4003
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;->msg_id:I

    .line 4004
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    goto :goto_0

    .line 4006
    :cond_2
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;-><init>()V

    .line 4007
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;->slug:Ljava/lang/String;

    .line 4008
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    .line 4011
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->form_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->form_id:J

    .line 4012
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v2, :cond_3

    .line 4013
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsSaved;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsSaved;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    .line 4014
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->id:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->id:Ljava/lang/String;

    .line 4015
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->tmp_password:[B

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->tmp_password:[B

    goto :goto_1

    .line 4016
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    if-eqz v2, :cond_4

    .line 4017
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    goto :goto_1

    .line 4019
    :cond_4
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    .line 4020
    iget-boolean v3, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->save:Z

    .line 4021
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->data:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 4022
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->data:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 4024
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->id:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 4025
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->requested_info_id:Ljava/lang/String;

    .line 4026
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    .line 4028
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    const/4 v2, 0x2

    if-eqz v1, :cond_6

    .line 4029
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->id:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->shipping_option_id:Ljava/lang/String;

    .line 4030
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    .line 4032
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 4033
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_2

    :cond_7
    const-wide/16 v3, 0x0

    :goto_2
    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->tip_amount:J

    .line 4034
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    .line 4036
    :cond_8
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda61;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda61;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;)V

    invoke-virtual {v1, v0, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private sendForm()V
    .locals 7

    .line 3892
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3895
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 3896
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    .line 3897
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->invoicePremiumGiftCode:Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;

    if-eqz v2, :cond_1

    .line 3898
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    goto :goto_0

    .line 3899
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_2

    .line 3900
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;-><init>()V

    .line 3901
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3902
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;->msg_id:I

    .line 3903
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    goto :goto_0

    .line 3905
    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;-><init>()V

    .line 3906
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;->slug:Ljava/lang/String;

    .line 3907
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    .line 3909
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v2, p0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->save:Z

    .line 3910
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    .line 3911
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-eqz v1, :cond_3

    .line 3912
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    .line 3913
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/2addr v2, v0

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 3915
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    const/16 v2, 0x8

    const/4 v3, 0x2

    if-eqz v1, :cond_4

    .line 3916
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v6, 0x9

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    .line 3917
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/2addr v4, v3

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 3919
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v1, :cond_5

    .line 3920
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    .line 3921
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 3923
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->shipping_address_requested:Z

    if-eqz v1, :cond_7

    .line 3924
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_postAddress;-><init>()V

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    .line 3925
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line1:Ljava/lang/String;

    .line 3926
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v4, v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line2:Ljava/lang/String;

    .line 3927
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->city:Ljava/lang/String;

    .line 3928
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v4, 0x3

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->state:Ljava/lang/String;

    .line 3929
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const-string v1, ""

    :goto_1
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    .line 3930
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v4, 0x5

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->post_code:Ljava/lang/String;

    .line 3931
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 3933
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    .line 3934
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda59;

    invoke-direct {v4, p0, v0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda59;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v1, v2, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private sendSavePassword(Z)V
    .locals 9

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 3517
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 3518
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getText()Ljava/lang/String;

    move-result-object p1

    .line 3519
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 3520
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->shakeView(Landroid/view/View;)V

    return-void

    .line 3523
    :cond_0
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 3524
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_confirmPasswordEmail;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_confirmPasswordEmail;-><init>()V

    .line 3525
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_confirmPasswordEmail;->code:Ljava/lang/String;

    .line 3526
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda55;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda55;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_2

    .line 3556
    :cond_1
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_2

    .line 3560
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3563
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;-><init>()V

    iput-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    .line 3564
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    .line 3565
    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->email:Ljava/lang/String;

    .line 3566
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;-><init>()V

    iput-object v1, v8, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    move-object v6, v2

    move-object v7, v6

    goto/16 :goto_1

    .line 3568
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3569
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3570
    invoke-direct {p0, v3}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return-void

    .line 3573
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3574
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3576
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v1, "PasswordDoNotMatch"

    sget v2, Lorg/telegram/messenger/R$string;->PasswordDoNotMatch:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3578
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3580
    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return-void

    .line 3583
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3584
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_5

    .line 3585
    invoke-direct {p0, v4}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return-void

    :cond_5
    const/16 v5, 0x2e

    .line 3588
    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/16 v6, 0x40

    .line 3589
    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ltz v6, :cond_7

    if-ge v5, v6, :cond_6

    goto :goto_3

    .line 3595
    :cond_6
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;-><init>()V

    iput-object v5, v8, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    .line 3596
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;-><init>()V

    iput-object v5, v8, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    .line 3597
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    or-int/2addr v6, v0

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    .line 3598
    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->hint:Ljava/lang/String;

    .line 3599
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$account_Password;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    or-int/lit8 v1, v6, 0x2

    .line 3601
    iput v1, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    .line 3602
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->email:Ljava/lang/String;

    move-object v7, v2

    move-object v6, v3

    .line 3604
    :goto_1
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 3605
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda52;

    move-object v3, v1

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/PaymentFormActivity;ZLjava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :goto_2
    return-void

    .line 3591
    :cond_7
    :goto_3
    invoke-direct {p0, v4}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return-void
.end method

.method private sendSavedForm(Ljava/lang/Runnable;)V
    .locals 4

    .line 3850
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3853
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 3854
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    .line 3855
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->invoicePremiumGiftCode:Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;

    if-eqz v2, :cond_1

    .line 3856
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    goto :goto_0

    .line 3857
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_2

    .line 3858
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;-><init>()V

    .line 3859
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3860
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;->msg_id:I

    .line 3861
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    goto :goto_0

    .line 3863
    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;-><init>()V

    .line 3864
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;->slug:Ljava/lang/String;

    .line 3865
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    .line 3867
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->save:Z

    .line 3868
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    .line 3871
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda57;

    invoke-direct {v2, p0, p1, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda57;-><init>(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;)V

    const/4 p1, 0x2

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private setAddressFields(Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;)V
    .locals 10

    .line 2725
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    .line 2726
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line1:Ljava/lang/String;

    aput-object v8, v7, v6

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line2:Ljava/lang/String;

    aput-object v8, v7, v5

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->city:Ljava/lang/String;

    aput-object v8, v7, v4

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->state:Ljava/lang/String;

    aput-object v8, v7, v3

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    aput-object v8, v7, v2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->post_code:Ljava/lang/String;

    aput-object v0, v7, v1

    const-string v0, "%s %s, %s, %s, %s, %s"

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2727
    iget-object v7, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v7, v7, v4

    sget v8, Lorg/telegram/messenger/R$string;->PaymentShippingAddress:I

    const-string v9, "PaymentShippingAddress"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_payment_address:I

    invoke-virtual {v7, v0, v8, v9, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    .line 2729
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v4

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    const/16 v7, 0x8

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v7

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2731
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2732
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v3

    sget v8, Lorg/telegram/messenger/R$string;->PaymentCheckoutName:I

    const-string v9, "PaymentCheckoutName"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_contacts:I

    invoke-virtual {v4, v0, v8, v9, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    .line 2734
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v3

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    move v3, v6

    goto :goto_1

    :cond_3
    move v3, v7

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2736
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 2737
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v2

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->PaymentCheckoutPhoneNumber:I

    const-string v8, "PaymentCheckoutPhoneNumber"

    invoke-static {v8, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_calls:I

    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    if-nez v9, :cond_5

    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    move v9, v6

    goto :goto_3

    :cond_5
    :goto_2
    move v9, v5

    :goto_3
    invoke-virtual {v0, v3, v4, v8, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    .line 2739
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v2

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v2, v6

    goto :goto_4

    :cond_7
    move v2, v7

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2741
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 2742
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v2, v2, v1

    sget v3, Lorg/telegram/messenger/R$string;->PaymentCheckoutEmail:I

    const-string v4, "PaymentCheckoutEmail"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_mention:I

    iget-object v8, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-eqz v8, :cond_8

    goto :goto_5

    :cond_8
    move v5, v6

    :goto_5
    invoke-virtual {v2, v0, v3, v4, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    .line 2744
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    if-eqz p1, :cond_a

    goto :goto_6

    :cond_a
    move v6, v7

    :goto_6
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private setCurrentPassword(Lorg/telegram/tgnet/TLRPC$account_Password;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 450
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->has_password:Z

    if-eqz v0, :cond_1

    .line 451
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 454
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    goto :goto_0

    .line 456
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 457
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->email_unconfirmed_pattern:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->waitingForEmail:Z

    .line 458
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updatePasswordFields()V

    :goto_0
    return-void
.end method

.method private setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    return-void
.end method

.method private setDonePressed(Z)V
    .locals 2

    .line 4147
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    xor-int/lit8 p1, p1, 0x1

    .line 4148
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->swipeBackEnabled:Z

    .line 4149
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_0

    .line 4150
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4152
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    .line 4153
    aget-object p1, p1, v0

    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private setPaymentMethod(Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;)V
    .locals 0

    .line 2721
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormMethod:Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;

    return-void
.end method

.method private shakeField(I)V
    .locals 1

    .line 4136
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, v0, p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->shakeView(Landroid/view/View;)V

    return-void
.end method

.method private shakeView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 4141
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/high16 v0, 0x40200000    # 2.5f

    .line 4143
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void
.end method

.method private showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2966
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2967
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v2, "OK"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2968
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2969
    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2970
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private showChoosePaymentMethod()V
    .locals 1

    const/4 v0, 0x0

    .line 2637
    invoke-direct {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->showChoosePaymentMethod(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showChoosePaymentMethod(Ljava/lang/Runnable;)V
    .locals 8

    .line 2641
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->PaymentCheckoutMethod:I

    const-string v2, "PaymentCheckoutMethod"

    .line 2642
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object v0

    .line 2643
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2644
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2645
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v3, :cond_0

    .line 2646
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->title:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2647
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_payment_card:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2648
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 2649
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2650
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_payment_card:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2652
    :cond_1
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2653
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    .line 2654
    iget-object v6, p0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v6, :cond_3

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->id:Ljava/lang/String;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->id:Ljava/lang/String;

    invoke-static {v7, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2655
    :cond_3
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->title:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2656
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_payment_card:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2657
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2660
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->additional_methods:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;

    .line 2661
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;->title:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2662
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_payment_provider:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2664
    :cond_5
    sget v4, Lorg/telegram/messenger/R$string;->PaymentCheckoutMethodNewCard:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2665
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_addbot:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2667
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    const/4 v5, 0x0

    move v6, v5

    .line 2668
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 2669
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    new-array v2, v5, [Ljava/lang/CharSequence;

    .line 2671
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, p1, v3, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/Runnable;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v2, v4, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2717
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private showEditDoneProgress(ZZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 4256
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 4257
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x2

    const v10, 0x3dcccccd    # 0.1f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz p1, :cond_4

    .line 4259
    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v14, :cond_4

    .line 4260
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    .line 4262
    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v14, v13}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 4263
    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v14, v13}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 4264
    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-array v6, v6, [Landroid/animation/Animator;

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 4265
    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v15

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v12, [F

    aput v10, v3, v13

    invoke-static {v15, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v13

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 4266
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v2

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v12, [F

    aput v10, v15, v13

    invoke-static {v2, v3, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v12

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 4267
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v2

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v7, v10, v13

    invoke-static {v2, v3, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v9

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v12, [F

    aput v11, v7, v13

    .line 4268
    invoke-static {v2, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v8

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v12, [F

    aput v11, v7, v13

    .line 4269
    invoke-static {v2, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v5

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v12, [F

    aput v11, v5, v13

    .line 4270
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v4

    .line 4264
    invoke-virtual {v14, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_0

    .line 4272
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    if-eqz v2, :cond_2

    new-array v2, v8, [Landroid/animation/Animator;

    .line 4273
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v12, [F

    aput v10, v5, v13

    .line 4274
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v13

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v12, [F

    aput v10, v5, v13

    .line 4275
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v12

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v12, [F

    aput v7, v5, v13

    .line 4276
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v9

    .line 4273
    invoke-virtual {v14, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_0

    .line 4278
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 4279
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 4280
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v12, [F

    aput v10, v6, v13

    .line 4281
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v13

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v12, [F

    aput v10, v6, v13

    .line 4282
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v12

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v12, [F

    aput v7, v6, v13

    .line 4283
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v9

    .line 4280
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4285
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4286
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v12, [F

    aput v11, v6, v13

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v13

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 4287
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v12, [F

    aput v11, v6, v13

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v12

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 4288
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v12, [F

    aput v11, v6, v13

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v9

    .line 4286
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4292
    :cond_3
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$27;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PaymentFormActivity$27;-><init>(Lorg/telegram/ui/PaymentFormActivity;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4311
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4312
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    .line 4313
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 4314
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_5

    .line 4316
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v2, v13}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 4317
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    invoke-virtual {v2, v13}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 4318
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v15, v12, [F

    aput v10, v15, v13

    .line 4319
    invoke-static {v6, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v3, v13

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v12, [F

    aput v10, v15, v13

    .line 4320
    invoke-static {v6, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v3, v12

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v14, v12, [F

    aput v7, v14, v13

    .line 4321
    invoke-static {v6, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v3, v9

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v12, [F

    aput v11, v9, v13

    .line 4322
    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v3, v8

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v12, [F

    aput v11, v8, v13

    .line 4323
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v3, v5

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v12, [F

    aput v11, v7, v13

    .line 4324
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4318
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 4326
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4327
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 4328
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v15, v12, [F

    aput v10, v15, v13

    .line 4329
    invoke-static {v6, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v3, v13

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v12, [F

    aput v10, v15, v13

    .line 4330
    invoke-static {v6, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v3, v12

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v14, v12, [F

    aput v7, v14, v13

    .line 4331
    invoke-static {v6, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v3, v9

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v12, [F

    aput v11, v9, v13

    .line 4332
    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v3, v8

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v12, [F

    aput v11, v8, v13

    .line 4333
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v3, v5

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v12, [F

    aput v11, v7, v13

    .line 4334
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4328
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4337
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$28;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PaymentFormActivity$28;-><init>(Lorg/telegram/ui/PaymentFormActivity;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4356
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4357
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    :goto_2
    return-void
.end method

.method private showPayAlert(Ljava/lang/String;)V
    .locals 4

    .line 2974
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2977
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2978
    sget v1, Lorg/telegram/messenger/R$string;->PaymentTransactionReview:I

    const-string v2, "PaymentTransactionReview"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2979
    sget v1, Lorg/telegram/messenger/R$string;->PaymentTransactionMessage2:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    aput-object v3, v2, p1

    const/4 p1, 0x2

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->currentItemName:Ljava/lang/String;

    aput-object v3, v2, p1

    const-string p1, "PaymentTransactionMessage2"

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2980
    sget p1, Lorg/telegram/messenger/R$string;->Continue:I

    const-string v1, "Continue"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2984
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v1, "Cancel"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2985
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private updatePasswordFields()V
    .locals 10

    .line 2870
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 2873
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2874
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    const/4 v3, 0x3

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-nez v0, :cond_2

    .line 2875
    invoke-direct {p0, v5, v5}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 2876
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2877
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2878
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v5

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2879
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2880
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2881
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v5

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2882
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_1

    .line 2884
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2886
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 2887
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2890
    :cond_2
    invoke-direct {p0, v5, v2}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 2891
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->waitingForEmail:Z

    if-eqz v0, :cond_5

    .line 2892
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v1

    sget v6, Lorg/telegram/messenger/R$string;->EmailPasswordConfirmText2:I

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$account_Password;->email_unconfirmed_pattern:Ljava/lang/String;

    const-string v9, ""

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    move-object v8, v9

    :goto_2
    aput-object v8, v7, v2

    const-string v8, "EmailPasswordConfirmText2"

    invoke-static {v8, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 2893
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2894
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2895
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2896
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2897
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v5

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 2899
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2900
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v5

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2901
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move v0, v2

    :goto_3
    if-ge v0, v3, :cond_4

    .line 2903
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2905
    :cond_4
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 2906
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2909
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2910
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2911
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v5

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2912
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v5

    sget v1, Lorg/telegram/messenger/R$string;->PaymentPasswordEmailInfo:I

    const-string v6, "PaymentPasswordEmailInfo"

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 2913
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2915
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2916
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2917
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move v0, v2

    :goto_5
    if-ge v0, v3, :cond_6

    .line 2919
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    move v0, v2

    .line 2921
    :goto_6
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 2922
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    return-void
.end method

.method private updateSavePaymentField()V
    .locals 8

    .line 3437
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3440
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    if-nez v3, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->can_save_credentials:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webviewLoading:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 3465
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3466
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3467
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v1, v0, v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 3441
    :cond_3
    :goto_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    sget v3, Lorg/telegram/messenger/R$string;->PaymentCardSavePaymentInformationInfoLine1:I

    const-string v4, "PaymentCardSavePaymentInformationInfoLine1"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3442
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 3443
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->loadPasswordInfo()V

    const-string v3, "\n"

    .line 3444
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3445
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 3446
    sget v5, Lorg/telegram/messenger/R$string;->PaymentCardSavePaymentInformationInfoLine2:I

    const-string v6, "PaymentCardSavePaymentInformationInfoLine2"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2a

    .line 3447
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 3448
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 3449
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v5, -0x1

    if-eq v7, v5, :cond_4

    if-eq v6, v5, :cond_4

    add-int/2addr v7, v3

    add-int/2addr v6, v3

    .line 3453
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    new-instance v5, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v5}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    add-int/lit8 v3, v6, 0x1

    const-string v5, ""

    .line 3454
    invoke-virtual {v0, v6, v3, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v3, v7, 0x1

    .line 3455
    invoke-virtual {v0, v7, v3, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3456
    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$LinkSpan;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PaymentFormActivity$LinkSpan;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    sub-int/2addr v6, v4

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v7, v6, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3459
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(Z)V

    .line 3460
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 3461
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3462
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3463
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v1, v0, v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private updateTotalPrice()V
    .locals 6

    .line 2748
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->prices:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->getTotalPriceString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2749
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->totalCell:Lorg/telegram/ui/Cells/TextPriceCell;

    sget v1, Lorg/telegram/messenger/R$string;->PaymentTransactionTotal:I

    const-string v3, "PaymentTransactionTotal"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    aget-object v3, v3, v2

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Cells/TextPriceCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2750
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2751
    sget v1, Lorg/telegram/messenger/R$string;->PaymentCheckoutPay:I

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    const-string v4, "PaymentCheckoutPay"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2753
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->tipLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 2754
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_contacts_inviteBackground:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    .line 2755
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->tipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2756
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->tipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2757
    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2758
    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4, v0}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 2759
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_contacts_inviteText:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 2761
    :cond_1
    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x1fffffff

    and-int/2addr v5, v0

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 2762
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_secretName:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2764
    :goto_1
    invoke-virtual {v3}, Landroid/widget/TextView;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 38

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 533
    iget v0, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 561
    :pswitch_0
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PaymentPassword:I

    const-string v2, "PaymentPassword"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 554
    :pswitch_1
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->test:Z

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Test "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->PaymentReceipt:I

    const-string v3, "PaymentReceipt"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 557
    :cond_0
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PaymentReceipt:I

    const-string v2, "PaymentReceipt"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 547
    :pswitch_2
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->test:Z

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Test "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->PaymentCheckout:I

    const-string v3, "PaymentCheckout"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 550
    :cond_1
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PaymentCheckout:I

    const-string v2, "PaymentCheckout"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 544
    :pswitch_3
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PaymentCardInfo:I

    const-string v2, "PaymentCardInfo"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 541
    :pswitch_4
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PaymentCardInfo:I

    const-string v2, "PaymentCardInfo"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 538
    :pswitch_5
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PaymentShippingMethod:I

    const-string v2, "PaymentShippingMethod"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 535
    :pswitch_6
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PaymentShippingInfo:I

    const-string v2, "PaymentShippingInfo"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 565
    :goto_0
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 566
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 568
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$1;

    invoke-direct {v1, v7}, Lorg/telegram/ui/PaymentFormActivity$1;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 611
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 613
    iget v1, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v10, 0x6

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, -0x1

    if-eqz v1, :cond_2

    if-eq v1, v9, :cond_2

    if-eq v1, v13, :cond_2

    if-eq v1, v12, :cond_2

    if-eq v1, v11, :cond_2

    if-eq v1, v10, :cond_2

    goto :goto_1

    .line 620
    :cond_2
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    const/16 v2, 0x38

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sget v3, Lorg/telegram/messenger/R$string;->Done:I

    const-string v4, "Done"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v9, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 621
    new-instance v0, Lorg/telegram/ui/Components/ContextProgressView;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v1, 0x0

    .line 622
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 623
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 624
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 625
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 626
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-static {v14, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    :goto_1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 631
    move-object v15, v0

    check-cast v15, Landroid/widget/FrameLayout;

    .line 632
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v7, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 634
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v8}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    .line 635
    invoke-virtual {v0, v9}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 636
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-virtual {v7, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    .line 637
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x33

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget v1, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v6, 0x0

    if-ne v1, v11, :cond_3

    const/16 v1, 0x30

    move/from16 v22, v1

    goto :goto_2

    :cond_3
    move/from16 v22, v6

    :goto_2
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    .line 640
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 641
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 642
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v14, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 644
    iget v0, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const-string v2, ""

    if-nez v0, :cond_33

    .line 645
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 646
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 648
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "countries.txt"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 650
    :goto_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v4, ";"

    .line 651
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 652
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    aget-object v11, v3, v13

    invoke-virtual {v4, v6, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 653
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    aget-object v11, v3, v13

    aget-object v10, v3, v6

    invoke-virtual {v4, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    aget-object v10, v3, v6

    aget-object v11, v3, v13

    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    aget-object v4, v3, v9

    aget-object v10, v3, v13

    invoke-virtual {v1, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    array-length v4, v3

    if-le v4, v12, :cond_4

    .line 657
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    aget-object v10, v3, v6

    aget-object v11, v3, v12

    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    :cond_4
    aget-object v4, v3, v9

    aget-object v3, v3, v13

    invoke-virtual {v15, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x6

    goto :goto_3

    .line 661
    :cond_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 663
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 666
    :goto_4
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    sget-object v3, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda31;->INSTANCE:Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda31;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v0, 0xa

    new-array v3, v0, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 668
    iput-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move v3, v6

    :goto_5
    if-ge v3, v0, :cond_20

    if-nez v3, :cond_6

    .line 671
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v10, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v11, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v10, v8, v11}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v10, v4, v6

    .line 672
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v4, v4, v6

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 673
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v4, v4, v6

    sget v10, Lorg/telegram/messenger/R$string;->PaymentShippingAddress:I

    const-string v11, "PaymentShippingAddress"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v10, v10, v6

    invoke-static {v14, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_6
    const/4 v4, 0x6

    if-ne v3, v4, :cond_7

    .line 676
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v10, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v11, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v10, v8, v11}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v10, v4, v6

    .line 677
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v10, v10, v6

    invoke-static {v14, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 679
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v10, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v11, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v10, v8, v11}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v10, v4, v9

    .line 680
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v4, v4, v9

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 681
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v4, v4, v9

    sget v10, Lorg/telegram/messenger/R$string;->PaymentShippingReceiver:I

    const-string v11, "PaymentShippingReceiver"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 682
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v10, v10, v9

    invoke-static {v14, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_6
    const/16 v4, 0x8

    if-ne v3, v4, :cond_9

    .line 686
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 687
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 688
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 689
    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/16 v11, 0x32

    invoke-static {v14, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v10, v4, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_8
    :goto_7
    const/16 v5, 0x9

    goto/16 :goto_b

    :cond_9
    const/16 v4, 0x9

    if-ne v3, v4, :cond_a

    .line 692
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v10, 0x8

    aget-object v4, v4, v10

    invoke-virtual {v4}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    goto :goto_7

    .line 694
    :cond_a
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 695
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 696
    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/16 v11, 0x32

    invoke-static {v14, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v10, v4, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 697
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const/4 v11, 0x5

    if-eq v3, v11, :cond_b

    move v11, v9

    goto :goto_8

    :cond_b
    move v11, v6

    :goto_8
    if-eqz v11, :cond_d

    const/4 v13, 0x7

    if-ne v3, v13, :cond_c

    .line 701
    iget-object v13, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v13, v13, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v13, :cond_c

    :goto_9
    move v11, v6

    goto :goto_a

    :cond_c
    const/4 v13, 0x6

    if-ne v3, v13, :cond_d

    .line 703
    iget-object v13, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v5, v13, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v5, :cond_d

    iget-boolean v5, v13, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-nez v5, :cond_d

    goto :goto_9

    :cond_d
    :goto_a
    if-eqz v11, :cond_8

    .line 708
    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$2;

    invoke-direct {v5, v7, v8}, Lorg/telegram/ui/PaymentFormActivity$2;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    .line 714
    invoke-virtual {v7, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 715
    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v11, 0x53

    invoke-direct {v10, v14, v9, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :goto_b
    if-ne v3, v5, :cond_e

    .line 721
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v10, Lorg/telegram/ui/Components/HintEditText;

    invoke-direct {v10, v8}, Lorg/telegram/ui/Components/HintEditText;-><init>(Landroid/content/Context;)V

    aput-object v10, v5, v3

    goto :goto_c

    .line 723
    :cond_e
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v10, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v10, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    aput-object v10, v5, v3

    .line 725
    :goto_c
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 726
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v5, v9, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 727
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-virtual {v7, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 728
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v7, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v5, v11}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 729
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 730
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    invoke-virtual {v7, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v5, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 731
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    const/16 v11, 0x14

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-virtual {v5, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 732
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    const/high16 v11, 0x3fc00000    # 1.5f

    invoke-virtual {v5, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    const/4 v5, 0x4

    if-ne v3, v5, :cond_f

    .line 734
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    new-instance v11, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda22;

    invoke-direct {v11, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 750
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    :cond_f
    const/16 v5, 0x9

    if-eq v3, v5, :cond_12

    const/16 v5, 0x8

    if-ne v3, v5, :cond_10

    goto :goto_d

    :cond_10
    const/4 v5, 0x7

    if-ne v3, v5, :cond_11

    .line 755
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_e

    .line 757
    :cond_11
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    const/16 v11, 0x4001

    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_e

    .line 753
    :cond_12
    :goto_d
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 759
    :goto_e
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    const v11, 0x10000005

    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setImeOptions(I)V

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_10

    .line 768
    :pswitch_7
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    sget v11, Lorg/telegram/messenger/R$string;->PaymentShippingEmailPlaceholder:I

    const-string v13, "PaymentShippingEmailPlaceholder"

    invoke-static {v13, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v5, :cond_14

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    if-eqz v5, :cond_14

    .line 770
    iget-object v11, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v11, v11, v3

    invoke-virtual {v11, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 762
    :pswitch_8
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    sget v11, Lorg/telegram/messenger/R$string;->PaymentShippingName:I

    const-string v13, "PaymentShippingName"

    invoke-static {v13, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 763
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v5, :cond_14

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_14

    .line 764
    iget-object v11, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v11, v11, v3

    invoke-virtual {v11, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 806
    :pswitch_9
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    sget v11, Lorg/telegram/messenger/R$string;->PaymentShippingZipPlaceholder:I

    const-string v13, "PaymentShippingZipPlaceholder"

    invoke-static {v13, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 807
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v5, :cond_14

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v5, :cond_14

    .line 808
    iget-object v11, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v11, v11, v3

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->post_code:Ljava/lang/String;

    invoke-virtual {v11, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 798
    :pswitch_a
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    sget v11, Lorg/telegram/messenger/R$string;->PaymentShippingCountry:I

    const-string v13, "PaymentShippingCountry"

    invoke-static {v13, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 799
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v5, :cond_14

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v5, :cond_14

    .line 800
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 801
    iget-object v11, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    iput-object v11, v7, Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;

    .line 802
    iget-object v13, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v13, v13, v3

    if-eqz v5, :cond_13

    goto :goto_f

    :cond_13
    move-object v5, v11

    :goto_f
    invoke-virtual {v13, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 792
    :pswitch_b
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    sget v11, Lorg/telegram/messenger/R$string;->PaymentShippingStatePlaceholder:I

    const-string v13, "PaymentShippingStatePlaceholder"

    invoke-static {v13, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 793
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v5, :cond_14

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v5, :cond_14

    .line 794
    iget-object v11, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v11, v11, v3

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->state:Ljava/lang/String;

    invoke-virtual {v11, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 786
    :pswitch_c
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    sget v11, Lorg/telegram/messenger/R$string;->PaymentShippingCityPlaceholder:I

    const-string v13, "PaymentShippingCityPlaceholder"

    invoke-static {v13, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 787
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v5, :cond_14

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v5, :cond_14

    .line 788
    iget-object v11, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v11, v11, v3

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->city:Ljava/lang/String;

    invoke-virtual {v11, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 780
    :pswitch_d
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    sget v11, Lorg/telegram/messenger/R$string;->PaymentShippingAddress2Placeholder:I

    const-string v13, "PaymentShippingAddress2Placeholder"

    invoke-static {v13, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 781
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v5, :cond_14

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v5, :cond_14

    .line 782
    iget-object v11, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v11, v11, v3

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line2:Ljava/lang/String;

    invoke-virtual {v11, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 774
    :pswitch_e
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    sget v11, Lorg/telegram/messenger/R$string;->PaymentShippingAddress1Placeholder:I

    const-string v13, "PaymentShippingAddress1Placeholder"

    invoke-static {v13, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 775
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v5, :cond_14

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v5, :cond_14

    .line 776
    iget-object v11, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v11, v11, v3

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line1:Ljava/lang/String;

    invoke-virtual {v11, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 812
    :cond_14
    :goto_10
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v11, v5, v3

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    invoke-virtual {v11, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    const/16 v5, 0x8

    if-ne v3, v5, :cond_15

    .line 815
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    const-string v11, "+"

    .line 816
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 818
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 819
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    const/16 v29, -0x2

    const/16 v30, -0x2

    const/16 v31, 0x15

    const/16 v32, 0xc

    const/16 v33, 0x0

    const/16 v34, 0x6

    invoke-static/range {v29 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 821
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v5, v10, v6, v6, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 822
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    const/16 v10, 0x13

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setGravity(I)V

    new-array v5, v9, [Landroid/text/InputFilter;

    .line 824
    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    const/4 v11, 0x5

    invoke-direct {v10, v11}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v10, v5, v6

    .line 825
    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v3

    invoke-virtual {v10, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 826
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    const/16 v29, 0x37

    const/16 v31, 0x0

    const/16 v33, 0x15

    invoke-static/range {v29 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 827
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v3

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$3;

    invoke-direct {v5, v7}, Lorg/telegram/ui/PaymentFormActivity$3;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_12

    :cond_15
    const/16 v5, 0x9

    if-ne v3, v5, :cond_16

    .line 900
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 901
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    const/16 v10, 0x13

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setGravity(I)V

    .line 902
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    const/16 v29, -0x1

    const/16 v30, -0x2

    const/16 v31, 0x0

    const/16 v32, 0xc

    const/16 v33, 0x15

    const/16 v34, 0x6

    invoke-static/range {v29 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 903
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v3

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$4;

    invoke-direct {v5, v7}, Lorg/telegram/ui/PaymentFormActivity$4;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_12

    .line 978
    :cond_16
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    const/4 v10, 0x6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v5, v6, v6, v6, v11}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 979
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_17

    const/4 v10, 0x5

    goto :goto_11

    :cond_17
    move v10, v12

    :goto_11
    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setGravity(I)V

    .line 980
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v3

    const/16 v29, -0x1

    const/16 v30, -0x2

    const/16 v31, 0x33

    const/16 v32, 0x15

    const/16 v33, 0xc

    const/16 v34, 0x15

    const/16 v35, 0x6

    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 983
    :goto_12
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v3

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda25;

    invoke-direct {v5, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1f

    .line 1001
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_to_provider:Z

    if-nez v5, :cond_19

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_to_provider:Z

    if-eqz v4, :cond_18

    goto :goto_13

    .line 1027
    :cond_18
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v8, v10}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v5, v4, v9

    .line 1028
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v5, v5, v9

    const/4 v10, -0x2

    invoke-static {v14, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v11, v1

    goto/16 :goto_16

    :cond_19
    :goto_13
    move v5, v6

    const/4 v4, 0x0

    .line 1003
    :goto_14
    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_1b

    .line 1004
    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$User;

    move-object v11, v1

    .line 1005
    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v13, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-wide v12, v13, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->provider_id:J

    cmp-long v0, v0, v12

    if-nez v0, :cond_1a

    move-object v4, v10

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    move-object v1, v11

    const/16 v0, 0xa

    const/4 v12, 0x3

    goto :goto_14

    :cond_1b
    move-object v11, v1

    if-eqz v4, :cond_1c

    .line 1011
    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_1c
    move-object v0, v2

    .line 1016
    :goto_15
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v8, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v4, v1, v9

    .line 1017
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v9

    sget v4, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v8, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1018
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v4, v4, v9

    const/4 v5, -0x2

    invoke-static {v14, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v1, v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1019
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_to_provider:Z

    if-eqz v4, :cond_1d

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_to_provider:Z

    if-eqz v1, :cond_1d

    .line 1020
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v9

    sget v4, Lorg/telegram/messenger/R$string;->PaymentPhoneEmailToProvider:I

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v0, v5, v6

    const-string v0, "PaymentPhoneEmailToProvider"

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    :cond_1d
    if-eqz v4, :cond_1e

    .line 1022
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v9

    sget v4, Lorg/telegram/messenger/R$string;->PaymentEmailToProvider:I

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v0, v5, v6

    const-string v0, "PaymentEmailToProvider"

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 1024
    :cond_1e
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v9

    sget v4, Lorg/telegram/messenger/R$string;->PaymentPhoneToProvider:I

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v0, v5, v6

    const-string v0, "PaymentPhoneToProvider"

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    :goto_16
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v8, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1032
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1033
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v1, Lorg/telegram/messenger/R$string;->PaymentShippingSave:I

    const-string v4, "PaymentShippingSave"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v4, v7, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    invoke-virtual {v0, v1, v4, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 1034
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v4, -0x2

    invoke-static {v14, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1035
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1040
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v8, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v1, v0, v6

    .line 1041
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v6

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v8, v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1042
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v6

    sget v1, Lorg/telegram/messenger/R$string;->PaymentShippingSaveInfo:I

    const-string v4, "PaymentShippingSaveInfo"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1043
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v6

    const/4 v4, -0x2

    invoke-static {v14, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_17

    :cond_1f
    move-object v11, v1

    :goto_17
    add-int/lit8 v3, v3, 0x1

    move-object v1, v11

    const/16 v0, 0xa

    const/4 v5, -0x2

    const/4 v12, 0x3

    const/4 v13, 0x2

    goto/16 :goto_5

    .line 1047
    :cond_20
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-nez v0, :cond_21

    .line 1048
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_18

    :cond_21
    const/16 v1, 0x8

    .line 1050
    :goto_18
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v0, :cond_22

    .line 1051
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1053
    :cond_22
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-nez v0, :cond_23

    .line 1054
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1057
    :cond_23
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-eqz v1, :cond_24

    .line 1058
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v10, 0x9

    aget-object v0, v0, v10

    const v1, 0x10000006

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_19

    :cond_24
    const v1, 0x10000006

    .line 1059
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v2, :cond_25

    .line 1060
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_19

    .line 1061
    :cond_25
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-eqz v0, :cond_26

    .line 1062
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_19

    .line 1064
    :cond_26
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1067
    :goto_19
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v1, v0, v9

    if-eqz v1, :cond_29

    .line 1068
    aget-object v0, v0, v9

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-nez v2, :cond_28

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v2, :cond_28

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v1, :cond_27

    goto :goto_1a

    :cond_27
    const/16 v1, 0x8

    goto :goto_1b

    :cond_28
    :goto_1a
    move v1, v6

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1e

    .line 1069
    :cond_29
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v0, v9

    if-eqz v1, :cond_2c

    .line 1070
    aget-object v0, v0, v9

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-nez v2, :cond_2b

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v2, :cond_2b

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v1, :cond_2a

    goto :goto_1c

    :cond_2a
    const/16 v1, 0x8

    goto :goto_1d

    :cond_2b
    :goto_1c
    move v1, v6

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1072
    :cond_2c
    :goto_1e
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v9

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-nez v2, :cond_2e

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v2, :cond_2e

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v1, :cond_2d

    goto :goto_1f

    :cond_2d
    const/16 v1, 0x8

    goto :goto_20

    :cond_2e
    :goto_1f
    move v1, v6

    :goto_20
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1073
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->shipping_address_requested:Z

    if-nez v0, :cond_2f

    .line 1074
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v6

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1075
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v0, v0, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1076
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1077
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1078
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1079
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1080
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1081
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1084
    :cond_2f
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v0, :cond_30

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 1085
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/PaymentFormActivity;->fillNumber(Ljava/lang/String;)V

    goto :goto_21

    :cond_30
    const/4 v1, 0x0

    .line 1087
    invoke-virtual {v7, v1}, Lorg/telegram/ui/PaymentFormActivity;->fillNumber(Ljava/lang/String;)V

    .line 1090
    :goto_21
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_ae

    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-eqz v1, :cond_ae

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v0, :cond_31

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 1094
    :cond_31
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_32

    .line 1096
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    goto :goto_22

    :catch_1
    move-exception v0

    .line 1099
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_32
    const/4 v1, 0x0

    :goto_22
    if-eqz v1, :cond_ae

    .line 1103
    invoke-virtual {v15, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_ae

    .line 1105
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v14, :cond_ae

    .line 1107
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_62

    :cond_33
    const/16 v10, 0x9

    const/16 v11, 0x15

    const/4 v1, 0x2

    if-ne v0, v1, :cond_60

    .line 1113
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    if-eqz v0, :cond_35

    .line 1115
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "google_pay_public_key"

    .line 1116
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1117
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 1118
    iput-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->googlePayPublicKey:Ljava/lang/String;

    :cond_34
    const-string v1, "acquirer_bank_country"

    .line 1120
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->googlePayCountryCode:Ljava/lang/String;

    const-string v1, "gpay_parameters"

    .line 1121
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->googlePayParameters:Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_23

    :catch_2
    move-exception v0

    .line 1123
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1126
    :cond_35
    :goto_23
    iget-boolean v0, v7, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    if-nez v0, :cond_5b

    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentFormMethod:Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;

    if-eqz v0, :cond_36

    goto/16 :goto_36

    .line 1202
    :cond_36
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    if-eqz v0, :cond_39

    .line 1204
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    :try_start_4
    const-string v1, "need_country"

    .line 1206
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v7, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_24

    .line 1208
    :catch_3
    :try_start_5
    iput-boolean v6, v7, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    :goto_24
    :try_start_6
    const-string v1, "need_zip"

    .line 1211
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v7, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_25

    .line 1213
    :catch_4
    :try_start_7
    iput-boolean v6, v7, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :goto_25
    :try_start_8
    const-string v1, "need_cardholder_name"

    .line 1216
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v7, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_26

    .line 1218
    :catch_5
    :try_start_9
    iput-boolean v6, v7, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z

    :goto_26
    const-string v1, "public_token"

    .line 1220
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "public_token"

    .line 1221
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->providerApiKey:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_27

    :cond_37
    :try_start_a
    const-string v1, "publishable_key"

    .line 1224
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->providerApiKey:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_27

    .line 1226
    :catch_6
    :try_start_b
    iput-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->providerApiKey:Ljava/lang/String;

    :goto_27
    const-string v1, "google_pay_hidden"

    .line 1229
    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_38

    move v0, v9

    goto :goto_28

    :cond_38
    move v0, v6

    :goto_28
    iput-boolean v0, v7, Lorg/telegram/ui/PaymentFormActivity;->initGooglePay:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_29

    :catch_7
    move-exception v0

    .line 1231
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1235
    :cond_39
    :goto_29
    iget-boolean v0, v7, Lorg/telegram/ui/PaymentFormActivity;->initGooglePay:Z

    if-eqz v0, :cond_3c

    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->providerApiKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_provider:Ljava/lang/String;

    const-string v1, "stripe"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    :cond_3a
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->googlePayParameters:Lorg/json/JSONObject;

    if-eqz v0, :cond_3c

    .line 1236
    :cond_3b
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/PaymentFormActivity;->initGooglePay(Landroid/content/Context;)V

    :cond_3c
    const/4 v1, 0x6

    new-array v0, v1, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 1239
    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move v0, v6

    :goto_2a
    if-ge v0, v1, :cond_58

    if-nez v0, :cond_3d

    .line 1242
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v8, v3}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v2, v1, v6

    .line 1243
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v6

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1244
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v6

    sget v2, Lorg/telegram/messenger/R$string;->PaymentCardTitle:I

    const-string v3, "PaymentCardTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1245
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v2, v2, v6

    const/4 v3, -0x2

    invoke-static {v14, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2b

    :cond_3d
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3e

    .line 1247
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v8, v3}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v2, v1, v9

    .line 1248
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1249
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/messenger/R$string;->PaymentBillingAddress:I

    const-string v3, "PaymentBillingAddress"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1250
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v2, v2, v9

    const/4 v3, -0x2

    invoke-static {v14, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3e
    :goto_2b
    const/4 v1, 0x3

    if-eq v0, v1, :cond_40

    const/4 v1, 0x5

    if-eq v0, v1, :cond_40

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3f

    .line 1253
    iget-boolean v1, v7, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-eqz v1, :cond_40

    :cond_3f
    move v1, v9

    goto :goto_2c

    :cond_40
    move v1, v6

    .line 1254
    :goto_2c
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1255
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1256
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1257
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/16 v5, 0x32

    invoke-static {v14, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1260
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v5, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v5, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v0

    .line 1261
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1262
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v9, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 1263
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1264
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 1265
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1266
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 1267
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    const/16 v5, 0x14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 1268
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    const/4 v4, 0x3

    if-ne v0, v4, :cond_41

    new-array v5, v9, [Landroid/text/InputFilter;

    .line 1271
    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v10, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v10, v5, v6

    .line 1272
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1273
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    const/16 v5, 0x82

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1274
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1275
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_2d

    :cond_41
    if-nez v0, :cond_42

    .line 1277
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2d

    :cond_42
    const/4 v4, 0x4

    if-ne v0, v4, :cond_43

    .line 1279
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda23;

    invoke-direct {v5, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1294
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2d

    :cond_43
    if-ne v0, v9, :cond_44

    .line 1296
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    const/16 v5, 0x4002

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2d

    :cond_44
    const/4 v4, 0x2

    if-ne v0, v4, :cond_45

    .line 1298
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    const/16 v5, 0x1001

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2d

    .line 1300
    :cond_45
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    const/16 v5, 0x4001

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1302
    :goto_2d
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    const v5, 0x10000005

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    if-eqz v0, :cond_4b

    if-eq v0, v9, :cond_4a

    const/4 v4, 0x2

    if-eq v0, v4, :cond_49

    const/4 v4, 0x3

    if-eq v0, v4, :cond_48

    const/4 v4, 0x4

    if-eq v0, v4, :cond_47

    const/4 v4, 0x5

    if-eq v0, v4, :cond_46

    goto :goto_2e

    .line 1317
    :cond_46
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    sget v5, Lorg/telegram/messenger/R$string;->PaymentShippingZipPlaceholder:I

    const-string v10, "PaymentShippingZipPlaceholder"

    invoke-static {v10, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2e

    .line 1320
    :cond_47
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    sget v5, Lorg/telegram/messenger/R$string;->PaymentShippingCountry:I

    const-string v10, "PaymentShippingCountry"

    invoke-static {v10, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2e

    .line 1308
    :cond_48
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    sget v5, Lorg/telegram/messenger/R$string;->PaymentCardCvv:I

    const-string v10, "PaymentCardCvv"

    invoke-static {v10, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2e

    .line 1314
    :cond_49
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    sget v5, Lorg/telegram/messenger/R$string;->PaymentCardName:I

    const-string v10, "PaymentCardName"

    invoke-static {v10, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2e

    .line 1311
    :cond_4a
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    sget v5, Lorg/telegram/messenger/R$string;->PaymentCardExpireDate:I

    const-string v10, "PaymentCardExpireDate"

    invoke-static {v10, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2e

    .line 1305
    :cond_4b
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    sget v5, Lorg/telegram/messenger/R$string;->PaymentCardNumber:I

    const-string v10, "PaymentCardNumber"

    invoke-static {v10, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_2e
    if-nez v0, :cond_4c

    .line 1325
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$7;

    invoke-direct {v5, v7}, Lorg/telegram/ui/PaymentFormActivity$7;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2f

    :cond_4c
    if-ne v0, v9, :cond_4d

    .line 1479
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$8;

    invoke-direct {v5, v7}, Lorg/telegram/ui/PaymentFormActivity$8;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1597
    :cond_4d
    :goto_2f
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    const/4 v5, 0x6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v4, v6, v6, v6, v10}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1598
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_4e

    const/4 v5, 0x5

    goto :goto_30

    :cond_4e
    const/4 v5, 0x3

    :goto_30
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 1599
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    const/16 v31, -0x1

    const/16 v32, -0x2

    const/16 v33, 0x33

    const/16 v34, 0x15

    const/16 v35, 0xc

    const/16 v36, 0x15

    const/16 v37, 0x6

    invoke-static/range {v31 .. v37}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1601
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda28;

    invoke-direct {v5, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/4 v4, 0x3

    if-ne v0, v4, :cond_4f

    .line 1622
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v8, v10}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v5, v4, v6

    .line 1623
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v5, v5, v6

    const/4 v10, -0x2

    invoke-static {v14, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_32

    :cond_4f
    const/4 v4, 0x5

    if-ne v0, v4, :cond_50

    .line 1625
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v8, v10}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v10, 0x2

    aput-object v5, v4, v10

    .line 1626
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v5, v5, v10

    const/4 v10, -0x2

    invoke-static {v14, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1628
    new-instance v4, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v8, v5}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1629
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1630
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v5, Lorg/telegram/messenger/R$string;->PaymentCardSavePaymentInformation:I

    const-string v10, "PaymentCardSavePaymentInformation"

    invoke-static {v10, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-boolean v10, v7, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    invoke-virtual {v4, v5, v10, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 1631
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v10, -0x2

    invoke-static {v14, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1632
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda18;

    invoke-direct {v5, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1637
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v8, v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v5, v4, v6

    .line 1638
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v4, v4, v6

    sget v5, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v8, v5, v10}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1639
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    .line 1640
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v5, v5, v6

    const/4 v10, -0x2

    invoke-static {v14, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_32

    :cond_50
    if-nez v0, :cond_52

    .line 1642
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/PaymentFormActivity;->createGooglePayButton(Landroid/content/Context;)V

    .line 1643
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->googlePayContainer:Landroid/widget/FrameLayout;

    const/16 v31, -0x2

    const/16 v32, -0x2

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_51

    const/4 v5, 0x3

    goto :goto_31

    :cond_51
    const/4 v5, 0x5

    :goto_31
    or-int/lit8 v33, v5, 0x10

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x4

    const/16 v37, 0x0

    invoke-static/range {v31 .. v37}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_52
    :goto_32
    if-eqz v1, :cond_53

    .line 1647
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$9;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/PaymentFormActivity$9;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    .line 1653
    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1654
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1655
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x53

    invoke-direct {v3, v14, v9, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_53
    const/4 v1, 0x4

    if-ne v0, v1, :cond_55

    .line 1658
    iget-boolean v1, v7, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z

    if-eqz v1, :cond_54

    goto :goto_34

    :cond_54
    :goto_33
    const/16 v1, 0x8

    goto :goto_35

    :cond_55
    :goto_34
    const/4 v1, 0x5

    if-ne v0, v1, :cond_56

    iget-boolean v1, v7, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-eqz v1, :cond_54

    :cond_56
    const/4 v1, 0x2

    if-ne v0, v1, :cond_57

    iget-boolean v1, v7, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z

    if-nez v1, :cond_57

    goto :goto_33

    .line 1659
    :goto_35
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_57
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x6

    goto/16 :goto_2a

    .line 1662
    :cond_58
    iget-boolean v0, v7, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z

    if-nez v0, :cond_59

    iget-boolean v0, v7, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-nez v0, :cond_59

    .line 1663
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v9

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1664
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v0, v0, v6

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1666
    :cond_59
    iget-boolean v0, v7, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-eqz v0, :cond_5a

    .line 1667
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const v1, 0x10000006

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_62

    :cond_5a
    const v1, 0x10000006

    .line 1669
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_62

    .line 1127
    :cond_5b
    :goto_36
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->googlePayPublicKey:Ljava/lang/String;

    if-nez v0, :cond_5c

    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->googlePayParameters:Lorg/json/JSONObject;

    if-eqz v0, :cond_5d

    .line 1128
    :cond_5c
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/PaymentFormActivity;->initGooglePay(Landroid/content/Context;)V

    .line 1130
    :cond_5d
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/PaymentFormActivity;->createGooglePayButton(Landroid/content/Context;)V

    .line 1131
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->googlePayContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x32

    invoke-static {v14, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1133
    iput-boolean v9, v7, Lorg/telegram/ui/PaymentFormActivity;->webviewLoading:Z

    .line 1134
    invoke-direct {v7, v9, v9}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 1135
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 1136
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1137
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1138
    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->checkAndroidTheme(Landroid/content/Context;Z)V

    .line 1139
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$5;

    invoke-direct {v0, v7, v8}, Lorg/telegram/ui/PaymentFormActivity$5;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    .line 1151
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1152
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_5e

    .line 1155
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 1156
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 1157
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v9}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    :cond_5e
    const/16 v1, 0x11

    if-lt v0, v1, :cond_5f

    .line 1160
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2}, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/PaymentFormActivity$1;)V

    const-string v2, "TelegramWebviewProxy"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1162
    :cond_5f
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$6;

    invoke-direct {v1, v7}, Lorg/telegram/ui/PaymentFormActivity$6;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1183
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const/4 v2, -0x2

    invoke-static {v14, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1185
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v8, v3}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 1186
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v1, v1, v3

    invoke-static {v14, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1188
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v8, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1189
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1190
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v1, Lorg/telegram/messenger/R$string;->PaymentCardSavePaymentInformation:I

    const-string v2, "PaymentCardSavePaymentInformation"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v7, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    invoke-virtual {v0, v1, v2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 1191
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, -0x2

    invoke-static {v14, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1192
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1197
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v8, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v1, v0, v6

    .line 1198
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v6

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v8, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1199
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    .line 1200
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v6

    const/4 v2, -0x2

    invoke-static {v14, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_62

    :cond_60
    const/16 v4, 0x8

    if-ne v0, v9, :cond_65

    .line 1673
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    if-nez v0, :cond_61

    move v0, v6

    goto :goto_37

    :cond_61
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->shipping_options:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1674
    :goto_37
    new-array v1, v0, [Lorg/telegram/ui/Cells/RadioCell;

    iput-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    move v1, v6

    :goto_38
    if-ge v1, v0, :cond_64

    .line 1676
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->shipping_options:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    .line 1677
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    new-instance v4, Lorg/telegram/ui/Cells/RadioCell;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    .line 1678
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v3, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1679
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v3, v3, v1

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1680
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v3, v3, v1

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->prices:Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Lorg/telegram/ui/PaymentFormActivity;->getTotalPriceString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->title:Ljava/lang/String;

    aput-object v2, v5, v9

    const-string v2, "%s - %s"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_62

    move v4, v9

    goto :goto_39

    :cond_62
    move v4, v6

    :goto_39
    add-int/lit8 v5, v0, -0x1

    if-eq v1, v5, :cond_63

    move v5, v9

    goto :goto_3a

    :cond_63
    move v5, v6

    :goto_3a
    invoke-virtual {v3, v2, v4, v5}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    .line 1681
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v2, v2, v1

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda12;

    invoke-direct {v3, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1687
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 1689
    :cond_64
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v8, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v1, v0, v6

    .line 1690
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v6

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v8, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1691
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v6

    const/4 v2, -0x2

    invoke-static {v14, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_62

    :cond_65
    const/4 v1, 0x3

    if-ne v0, v1, :cond_71

    const/4 v1, 0x2

    new-array v0, v1, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 1693
    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move v0, v6

    :goto_3b
    if-ge v0, v1, :cond_ae

    if-nez v0, :cond_66

    .line 1696
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v3, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v8, v4}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v3, v1, v6

    .line 1697
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v6

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1698
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v6

    sget v3, Lorg/telegram/messenger/R$string;->PaymentCardTitle:I

    const-string v4, "PaymentCardTitle"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1699
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v3, v3, v6

    const/4 v4, -0x2

    invoke-static {v14, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1702
    :cond_66
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1703
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1704
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/16 v4, 0x32

    invoke-static {v14, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1705
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    if-eq v0, v9, :cond_67

    move v4, v9

    goto :goto_3c

    :cond_67
    move v4, v6

    :goto_3c
    const/4 v5, 0x7

    if-eqz v4, :cond_69

    if-ne v0, v5, :cond_68

    .line 1709
    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v10, :cond_68

    :goto_3d
    move v4, v6

    goto :goto_3e

    :cond_68
    const/4 v10, 0x6

    if-ne v0, v10, :cond_69

    .line 1711
    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v11, v10, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v11, :cond_69

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-nez v10, :cond_69

    goto :goto_3d

    :cond_69
    :goto_3e
    if-eqz v4, :cond_6a

    .line 1716
    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$10;

    invoke-direct {v4, v7, v8}, Lorg/telegram/ui/PaymentFormActivity$10;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    .line 1722
    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1723
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1724
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v10, 0x53

    invoke-direct {v3, v14, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1727
    :cond_6a
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v4, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v0

    .line 1728
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1729
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v9, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 1730
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1731
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 1732
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1733
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 1734
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    const/16 v4, 0x14

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 1735
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    if-nez v0, :cond_6b

    .line 1737
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    sget-object v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda24;->INSTANCE:Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda24;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1738
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_3f

    .line 1740
    :cond_6b
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    const/16 v4, 0x81

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 1741
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1743
    :goto_3f
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    const v4, 0x10000006

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    if-eqz v0, :cond_6d

    if-eq v0, v9, :cond_6c

    goto :goto_41

    .line 1749
    :cond_6c
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    sget v4, Lorg/telegram/messenger/R$string;->LoginPassword:I

    const-string v10, "LoginPassword"

    invoke-static {v10, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1750
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_41

    .line 1746
    :cond_6d
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-nez v4, :cond_6e

    move-object v4, v2

    goto :goto_40

    :cond_6e
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->title:Ljava/lang/String;

    :goto_40
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1754
    :goto_41
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    const/4 v4, 0x6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v3, v6, v6, v6, v10}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1755
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_6f

    const/4 v4, 0x5

    goto :goto_42

    :cond_6f
    const/4 v4, 0x3

    :goto_42
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setGravity(I)V

    .line 1756
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    const/16 v31, -0x1

    const/16 v32, -0x2

    const/16 v33, 0x33

    const/16 v34, 0x15

    const/16 v35, 0xc

    const/16 v36, 0x15

    const/16 v37, 0x6

    invoke-static/range {v31 .. v37}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1758
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v0

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda27;

    invoke-direct {v3, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    if-ne v0, v9, :cond_70

    .line 1766
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v8, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v3, v1, v6

    .line 1767
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v6

    sget v3, Lorg/telegram/messenger/R$string;->PaymentConfirmationMessage:I

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->title:Ljava/lang/String;

    aput-object v10, v4, v6

    const-string v10, "PaymentConfirmationMessage"

    invoke-static {v10, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1768
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v6

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v8, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1769
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v3, v3, v6

    const/4 v10, -0x2

    invoke-static {v14, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1771
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v8, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v3, v1, v6

    .line 1772
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v1, v1, v6

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1773
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v1, v1, v6

    sget v3, Lorg/telegram/messenger/R$string;->PaymentConfirmationNewCard:I

    const-string v10, "PaymentConfirmationNewCard"

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 1774
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v3, v3, v6

    const/4 v10, -0x2

    invoke-static {v14, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1775
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v1, v1, v6

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1780
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v8, v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v3, v1, v9

    .line 1781
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v9

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {v8, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1782
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v3, v3, v9

    const/4 v4, -0x2

    invoke-static {v14, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v1, v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_70
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    goto/16 :goto_3b

    :cond_71
    const/4 v1, 0x4

    if-eq v0, v1, :cond_7f

    const/4 v1, 0x5

    if-ne v0, v1, :cond_72

    goto/16 :goto_4b

    :cond_72
    const/4 v1, 0x6

    if-ne v0, v1, :cond_ae

    .line 2459
    new-instance v0, Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Cells/EditTextSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    .line 2460
    sget v1, Lorg/telegram/messenger/R$string;->PasswordCode:I

    const-string v3, "PasswordCode"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v6}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->setTextAndHint(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2461
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2462
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const/4 v1, 0x3

    .line 2463
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v1, 0x6

    .line 2464
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2465
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda26;

    invoke-direct {v1, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2472
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$19;

    invoke-direct {v1, v7}, Lorg/telegram/ui/PaymentFormActivity$19;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2490
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    const/4 v2, -0x2

    invoke-static {v14, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2492
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v8, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2493
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v2

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v8, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2494
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v2

    const/4 v2, -0x2

    invoke-static {v14, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2496
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v8, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v1, v0, v9

    .line 2497
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v9

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2498
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v9

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 2499
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v9

    invoke-virtual {v7, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 2500
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v9

    sget v1, Lorg/telegram/messenger/R$string;->ResendCode:I

    const-string v2, "ResendCode"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 2501
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v1, v1, v9

    const/4 v2, -0x2

    invoke-static {v14, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2502
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v9

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2514
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v8, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v1, v0, v6

    .line 2515
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v6

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2516
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v6

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 2517
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v6

    invoke-virtual {v7, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 2518
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v6

    sget v1, Lorg/telegram/messenger/R$string;->AbortPassword:I

    const-string v2, "AbortPassword"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 2519
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v1, v1, v6

    const/4 v2, -0x2

    invoke-static {v14, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2520
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v6

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x3

    new-array v0, v1, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 2538
    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move v0, v6

    :goto_43
    if-ge v0, v1, :cond_7e

    if-nez v0, :cond_73

    .line 2541
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v8, v3}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v2, v1, v6

    .line 2542
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v6

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2543
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v6

    sget v2, Lorg/telegram/messenger/R$string;->PaymentPasswordTitle:I

    const-string v3, "PaymentPasswordTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 2544
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v2, v2, v6

    const/4 v3, -0x2

    invoke-static {v14, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_44

    :cond_73
    const/4 v1, 0x2

    if-ne v0, v1, :cond_74

    .line 2546
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v8, v3}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v2, v1, v9

    .line 2547
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2548
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/messenger/R$string;->PaymentPasswordEmailTitle:I

    const-string v3, "PaymentPasswordEmailTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 2549
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v2, v2, v9

    const/4 v3, -0x2

    invoke-static {v14, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2552
    :cond_74
    :goto_44
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2553
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 2554
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/16 v3, 0x32

    invoke-static {v14, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2555
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    if-nez v0, :cond_75

    .line 2558
    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$20;

    invoke-direct {v4, v7, v8}, Lorg/telegram/ui/PaymentFormActivity$20;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    .line 2564
    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2565
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2566
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x53

    invoke-direct {v2, v14, v9, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_45

    :cond_75
    const/16 v5, 0x53

    .line 2569
    :goto_45
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v4, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v0

    .line 2570
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 2571
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v9, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 2572
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 2573
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 2574
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2575
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 2576
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    const/16 v4, 0x14

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 2577
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    if-eqz v0, :cond_77

    if-ne v0, v9, :cond_76

    goto :goto_46

    .line 2584
    :cond_76
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    const/16 v4, 0x21

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 2585
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    const v4, 0x10000006

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_47

    .line 2580
    :cond_77
    :goto_46
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    const/16 v4, 0x81

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 2581
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2582
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    const v4, 0x10000005

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_47
    if-eqz v0, :cond_7a

    if-eq v0, v9, :cond_79

    const/4 v2, 0x2

    if-eq v0, v2, :cond_78

    goto :goto_48

    .line 2597
    :cond_78
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    sget v4, Lorg/telegram/messenger/R$string;->PaymentPasswordEmail:I

    const-string v10, "PaymentPasswordEmail"

    invoke-static {v10, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_48

    .line 2594
    :cond_79
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    sget v4, Lorg/telegram/messenger/R$string;->PaymentPasswordReEnter:I

    const-string v10, "PaymentPasswordReEnter"

    invoke-static {v10, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_48

    .line 2590
    :cond_7a
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    sget v4, Lorg/telegram/messenger/R$string;->PaymentPasswordEnter:I

    const-string v10, "PaymentPasswordEnter"

    invoke-static {v10, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2591
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 2601
    :goto_48
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    const/4 v4, 0x6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v2, v6, v6, v6, v10}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 2602
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_7b

    const/4 v11, 0x5

    goto :goto_49

    :cond_7b
    const/4 v11, 0x3

    :goto_49
    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setGravity(I)V

    .line 2603
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    const/16 v31, -0x1

    const/16 v32, -0x2

    const/16 v33, 0x33

    const/16 v34, 0x15

    const/16 v35, 0xc

    const/16 v36, 0x15

    const/16 v37, 0x6

    invoke-static/range {v31 .. v37}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2605
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v0

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda29;

    invoke-direct {v2, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    if-ne v0, v9, :cond_7c

    .line 2620
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v8, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v2, v1, v6

    .line 2621
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v6

    sget v2, Lorg/telegram/messenger/R$string;->PaymentPasswordInfo:I

    const-string v4, "PaymentPasswordInfo"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 2622
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v6

    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v8, v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2623
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v2, v2, v6

    const/4 v4, -0x2

    invoke-static {v14, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v1, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4a

    :cond_7c
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7d

    .line 2625
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v8, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v2, v1, v9

    .line 2626
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/messenger/R$string;->PaymentPasswordEmailInfo:I

    const-string v4, "PaymentPasswordEmailInfo"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 2627
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v8, v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2628
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v2, v2, v9

    const/4 v4, -0x2

    invoke-static {v14, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v1, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7d
    :goto_4a
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    goto/16 :goto_43

    .line 2631
    :cond_7e
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PaymentFormActivity;->updatePasswordFields()V

    goto/16 :goto_62

    .line 1786
    :cond_7f
    :goto_4b
    new-instance v0, Lorg/telegram/ui/Cells/PaymentInfoCell;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Cells/PaymentInfoCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    .line 1787
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1788
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_80

    .line 1789
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/Cells/PaymentInfoCell;->setInvoice(Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;Ljava/lang/String;)V

    goto :goto_4c

    .line 1790
    :cond_80
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentReceipt:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;

    if-eqz v0, :cond_81

    .line 1791
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/Cells/PaymentInfoCell;->setReceipt(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;Ljava/lang/String;)V

    goto :goto_4c

    .line 1792
    :cond_81
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    if-eqz v0, :cond_82

    .line 1793
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->title:Ljava/lang/String;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->description:Ljava/lang/String;

    iget-object v12, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v13, v7, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v32, v3

    move-object/from16 v33, v5

    move-object/from16 v34, v12

    move-object/from16 v35, v13

    move-object/from16 v36, v1

    invoke-virtual/range {v31 .. v36}, Lorg/telegram/ui/Cells/PaymentInfoCell;->setInfo(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$WebDocument;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4c

    .line 1794
    :cond_82
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->invoicePremiumGiftCode:Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftCode;

    if-eqz v0, :cond_83

    .line 1795
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->title:Ljava/lang/String;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->description:Ljava/lang/String;

    iget-object v12, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v13, v7, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v32, v3

    move-object/from16 v33, v5

    move-object/from16 v34, v12

    move-object/from16 v35, v13

    move-object/from16 v36, v1

    invoke-virtual/range {v31 .. v36}, Lorg/telegram/ui/Cells/PaymentInfoCell;->setInfo(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$WebDocument;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1797
    :cond_83
    :goto_4c
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    const/4 v5, -0x2

    invoke-static {v14, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1799
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v8, v3}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v1, v0, v6

    .line 1800
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v1, v1, v6

    invoke-static {v14, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1802
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->prices:Ljava/util/ArrayList;

    .line 1803
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-eqz v1, :cond_84

    .line 1804
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->prices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_84
    new-array v0, v9, [Ljava/lang/String;

    .line 1806
    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    move v0, v6

    .line 1808
    :goto_4d
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->prices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_85

    .line 1809
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->prices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    .line 1811
    new-instance v3, Lorg/telegram/ui/Cells/TextPriceCell;

    invoke-direct {v3, v8}, Lorg/telegram/ui/Cells/TextPriceCell;-><init>(Landroid/content/Context;)V

    .line 1812
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v12}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1813
    iget-object v12, v1, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->label:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v13

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    invoke-virtual {v13, v4, v5, v1}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v12, v1, v6}, Lorg/telegram/ui/Cells/TextPriceCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1814
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x8

    const/4 v5, -0x2

    goto :goto_4d

    .line 1817
    :cond_85
    iget v0, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_86

    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    if-eqz v0, :cond_86

    .line 1818
    new-instance v0, Lorg/telegram/ui/Cells/TextPriceCell;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Cells/TextPriceCell;-><init>(Landroid/content/Context;)V

    .line 1819
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1820
    sget v3, Lorg/telegram/messenger/R$string;->PaymentTip:I

    const-string v4, "PaymentTip"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    invoke-virtual {v4, v12, v13, v5}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v6}, Lorg/telegram/ui/Cells/TextPriceCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1821
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1824
    :cond_86
    new-instance v0, Lorg/telegram/ui/Cells/TextPriceCell;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Cells/TextPriceCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->totalCell:Lorg/telegram/ui/Cells/TextPriceCell;

    .line 1825
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1826
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->prices:Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Lorg/telegram/ui/PaymentFormActivity;->getTotalPriceString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 1827
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->totalCell:Lorg/telegram/ui/Cells/TextPriceCell;

    sget v4, Lorg/telegram/messenger/R$string;->PaymentTransactionTotal:I

    const-string v5, "PaymentTransactionTotal"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v0, v4, v5, v9}, Lorg/telegram/ui/Cells/TextPriceCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1829
    iget v0, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_8c

    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8c

    .line 1830
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1831
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1832
    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1833
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_invoice;->suggested_tip_amounts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_87

    const/16 v5, 0x28

    goto :goto_4e

    :cond_87
    const/16 v5, 0x4e

    :goto_4e
    invoke-static {v14, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1834
    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda11;

    invoke-direct {v4, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1839
    new-instance v4, Lorg/telegram/ui/Cells/TextPriceCell;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Cells/TextPriceCell;-><init>(Landroid/content/Context;)V

    .line 1840
    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1841
    sget v3, Lorg/telegram/messenger/R$string;->PaymentTipOptional:I

    const-string v5, "PaymentTipOptional"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v2, v6}, Lorg/telegram/ui/Cells/TextPriceCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1842
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-array v3, v9, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 1844
    iput-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 1845
    new-instance v4, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v6

    .line 1846
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1847
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v9, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 1848
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1849
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 1850
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1851
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 1852
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    const/16 v5, 0x14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 1853
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 1854
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1855
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    const v5, 0x10000006

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1856
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    const-wide/16 v12, 0x0

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    invoke-virtual {v5, v12, v13, v1}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1857
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v6

    const/4 v3, 0x6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v1, v6, v6, v6, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1858
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v6

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_88

    const/4 v3, 0x3

    goto :goto_4f

    :cond_88
    const/4 v3, 0x5

    :goto_4f
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 1859
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v6

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x33

    const/16 v20, 0x15

    const/16 v21, 0x9

    const/16 v22, 0x15

    const/16 v23, 0x1

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1860
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v6

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$11;

    invoke-direct {v3, v7}, Lorg/telegram/ui/PaymentFormActivity$11;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1979
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v6

    sget-object v3, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda30;->INSTANCE:Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda30;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1986
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1988
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->suggested_tip_amounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8b

    .line 1989
    new-instance v12, Landroid/widget/HorizontalScrollView;

    invoke-direct {v12, v8}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 1990
    invoke-virtual {v12, v6}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 1991
    invoke-virtual {v12, v6}, Landroid/widget/HorizontalScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 1992
    invoke-virtual {v12, v6}, Landroid/widget/HorizontalScrollView;->setClipToPadding(Z)V

    .line 1993
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v12, v1, v6, v3, v6}, Landroid/widget/HorizontalScrollView;->setPadding(IIII)V

    .line 1994
    invoke-virtual {v12, v9}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    const/16 v17, -0x1

    const/16 v18, 0x1e

    const/16 v19, 0x33

    const/16 v20, 0x0

    const/16 v21, 0x2c

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 1995
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-array v0, v9, [I

    new-array v13, v9, [I

    .line 1998
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->suggested_tip_amounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2000
    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$12;

    const/16 v17, 0x5

    move-object v1, v3

    move-object/from16 v18, v2

    move-object/from16 v2, p0

    move-object v10, v3

    move-object/from16 v3, p1

    const/16 v11, 0x8

    move v4, v5

    move v11, v5

    move-object v5, v0

    move v9, v6

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/PaymentFormActivity$12;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;I[I[I)V

    iput-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->tipLayout:Landroid/widget/LinearLayout;

    .line 2057
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2058
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->tipLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x1e

    const/16 v3, 0x33

    invoke-static {v14, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2059
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contacts_inviteBackground:I

    invoke-virtual {v7, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    move v6, v9

    :goto_50
    if-ge v6, v11, :cond_8d

    .line 2062
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_89

    .line 2063
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->suggested_tip_amounts:Ljava/util/ArrayList;

    sub-int v5, v11, v6

    const/4 v3, 0x1

    sub-int/2addr v5, v3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_51

    .line 2065
    :cond_89
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->suggested_tip_amounts:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2067
    :goto_51
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    invoke-virtual {v4, v2, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2068
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v10, 0x41600000    # 14.0f

    const/4 v12, 0x1

    .line 2069
    invoke-virtual {v5, v12, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v10, "fonts/rmedium.ttf"

    .line 2070
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2071
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setLines(I)V

    .line 2072
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2073
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2074
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v10, 0xf

    .line 2075
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    const/16 v12, 0xf

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v5, v10, v9, v12, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2076
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chats_secretName:I

    invoke-virtual {v7, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v10, 0xf

    .line 2077
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    const v12, 0x1fffffff

    and-int/2addr v12, v1

    invoke-static {v10, v12}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v10, 0x1

    .line 2078
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v10, 0x11

    .line 2079
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 2080
    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->tipLayout:Landroid/widget/LinearLayout;

    const/16 v31, -0x2

    const/16 v32, -0x1

    const/16 v33, 0x13

    const/16 v34, 0x0

    const/16 v35, 0x0

    add-int/lit8 v12, v11, -0x1

    if-eq v6, v12, :cond_8a

    const/16 v36, 0x9

    goto :goto_52

    :cond_8a
    move/from16 v36, v9

    :goto_52
    const/16 v37, 0x0

    invoke-static/range {v31 .. v37}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v10, v5, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2081
    new-instance v10, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda20;

    invoke-direct {v10, v7, v5, v2, v3}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/widget/TextView;J)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2094
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/16 v3, 0x1e

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 2095
    sget v3, Lorg/telegram/messenger/R$id;->width_tag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 2096
    aget v3, v0, v9

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v0, v9

    .line 2097
    aget v3, v13, v9

    add-int/2addr v3, v2

    aput v3, v13, v9

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_50

    :cond_8b
    move-object/from16 v18, v2

    move v9, v6

    const/16 v17, 0x5

    goto :goto_53

    :cond_8c
    move/from16 v17, v1

    move-object/from16 v18, v2

    move v9, v6

    .line 2102
    :cond_8d
    :goto_53
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->totalCell:Lorg/telegram/ui/Cells/TextPriceCell;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2104
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v8, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2105
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v0, v0, v2

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v8, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2106
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v1, v1, v2

    const/4 v2, -0x2

    invoke-static {v14, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2108
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v1, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v9

    .line 2109
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v9

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2110
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v9

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    if-eqz v3, :cond_8e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_8e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_54

    :cond_8e
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    :goto_54
    sget v3, Lorg/telegram/messenger/R$string;->PaymentCheckoutMethod:I

    const-string v4, "PaymentCheckoutMethod"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_payment_card:I

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    .line 2112
    iget-boolean v0, v7, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    if-eqz v0, :cond_90

    .line 2113
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_8f

    goto :goto_55

    :cond_8f
    const/16 v6, 0x8

    goto :goto_56

    :cond_90
    :goto_55
    move v6, v9

    .line 2115
    :goto_56
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v9

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2116
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2117
    iget v0, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_91

    .line 2118
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v9

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_91
    move v0, v9

    const/4 v1, 0x0

    .line 2127
    :goto_57
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_93

    .line 2128
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 2129
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->provider_id:J

    cmp-long v4, v4, v10

    if-nez v4, :cond_92

    move-object v1, v3

    :cond_92
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 2133
    :cond_93
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v3, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-direct {v3, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 2134
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v4

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_97

    .line 2137
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v4

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->PaymentCheckoutProvider:I

    const-string v5, "PaymentCheckoutProvider"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_payment_provider:I

    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    if-eqz v10, :cond_94

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-nez v10, :cond_95

    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-nez v10, :cond_95

    :cond_94
    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v10, :cond_96

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v10, :cond_96

    :cond_95
    const/4 v10, 0x1

    goto :goto_58

    :cond_96
    move v10, v9

    :goto_58
    invoke-virtual {v0, v3, v4, v5, v10}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    .line 2138
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_59

    :cond_97
    move v5, v4

    move-object/from16 v3, v18

    .line 2142
    :goto_59
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v5

    if-eqz v1, :cond_98

    move v4, v6

    goto :goto_5a

    :cond_98
    const/16 v4, 0x8

    :goto_5a
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2144
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    if-nez v0, :cond_99

    iget-boolean v1, v7, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    if-eqz v1, :cond_a4

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    if-eqz v1, :cond_a4

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v1, :cond_a4

    :cond_99
    if-eqz v0, :cond_9a

    .line 2145
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    goto :goto_5b

    :cond_9a
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    .line 2147
    :goto_5b
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v4, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x2

    aput-object v4, v1, v5

    .line 2148
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2149
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2150
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v1, :cond_9c

    .line 2151
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2152
    iget v1, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_9b

    .line 2153
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    const/4 v4, 0x1

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2154
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda19;

    invoke-direct {v4, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5c

    .line 2166
    :cond_9b
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2170
    :cond_9c
    :goto_5c
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v4, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x3

    aput-object v4, v1, v5

    .line 2171
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2172
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2173
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_9e

    .line 2174
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2175
    iget v1, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_9d

    .line 2176
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    const/4 v4, 0x1

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2177
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda14;

    invoke-direct {v4, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5d

    .line 2189
    :cond_9d
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2193
    :cond_9e
    :goto_5d
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v4, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x4

    aput-object v4, v1, v5

    .line 2194
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2195
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2196
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    if-eqz v1, :cond_a0

    .line 2197
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2198
    iget v1, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    if-ne v1, v5, :cond_9f

    .line 2199
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    const/4 v4, 0x1

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2200
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda10;

    invoke-direct {v4, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5e

    .line 2212
    :cond_9f
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2216
    :cond_a0
    :goto_5e
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v4, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v1, v17

    .line 2217
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v17

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2218
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v17

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2219
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    if-eqz v1, :cond_a2

    .line 2220
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v17

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2221
    iget v1, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_a1

    .line 2222
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v17

    const/4 v4, 0x1

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2223
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v17

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda15;

    invoke-direct {v4, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5f

    .line 2235
    :cond_a1
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v17

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2239
    :cond_a2
    :goto_5f
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-eqz v1, :cond_a3

    .line 2240
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v4, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x6

    aput-object v4, v1, v5

    .line 2241
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2242
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->title:Ljava/lang/String;

    sget v10, Lorg/telegram/messenger/R$string;->PaymentCheckoutShippingMethod:I

    const-string v11, "PaymentCheckoutShippingMethod"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->msg_payment_delivery:I

    invoke-virtual {v1, v4, v10, v11, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    .line 2243
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2245
    :cond_a3
    invoke-direct {v7, v0}, Lorg/telegram/ui/PaymentFormActivity;->setAddressFields(Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;)V

    .line 2248
    :cond_a4
    iget v0, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_ab

    .line 2249
    iget-boolean v0, v7, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, v7, Lorg/telegram/ui/PaymentFormActivity;->recurrentAccepted:Z

    .line 2250
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    invoke-direct {v0, v7, v8, v1}, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    .line 2251
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a5

    .line 2252
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2253
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-static {v4, v9}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2254
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    invoke-static {v14, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2256
    :cond_a5
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    const/16 v4, 0x30

    const/16 v5, 0x50

    invoke-static {v14, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v15, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2257
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda21;

    invoke-direct {v4, v7, v3}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2331
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    .line 2332
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_contacts_inviteText:I

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2333
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->PaymentCheckoutPay:I

    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/Object;

    iget-object v11, v7, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    aget-object v11, v11, v9

    aput-object v11, v10, v9

    const-string v11, "PaymentCheckoutPay"

    invoke-static {v11, v4, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2334
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2335
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 2336
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2337
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    invoke-static {v14, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2339
    new-instance v1, Lorg/telegram/ui/Components/ContextProgressView;

    invoke-direct {v1, v8, v9}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    iput-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v4, 0x4

    .line 2340
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 2341
    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    .line 2342
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const v4, 0x2fffffff

    and-int/2addr v4, v1

    invoke-virtual {v3, v4, v1}, Lorg/telegram/ui/Components/ContextProgressView;->setColors(II)V

    .line 2343
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-static {v14, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2345
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    iget-boolean v3, v7, Lorg/telegram/ui/PaymentFormActivity;->recurrentAccepted:Z

    invoke-virtual {v1, v3, v9}, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->setChecked(ZZ)V

    .line 2346
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    iget-boolean v3, v7, Lorg/telegram/ui/PaymentFormActivity;->recurrentAccepted:Z

    if-nez v3, :cond_a6

    const v3, 0x3f4ccccd    # 0.8f

    goto :goto_60

    :cond_a6
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_60
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2348
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2349
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    .line 2351
    invoke-static {v8, v1}, Lorg/telegram/messenger/AndroidUtilities;->checkAndroidTheme(Landroid/content/Context;Z)V

    .line 2352
    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$17;

    invoke-direct {v3, v7, v8}, Lorg/telegram/ui/PaymentFormActivity$17;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    iput-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    .line 2359
    invoke-virtual {v3, v14}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 2360
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2361
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/16 v3, 0x15

    if-lt v0, v3, :cond_a7

    .line 2364
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 2365
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 2366
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 2369
    :cond_a7
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$18;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/PaymentFormActivity$18;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const/4 v1, 0x0

    .line 2412
    iput-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    .line 2413
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->terms_url:Ljava/lang/String;

    if-eqz v0, :cond_aa

    .line 2414
    new-instance v0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/PaymentFormActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    .line 2415
    iget-boolean v1, v7, Lorg/telegram/ui/PaymentFormActivity;->recurrentAccepted:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->setChecked(Z)V

    .line 2416
    sget v0, Lorg/telegram/messenger/R$string;->PaymentCheckoutAcceptRecurrent:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2417
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v3, 0x2a

    .line 2418
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/16 v4, 0x2a

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-eq v3, v14, :cond_a8

    if-eq v4, v14, :cond_a8

    .line 2420
    new-instance v5, Landroid/text/SpannableString;

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v0, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2421
    new-instance v10, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    iget-object v11, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_invoice;->terms_url:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v5, v10, v9, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/4 v10, 0x1

    add-int/2addr v4, v10

    .line 2422
    invoke-virtual {v1, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2423
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a8
    const-string v3, "%1$s"

    .line 2426
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v14, :cond_a9

    add-int/lit8 v3, v0, 0x4

    .line 2428
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    invoke-virtual {v1, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2429
    new-instance v3, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    const/16 v5, 0x21

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2432
    :cond_a9
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->setText(Ljava/lang/CharSequence;)V

    .line 2434
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorWithBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2435
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2445
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    const/16 v25, -0x1

    const/16 v26, -0x2

    const/16 v27, 0x50

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x30

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2448
    :cond_aa
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-static {v14, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2449
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2452
    :cond_ab
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v8, v3}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 2453
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v0, v0, v3

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v8, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v6, :cond_ad

    .line 2454
    iget v0, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_ad

    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    if-nez v0, :cond_ad

    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    if-eqz v0, :cond_ac

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-nez v0, :cond_ad

    .line 2455
    :cond_ac
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_61

    :cond_ad
    const/4 v1, 0x1

    .line 2457
    :goto_61
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v1, v3, v1

    invoke-static {v14, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2633
    :cond_ae
    :goto_62
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    .line 3197
    sget p2, Lorg/telegram/messenger/NotificationCenter;->twoStepPasswordChanged:I

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 3198
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iput-boolean p3, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    .line 3199
    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->can_save_credentials:Z

    .line 3200
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    goto :goto_0

    .line 3201
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didRemoveTwoStepPassword:I

    if-ne p1, p2, :cond_1

    .line 3202
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    .line 3203
    iput-boolean p3, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->can_save_credentials:Z

    .line 3204
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    goto :goto_0

    .line 3205
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    if-ne p1, p2, :cond_2

    .line 3206
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentStatusSent:Z

    .line 3207
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :cond_2
    :goto_0
    return-void
.end method

.method public fillNumber(Ljava/lang/String;)V
    .locals 7

    .line 3474
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3477
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eq v2, v1, :cond_8

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-eqz v2, :cond_8

    .line 3478
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-lt v2, v3, :cond_2

    .line 3479
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v1

    :goto_1
    if-nez p1, :cond_3

    if-eqz v2, :cond_8

    :cond_3
    if-nez p1, :cond_4

    .line 3483
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    const/4 v0, 0x0

    .line 3487
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3488
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_7

    :goto_2
    const/16 v2, 0x8

    if-lt v3, v1, :cond_6

    .line 3490
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 3491
    iget-object v6, p0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 3494
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3495
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v2

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move v3, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_6
    move v3, v4

    :goto_3
    if-nez v3, :cond_7

    .line 3500
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3501
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v3, v2

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    if-eqz v0, :cond_8

    .line 3505
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v1, 0x9

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3506
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, p1, v1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 3512
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public getIsReadyToPayRequest()Lj$/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Optional<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 3018
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->getBaseRequest()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "allowedPaymentMethods"

    .line 3019
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 3020
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->getBaseCardPaymentMethod()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    .line 3019
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3022
    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3024
    :catch_0
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getOtherSameFragmentDiff()I
    .locals 3

    .line 3090
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3093
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 3095
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3098
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3099
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 3100
    instance-of v2, v2, Lorg/telegram/ui/PaymentFormActivity;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_1
    sub-int/2addr v1, v0

    :cond_4
    :goto_2
    return v1
.end method

.method public getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 4395
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4397
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4398
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v2

    move/from16 v18, v10

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4399
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4400
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4401
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4402
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4403
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearch:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4404
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearchPlaceholder:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4405
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v11, 0x1

    new-array v6, v11, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    const/4 v12, 0x0

    aput-object v3, v6, v12

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4406
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressInner2:I

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v2

    move/from16 v20, v10

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4407
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressOuter2:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v27, v28

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4408
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4409
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    move-object v13, v2

    move/from16 v20, v28

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4411
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v2, :cond_0

    move v2, v12

    .line 4412
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 4413
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/view/View;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4414
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v22, v4, v2

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object/from16 v21, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4415
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v14, v4, v2

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4418
    :cond_0
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v4, 0x0

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4419
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v14, 0x0

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4421
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    const-string v3, "radioButton"

    const-string v4, "textView"

    if-eqz v2, :cond_2

    move v2, v12

    .line 4422
    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 4423
    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v14, v6, v2

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object v13, v5

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4424
    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v22, v6, v2

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object/from16 v21, v5

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4425
    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v14, v6, v2

    const/4 v15, 0x0

    new-array v6, v11, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v7, v6, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v13, v5

    move-object/from16 v16, v6

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4426
    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v23, v6, v2

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v6, v11, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v7, v6, v12

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v26

    const/16 v28, 0x0

    const/16 v29, 0x0

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    move-object/from16 v22, v5

    move-object/from16 v25, v6

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4427
    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v14, v6, v2

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v6, v11, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v7, v6, v12

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    move-object v13, v5

    move-object/from16 v16, v6

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 4430
    :cond_2
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v6, v5, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v13, v2

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4431
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/16 v23, 0x0

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v6, v5, v12

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    move-object/from16 v22, v2

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4432
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v6, v5, v12

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    move-object v13, v2

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move v2, v12

    .line 4434
    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 4435
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v14, v5, v2

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4436
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v22, v5, v2

    const/16 v23, 0x0

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v5, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    move-object/from16 v21, v3

    move-object/from16 v24, v5

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v2, v12

    .line 4438
    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 4439
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v14, v5, v2

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v6, v5, v12

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    move-object v13, v3

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move v2, v12

    .line 4441
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 4442
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v14, v5, v2

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v5, v12

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    move-object v13, v3

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4443
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v22, v5, v2

    const/16 v23, 0x0

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v5, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    move-object/from16 v21, v3

    move-object/from16 v24, v5

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4444
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v14, v5, v2

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v5, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    move-object v13, v3

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    move v2, v12

    .line 4446
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 4447
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/view/View;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4450
    :cond_7
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object v13, v2

    move/from16 v20, v27

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4451
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    sget v30, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/EditTextSettingsCell;

    aput-object v6, v5, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v31, v5

    move/from16 v36, v21

    invoke-direct/range {v28 .. v36}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4452
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    sget v38, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/EditTextSettingsCell;

    aput-object v6, v5, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    move-object/from16 v36, v2

    move-object/from16 v37, v3

    move-object/from16 v39, v5

    invoke-direct/range {v36 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4454
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    move-object v13, v2

    move/from16 v20, v21

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4456
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v15, 0x0

    new-array v3, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4457
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/16 v30, 0x0

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v5, v12

    const-string v6, "checkBox"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v32

    sget v36, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v31, v5

    invoke-direct/range {v28 .. v36}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4458
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    new-array v3, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v12

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4459
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4460
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v12

    .line 4462
    :goto_6
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    array-length v3, v3

    if-ge v2, v3, :cond_8

    .line 4463
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v14, v5, v2

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4464
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v22, v5, v2

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object/from16 v21, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4465
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v14, v5, v2

    const/4 v15, 0x0

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v6, v5, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v13, v3

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 4468
    :cond_8
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText6:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4470
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextPriceCell;

    aput-object v6, v5, v12

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v5

    move/from16 v28, v20

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4471
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v30, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextPriceCell;

    aput-object v6, v5, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v31, v5

    move/from16 v36, v6

    invoke-direct/range {v28 .. v36}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4472
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v5, v11, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextPriceCell;

    aput-object v7, v5, v12

    const-string v7, "valueTextView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v25

    const/16 v28, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v5

    move/from16 v29, v6

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4473
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v31, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextPriceCell;

    aput-object v6, v5, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v33

    const/16 v36, 0x0

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v32, v5

    move/from16 v37, v6

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4474
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v5, v11, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextPriceCell;

    aput-object v8, v5, v12

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v25

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v5

    move/from16 v29, v6

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4476
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v14, v3, v12

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4477
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v22, v3, v12

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v11

    .line 4479
    :goto_7
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    array-length v3, v3

    if-ge v2, v3, :cond_9

    .line 4480
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v14, v5, v2

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4481
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v22, v5, v2

    const/16 v23, 0x0

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aput-object v6, v5, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object/from16 v21, v3

    move-object/from16 v24, v5

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4482
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v14, v5, v2

    const/4 v15, 0x0

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aput-object v6, v5, v12

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object v13, v3

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 4485
    :cond_9
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object v13, v2

    move/from16 v20, v10

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4486
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    const/16 v22, 0x0

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/PaymentInfoCell;

    aput-object v5, v4, v12

    const-string v5, "nameTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move/from16 v28, v5

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4487
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    const/4 v15, 0x0

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/PaymentInfoCell;

    aput-object v4, v3, v12

    const-string v4, "detailTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v21, v5

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4488
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    const/16 v23, 0x0

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/PaymentInfoCell;

    aput-object v5, v4, v12

    const-string v5, "detailExTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v25

    const/16 v28, 0x0

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4490
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4491
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 4159
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->swipeBackEnabled:Z

    return p1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x3df

    if-ne p1, v0, :cond_0

    .line 3214
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda36;

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/PaymentFormActivity;ILandroid/content/Intent;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 4385
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->shouldNavigateBack:Z

    if-eqz v0, :cond_0

    .line 4386
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->webViewUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4387
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->shouldNavigateBack:Z

    return v0

    .line 4390
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onBecomeFullyVisible()V
    .locals 2

    .line 3153
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    .line 3155
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3156
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->needPayAfterTransition:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3157
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->needPayAfterTransition:Z

    .line 3158
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->callOnClick()Z

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 3081
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->twoStepPasswordChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3082
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didRemoveTwoStepPassword:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3083
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    if-eqz v0, :cond_1

    .line 3084
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3086
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 3110
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    if-eqz v0, :cond_0

    .line 3111
    invoke-interface {v0}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;->onFragmentDestroyed()V

    .line 3113
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->checkAndroidTheme(Landroid/content/Context;Z)V

    .line 3114
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentStatusSent:Z

    if-nez v0, :cond_1

    .line 3115
    sget-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->CANCELLED:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    .line 3116
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getOtherSameFragmentDiff()I

    move-result v0

    if-nez v0, :cond_1

    .line 3117
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    invoke-interface {v0, v1}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;->onInvoiceStatusChanged(Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    .line 3120
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->twoStepPasswordChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3121
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didRemoveTwoStepPassword:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3122
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    if-eqz v0, :cond_3

    .line 3123
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3125
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_5

    .line 3127
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3129
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3131
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 3132
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3133
    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webViewUrl:Ljava/lang/String;

    .line 3134
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 3135
    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3137
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3141
    :cond_5
    :goto_0
    :try_start_1
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_8

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    if-eqz v0, :cond_8

    .line 3142
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 3145
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3147
    :cond_8
    :goto_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 v0, 0x1

    .line 3148
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->canceled:Z

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 515
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 516
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 517
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 519
    :try_start_0
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x2

    const/16 v2, 0x2000

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->test:Z

    if-nez v0, :cond_1

    .line 520
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 521
    :cond_1
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    if-eqz v0, :cond_3

    .line 522
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 525
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 2

    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    .line 3166
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const/4 p2, 0x4

    if-eqz p1, :cond_1

    .line 3167
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    if-eq v0, p2, :cond_5

    .line 3168
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormMethod:Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;

    if-eqz p2, :cond_0

    .line 3169
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;->url:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->webViewUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 3171
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->url:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->webViewUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 3174
    :cond_1
    iget p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 3175
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda35;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 3180
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3181
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    .line 3183
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p1, :cond_5

    .line 3184
    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_4
    const/4 p2, 0x6

    if-ne p1, p2, :cond_5

    .line 3187
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->waitingForEmail:Z

    if-nez p1, :cond_5

    .line 3188
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3189
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 0

    .line 4363
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->onPresentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 4364
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    return p1
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z
    .locals 0

    .line 4369
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->onPresentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 4370
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    move-result p1

    return p1
.end method

.method public setPaymentFormCallback(Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    return-void
.end method

.method public setResourcesProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method
