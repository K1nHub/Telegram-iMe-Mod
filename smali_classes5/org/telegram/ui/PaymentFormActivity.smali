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

.field private invoiceSlug:Ljava/lang/String;

.field private invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

.field private isAcceptTermsChecked:Z

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

    .line 160
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/PaymentFormActivity;->WEBVIEW_PROTOCOLS:Ljava/util/List;

    const-string v0, "tg"

    .line 164
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/PaymentFormActivity;->BLACKLISTED_PROTOCOLS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 424
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 436
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->swipeBackEnabled:Z

    const/4 v0, 0x3

    new-array v1, v0, [Lorg/telegram/ui/Cells/HeaderCell;

    .line 227
    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    new-array v1, v0, [Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 229
    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-array v0, v0, [Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 231
    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 232
    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 246
    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v0, 0x6

    .line 252
    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity;->emailCodeLength:I

    .line 437
    invoke-direct/range {p0 .. p13}, Lorg/telegram/ui/PaymentFormActivity;->init(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 15

    move-object v14, p0

    .line 431
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v14, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v14, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v14, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v14, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, v14, Lorg/telegram/ui/PaymentFormActivity;->swipeBackEnabled:Z

    const/4 v1, 0x3

    new-array v2, v1, [Lorg/telegram/ui/Cells/HeaderCell;

    .line 227
    iput-object v2, v14, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    .line 228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v14, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    new-array v2, v1, [Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 229
    iput-object v2, v14, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-array v1, v1, [Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 231
    iput-object v1, v14, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 232
    iput-object v1, v14, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v1, 0x7

    new-array v1, v1, [Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 246
    iput-object v1, v14, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v1, 0x6

    .line 252
    iput v1, v14, Lorg/telegram/ui/PaymentFormActivity;->emailCodeLength:I

    .line 432
    iput-boolean v0, v14, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v13, p4

    .line 433
    invoke-direct/range {v0 .. v13}, Lorg/telegram/ui/PaymentFormActivity;->init(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 428
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;)V
    .locals 4

    .line 387
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->swipeBackEnabled:Z

    const/4 v0, 0x3

    new-array v1, v0, [Lorg/telegram/ui/Cells/HeaderCell;

    .line 227
    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    new-array v1, v0, [Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 229
    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-array v0, v0, [Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 231
    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 232
    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 246
    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v0, 0x6

    .line 252
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

    .line 159
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 159
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->sendCardData()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->checkPassword()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PaymentFormActivity;Z)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->sendSavePassword(Z)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnTextChange:Z

    return p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .locals 0

    .line 159
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnTextChange:Z

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PaymentFormActivity;)Ljava/util/HashMap;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PaymentFormActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PaymentFormActivity;)Ljava/util/HashMap;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnPhoneChange:Z

    return p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .locals 0

    .line 159
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnPhoneChange:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PaymentFormActivity;)Landroid/view/View;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .locals 0

    .line 159
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->shouldNavigateBack:Z

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->webViewUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .locals 0

    .line 159
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->webviewLoading:Z

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PaymentFormActivity;ZZ)V
    .locals 0

    .line 159
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnCardChange:Z

    return p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .locals 0

    .line 159
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnCardChange:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/PaymentFormActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/CountrySelectActivity$Country;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->country:Lorg/telegram/ui/CountrySelectActivity$Country;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$account_Password;)Lorg/telegram/tgnet/TLRPC$account_Password;
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/Long;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateTotalPrice()V

    return-void
.end method

.method static synthetic access$3400()Ljava/util/List;
    .locals 1

    .line 159
    sget-object v0, Lorg/telegram/ui/PaymentFormActivity;->BLACKLISTED_PROTOCOLS:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3500()Ljava/util/List;
    .locals 1

    .line 159
    sget-object v0, Lorg/telegram/ui/PaymentFormActivity;->WEBVIEW_PROTOCOLS:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/PaymentFormActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/PaymentFormActivity;->emailCodeLength:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    return p0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/PaymentFormActivity;
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->passwordFragment:Lorg/telegram/ui/PaymentFormActivity;

    return-object p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lorg/telegram/ui/PaymentFormActivity;->canceled:Z

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;
    .locals 0

    .line 159
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

    .line 159
    invoke-static {p0}, Lorg/telegram/ui/PaymentFormActivity;->getResponseBody(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/PaymentFormActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$4402(Lorg/telegram/ui/PaymentFormActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$4500(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/Components/ContextProgressView;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/Components/ContextProgressView;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    return-object p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/PaymentFormActivity;)Landroid/widget/TextView;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lorg/telegram/ui/PaymentFormActivity;->isAcceptTermsChecked:Z

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PaymentFormActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayPublicKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/PaymentFormActivity;)Lorg/json/JSONObject;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayParameters:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$5202(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;)Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    return-object p1
.end method

.method static synthetic access$5302(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .locals 0

    .line 159
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    return p1
.end method

.method static synthetic access$5402(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;)Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    return-object p1
.end method

.method static synthetic access$5500(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    return-object p0
.end method

.method static synthetic access$5602(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;)Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    return-object p1
.end method

.method static synthetic access$5700(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->setAddressFields(Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/PaymentFormActivity;Z)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->sendForm()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/RadioCell;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;)Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    return-object p1
.end method

.method private checkPassword()V
    .locals 5

    .line 4145
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v0, :cond_0

    .line 4146
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

    .line 4147
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 4148
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 4151
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v0, :cond_1

    .line 4152
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->sendData()V

    return-void

    .line 4155
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_2

    .line 4157
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v1

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/widget/EditText;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4159
    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v1

    const/high16 v1, 0x40200000    # 2.5f

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    .line 4162
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4163
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 4164
    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 4165
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;-><init>()V

    .line 4166
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

    .line 2773
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayContainer:Landroid/widget/FrameLayout;

    .line 2774
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawableByColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2775
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2777
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    .line 2778
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2779
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2780
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/messenger/R$drawable;->googlepay_button_no_shadow_background:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 2781
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayPublicKey:Ljava/lang/String;

    const/4 v2, 0x2

    if-nez v0, :cond_0

    .line 2782
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

    .line 2784
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

    .line 2786
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    const/16 v3, 0x30

    const/4 v4, -0x1

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2787
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2852
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 2853
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    const/16 v2, 0x10

    .line 2854
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2855
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2856
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDuplicateParentStateEnabled(Z)V

    .line 2857
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2859
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2860
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2861
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 2862
    sget v3, Lorg/telegram/messenger/R$drawable;->buy_with_googlepay_button_content:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 2863
    invoke-static {v4, v3, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2865
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2866
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2867
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 2868
    sget p1, Lorg/telegram/messenger/R$drawable;->googlepay_button_overlay:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2869
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

    .line 2996
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "PAN_ONLY"

    const-string v2, "CRYPTOGRAM_3DS"

    .line 3003
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3007
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "type"

    const-string v4, "CARD"

    .line 3008
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3010
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 3011
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v1, "allowedAuthMethods"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3012
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v0, "allowedCardNetworks"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "parameters"

    .line 3014
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

    .line 2992
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

    .line 3831
    new-instance v0, Ljava/util/Scanner;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v1, "\\A"

    .line 3832
    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    .line 3833
    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .line 3834
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

    .line 3076
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 3077
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3079
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

    .line 3065
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3066
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3068
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 3069
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 3071
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
    .locals 36

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

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    const/4 v10, 0x4

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v3, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v19, v6

    move-object v6, v1

    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    invoke-direct/range {v6 .. v19}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

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

    move v12, v6

    goto :goto_0

    :cond_6
    move v12, v7

    .line 3366
    :goto_0
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v6, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v21, v8

    move-object v8, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v6

    move-object/from16 v20, v7

    invoke-direct/range {v8 .. v21}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_5

    .line 3324
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    if-eqz v2, :cond_8

    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    if-eqz v2, :cond_8

    .line 3325
    new-instance v3, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    const/16 v26, 0x6

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v22, v3

    move-object/from16 v23, v1

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    move/from16 v33, v2

    move-object/from16 v34, v12

    move-object/from16 v35, v13

    invoke-direct/range {v22 .. v35}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->passwordFragment:Lorg/telegram/ui/PaymentFormActivity;

    .line 3326
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    invoke-direct {v3, v1}, Lorg/telegram/ui/PaymentFormActivity;->setCurrentPassword(Lorg/telegram/tgnet/TLRPC$account_Password;)V

    .line 3327
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->passwordFragment:Lorg/telegram/ui/PaymentFormActivity;

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$25;

    invoke-direct {v2, v0}, Lorg/telegram/ui/PaymentFormActivity$25;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

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
    new-instance v2, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    const/16 v26, 0x4

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v11, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v22, v2

    move-object/from16 v23, v1

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move/from16 v33, v11

    move-object/from16 v34, v12

    move-object/from16 v35, v13

    invoke-direct/range {v22 .. v35}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iget-boolean v1, v0, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

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
    move v12, v4

    goto :goto_2

    :cond_e
    move v12, v7

    goto :goto_2

    :cond_f
    :goto_1
    move v12, v6

    :goto_2
    if-ne v12, v7, :cond_10

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

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v5, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v8, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-direct/range {v8 .. v21}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

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

    move v12, v5

    goto :goto_4

    .line 3275
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-nez v1, :cond_15

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    if-eqz v1, :cond_14

    goto :goto_3

    :cond_14
    move v12, v7

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

    move v12, v6

    goto :goto_4

    :cond_17
    move v12, v4

    :goto_4
    if-ne v12, v7, :cond_18

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

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v5, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v8, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-direct/range {v8 .. v21}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    :cond_19
    :goto_5
    return-void
.end method

.method private init(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 471
    iput p4, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    .line 472
    iput-object p13, p0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 473
    iput-object p8, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    .line 474
    iput-object p12, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    .line 475
    iput-object p5, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    .line 476
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    .line 477
    iput-object p6, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    .line 478
    iput-object p7, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    .line 479
    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 480
    iput-object p3, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    .line 481
    iput-boolean p11, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    .line 482
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_provider:Ljava/lang/String;

    const-string p3, "stripe"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_provider:Ljava/lang/String;

    const-string p5, "smartglocal"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    move p2, p4

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    iput-boolean p2, p0, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    .line 483
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide p5, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->bot_id:J

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p2, p5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p2, :cond_1

    .line 485
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p2, ""

    .line 487
    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    .line 489
    :goto_1
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->title:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentItemName:Ljava/lang/String;

    .line 490
    iput-object p10, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    .line 491
    iput-boolean p4, p0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    if-nez p11, :cond_3

    .line 492
    iget p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    goto :goto_2

    .line 495
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, p4

    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    goto :goto_3

    .line 493
    :cond_3
    :goto_2
    iput-boolean p11, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    :goto_3
    if-nez p9, :cond_4

    .line 498
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 499
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    .line 500
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->title:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    goto :goto_4

    .line 503
    :cond_4
    iput-object p9, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    :cond_5
    :goto_4
    return-void
.end method

.method private initGooglePay(Landroid/content/Context;)V
    .locals 3

    .line 3032
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3035
    :cond_0
    new-instance v0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;-><init>()V

    .line 3036
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

    .line 3037
    invoke-virtual {v0, v2}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->setTheme(I)Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    move-result-object v0

    .line 3038
    invoke-virtual {v0}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->build()Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    move-result-object v0

    .line 3039
    invoke-static {p1, v0}, Lcom/google/android/gms/wallet/Wallet;->getPaymentsClient(Landroid/content/Context;Lcom/google/android/gms/wallet/Wallet$WalletOptions;)Lcom/google/android/gms/wallet/PaymentsClient;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentsClient:Lcom/google/android/gms/wallet/PaymentsClient;

    .line 3041
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getIsReadyToPayRequest()Lj$/util/Optional;

    move-result-object p1

    .line 3042
    invoke-virtual {p1}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 3045
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

    .line 3050
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentsClient:Lcom/google/android/gms/wallet/PaymentsClient;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/PaymentsClient;->isReadyToPay(Lcom/google/android/gms/wallet/IsReadyToPayRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 3051
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

    .line 4192
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 4193
    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    if-eqz p1, :cond_0

    .line 4195
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->passwordOk:Z

    .line 4196
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    iput-object p1, p2, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 4197
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 4198
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    goto :goto_0

    .line 4200
    :cond_0
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "PASSWORD_HASH_INVALID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4202
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    const/4 p2, 0x3

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4204
    :catch_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    const/high16 p2, 0x40500000    # 3.25f

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 4205
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4207
    :cond_1
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, p0, p3, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    :goto_0
    return-void
.end method

.method private synthetic lambda$checkPassword$63(Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 4191
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda41;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$checkPassword$64(Lorg/telegram/tgnet/TLRPC$account_Password;[B)V
    .locals 6

    .line 4181
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4182
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    .line 4183
    invoke-static {p2, v0}, Lorg/telegram/messenger/SRPHelper;->getX([BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)[B

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v2

    .line 4188
    :goto_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;-><init>()V

    const/16 v1, 0x708

    .line 4189
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;->period:I

    .line 4191
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda60;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda60;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;)V

    .line 4212
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    if-eqz v4, :cond_2

    .line 4213
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    .line 4214
    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->srp_id:J

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->srp_B:[B

    invoke-static {p2, v4, v5, p1, v3}, Lorg/telegram/messenger/SRPHelper;->startCheck([BJ[BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    if-nez p1, :cond_1

    .line 4216
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    const-string p2, "ALGO_INVALID"

    .line 4217
    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 4218
    invoke-interface {v1, v2, p1}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void

    .line 4221
    :cond_1
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_1

    .line 4223
    :cond_2
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    const-string p2, "PASSWORD_HASH_INVALID"

    .line 4224
    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 4225
    invoke-interface {v1, v2, p1}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$checkPassword$65(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 4168
    check-cast p2, Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 4169
    invoke-static {p2, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/TLRPC$account_Password;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4170
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    const-string p3, "UpdateAppAlert"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 4173
    :cond_0
    iget-boolean p1, p2, Lorg/telegram/tgnet/TLRPC$account_Password;->has_password:Z

    if-nez p1, :cond_1

    .line 4174
    iput-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->passwordOk:Z

    .line 4175
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    goto :goto_0

    .line 4177
    :cond_1
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 4179
    sget-object p3, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda50;

    invoke-direct {p4, p0, p2, p1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$account_Password;[B)V

    invoke-virtual {p3, p4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4230
    :cond_2
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, p0, p4, p3}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 4231
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 4232
    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$checkPassword$66(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 4166
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

    .line 2788
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2790
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->getBaseRequest()Lorg/json/JSONObject;

    move-result-object p1

    .line 2792
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->getBaseCardPaymentMethod()Lorg/json/JSONObject;

    move-result-object v0

    .line 2793
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayPublicKey:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "tokenizationSpecification"

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayParameters:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 2794
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$23;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PaymentFormActivity$23;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 2802
    :cond_0
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$24;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PaymentFormActivity$24;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string v1, "allowedPaymentMethods"

    .line 2816
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2818
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2819
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2820
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-eqz v2, :cond_1

    .line 2821
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->prices:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const-string v2, "totalPrice"

    .line 2823
    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->getTotalPriceDecimalString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "totalPriceStatus"

    const-string v2, "FINAL"

    .line 2824
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2825
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCountryCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "countryCode"

    .line 2826
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v1, "currencyCode"

    .line 2828
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "checkoutOption"

    const-string v2, "COMPLETE_IMMEDIATE_PURCHASE"

    .line 2829
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "transactionInfo"

    .line 2830
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "merchantInfo"

    .line 2832
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "merchantName"

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2843
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wallet/PaymentDataRequest;->fromJson(Ljava/lang/String;)Lcom/google/android/gms/wallet/PaymentDataRequest;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2845
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

    .line 2848
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$createView$0(Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 2

    .line 746
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->country:Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 747
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object v1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 748
    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 739
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 742
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 743
    new-instance p1, Lorg/telegram/ui/CountrySelectActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/CountrySelectActivity;-><init>(Z)V

    .line 744
    invoke-virtual {p1, p2}, Lorg/telegram/ui/CountrySelectActivity;->setDisableAnonymousNumbers(Z)V

    .line 745
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda66;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda66;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/CountrySelectActivity;->setCountrySelectActivityDelegate(Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;)V

    .line 750
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

    .line 1763
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

    .line 1779
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->passwordOk:Z

    .line 1780
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    return-void
.end method

.method private synthetic lambda$createView$13(Landroid/view/View;)V
    .locals 1

    .line 1836
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1837
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private static synthetic lambda$createView$14(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x6

    if-ne p1, p2, :cond_0

    .line 1982
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$createView$15(Landroid/widget/TextView;JLandroid/view/View;)V
    .locals 7

    .line 2083
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2084
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2085
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnTextChange:Z

    .line 2086
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, p4

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2087
    iput-boolean p4, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnTextChange:Z

    const-wide/16 p1, 0x0

    .line 2088
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    .line 2089
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateTotalPrice()V

    goto :goto_0

    .line 2091
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

    .line 2093
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

    .line 2120
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2123
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->showChoosePaymentMethod()V

    return-void
.end method

.method private synthetic lambda$createView$17(Landroid/view/View;)V
    .locals 14

    .line 2156
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v6, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v7, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v11, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v13, p0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v13}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2157
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PaymentFormActivity$14;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-direct {p1, v0}, Lorg/telegram/ui/PaymentFormActivity;->setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    .line 2164
    invoke-virtual {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$18(Landroid/view/View;)V
    .locals 14

    .line 2179
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v6, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v7, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v11, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v13, p0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v13}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2180
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$15;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PaymentFormActivity$15;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-direct {p1, v0}, Lorg/telegram/ui/PaymentFormActivity;->setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    .line 2187
    invoke-virtual {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$19(Landroid/view/View;)V
    .locals 14

    .line 2202
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v6, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v7, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v11, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v13, p0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v13}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2203
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$16;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PaymentFormActivity$16;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-direct {p1, v0}, Lorg/telegram/ui/PaymentFormActivity;->setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    .line 2210
    invoke-virtual {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p3, 0x1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    .line 989
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_0
    add-int/2addr p1, p3

    .line 990
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v0, p2

    if-ge p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 992
    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 993
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    return p3

    :cond_2
    const/4 p1, 0x6

    if-ne p2, p1, :cond_3

    .line 999
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->performClick()Z

    return p3

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$20(Landroid/view/View;)V
    .locals 14

    .line 2225
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v6, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v7, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v11, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iget-object v13, p0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v13}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2226
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PaymentFormActivity$17;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-direct {p1, v0}, Lorg/telegram/ui/PaymentFormActivity;->setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    .line 2233
    invoke-virtual {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$21(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 2277
    invoke-direct {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 2278
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    return-void
.end method

.method private synthetic lambda$createView$22(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2327
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->showPayAlert(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createView$23(Ljava/lang/String;Landroid/view/View;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2259
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_invoice;->recurring:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    iget-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->recurrentAccepted:Z

    if-nez v4, :cond_0

    .line 2260
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x40900000    # 4.5f

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 2262
    :try_start_0
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v5}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 2266
    :cond_0
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_invoice;->shipping_address_requested:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v4, :cond_4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v4, :cond_4

    :cond_1
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v4, :cond_2

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v4, :cond_4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    if-eqz v4, :cond_4

    :cond_2
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-eqz v4, :cond_3

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v4, :cond_4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_4

    :cond_3
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-eqz v4, :cond_5

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v4, :cond_4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    if-nez v4, :cond_5

    :cond_4
    move v4, v6

    goto :goto_0

    :cond_5
    move v4, v7

    .line 2273
    :goto_0
    iget-boolean v8, v0, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    if-eqz v8, :cond_6

    if-nez v4, :cond_6

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    if-nez v9, :cond_6

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v9, :cond_6

    .line 2274
    invoke-direct {v0, v6}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 2276
    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda37;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/view/View;)V

    invoke-direct {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->sendSavedForm(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    if-eqz v8, :cond_c

    if-nez v4, :cond_8

    .line 2283
    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-nez v8, :cond_7

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    if-nez v8, :cond_7

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    if-eqz v8, :cond_8

    :cond_7
    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-nez v8, :cond_c

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flexible:Z

    if-eqz v3, :cond_c

    :cond_8
    if-eqz v4, :cond_9

    move v11, v7

    goto :goto_1

    .line 2287
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-nez v3, :cond_a

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    if-nez v3, :cond_a

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    if-nez v3, :cond_a

    move v11, v5

    goto :goto_1

    :cond_a
    move v11, v6

    :goto_1
    if-ne v11, v5, :cond_b

    .line 2292
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->additional_methods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 2293
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda38;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda38;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->showChoosePaymentMethod(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 2295
    :cond_b
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

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

    move-object v7, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v7 .. v20}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :goto_2
    return-void

    .line 2300
    :cond_c
    iget-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    if-nez v1, :cond_f

    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v1, :cond_f

    .line 2301
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v1, :cond_d

    .line 2302
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

    if-ge v1, v2, :cond_d

    .line 2303
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 2304
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2308
    :cond_d
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-nez v1, :cond_e

    .line 2309
    iput-boolean v6, v0, Lorg/telegram/ui/PaymentFormActivity;->needPayAfterTransition:Z

    .line 2310
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    const/4 v12, 0x3

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    const/16 v16, 0x0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    const/16 v20, 0x0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v8, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v21, v5

    invoke-direct/range {v8 .. v21}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2311
    iput-boolean v7, v0, Lorg/telegram/ui/PaymentFormActivity;->needPayAfterTransition:Z

    return-void

    .line 2313
    :cond_e
    iget-boolean v1, v0, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    if-eqz v1, :cond_f

    .line 2314
    iput-boolean v7, v0, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    .line 2315
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2319
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_11

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-nez v1, :cond_11

    .line 2320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "payment_warning_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2321
    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2322
    invoke-interface {v2, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_10

    .line 2323
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2324
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2325
    sget v2, Lorg/telegram/messenger/R$string;->PaymentWarning:I

    const-string v3, "PaymentWarning"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2326
    sget v2, Lorg/telegram/messenger/R$string;->PaymentWarningText:I

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    aput-object v4, v3, v7

    aput-object p1, v3, v6

    const-string v4, "PaymentWarningText"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2327
    sget v2, Lorg/telegram/messenger/R$string;->Continue:I

    const-string v3, "Continue"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2328
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_3

    .line 2330
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-direct {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showPayAlert(Ljava/lang/String;)V

    goto :goto_3

    .line 2333
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-direct {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showPayAlert(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private synthetic lambda$createView$24(Landroid/view/View;)V
    .locals 1

    .line 2439
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    if-eqz p1, :cond_0

    return-void

    .line 2443
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->recurrentAccepted:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->recurrentAccepted:Z

    .line 2444
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->setChecked(Z)V

    .line 2446
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->recurrentAccepted:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$createView$25(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    .line 2470
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

    .line 2506
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_account_resendPasswordEmail;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_account_resendPasswordEmail;-><init>()V

    .line 2507
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda64;->INSTANCE:Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda64;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2510
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2511
    sget v0, Lorg/telegram/messenger/R$string;->ResendCodeInfo:I

    const-string v1, "ResendCodeInfo"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2512
    sget v0, Lorg/telegram/messenger/R$string;->AppName:I

    const-string v1, "AppName"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2513
    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    const-string v1, "OK"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2514
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$createView$28(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 2531
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->sendSavePassword(Z)V

    return-void
.end method

.method private synthetic lambda$createView$29(Landroid/view/View;)V
    .locals 3

    .line 2524
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2525
    sget v0, Lorg/telegram/messenger/R$string;->TurnPasswordOffQuestion:I

    const-string v1, "TurnPasswordOffQuestion"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2526
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$account_Password;->has_secure_values:Z

    if-eqz v1, :cond_0

    .line 2527
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

    .line 2529
    :cond_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2530
    sget v0, Lorg/telegram/messenger/R$string;->TurnPasswordOffQuestionTitle:I

    const-string v1, "TurnPasswordOffQuestionTitle"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2531
    sget v0, Lorg/telegram/messenger/R$string;->Disable:I

    const-string v1, "Disable"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2532
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v1, "Cancel"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2533
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 2534
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, -0x1

    .line 2535
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 2537
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 1

    .line 1040
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    .line 1041
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$createView$30(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p3, 0x1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 2610
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->performClick()Z

    return p3

    :cond_0
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    .line 2613
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    .line 2615
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, p3

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_1
    if-ne p1, p3, :cond_2

    .line 2617
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

    .line 1196
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    .line 1197
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$createView$5(Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 2

    .line 1290
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->country:Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 1291
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1283
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1286
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 1287
    new-instance p1, Lorg/telegram/ui/CountrySelectActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/CountrySelectActivity;-><init>(Z)V

    .line 1288
    invoke-virtual {p1, p2}, Lorg/telegram/ui/CountrySelectActivity;->setDisableAnonymousNumbers(Z)V

    .line 1289
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda67;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda67;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/CountrySelectActivity;->setCountrySelectActivityDelegate(Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;)V

    .line 1293
    invoke-virtual {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return p2
.end method

.method private synthetic lambda$createView$7(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p3, 0x1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_3

    .line 1606
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_0
    add-int/2addr p1, p3

    .line 1607
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v0, p2

    if-ge p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 1612
    :cond_1
    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 1613
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2
    return p3

    :cond_3
    const/4 p1, 0x6

    if-ne p2, p1, :cond_4

    .line 1619
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->performClick()Z

    return p3

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$8(Landroid/view/View;)V
    .locals 1

    .line 1636
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    .line 1637
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/view/View;)V
    .locals 5

    .line 1685
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    .line 1686
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1687
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

    .line 3053
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3054
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 3055
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 3058
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

    .line 2956
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->shortPollRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    .line 2959
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->loadPasswordInfo()V

    const/4 v0, 0x0

    .line 2960
    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->shortPollRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$loadPasswordInfo$34(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    const/4 v0, 0x0

    .line 2938
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->loadingPasswordInfo:Z

    if-nez p1, :cond_3

    .line 2940
    check-cast p2, Lorg/telegram/tgnet/TLRPC$account_Password;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 2941
    invoke-static {p2, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/TLRPC$account_Password;Z)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 2942
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    const-string v1, "UpdateAppAlert"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 2945
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$account_Password;->has_password:Z

    if-eqz v1, :cond_1

    .line 2946
    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    .line 2947
    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->can_save_credentials:Z

    .line 2948
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    .line 2950
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationActivity;->initPasswordNewAlgo(Lorg/telegram/tgnet/TLRPC$account_Password;)V

    .line 2951
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->passwordFragment:Lorg/telegram/ui/PaymentFormActivity;

    if-eqz p1, :cond_2

    .line 2952
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    invoke-direct {p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->setCurrentPassword(Lorg/telegram/tgnet/TLRPC$account_Password;)V

    .line 2954
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->has_password:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->shortPollRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    .line 2955
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda32;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->shortPollRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    .line 2962
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$loadPasswordInfo$35(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 2937
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

    .line 3218
    invoke-static {p2}, Lcom/google/android/gms/wallet/PaymentData;->getFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/wallet/PaymentData;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3222
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/wallet/PaymentData;->toJson()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3227
    :cond_1
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "paymentMethodData"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "tokenizationData"

    .line 3228
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v2, "type"

    .line 3229
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "token"

    .line 3230
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3232
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayPublicKey:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayParameters:Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 3243
    :cond_2
    invoke-static {v2}, Lcom/stripe/android/net/TokenParser;->parseToken(Ljava/lang/String;)Lcom/stripe/android/model/Token;

    move-result-object p1

    .line 3244
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

    .line 3245
    invoke-virtual {p1}, Lcom/stripe/android/model/Token;->getCard()Lcom/stripe/android/model/Card;

    move-result-object p1

    .line 3246
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

    .line 3233
    :cond_3
    :goto_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    .line 3234
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->payment_token:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 3235
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->payment_token:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    const-string p2, "description"

    .line 3236
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 3238
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string p1, "Android Pay"

    .line 3240
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    .line 3248
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 3250
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    if-ne p1, v1, :cond_7

    .line 3254
    invoke-static {p2}, Lcom/google/android/gms/wallet/AutoResolveHelper;->getStatusFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 3255
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

    .line 3258
    :cond_7
    :goto_3
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 3259
    invoke-direct {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 3260
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayButton:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method private synthetic lambda$onTransitionAnimationEnd$38()V
    .locals 2

    .line 3178
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3179
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$sendData$56([Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 10

    const/4 v0, 0x1

    .line 4035
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentStatusSent:Z

    .line 4036
    sget-object v1, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PAID:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    .line 4037
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    if-eqz v2, :cond_0

    .line 4038
    invoke-interface {v2, v1}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;->onInvoiceStatusChanged(Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    .line 4041
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    .line 4042
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_1

    .line 4043
    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4045
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

    .line 4046
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

    .line 4068
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentStatusSent:Z

    .line 4069
    sget-object v1, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PAID:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    .line 4070
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    if-eqz v2, :cond_0

    .line 4071
    invoke-interface {v2, v1}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;->onInvoiceStatusChanged(Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    .line 4074
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->onCheckoutSuccess(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;)Z

    .line 4076
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p2, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz p2, :cond_1

    .line 4077
    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4079
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

    .line 4080
    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$sendData$58(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 4

    .line 4066
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

    .line 4067
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

    .line 4052
    invoke-direct {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    const/4 v1, 0x1

    .line 4053
    iput-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->webviewLoading:Z

    .line 4054
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 4055
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    if-eqz v2, :cond_0

    .line 4056
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 4058
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_1

    .line 4059
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 4060
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4063
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    .line 4064
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    .line 4065
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda54;

    invoke-direct {v5, p0, v2, v3}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;)V

    iput-object v5, v4, Lorg/telegram/messenger/MessagesController;->newMessageCallback:Lorg/telegram/messenger/MessagesController$NewMessageCallback;

    .line 4089
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    if-eqz v2, :cond_2

    .line 4090
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 4091
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentVerificationNeeded;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentVerificationNeeded;->url:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->webViewUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 4094
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentStatusSent:Z

    .line 4095
    sget-object p1, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PENDING:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    .line 4096
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    if-eqz v0, :cond_3

    .line 4097
    invoke-interface {v0, p1}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;->onInvoiceStatusChanged(Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$sendData$60(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;)V
    .locals 3

    .line 4103
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p0, p2, v2}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 4104
    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 4105
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    const/4 p1, 0x1

    .line 4107
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentStatusSent:Z

    .line 4108
    sget-object p1, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->FAILED:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    .line 4109
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    if-eqz p2, :cond_0

    .line 4110
    invoke-interface {p2, p1}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;->onInvoiceStatusChanged(Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$sendData$61(Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    if-eqz p2, :cond_4

    .line 4020
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    if-eqz p1, :cond_3

    .line 4021
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->updates:Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 p2, 0x1

    new-array p2, p2, [Lorg/telegram/tgnet/TLRPC$Message;

    .line 4023
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 4024
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Update;

    .line 4025
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-eqz v3, :cond_0

    .line 4026
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    iget-object p3, v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    aput-object p3, p2, v0

    goto :goto_1

    .line 4028
    :cond_0
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v3, :cond_1

    .line 4029
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    iget-object p3, v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    aput-object p3, p2, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4033
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 4034
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda53;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/ui/PaymentFormActivity;[Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 4050
    :cond_3
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentVerificationNeeded;

    if-eqz p1, :cond_5

    .line 4051
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda39;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 4102
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

    .line 3922
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    .line 3923
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    if-nez p1, :cond_0

    .line 3924
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;-><init>()V

    .line 3925
    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->info:Z

    .line 3926
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda65;->INSTANCE:Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda65;

    invoke-virtual {v1, p1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 3930
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    const/4 p1, 0x0

    .line 3931
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 3932
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    return-void
.end method

.method private synthetic lambda$sendForm$54(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 11

    const/4 v0, 0x0

    .line 3936
    invoke-direct {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    const/4 v1, 0x1

    .line 3937
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    if-eqz p1, :cond_9

    .line 3939
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

    .line 3968
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p0, p2, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    goto :goto_1

    .line 3947
    :pswitch_0
    invoke-direct {p0, v5}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    goto :goto_1

    .line 3965
    :pswitch_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    goto :goto_1

    :pswitch_2
    const/16 p1, 0x9

    .line 3944
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    goto :goto_1

    .line 3959
    :pswitch_3
    invoke-direct {p0, v9}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    goto :goto_1

    .line 3956
    :pswitch_4
    invoke-direct {p0, v7}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    goto :goto_1

    .line 3941
    :pswitch_5
    invoke-direct {p0, v6}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    goto :goto_1

    .line 3950
    :pswitch_6
    invoke-direct {p0, v8}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    goto :goto_1

    .line 3962
    :pswitch_7
    invoke-direct {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    goto :goto_1

    .line 3953
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

    .line 3920
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    if-eqz v0, :cond_0

    .line 3921
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda38;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3935
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

    .line 3516
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    if-nez p1, :cond_2

    .line 3518
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3521
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->shortPollRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 3522
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 3523
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->shortPollRunnable:Ljava/lang/Runnable;

    .line 3525
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    goto :goto_1

    .line 3527
    :cond_2
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "CODE_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3528
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->shakeView(Landroid/view/View;)V

    .line 3529
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    const-string v0, ""

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_1

    .line 3530
    :cond_3
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "FLOOD_WAIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "AppName"

    if-eqz v2, :cond_5

    .line 3531
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v2, 0x3c

    if-ge p1, v2, :cond_4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "Seconds"

    .line 3534
    invoke-static {v4, p1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3536
    :cond_4
    div-int/2addr p1, v2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "Minutes"

    invoke-static {v4, p1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3538
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

    .line 3540
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

    .line 3515
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda42;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$sendSavePassword$43(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 3600
    check-cast p2, Lorg/telegram/tgnet/TLRPC$account_Password;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 3601
    invoke-static {p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->initPasswordNewAlgo(Lorg/telegram/tgnet/TLRPC$account_Password;)V

    .line 3602
    invoke-direct {p0, p3}, Lorg/telegram/ui/PaymentFormActivity;->sendSavePassword(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$sendSavePassword$44(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 3598
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$sendSavePassword$45(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x1

    .line 3624
    iput-boolean p2, p0, Lorg/telegram/ui/PaymentFormActivity;->waitingForEmail:Z

    .line 3625
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$account_Password;->email_unconfirmed_pattern:Ljava/lang/String;

    .line 3626
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updatePasswordFields()V

    return-void
.end method

.method private synthetic lambda$sendSavePassword$46(Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 3596
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "SRP_ID_INVALID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3597
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;-><init>()V

    .line 3598
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

    .line 3607
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    if-eqz p2, :cond_1

    .line 3609
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->has_password:Z

    const/4 p2, 0x0

    .line 3610
    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    .line 3611
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    invoke-interface {p2, p1}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;->currentPasswordUpdated(Lorg/telegram/tgnet/TLRPC$account_Password;)V

    .line 3612
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_2

    :cond_1
    if-nez p1, :cond_3

    .line 3614
    instance-of p2, p3, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p2, :cond_3

    .line 3615
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 3618
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    goto/16 :goto_2

    :cond_3
    if-eqz p1, :cond_9

    .line 3620
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

    .line 3636
    :cond_4
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "EMAIL_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p3, "AppName"

    if-eqz p2, :cond_5

    .line 3637
    sget p1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {p3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->PasswordEmailInvalid:I

    const-string p3, "PasswordEmailInvalid"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3638
    :cond_5
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p4, "FLOOD_WAIT"

    invoke-virtual {p2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 3639
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x3c

    if-ge p1, p2, :cond_6

    new-array p2, v1, [Ljava/lang/Object;

    const-string p4, "Seconds"

    .line 3642
    invoke-static {p4, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3644
    :cond_6
    div-int/2addr p1, p2

    new-array p2, v1, [Ljava/lang/Object;

    const-string p4, "Minutes"

    invoke-static {p4, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3646
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

    .line 3648
    :cond_7
    sget p2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/PaymentFormActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3621
    :cond_8
    :goto_1
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/PaymentFormActivity;->emailCodeLength:I

    .line 3622
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3623
    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    const-string p3, "OK"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, p4}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3628
    sget p2, Lorg/telegram/messenger/R$string;->YourEmailAlmostThereText:I

    const-string p3, "YourEmailAlmostThereText"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3629
    sget p2, Lorg/telegram/messenger/R$string;->YourEmailAlmostThere:I

    const-string p3, "YourEmailAlmostThere"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3630
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 3632
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3633
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_9
    :goto_2
    return-void
.end method

.method private synthetic lambda$sendSavePassword$47(ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 3595
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

    .line 3595
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda63;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda63;-><init>(Lorg/telegram/ui/PaymentFormActivity;ZLjava/lang/String;)V

    const/16 p2, 0xa

    if-nez p1, :cond_2

    .line 3656
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 3657
    iget-object p3, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$account_Password;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3658
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    .line 3659
    iget-object v1, p4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    invoke-static {p1, p3}, Lorg/telegram/messenger/SRPHelper;->getVBytes([BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)[B

    move-result-object p1

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_password_hash:[B

    .line 3660
    iget-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_password_hash:[B

    if-nez p1, :cond_0

    .line 3661
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    const-string p3, "ALGO_INVALID"

    .line 3662
    iput-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 3663
    invoke-interface {v0, v2, p1}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    .line 3665
    :cond_0
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1, p4, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 3667
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    const-string p2, "PASSWORD_HASH_INVALID"

    .line 3668
    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 3669
    invoke-interface {v0, v2, p1}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    goto :goto_0

    .line 3672
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

    .line 3861
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    .line 3862
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 3863
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    const/4 p2, 0x1

    .line 3864
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    return-void
.end method

.method private synthetic lambda$sendSavedForm$50(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    const/4 v0, 0x0

    .line 3868
    invoke-direct {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    const/4 v1, 0x1

    .line 3869
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    if-eqz p1, :cond_0

    .line 3871
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p0, p2, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private synthetic lambda$sendSavedForm$51(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 3859
    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    if-eqz v0, :cond_0

    .line 3860
    new-instance p2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda40;

    invoke-direct {p2, p0, p3, p1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3867
    :cond_0
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda43;

    invoke-direct {p1, p0, p4, p2}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showChoosePaymentMethod$31(Ljava/lang/Runnable;Ljava/util/List;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p5

    .line 2675
    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$22;

    move-object/from16 v3, p1

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/PaymentFormActivity$22;-><init>(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/Runnable;)V

    .line 2697
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

    .line 2698
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    if-eqz v3, :cond_3

    :cond_2
    if-nez v1, :cond_3

    return-void

    :cond_3
    if-lt v1, v5, :cond_4

    .line 2701
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v5

    if-ge v1, v3, :cond_4

    sub-int/2addr v1, v5

    move-object/from16 v3, p2

    .line 2702
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iput-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    const/4 v3, 0x0

    .line 2703
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

    .line 2707
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    if-ge v1, v6, :cond_5

    .line 2708
    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->additional_methods:Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v1, v5

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;

    .line 2710
    new-instance v15, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    const/4 v7, 0x2

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    const/4 v11, 0x0

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v14, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    const/16 v16, 0x0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v17, v3

    move-object v3, v15

    move-object/from16 v18, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v3 .. v16}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move-object/from16 v3, v18

    .line 2711
    invoke-direct {v3, v1}, Lorg/telegram/ui/PaymentFormActivity;->setPaymentMethod(Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;)V

    .line 2712
    invoke-direct {v3, v2}, Lorg/telegram/ui/PaymentFormActivity;->setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    .line 2713
    invoke-virtual {v0, v3}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_2

    .line 2714
    :cond_5
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_6

    .line 2715
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    const/4 v8, 0x2

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    const/4 v12, 0x0

    iget-object v13, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v15, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    const/16 v16, 0x0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v4, v1

    move-object/from16 v17, v3

    invoke-direct/range {v4 .. v17}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2716
    invoke-direct {v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    .line 2717
    invoke-virtual {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_6
    :goto_2
    return-void
.end method

.method private synthetic lambda$showPayAlert$36(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 2984
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 2985
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->sendData()V

    return-void
.end method

.method private loadPasswordInfo()V
    .locals 4

    .line 2932
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->loadingPasswordInfo:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2935
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->loadingPasswordInfo:Z

    .line 2936
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;-><init>()V

    .line 2937
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
    .locals 3

    .line 3403
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->premiumBotUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->premiumInvoiceSlug:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->premiumInvoiceSlug:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    if-eqz p1, :cond_6

    .line 3405
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 3406
    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-nez v2, :cond_3

    instance-of v2, v1, Lorg/telegram/ui/PremiumPreviewFragment;

    if-eqz v2, :cond_2

    .line 3407
    :cond_3
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    goto :goto_0

    .line 3411
    :cond_4
    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/telegram/ui/PremiumPreviewFragment;->setForcePremium()Lorg/telegram/ui/PremiumPreviewFragment;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinishing()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 3412
    instance-of p1, p2, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_5

    .line 3414
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3417
    :catch_0
    check-cast p2, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/LaunchActivity;->getFireworksOverlay()Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/FireworksOverlay;->start()V

    :cond_5
    return v2

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method private onPresentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 4356
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 4357
    instance-of v0, p1, Lorg/telegram/ui/PaymentFormActivity;

    if-eqz v0, :cond_0

    .line 4358
    check-cast p1, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    iput-object v0, p1, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    .line 4359
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object v0, p1, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 4360
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->needPayAfterTransition:Z

    iput-boolean v0, p1, Lorg/telegram/ui/PaymentFormActivity;->needPayAfterTransition:Z

    .line 4361
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iput-object v0, p1, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    :cond_0
    return-void
.end method

.method private sendCardData()Z
    .locals 20

    move-object/from16 v1, p0

    .line 3681
    iget-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    .line 3682
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3683
    array-length v3, v0

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v3, v5, :cond_0

    .line 3684
    aget-object v3, v0, v6

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v3

    .line 3685
    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v0

    move-object v10, v0

    move-object v9, v3

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 3690
    :goto_0
    new-instance v0, Lcom/stripe/android/model/Card;

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    .line 3691
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v15, 0x3

    aget-object v3, v3, v15

    .line 3694
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v5

    .line 3695
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

    .line 3697
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    iget-object v7, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x4

    aget-object v7, v7, v2

    .line 3698
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object v7, v0

    move v4, v15

    move-object v15, v3

    invoke-direct/range {v7 .. v19}, Lcom/stripe/android/model/Card;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3700
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

    .line 3701
    invoke-virtual {v0}, Lcom/stripe/android/model/Card;->validateNumber()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3702
    invoke-direct {v1, v6}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return v6

    .line 3704
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

    .line 3707
    :cond_2
    iget-boolean v3, v1, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z

    if-eqz v3, :cond_3

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 3708
    invoke-direct {v1, v5}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return v6

    .line 3710
    :cond_3
    invoke-virtual {v0}, Lcom/stripe/android/model/Card;->validateCVC()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3711
    invoke-direct {v1, v4}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return v6

    .line 3713
    :cond_4
    iget-boolean v3, v1, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z

    if-eqz v3, :cond_5

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 3714
    invoke-direct {v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return v6

    .line 3716
    :cond_5
    iget-boolean v2, v1, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-eqz v2, :cond_6

    iget-object v2, v1, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 3717
    invoke-direct {v1, v3}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return v6

    :cond_6
    const/4 v2, 0x1

    .line 3720
    invoke-direct {v1, v2, v2}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    :try_start_0
    const-string v2, "stripe"

    .line 3722
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_provider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3723
    new-instance v2, Lcom/stripe/android/Stripe;

    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->providerApiKey:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/stripe/android/Stripe;-><init>(Ljava/lang/String;)V

    .line 3724
    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$26;

    invoke-direct {v3, v1}, Lorg/telegram/ui/PaymentFormActivity$26;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v2, v0, v3}, Lcom/stripe/android/Stripe;->createToken(Lcom/stripe/android/model/Card;Lcom/stripe/android/TokenCallback;)V

    goto :goto_1

    :cond_7
    const-string v2, "smartglocal"

    .line 3751
    iget-object v3, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_provider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3752
    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$27;

    invoke-direct {v2, v1, v0}, Lorg/telegram/ui/PaymentFormActivity$27;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lcom/stripe/android/model/Card;)V

    .line 3822
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

    .line 3825
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_8
    :goto_1
    const/4 v2, 0x1

    return v2

    :cond_9
    :goto_2
    const/4 v2, 0x1

    .line 3705
    invoke-direct {v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return v6
.end method

.method private sendData()V
    .locals 5

    .line 3978
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3981
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 3982
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;-><init>()V

    .line 3983
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1

    .line 3984
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;-><init>()V

    .line 3985
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3986
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;->msg_id:I

    .line 3987
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    goto :goto_0

    .line 3989
    :cond_1
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;-><init>()V

    .line 3990
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;->slug:Ljava/lang/String;

    .line 3991
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    .line 3993
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->form_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->form_id:J

    .line 3994
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v2, :cond_2

    .line 3995
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsSaved;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsSaved;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    .line 3996
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->id:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->id:Ljava/lang/String;

    .line 3997
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->tmp_password:[B

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->tmp_password:[B

    goto :goto_1

    .line 3998
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->googlePayCredentials:Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    if-eqz v2, :cond_3

    .line 3999
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    goto :goto_1

    .line 4001
    :cond_3
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    .line 4002
    iget-boolean v3, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->save:Z

    .line 4003
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->data:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 4004
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->data:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 4006
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->id:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 4007
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->requested_info_id:Ljava/lang/String;

    .line 4008
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    .line 4010
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    const/4 v2, 0x2

    if-eqz v1, :cond_5

    .line 4011
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->id:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->shipping_option_id:Ljava/lang/String;

    .line 4012
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    .line 4014
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_7

    .line 4015
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_2

    :cond_6
    const-wide/16 v3, 0x0

    :goto_2
    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->tip_amount:J

    .line 4016
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    .line 4018
    :cond_7
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

    .line 3879
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3882
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 3883
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    .line 3884
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_1

    .line 3885
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;-><init>()V

    .line 3886
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3887
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;->msg_id:I

    .line 3888
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    goto :goto_0

    .line 3890
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;-><init>()V

    .line 3891
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;->slug:Ljava/lang/String;

    .line 3892
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    .line 3894
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v2, p0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->save:Z

    .line 3895
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    .line 3896
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-eqz v1, :cond_2

    .line 3897
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

    .line 3898
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/2addr v2, v0

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 3900
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    const/16 v2, 0x8

    const/4 v3, 0x2

    if-eqz v1, :cond_3

    .line 3901
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

    .line 3902
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/2addr v4, v3

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 3904
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v1, :cond_4

    .line 3905
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

    .line 3906
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 3908
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->shipping_address_requested:Z

    if-eqz v1, :cond_6

    .line 3909
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_postAddress;-><init>()V

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    .line 3910
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

    .line 3911
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

    .line 3912
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

    .line 3913
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

    .line 3914
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const-string v1, ""

    :goto_1
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    .line 3915
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v4, 0x5

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->post_code:Ljava/lang/String;

    .line 3916
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 3918
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    .line 3919
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

    .line 3506
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 3507
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getText()Ljava/lang/String;

    move-result-object p1

    .line 3508
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 3509
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->shakeView(Landroid/view/View;)V

    return-void

    .line 3512
    :cond_0
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 3513
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_confirmPasswordEmail;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_confirmPasswordEmail;-><init>()V

    .line 3514
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_confirmPasswordEmail;->code:Ljava/lang/String;

    .line 3515
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda55;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda55;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_2

    .line 3545
    :cond_1
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_2

    .line 3549
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3552
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;-><init>()V

    iput-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    .line 3553
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    .line 3554
    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->email:Ljava/lang/String;

    .line 3555
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;-><init>()V

    iput-object v1, v8, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    move-object v6, v2

    move-object v7, v6

    goto/16 :goto_1

    .line 3557
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3558
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3559
    invoke-direct {p0, v3}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return-void

    .line 3562
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3563
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3565
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

    .line 3567
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3569
    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return-void

    .line 3572
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3573
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_5

    .line 3574
    invoke-direct {p0, v4}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return-void

    :cond_5
    const/16 v5, 0x2e

    .line 3577
    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/16 v6, 0x40

    .line 3578
    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ltz v6, :cond_7

    if-ge v5, v6, :cond_6

    goto :goto_3

    .line 3584
    :cond_6
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;-><init>()V

    iput-object v5, v8, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    .line 3585
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;-><init>()V

    iput-object v5, v8, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    .line 3586
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    or-int/2addr v6, v0

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    .line 3587
    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->hint:Ljava/lang/String;

    .line 3588
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$account_Password;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    or-int/lit8 v1, v6, 0x2

    .line 3590
    iput v1, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    .line 3591
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->email:Ljava/lang/String;

    move-object v7, v2

    move-object v6, v3

    .line 3593
    :goto_1
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 3594
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda52;

    move-object v3, v1

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/PaymentFormActivity;ZLjava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :goto_2
    return-void

    .line 3580
    :cond_7
    :goto_3
    invoke-direct {p0, v4}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return-void
.end method

.method private sendSavedForm(Ljava/lang/Runnable;)V
    .locals 4

    .line 3839
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3842
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 3843
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    .line 3844
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_1

    .line 3845
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;-><init>()V

    .line 3846
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3847
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;->msg_id:I

    .line 3848
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    goto :goto_0

    .line 3850
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;-><init>()V

    .line 3851
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;->slug:Ljava/lang/String;

    .line 3852
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    .line 3854
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->save:Z

    .line 3855
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    .line 3858
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

    .line 2728
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

    .line 2729
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

    .line 2730
    iget-object v7, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v7, v7, v4

    sget v8, Lorg/telegram/messenger/R$string;->PaymentShippingAddress:I

    const-string v9, "PaymentShippingAddress"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_payment_address:I

    invoke-virtual {v7, v0, v8, v9, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    .line 2732
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

    .line 2734
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2735
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v3

    sget v8, Lorg/telegram/messenger/R$string;->PaymentCheckoutName:I

    const-string v9, "PaymentCheckoutName"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_contacts:I

    invoke-virtual {v4, v0, v8, v9, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    .line 2737
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

    .line 2739
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 2740
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

    .line 2742
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

    .line 2744
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 2745
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

    .line 2747
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

    .line 445
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->has_password:Z

    if-eqz v0, :cond_1

    .line 446
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 449
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    goto :goto_0

    .line 451
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 452
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->email_unconfirmed_pattern:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->waitingForEmail:Z

    .line 453
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updatePasswordFields()V

    :goto_0
    return-void
.end method

.method private setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    return-void
.end method

.method private setDonePressed(Z)V
    .locals 2

    .line 4129
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    xor-int/lit8 p1, p1, 0x1

    .line 4130
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->swipeBackEnabled:Z

    .line 4131
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_0

    .line 4132
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4134
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    .line 4135
    aget-object p1, p1, v0

    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private setPaymentMethod(Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;)V
    .locals 0

    .line 2724
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormMethod:Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;

    return-void
.end method

.method private shakeField(I)V
    .locals 1

    .line 4118
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, v0, p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->shakeView(Landroid/view/View;)V

    return-void
.end method

.method private shakeView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 4123
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/high16 v0, 0x40200000    # 2.5f

    .line 4125
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void
.end method

.method private showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2969
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2970
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v2, "OK"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2971
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2972
    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2973
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private showChoosePaymentMethod()V
    .locals 1

    const/4 v0, 0x0

    .line 2640
    invoke-direct {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->showChoosePaymentMethod(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showChoosePaymentMethod(Ljava/lang/Runnable;)V
    .locals 8

    .line 2644
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->PaymentCheckoutMethod:I

    const-string v2, "PaymentCheckoutMethod"

    .line 2645
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object v0

    .line 2646
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2647
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2648
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v3, :cond_0

    .line 2649
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->title:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2650
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_payment_card:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2651
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 2652
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2653
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_payment_card:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2655
    :cond_1
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2656
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

    .line 2657
    iget-object v6, p0, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v6, :cond_3

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->id:Ljava/lang/String;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->id:Ljava/lang/String;

    invoke-static {v7, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2658
    :cond_3
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->title:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2659
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_payment_card:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2660
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2663
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

    .line 2664
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;->title:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2665
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_payment_provider:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2667
    :cond_5
    sget v4, Lorg/telegram/messenger/R$string;->PaymentCheckoutMethodNewCard:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2668
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_addbot:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2670
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    const/4 v5, 0x0

    move v6, v5

    .line 2671
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 2672
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

    .line 2674
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, p1, v3, v1}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/Runnable;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v2, v4, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2720
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private showEditDoneProgress(ZZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 4238
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 4239
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

    .line 4241
    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v14, :cond_4

    .line 4242
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    .line 4244
    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v14, v13}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 4245
    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v14, v13}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 4246
    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-array v6, v6, [Landroid/animation/Animator;

    iget-object v15, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 4247
    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v15

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v12, [F

    aput v10, v3, v13

    invoke-static {v15, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v13

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 4248
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v2

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v12, [F

    aput v10, v15, v13

    invoke-static {v2, v3, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v12

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 4249
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

    .line 4250
    invoke-static {v2, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v8

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v12, [F

    aput v11, v7, v13

    .line 4251
    invoke-static {v2, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v5

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v12, [F

    aput v11, v5, v13

    .line 4252
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v4

    .line 4246
    invoke-virtual {v14, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_0

    .line 4254
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    if-eqz v2, :cond_2

    new-array v2, v8, [Landroid/animation/Animator;

    .line 4255
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v12, [F

    aput v10, v5, v13

    .line 4256
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v13

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v12, [F

    aput v10, v5, v13

    .line 4257
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v12

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v12, [F

    aput v7, v5, v13

    .line 4258
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v9

    .line 4255
    invoke-virtual {v14, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_0

    .line 4260
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 4261
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 4262
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v12, [F

    aput v10, v6, v13

    .line 4263
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v13

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v12, [F

    aput v10, v6, v13

    .line 4264
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v12

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v12, [F

    aput v7, v6, v13

    .line 4265
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v9

    .line 4262
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4267
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4268
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

    .line 4269
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v12, [F

    aput v11, v6, v13

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v12

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 4270
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v12, [F

    aput v11, v6, v13

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v9

    .line 4268
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4274
    :cond_3
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$28;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PaymentFormActivity$28;-><init>(Lorg/telegram/ui/PaymentFormActivity;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4293
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4294
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    .line 4295
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 4296
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_5

    .line 4298
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v2, v13}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 4299
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    invoke-virtual {v2, v13}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 4300
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v15, v12, [F

    aput v10, v15, v13

    .line 4301
    invoke-static {v6, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v3, v13

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v12, [F

    aput v10, v15, v13

    .line 4302
    invoke-static {v6, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v3, v12

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v14, v12, [F

    aput v7, v14, v13

    .line 4303
    invoke-static {v6, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v3, v9

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v12, [F

    aput v11, v9, v13

    .line 4304
    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v3, v8

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v12, [F

    aput v11, v8, v13

    .line 4305
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v3, v5

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v12, [F

    aput v11, v7, v13

    .line 4306
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4300
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 4308
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4309
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 4310
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v15, v12, [F

    aput v10, v15, v13

    .line 4311
    invoke-static {v6, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v3, v13

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v12, [F

    aput v10, v15, v13

    .line 4312
    invoke-static {v6, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v3, v12

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v14, v12, [F

    aput v7, v14, v13

    .line 4313
    invoke-static {v6, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v3, v9

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v12, [F

    aput v11, v9, v13

    .line 4314
    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v3, v8

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v12, [F

    aput v11, v8, v13

    .line 4315
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v3, v5

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v12, [F

    aput v11, v7, v13

    .line 4316
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4310
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4319
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$29;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PaymentFormActivity$29;-><init>(Lorg/telegram/ui/PaymentFormActivity;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4338
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4339
    iget-object v1, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    :goto_2
    return-void
.end method

.method private showPayAlert(Ljava/lang/String;)V
    .locals 4

    .line 2977
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2980
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2981
    sget v1, Lorg/telegram/messenger/R$string;->PaymentTransactionReview:I

    const-string v2, "PaymentTransactionReview"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2982
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

    .line 2983
    sget p1, Lorg/telegram/messenger/R$string;->Continue:I

    const-string v1, "Continue"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2987
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v1, "Cancel"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2988
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private updatePasswordFields()V
    .locals 10

    .line 2873
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 2876
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2877
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    const/4 v3, 0x3

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-nez v0, :cond_2

    .line 2878
    invoke-direct {p0, v5, v5}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 2879
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2880
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2881
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v5

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2882
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2883
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2884
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v5

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2885
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_1

    .line 2887
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2889
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 2890
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2893
    :cond_2
    invoke-direct {p0, v5, v2}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 2894
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->waitingForEmail:Z

    if-eqz v0, :cond_5

    .line 2895
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

    .line 2896
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2897
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2898
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2899
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2900
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v5

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 2902
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2903
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v5

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2904
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move v0, v2

    :goto_3
    if-ge v0, v3, :cond_4

    .line 2906
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2908
    :cond_4
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 2909
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2912
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2913
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2914
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v5

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2915
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v5

    sget v1, Lorg/telegram/messenger/R$string;->PaymentPasswordEmailInfo:I

    const-string v6, "PaymentPasswordEmailInfo"

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 2916
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2918
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2919
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2920
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move v0, v2

    :goto_5
    if-ge v0, v3, :cond_6

    .line 2922
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

    .line 2924
    :goto_6
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 2925
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

    .line 3426
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3429
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

    .line 3454
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3455
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3456
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

    .line 3430
    :cond_3
    :goto_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    sget v3, Lorg/telegram/messenger/R$string;->PaymentCardSavePaymentInformationInfoLine1:I

    const-string v4, "PaymentCardSavePaymentInformationInfoLine1"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3431
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 3432
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->loadPasswordInfo()V

    const-string v3, "\n"

    .line 3433
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3434
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 3435
    sget v5, Lorg/telegram/messenger/R$string;->PaymentCardSavePaymentInformationInfoLine2:I

    const-string v6, "PaymentCardSavePaymentInformationInfoLine2"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2a

    .line 3436
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 3437
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 3438
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v5, -0x1

    if-eq v7, v5, :cond_4

    if-eq v6, v5, :cond_4

    add-int/2addr v7, v3

    add-int/2addr v6, v3

    .line 3442
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    new-instance v5, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v5}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    add-int/lit8 v3, v6, 0x1

    const-string v5, ""

    .line 3443
    invoke-virtual {v0, v6, v3, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v3, v7, 0x1

    .line 3444
    invoke-virtual {v0, v7, v3, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3445
    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$LinkSpan;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PaymentFormActivity$LinkSpan;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    sub-int/2addr v6, v4

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v7, v6, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3448
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(Z)V

    .line 3449
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 3450
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3451
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3452
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

    .line 2751
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->prices:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->getTotalPriceString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2752
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->totalCell:Lorg/telegram/ui/Cells/TextPriceCell;

    sget v1, Lorg/telegram/messenger/R$string;->PaymentTransactionTotal:I

    const-string v3, "PaymentTransactionTotal"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    aget-object v3, v3, v2

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Cells/TextPriceCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2753
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2754
    sget v1, Lorg/telegram/messenger/R$string;->PaymentCheckoutPay:I

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    const-string v4, "PaymentCheckoutPay"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2756
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->tipLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 2757
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_contacts_inviteBackground:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    .line 2758
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->tipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2759
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->tipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2760
    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2761
    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4, v0}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 2762
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_contacts_inviteText:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 2764
    :cond_1
    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x1fffffff

    and-int/2addr v5, v0

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 2765
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_secretName:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2767
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

    .line 527
    iget v0, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 555
    :pswitch_0
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PaymentPassword:I

    const-string v2, "PaymentPassword"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 548
    :pswitch_1
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->test:Z

    if-eqz v0, :cond_0

    .line 549
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

    .line 551
    :cond_0
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PaymentReceipt:I

    const-string v2, "PaymentReceipt"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 541
    :pswitch_2
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->test:Z

    if-eqz v0, :cond_1

    .line 542
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

    .line 544
    :cond_1
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PaymentCheckout:I

    const-string v2, "PaymentCheckout"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 538
    :pswitch_3
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PaymentCardInfo:I

    const-string v2, "PaymentCardInfo"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 535
    :pswitch_4
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PaymentCardInfo:I

    const-string v2, "PaymentCardInfo"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 532
    :pswitch_5
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PaymentShippingMethod:I

    const-string v2, "PaymentShippingMethod"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 529
    :pswitch_6
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PaymentShippingInfo:I

    const-string v2, "PaymentShippingInfo"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 559
    :goto_0
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 560
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 562
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$1;

    invoke-direct {v1, v7}, Lorg/telegram/ui/PaymentFormActivity$1;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 605
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 607
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

    .line 614
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

    .line 615
    new-instance v0, Lorg/telegram/ui/Components/ContextProgressView;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v8, v9, v1}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v1, 0x0

    .line 616
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 617
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 618
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 619
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 620
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-static {v14, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    :goto_1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 625
    move-object v15, v0

    check-cast v15, Landroid/widget/FrameLayout;

    .line 626
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v7, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 628
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v8}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    .line 629
    invoke-virtual {v0, v9}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 630
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-virtual {v7, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    .line 631
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

    .line 633
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$2;

    invoke-direct {v0, v7, v8}, Lorg/telegram/ui/PaymentFormActivity$2;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    .line 644
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 645
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 646
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v14, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    iget v0, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const-string v11, ""

    if-nez v0, :cond_33

    .line 649
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 650
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 652
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "countries.txt"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 654
    :goto_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, ";"

    .line 655
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 656
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    aget-object v4, v2, v13

    invoke-virtual {v3, v6, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 657
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    aget-object v4, v2, v13

    aget-object v10, v2, v6

    invoke-virtual {v3, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    aget-object v4, v2, v6

    aget-object v10, v2, v13

    invoke-virtual {v3, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    aget-object v3, v2, v9

    aget-object v4, v2, v13

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    array-length v3, v2

    if-le v3, v12, :cond_4

    .line 661
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    aget-object v4, v2, v6

    aget-object v10, v2, v12

    invoke-virtual {v3, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    :cond_4
    aget-object v3, v2, v9

    aget-object v2, v2, v13

    invoke-virtual {v15, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x6

    goto :goto_3

    .line 665
    :cond_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 667
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 670
    :goto_4
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    sget-object v2, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/CountrySelectActivity$CountryAdapter$$ExternalSyntheticLambda2;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v0, 0xa

    new-array v2, v0, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 672
    iput-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move v2, v6

    :goto_5
    if-ge v2, v0, :cond_20

    if-nez v2, :cond_6

    .line 675
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v4, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v8, v10}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v4, v3, v6

    .line 676
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v3, v3, v6

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 677
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v3, v3, v6

    sget v4, Lorg/telegram/messenger/R$string;->PaymentShippingAddress:I

    const-string v10, "PaymentShippingAddress"

    invoke-static {v10, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v4, v4, v6

    invoke-static {v14, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_6
    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    .line 680
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v8, v10}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v4, v3, v6

    .line 681
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v4, v4, v6

    invoke-static {v14, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 683
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v4, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v8, v10}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v4, v3, v9

    .line 684
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v3, v3, v9

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 685
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v3, v3, v9

    sget v4, Lorg/telegram/messenger/R$string;->PaymentShippingReceiver:I

    const-string v10, "PaymentShippingReceiver"

    invoke-static {v10, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 686
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v4, v4, v9

    invoke-static {v14, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_6
    const/16 v3, 0x8

    if-ne v2, v3, :cond_9

    .line 690
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 691
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 692
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 693
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/16 v10, 0x32

    invoke-static {v14, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v4, v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_8
    :goto_7
    const/16 v4, 0x9

    goto/16 :goto_b

    :cond_9
    const/16 v3, 0x9

    if-ne v2, v3, :cond_a

    .line 696
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_7

    .line 698
    :cond_a
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 699
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 700
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/16 v10, 0x32

    invoke-static {v14, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v4, v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 701
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const/4 v10, 0x5

    if-eq v2, v10, :cond_b

    move v10, v9

    goto :goto_8

    :cond_b
    move v10, v6

    :goto_8
    if-eqz v10, :cond_d

    const/4 v13, 0x7

    if-ne v2, v13, :cond_c

    .line 705
    iget-object v13, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v13, v13, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v13, :cond_c

    :goto_9
    move v10, v6

    goto :goto_a

    :cond_c
    const/4 v13, 0x6

    if-ne v2, v13, :cond_d

    .line 707
    iget-object v13, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v5, v13, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v5, :cond_d

    iget-boolean v5, v13, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-nez v5, :cond_d

    goto :goto_9

    :cond_d
    :goto_a
    if-eqz v10, :cond_8

    .line 712
    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$3;

    invoke-direct {v5, v7, v8}, Lorg/telegram/ui/PaymentFormActivity$3;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    .line 718
    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 719
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v10, 0x53

    invoke-direct {v4, v14, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :goto_b
    if-ne v2, v4, :cond_e

    .line 725
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v5, Lorg/telegram/ui/Components/HintEditText;

    invoke-direct {v5, v8}, Lorg/telegram/ui/Components/HintEditText;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v2

    goto :goto_c

    .line 727
    :cond_e
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v5, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v5, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v2

    .line 729
    :goto_c
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 730
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v9, v5}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 731
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 732
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setTextColor(I)V

    .line 733
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 734
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 735
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    const/16 v10, 0x14

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-virtual {v4, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 736
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    const/4 v4, 0x4

    if-ne v2, v4, :cond_f

    .line 738
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    new-instance v10, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda22;

    invoke-direct {v10, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 754
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setInputType(I)V

    :cond_f
    const/16 v4, 0x9

    if-eq v2, v4, :cond_12

    const/16 v4, 0x8

    if-ne v2, v4, :cond_10

    goto :goto_d

    :cond_10
    const/4 v4, 0x7

    if-ne v2, v4, :cond_11

    .line 759
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_e

    .line 761
    :cond_11
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    const/16 v10, 0x4001

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_e

    .line 757
    :cond_12
    :goto_d
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    invoke-virtual {v4, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 763
    :goto_e
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    const v10, 0x10000005

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setImeOptions(I)V

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_10

    .line 772
    :pswitch_7
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    sget v10, Lorg/telegram/messenger/R$string;->PaymentShippingEmailPlaceholder:I

    const-string v13, "PaymentShippingEmailPlaceholder"

    invoke-static {v13, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 773
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v4, :cond_14

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    if-eqz v4, :cond_14

    .line 774
    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v2

    invoke-virtual {v10, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 766
    :pswitch_8
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    sget v10, Lorg/telegram/messenger/R$string;->PaymentShippingName:I

    const-string v13, "PaymentShippingName"

    invoke-static {v13, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 767
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v4, :cond_14

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_14

    .line 768
    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v2

    invoke-virtual {v10, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 810
    :pswitch_9
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    sget v10, Lorg/telegram/messenger/R$string;->PaymentShippingZipPlaceholder:I

    const-string v13, "PaymentShippingZipPlaceholder"

    invoke-static {v13, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 811
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v4, :cond_14

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v4, :cond_14

    .line 812
    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v2

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->post_code:Ljava/lang/String;

    invoke-virtual {v10, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 802
    :pswitch_a
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    sget v10, Lorg/telegram/messenger/R$string;->PaymentShippingCountry:I

    const-string v13, "PaymentShippingCountry"

    invoke-static {v13, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 803
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v4, :cond_14

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v4, :cond_14

    .line 804
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 805
    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    iput-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;

    .line 806
    iget-object v13, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v13, v13, v2

    if-eqz v4, :cond_13

    goto :goto_f

    :cond_13
    move-object v4, v10

    :goto_f
    invoke-virtual {v13, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 796
    :pswitch_b
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    sget v10, Lorg/telegram/messenger/R$string;->PaymentShippingStatePlaceholder:I

    const-string v13, "PaymentShippingStatePlaceholder"

    invoke-static {v13, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 797
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v4, :cond_14

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v4, :cond_14

    .line 798
    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v2

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->state:Ljava/lang/String;

    invoke-virtual {v10, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 790
    :pswitch_c
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    sget v10, Lorg/telegram/messenger/R$string;->PaymentShippingCityPlaceholder:I

    const-string v13, "PaymentShippingCityPlaceholder"

    invoke-static {v13, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 791
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v4, :cond_14

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v4, :cond_14

    .line 792
    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v2

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->city:Ljava/lang/String;

    invoke-virtual {v10, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 784
    :pswitch_d
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    sget v10, Lorg/telegram/messenger/R$string;->PaymentShippingAddress2Placeholder:I

    const-string v13, "PaymentShippingAddress2Placeholder"

    invoke-static {v13, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 785
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v4, :cond_14

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v4, :cond_14

    .line 786
    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v2

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line2:Ljava/lang/String;

    invoke-virtual {v10, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 778
    :pswitch_e
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    sget v10, Lorg/telegram/messenger/R$string;->PaymentShippingAddress1Placeholder:I

    const-string v13, "PaymentShippingAddress1Placeholder"

    invoke-static {v13, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 779
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v4, :cond_14

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v4, :cond_14

    .line 780
    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v2

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line1:Ljava/lang/String;

    invoke-virtual {v10, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 816
    :cond_14
    :goto_10
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v4, v2

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-virtual {v10, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    const/16 v4, 0x8

    if-ne v2, v4, :cond_15

    .line 819
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    const-string v10, "+"

    .line 820
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 821
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 822
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 823
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    const/16 v29, -0x2

    const/16 v30, -0x2

    const/16 v31, 0x15

    const/16 v32, 0xc

    const/16 v33, 0x0

    const/16 v34, 0x6

    invoke-static/range {v29 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 825
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v4, v5, v6, v6, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 826
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setGravity(I)V

    new-array v4, v9, [Landroid/text/InputFilter;

    .line 828
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/4 v10, 0x5

    invoke-direct {v5, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v6

    .line 829
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v2

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 830
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    const/16 v29, 0x37

    const/16 v31, 0x0

    const/16 v33, 0x15

    invoke-static/range {v29 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 831
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v2

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$4;

    invoke-direct {v4, v7}, Lorg/telegram/ui/PaymentFormActivity$4;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_12

    :cond_15
    const/16 v4, 0x9

    if-ne v2, v4, :cond_16

    .line 904
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 905
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 906
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    const/16 v29, -0x1

    const/16 v30, -0x2

    const/16 v31, 0x0

    const/16 v32, 0xc

    const/16 v33, 0x15

    const/16 v34, 0x6

    invoke-static/range {v29 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 907
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v2

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$5;

    invoke-direct {v4, v7}, Lorg/telegram/ui/PaymentFormActivity$5;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_12

    .line 982
    :cond_16
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v4, v6, v6, v6, v10}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 983
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_17

    const/4 v5, 0x5

    goto :goto_11

    :cond_17
    move v5, v12

    :goto_11
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 984
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    const/16 v29, -0x1

    const/16 v30, -0x2

    const/16 v31, 0x33

    const/16 v32, 0x15

    const/16 v33, 0xc

    const/16 v34, 0x15

    const/16 v35, 0x6

    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 987
    :goto_12
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v2

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda25;

    invoke-direct {v4, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1f

    .line 1005
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_to_provider:Z

    if-nez v4, :cond_19

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_to_provider:Z

    if-eqz v3, :cond_18

    goto :goto_13

    .line 1031
    :cond_18
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v8, v5}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v4, v3, v9

    .line 1032
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v4, v4, v9

    const/4 v5, -0x2

    invoke-static {v14, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v10, v1

    goto/16 :goto_16

    :cond_19
    :goto_13
    move v4, v6

    const/4 v3, 0x0

    .line 1007
    :goto_14
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1b

    .line 1008
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    move-object v10, v1

    .line 1009
    iget-wide v0, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v13, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-wide v12, v13, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->provider_id:J

    cmp-long v0, v0, v12

    if-nez v0, :cond_1a

    move-object v3, v5

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    move-object v1, v10

    const/16 v0, 0xa

    const/4 v12, 0x3

    goto :goto_14

    :cond_1b
    move-object v10, v1

    if-eqz v3, :cond_1c

    .line 1015
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_1c
    move-object v0, v11

    .line 1020
    :goto_15
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v8, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v3, v1, v9

    .line 1021
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v9

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v8, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1022
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v3, v3, v9

    const/4 v4, -0x2

    invoke-static {v14, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1023
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_to_provider:Z

    if-eqz v3, :cond_1d

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_to_provider:Z

    if-eqz v1, :cond_1d

    .line 1024
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v9

    sget v3, Lorg/telegram/messenger/R$string;->PaymentPhoneEmailToProvider:I

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v6

    const-string v0, "PaymentPhoneEmailToProvider"

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    :cond_1d
    if-eqz v3, :cond_1e

    .line 1026
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v9

    sget v3, Lorg/telegram/messenger/R$string;->PaymentEmailToProvider:I

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v6

    const-string v0, "PaymentEmailToProvider"

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 1028
    :cond_1e
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v9

    sget v3, Lorg/telegram/messenger/R$string;->PaymentPhoneToProvider:I

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v6

    const-string v0, "PaymentPhoneToProvider"

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    :goto_16
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v8, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1036
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v7, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawableByColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1037
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v1, Lorg/telegram/messenger/R$string;->PaymentShippingSave:I

    const-string v3, "PaymentShippingSave"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, v7, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    invoke-virtual {v0, v1, v3, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1038
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v3, -0x2

    invoke-static {v14, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1039
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1044
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v8, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v1, v0, v6

    .line 1045
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v6

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v8, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1046
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v6

    sget v1, Lorg/telegram/messenger/R$string;->PaymentShippingSaveInfo:I

    const-string v3, "PaymentShippingSaveInfo"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v6

    const/4 v3, -0x2

    invoke-static {v14, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_17

    :cond_1f
    move-object v10, v1

    :goto_17
    add-int/lit8 v2, v2, 0x1

    move-object v1, v10

    const/16 v0, 0xa

    const/4 v5, -0x2

    const/4 v12, 0x3

    const/4 v13, 0x2

    goto/16 :goto_5

    .line 1051
    :cond_20
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-nez v0, :cond_21

    .line 1052
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

    .line 1054
    :goto_18
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v0, :cond_22

    .line 1055
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1057
    :cond_22
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-nez v0, :cond_23

    .line 1058
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1061
    :cond_23
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-eqz v1, :cond_24

    .line 1062
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v2, 0x9

    aget-object v0, v0, v2

    const v1, 0x10000006

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_19

    :cond_24
    const v1, 0x10000006

    .line 1063
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v2, :cond_25

    .line 1064
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_19

    .line 1065
    :cond_25
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-eqz v0, :cond_26

    .line 1066
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_19

    .line 1068
    :cond_26
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1071
    :goto_19
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v1, v0, v9

    if-eqz v1, :cond_29

    .line 1072
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

    .line 1073
    :cond_29
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v0, v9

    if-eqz v1, :cond_2c

    .line 1074
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

    .line 1076
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

    .line 1077
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->shipping_address_requested:Z

    if-nez v0, :cond_2f

    .line 1078
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v6

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1079
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v0, v0, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1080
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1081
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1082
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1083
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1084
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1085
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1088
    :cond_2f
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v0, :cond_30

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 1089
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/PaymentFormActivity;->fillNumber(Ljava/lang/String;)V

    goto :goto_21

    :cond_30
    const/4 v1, 0x0

    .line 1091
    invoke-virtual {v7, v1}, Lorg/telegram/ui/PaymentFormActivity;->fillNumber(Ljava/lang/String;)V

    .line 1094
    :goto_21
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_af

    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-eqz v1, :cond_af

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v0, :cond_31

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 1098
    :cond_31
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_32

    .line 1100
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

    .line 1103
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_32
    const/4 v1, 0x0

    :goto_22
    if-eqz v1, :cond_af

    .line 1107
    invoke-virtual {v15, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_af

    .line 1109
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v14, :cond_af

    .line 1111
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_65

    :cond_33
    const/16 v2, 0x9

    const/16 v10, 0x15

    const/4 v1, 0x2

    if-ne v0, v1, :cond_60

    .line 1117
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    if-eqz v0, :cond_35

    .line 1119
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "google_pay_public_key"

    .line 1120
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1121
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 1122
    iput-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->googlePayPublicKey:Ljava/lang/String;

    :cond_34
    const-string v1, "acquirer_bank_country"

    .line 1124
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->googlePayCountryCode:Ljava/lang/String;

    const-string v1, "gpay_parameters"

    .line 1125
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->googlePayParameters:Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_23

    :catch_2
    move-exception v0

    .line 1127
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1130
    :cond_35
    :goto_23
    iget-boolean v0, v7, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    if-nez v0, :cond_5b

    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentFormMethod:Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;

    if-eqz v0, :cond_36

    goto/16 :goto_36

    .line 1205
    :cond_36
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    if-eqz v0, :cond_39

    .line 1207
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

    .line 1209
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v7, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_24

    .line 1211
    :catch_3
    :try_start_5
    iput-boolean v6, v7, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    :goto_24
    :try_start_6
    const-string v1, "need_zip"

    .line 1214
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v7, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_25

    .line 1216
    :catch_4
    :try_start_7
    iput-boolean v6, v7, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :goto_25
    :try_start_8
    const-string v1, "need_cardholder_name"

    .line 1219
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v7, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_26

    .line 1221
    :catch_5
    :try_start_9
    iput-boolean v6, v7, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z

    :goto_26
    const-string v1, "public_token"

    .line 1223
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "public_token"

    .line 1224
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->providerApiKey:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_27

    :cond_37
    :try_start_a
    const-string v1, "publishable_key"

    .line 1227
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->providerApiKey:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_27

    .line 1229
    :catch_6
    :try_start_b
    iput-object v11, v7, Lorg/telegram/ui/PaymentFormActivity;->providerApiKey:Ljava/lang/String;

    :goto_27
    const-string v1, "google_pay_hidden"

    .line 1232
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

    .line 1234
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1238
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

    .line 1239
    :cond_3b
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/PaymentFormActivity;->initGooglePay(Landroid/content/Context;)V

    :cond_3c
    const/4 v1, 0x6

    new-array v0, v1, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 1242
    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move v0, v6

    :goto_2a
    if-ge v0, v1, :cond_58

    if-nez v0, :cond_3d

    .line 1245
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v8, v3}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v2, v1, v6

    .line 1246
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v6

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1247
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v6

    sget v2, Lorg/telegram/messenger/R$string;->PaymentCardTitle:I

    const-string v3, "PaymentCardTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1248
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

    .line 1250
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v8, v3}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v2, v1, v9

    .line 1251
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1252
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/messenger/R$string;->PaymentBillingAddress:I

    const-string v3, "PaymentBillingAddress"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1253
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

    .line 1256
    iget-boolean v1, v7, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-eqz v1, :cond_40

    :cond_3f
    move v1, v9

    goto :goto_2c

    :cond_40
    move v1, v6

    .line 1257
    :goto_2c
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1258
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1259
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1260
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/16 v5, 0x32

    invoke-static {v14, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1263
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v5, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v5, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v0

    .line 1264
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1265
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v9, v5}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1266
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1267
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1268
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1269
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 1270
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    const/16 v5, 0x14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 1271
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    const/4 v4, 0x3

    if-ne v0, v4, :cond_41

    new-array v5, v9, [Landroid/text/InputFilter;

    .line 1274
    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v10, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v10, v5, v6

    .line 1275
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1276
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    const/16 v5, 0x82

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1277
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1278
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_2d

    :cond_41
    if-nez v0, :cond_42

    .line 1280
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2d

    :cond_42
    const/4 v4, 0x4

    if-ne v0, v4, :cond_43

    .line 1282
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda23;

    invoke-direct {v5, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1297
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2d

    :cond_43
    if-ne v0, v9, :cond_44

    .line 1299
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    const/16 v5, 0x4002

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2d

    :cond_44
    const/4 v4, 0x2

    if-ne v0, v4, :cond_45

    .line 1301
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    const/16 v5, 0x1001

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2d

    .line 1303
    :cond_45
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    const/16 v5, 0x4001

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1305
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

    .line 1320
    :cond_46
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    sget v5, Lorg/telegram/messenger/R$string;->PaymentShippingZipPlaceholder:I

    const-string v10, "PaymentShippingZipPlaceholder"

    invoke-static {v10, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2e

    .line 1323
    :cond_47
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    sget v5, Lorg/telegram/messenger/R$string;->PaymentShippingCountry:I

    const-string v10, "PaymentShippingCountry"

    invoke-static {v10, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2e

    .line 1311
    :cond_48
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    sget v5, Lorg/telegram/messenger/R$string;->PaymentCardCvv:I

    const-string v10, "PaymentCardCvv"

    invoke-static {v10, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2e

    .line 1317
    :cond_49
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    sget v5, Lorg/telegram/messenger/R$string;->PaymentCardName:I

    const-string v10, "PaymentCardName"

    invoke-static {v10, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2e

    .line 1314
    :cond_4a
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    sget v5, Lorg/telegram/messenger/R$string;->PaymentCardExpireDate:I

    const-string v10, "PaymentCardExpireDate"

    invoke-static {v10, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2e

    .line 1308
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

    .line 1328
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$8;

    invoke-direct {v5, v7}, Lorg/telegram/ui/PaymentFormActivity$8;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2f

    :cond_4c
    if-ne v0, v9, :cond_4d

    .line 1482
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$9;

    invoke-direct {v5, v7}, Lorg/telegram/ui/PaymentFormActivity$9;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1600
    :cond_4d
    :goto_2f
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    const/4 v5, 0x6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v4, v6, v6, v6, v10}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1601
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

    .line 1602
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

    .line 1604
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda28;

    invoke-direct {v5, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/4 v4, 0x3

    if-ne v0, v4, :cond_4f

    .line 1625
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v8, v10}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v5, v4, v6

    .line 1626
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

    .line 1628
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v8, v10}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v10, 0x2

    aput-object v5, v4, v10

    .line 1629
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v5, v5, v10

    const/4 v10, -0x2

    invoke-static {v14, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1631
    new-instance v4, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v8, v5}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1632
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-static {v5, v10}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawableByColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1633
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v5, Lorg/telegram/messenger/R$string;->PaymentCardSavePaymentInformation:I

    const-string v10, "PaymentCardSavePaymentInformation"

    invoke-static {v10, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-boolean v10, v7, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    invoke-virtual {v4, v5, v10, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1634
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v10, -0x2

    invoke-static {v14, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1635
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda18;

    invoke-direct {v5, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1640
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v8, v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v5, v4, v6

    .line 1641
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v4, v4, v6

    sget v5, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v8, v5, v10}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1642
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    .line 1643
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

    .line 1645
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/PaymentFormActivity;->createGooglePayButton(Landroid/content/Context;)V

    .line 1646
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

    .line 1650
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$10;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/PaymentFormActivity$10;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    .line 1656
    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1657
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1658
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x53

    invoke-direct {v3, v14, v9, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_53
    const/4 v1, 0x4

    if-ne v0, v1, :cond_55

    .line 1661
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

    .line 1662
    :goto_35
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_57
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x6

    goto/16 :goto_2a

    .line 1665
    :cond_58
    iget-boolean v0, v7, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z

    if-nez v0, :cond_59

    iget-boolean v0, v7, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-nez v0, :cond_59

    .line 1666
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v0, v0, v9

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1667
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v0, v0, v6

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1669
    :cond_59
    iget-boolean v0, v7, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-eqz v0, :cond_5a

    .line 1670
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const v1, 0x10000006

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_65

    :cond_5a
    const v1, 0x10000006

    .line 1672
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_65

    .line 1131
    :cond_5b
    :goto_36
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->googlePayPublicKey:Ljava/lang/String;

    if-nez v0, :cond_5c

    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->googlePayParameters:Lorg/json/JSONObject;

    if-eqz v0, :cond_5d

    .line 1132
    :cond_5c
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/PaymentFormActivity;->initGooglePay(Landroid/content/Context;)V

    .line 1134
    :cond_5d
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/PaymentFormActivity;->createGooglePayButton(Landroid/content/Context;)V

    .line 1135
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->googlePayContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x32

    invoke-static {v14, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1137
    iput-boolean v9, v7, Lorg/telegram/ui/PaymentFormActivity;->webviewLoading:Z

    .line 1138
    invoke-direct {v7, v9, v9}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 1139
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 1140
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1141
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1142
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$6;

    invoke-direct {v0, v7, v8}, Lorg/telegram/ui/PaymentFormActivity$6;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    .line 1154
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1155
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v10, :cond_5e

    .line 1158
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 1159
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 1160
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v9}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    :cond_5e
    const/16 v1, 0x11

    if-lt v0, v1, :cond_5f

    .line 1163
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2}, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/PaymentFormActivity$1;)V

    const-string v2, "TelegramWebviewProxy"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1165
    :cond_5f
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$7;

    invoke-direct {v1, v7}, Lorg/telegram/ui/PaymentFormActivity$7;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1186
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const/4 v2, -0x2

    invoke-static {v14, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1188
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v8, v3}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 1189
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v1, v1, v3

    invoke-static {v14, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1191
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v8, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1192
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v7, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawableByColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1193
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v1, Lorg/telegram/messenger/R$string;->PaymentCardSavePaymentInformation:I

    const-string v2, "PaymentCardSavePaymentInformation"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v7, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    invoke-virtual {v0, v1, v2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1194
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, -0x2

    invoke-static {v14, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1195
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1200
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v8, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v1, v0, v6

    .line 1201
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v6

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v8, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1202
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    .line 1203
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v6

    const/4 v2, -0x2

    invoke-static {v14, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_65

    :cond_60
    const/16 v4, 0x8

    if-ne v0, v9, :cond_65

    .line 1676
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    if-nez v0, :cond_61

    move v0, v6

    goto :goto_37

    :cond_61
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->shipping_options:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1677
    :goto_37
    new-array v1, v0, [Lorg/telegram/ui/Cells/RadioCell;

    iput-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    move v1, v6

    :goto_38
    if-ge v1, v0, :cond_64

    .line 1679
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->shipping_options:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    .line 1680
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    new-instance v4, Lorg/telegram/ui/Cells/RadioCell;

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v8, v5}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v4, v3, v1

    .line 1681
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v3, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1682
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v3, v3, v1

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawableByColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1683
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

    .line 1684
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v2, v2, v1

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda12;

    invoke-direct {v3, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1690
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 1692
    :cond_64
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v8, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v1, v0, v6

    .line 1693
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v6

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v8, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1694
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v6

    const/4 v2, -0x2

    invoke-static {v14, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_65

    :cond_65
    const/4 v1, 0x3

    if-ne v0, v1, :cond_70

    const/4 v1, 0x2

    new-array v0, v1, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 1696
    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move v0, v6

    :goto_3b
    if-ge v0, v1, :cond_af

    if-nez v0, :cond_66

    .line 1699
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v8, v3}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v2, v1, v6

    .line 1700
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v6

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1701
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v6

    sget v2, Lorg/telegram/messenger/R$string;->PaymentCardTitle:I

    const-string v3, "PaymentCardTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1702
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v2, v2, v6

    const/4 v3, -0x2

    invoke-static {v14, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1705
    :cond_66
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1706
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1707
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/16 v3, 0x32

    invoke-static {v14, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1708
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    if-eq v0, v9, :cond_67

    move v3, v9

    goto :goto_3c

    :cond_67
    move v3, v6

    :goto_3c
    const/4 v4, 0x7

    if-eqz v3, :cond_69

    if-ne v0, v4, :cond_68

    .line 1712
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v5, :cond_68

    :goto_3d
    move v3, v6

    goto :goto_3e

    :cond_68
    const/4 v5, 0x6

    if-ne v0, v5, :cond_69

    .line 1714
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v10, v5, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v10, :cond_69

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-nez v5, :cond_69

    goto :goto_3d

    :cond_69
    :goto_3e
    if-eqz v3, :cond_6a

    .line 1719
    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$11;

    invoke-direct {v3, v7, v8}, Lorg/telegram/ui/PaymentFormActivity$11;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    .line 1725
    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1726
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1727
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v10, 0x53

    invoke-direct {v5, v14, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1730
    :cond_6a
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v5, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v5, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    aput-object v5, v3, v0

    .line 1731
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1732
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v3, v9, v5}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1733
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1734
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1735
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1736
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 1737
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    const/16 v5, 0x14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 1738
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    if-nez v0, :cond_6b

    .line 1740
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    sget-object v5, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda24;->INSTANCE:Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda24;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1741
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_3f

    .line 1743
    :cond_6b
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    const/16 v5, 0x81

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1744
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1746
    :goto_3f
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    const v5, 0x10000006

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    if-eqz v0, :cond_6d

    if-eq v0, v9, :cond_6c

    goto :goto_40

    .line 1752
    :cond_6c
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    sget v5, Lorg/telegram/messenger/R$string;->LoginPassword:I

    const-string v10, "LoginPassword"

    invoke-static {v10, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1753
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_40

    .line 1749
    :cond_6d
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->title:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1757
    :goto_40
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    const/4 v5, 0x6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v3, v6, v6, v6, v10}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1758
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v0

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_6e

    const/4 v5, 0x5

    goto :goto_41

    :cond_6e
    const/4 v5, 0x3

    :goto_41
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 1759
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

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1761
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v0

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda27;

    invoke-direct {v3, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    if-ne v0, v9, :cond_6f

    .line 1769
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v8, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v3, v1, v6

    .line 1770
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v6

    sget v3, Lorg/telegram/messenger/R$string;->PaymentConfirmationMessage:I

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->savedCredentialsCard:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->title:Ljava/lang/String;

    aput-object v10, v5, v6

    const-string v10, "PaymentConfirmationMessage"

    invoke-static {v10, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1771
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v6

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v8, v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1772
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v3, v3, v6

    const/4 v10, -0x2

    invoke-static {v14, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1774
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v8, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v3, v1, v6

    .line 1775
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v1, v1, v6

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawableByColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1776
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v1, v1, v6

    sget v2, Lorg/telegram/messenger/R$string;->PaymentConfirmationNewCard:I

    const-string v3, "PaymentConfirmationNewCard"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 1777
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v2, v2, v6

    const/4 v3, -0x2

    invoke-static {v14, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v1, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1778
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v1, v1, v6

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1783
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v8, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v2, v1, v9

    .line 1784
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {v8, v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1785
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v2, v2, v9

    const/4 v3, -0x2

    invoke-static {v14, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6f
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    goto/16 :goto_3b

    :cond_70
    const/4 v1, 0x4

    if-eq v0, v1, :cond_7e

    const/4 v1, 0x5

    if-ne v0, v1, :cond_71

    goto/16 :goto_4a

    :cond_71
    const/4 v1, 0x6

    if-ne v0, v1, :cond_af

    .line 2462
    new-instance v0, Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Cells/EditTextSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    .line 2463
    sget v1, Lorg/telegram/messenger/R$string;->PasswordCode:I

    const-string v2, "PasswordCode"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1, v6}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->setTextAndHint(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2464
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2465
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const/4 v2, 0x3

    .line 2466
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v2, 0x6

    .line 2467
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2468
    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda26;

    invoke-direct {v2, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2475
    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$20;

    invoke-direct {v2, v7}, Lorg/telegram/ui/PaymentFormActivity$20;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2493
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->codeFieldCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    const/4 v3, -0x2

    invoke-static {v14, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2495
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v8, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    .line 2496
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v0, v0, v3

    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v8, v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2497
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v2, v2, v3

    const/4 v3, -0x2

    invoke-static {v14, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2499
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v8, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v2, v0, v9

    .line 2500
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v9

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v7, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawableByColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2501
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v9

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 2502
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v9

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 2503
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v9

    sget v3, Lorg/telegram/messenger/R$string;->ResendCode:I

    const-string v4, "ResendCode"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 2504
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v3, v3, v9

    const/4 v4, -0x2

    invoke-static {v14, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2505
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v9

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda8;

    invoke-direct {v3, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2517
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v8, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v3, v0, v6

    .line 2518
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v6

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v7, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawableByColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2519
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v6

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 2520
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v6

    invoke-virtual {v7, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 2521
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v6

    sget v1, Lorg/telegram/messenger/R$string;->AbortPassword:I

    const-string v2, "AbortPassword"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 2522
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v1, v1, v6

    const/4 v2, -0x2

    invoke-static {v14, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2523
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    aget-object v0, v0, v6

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x3

    new-array v0, v1, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 2541
    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move v0, v6

    :goto_42
    if-ge v0, v1, :cond_7d

    if-nez v0, :cond_72

    .line 2544
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v8, v3}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v2, v1, v6

    .line 2545
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v6

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2546
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v6

    sget v2, Lorg/telegram/messenger/R$string;->PaymentPasswordTitle:I

    const-string v3, "PaymentPasswordTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 2547
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v2, v2, v6

    const/4 v3, -0x2

    invoke-static {v14, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_43

    :cond_72
    const/4 v1, 0x2

    if-ne v0, v1, :cond_73

    .line 2549
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v8, v3}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v2, v1, v9

    .line 2550
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2551
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/messenger/R$string;->PaymentPasswordEmailTitle:I

    const-string v3, "PaymentPasswordEmailTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 2552
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v2, v2, v9

    const/4 v3, -0x2

    invoke-static {v14, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2555
    :cond_73
    :goto_43
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2556
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 2557
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/16 v3, 0x32

    invoke-static {v14, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2558
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    if-nez v0, :cond_74

    .line 2561
    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$21;

    invoke-direct {v4, v7, v8}, Lorg/telegram/ui/PaymentFormActivity$21;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    .line 2567
    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2568
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2569
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x53

    invoke-direct {v2, v14, v9, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_44

    :cond_74
    const/16 v5, 0x53

    .line 2572
    :goto_44
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v4, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v0

    .line 2573
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 2574
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v9, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 2575
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 2576
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setTextColor(I)V

    .line 2577
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2578
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 2579
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    const/16 v4, 0x14

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 2580
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    if-eqz v0, :cond_76

    if-ne v0, v9, :cond_75

    goto :goto_45

    .line 2587
    :cond_75
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    const/16 v4, 0x21

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 2588
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    const v4, 0x10000006

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_46

    .line 2583
    :cond_76
    :goto_45
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    const/16 v4, 0x81

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 2584
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2585
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    const v4, 0x10000005

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_46
    if-eqz v0, :cond_79

    if-eq v0, v9, :cond_78

    const/4 v2, 0x2

    if-eq v0, v2, :cond_77

    goto :goto_47

    .line 2600
    :cond_77
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    sget v4, Lorg/telegram/messenger/R$string;->PaymentPasswordEmail:I

    const-string v10, "PaymentPasswordEmail"

    invoke-static {v10, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_47

    .line 2597
    :cond_78
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    sget v4, Lorg/telegram/messenger/R$string;->PaymentPasswordReEnter:I

    const-string v10, "PaymentPasswordReEnter"

    invoke-static {v10, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_47

    .line 2593
    :cond_79
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    sget v4, Lorg/telegram/messenger/R$string;->PaymentPasswordEnter:I

    const-string v10, "PaymentPasswordEnter"

    invoke-static {v10, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2594
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 2604
    :goto_47
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    const/4 v4, 0x6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v2, v6, v6, v6, v10}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 2605
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_7a

    const/4 v10, 0x5

    goto :goto_48

    :cond_7a
    const/4 v10, 0x3

    :goto_48
    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setGravity(I)V

    .line 2606
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

    .line 2608
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v0

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda29;

    invoke-direct {v2, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    if-ne v0, v9, :cond_7b

    .line 2623
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v8, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v2, v1, v6

    .line 2624
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v6

    sget v2, Lorg/telegram/messenger/R$string;->PaymentPasswordInfo:I

    const-string v4, "PaymentPasswordInfo"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 2625
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v6

    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v8, v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2626
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v2, v2, v6

    const/4 v4, -0x2

    invoke-static {v14, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v1, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_49

    :cond_7b
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7c

    .line 2628
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v8, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v2, v1, v9

    .line 2629
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/messenger/R$string;->PaymentPasswordEmailInfo:I

    const-string v4, "PaymentPasswordEmailInfo"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 2630
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v8, v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2631
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v2, v2, v9

    const/4 v4, -0x2

    invoke-static {v14, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v1, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7c
    :goto_49
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    goto/16 :goto_42

    .line 2634
    :cond_7d
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PaymentFormActivity;->updatePasswordFields()V

    goto/16 :goto_65

    .line 1789
    :cond_7e
    :goto_4a
    new-instance v0, Lorg/telegram/ui/Cells/PaymentInfoCell;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v8, v1}, Lorg/telegram/ui/Cells/PaymentInfoCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    .line 1790
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1791
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_7f

    .line 1792
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/Cells/PaymentInfoCell;->setInvoice(Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;Ljava/lang/String;)V

    goto :goto_4b

    .line 1793
    :cond_7f
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentReceipt:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;

    if-eqz v0, :cond_80

    .line 1794
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/Cells/PaymentInfoCell;->setReceipt(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;Ljava/lang/String;)V

    goto :goto_4b

    .line 1795
    :cond_80
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->invoiceSlug:Ljava/lang/String;

    if-eqz v0, :cond_81

    .line 1796
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

    .line 1798
    :cond_81
    :goto_4b
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    const/4 v5, -0x2

    invoke-static {v14, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1800
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v8, v3}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v1, v0, v6

    .line 1801
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v1, v1, v6

    invoke-static {v14, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1803
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->prices:Ljava/util/ArrayList;

    .line 1804
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-eqz v1, :cond_82

    .line 1805
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->prices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_82
    new-array v0, v9, [Ljava/lang/String;

    .line 1807
    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    move v0, v6

    .line 1809
    :goto_4c
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->prices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_83

    .line 1810
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->prices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    .line 1812
    new-instance v3, Lorg/telegram/ui/Cells/TextPriceCell;

    iget-object v12, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v8, v12}, Lorg/telegram/ui/Cells/TextPriceCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1813
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v12}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1814
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

    .line 1815
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x8

    const/4 v5, -0x2

    goto :goto_4c

    .line 1818
    :cond_83
    iget v0, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_84

    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->tipAmount:Ljava/lang/Long;

    if-eqz v0, :cond_84

    .line 1819
    new-instance v0, Lorg/telegram/ui/Cells/TextPriceCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v8, v3}, Lorg/telegram/ui/Cells/TextPriceCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1820
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1821
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

    .line 1822
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1825
    :cond_84
    new-instance v0, Lorg/telegram/ui/Cells/TextPriceCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v8, v3}, Lorg/telegram/ui/Cells/TextPriceCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->totalCell:Lorg/telegram/ui/Cells/TextPriceCell;

    .line 1826
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1827
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->prices:Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Lorg/telegram/ui/PaymentFormActivity;->getTotalPriceString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 1828
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->totalCell:Lorg/telegram/ui/Cells/TextPriceCell;

    sget v4, Lorg/telegram/messenger/R$string;->PaymentTransactionTotal:I

    const-string v5, "PaymentTransactionTotal"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v0, v4, v5, v9}, Lorg/telegram/ui/Cells/TextPriceCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1830
    iget v0, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_8a

    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8a

    .line 1831
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1832
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1833
    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1834
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_invoice;->suggested_tip_amounts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_85

    const/16 v5, 0x28

    goto :goto_4d

    :cond_85
    const/16 v5, 0x4e

    :goto_4d
    invoke-static {v14, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1835
    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda11;

    invoke-direct {v4, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1840
    new-instance v4, Lorg/telegram/ui/Cells/TextPriceCell;

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v8, v5}, Lorg/telegram/ui/Cells/TextPriceCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1841
    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1842
    sget v3, Lorg/telegram/messenger/R$string;->PaymentTipOptional:I

    const-string v5, "PaymentTipOptional"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v11, v6}, Lorg/telegram/ui/Cells/TextPriceCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1843
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-array v3, v9, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 1845
    iput-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 1846
    new-instance v4, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v6

    .line 1847
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1848
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v9, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1849
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1850
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1851
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1852
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 1853
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    const/16 v5, 0x14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 1854
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 1855
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1856
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    const v5, 0x10000006

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1857
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

    .line 1858
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v6

    const/4 v3, 0x6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v1, v6, v6, v6, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1859
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v6

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_86

    const/4 v3, 0x3

    goto :goto_4e

    :cond_86
    const/4 v3, 0x5

    :goto_4e
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 1860
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

    .line 1861
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v6

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$12;

    invoke-direct {v3, v7}, Lorg/telegram/ui/PaymentFormActivity$12;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1980
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v6

    sget-object v3, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda30;->INSTANCE:Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda30;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1987
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1989
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->suggested_tip_amounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_89

    .line 1990
    new-instance v12, Landroid/widget/HorizontalScrollView;

    invoke-direct {v12, v8}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 1991
    invoke-virtual {v12, v6}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 1992
    invoke-virtual {v12, v6}, Landroid/widget/HorizontalScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 1993
    invoke-virtual {v12, v6}, Landroid/widget/HorizontalScrollView;->setClipToPadding(Z)V

    .line 1994
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v12, v1, v6, v3, v6}, Landroid/widget/HorizontalScrollView;->setPadding(IIII)V

    .line 1995
    invoke-virtual {v12, v9}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    const/16 v17, -0x1

    const/16 v18, 0x1e

    const/16 v19, 0x33

    const/16 v20, 0x0

    const/16 v21, 0x2c

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 1996
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-array v0, v9, [I

    new-array v13, v9, [I

    .line 1999
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->suggested_tip_amounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2001
    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$13;

    move-object/from16 v17, v4

    const/16 v18, 0x5

    move-object v1, v3

    move/from16 v19, v2

    move-object/from16 v2, p0

    move-object v4, v3

    move-object/from16 v3, p1

    move-object v10, v4

    move v4, v5

    move v9, v5

    move-object v5, v0

    move v14, v6

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/PaymentFormActivity$13;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;I[I[I)V

    iput-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->tipLayout:Landroid/widget/LinearLayout;

    .line 2058
    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2059
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->tipLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x1e

    const/16 v3, 0x33

    const/4 v4, -0x1

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2060
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contacts_inviteBackground:I

    invoke-virtual {v7, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    move v6, v14

    :goto_4f
    if-ge v6, v9, :cond_8b

    .line 2063
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_87

    .line 2064
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->suggested_tip_amounts:Ljava/util/ArrayList;

    sub-int v5, v9, v6

    const/4 v3, 0x1

    sub-int/2addr v5, v3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_50

    .line 2066
    :cond_87
    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->suggested_tip_amounts:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2068
    :goto_50
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    invoke-virtual {v4, v2, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2069
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v10, 0x41600000    # 14.0f

    const/4 v12, 0x1

    .line 2070
    invoke-virtual {v5, v12, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v10, "fonts/rmedium.ttf"

    .line 2071
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2072
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setLines(I)V

    .line 2073
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2074
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2075
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v10, 0xf

    .line 2076
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    const/16 v12, 0xf

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v5, v10, v14, v12, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2077
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chats_secretName:I

    invoke-virtual {v7, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v10, 0xf

    .line 2078
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    const v12, 0x1fffffff

    and-int/2addr v12, v1

    invoke-static {v10, v12}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v10, 0x1

    .line 2079
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v10, 0x11

    .line 2080
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 2081
    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->tipLayout:Landroid/widget/LinearLayout;

    const/16 v31, -0x2

    const/16 v32, -0x1

    const/16 v33, 0x13

    const/16 v34, 0x0

    const/16 v35, 0x0

    add-int/lit8 v12, v9, -0x1

    if-eq v6, v12, :cond_88

    move/from16 v36, v19

    goto :goto_51

    :cond_88
    move/from16 v36, v14

    :goto_51
    const/16 v37, 0x0

    invoke-static/range {v31 .. v37}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v10, v5, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2082
    new-instance v10, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda20;

    invoke-direct {v10, v7, v5, v2, v3}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/widget/TextView;J)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2095
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

    .line 2096
    sget v3, Lorg/telegram/messenger/R$id;->width_tag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 2097
    aget v3, v0, v14

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v0, v14

    .line 2098
    aget v3, v13, v14

    add-int/2addr v3, v2

    aput v3, v13, v14

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4f

    :cond_89
    move-object/from16 v17, v4

    move v14, v6

    const/16 v18, 0x5

    goto :goto_52

    :cond_8a
    move/from16 v18, v1

    move v14, v6

    const/16 v17, 0x0

    .line 2103
    :cond_8b
    :goto_52
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->totalCell:Lorg/telegram/ui/Cells/TextPriceCell;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2105
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v2, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v8, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2106
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v0, v0, v2

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v8, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2107
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v1, v1, v2

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2109
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v1, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v8, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v1, v0, v14

    .line 2110
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v14

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v7, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawableByColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2111
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v14

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    if-eqz v1, :cond_8c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_8c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    invoke-virtual {v4, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_53

    :cond_8c
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    :goto_53
    sget v3, Lorg/telegram/messenger/R$string;->PaymentCheckoutMethod:I

    const-string v4, "PaymentCheckoutMethod"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_payment_card:I

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    .line 2113
    iget-boolean v0, v7, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    if-eqz v0, :cond_8e

    .line 2114
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_8d

    goto :goto_54

    :cond_8d
    const/16 v6, 0x8

    goto :goto_55

    :cond_8e
    :goto_54
    move v6, v14

    .line 2116
    :goto_55
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v14

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2117
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2118
    iget v0, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8f

    .line 2119
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v14

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8f
    move v0, v14

    move-object/from16 v1, v17

    .line 2128
    :goto_56
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_91

    .line 2129
    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 2130
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v9, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->provider_id:J

    cmp-long v4, v4, v9

    if-nez v4, :cond_90

    move-object v1, v3

    :cond_90
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 2134
    :cond_91
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v3, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v8, v4}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 2135
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v4

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v7, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-static {v5, v10}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawableByColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_95

    .line 2138
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v4

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget v4, Lorg/telegram/messenger/R$string;->PaymentCheckoutProvider:I

    const-string v5, "PaymentCheckoutProvider"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_payment_provider:I

    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    if-eqz v10, :cond_92

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-nez v10, :cond_93

    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-nez v10, :cond_93

    :cond_92
    iget-object v10, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v10, :cond_94

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v10, :cond_94

    :cond_93
    const/4 v10, 0x1

    goto :goto_57

    :cond_94
    move v10, v14

    :goto_57
    invoke-virtual {v0, v11, v4, v5, v10}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    .line 2139
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_58

    :cond_95
    move v5, v4

    .line 2143
    :goto_58
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v5

    if-eqz v1, :cond_96

    move v4, v6

    goto :goto_59

    :cond_96
    const/16 v4, 0x8

    :goto_59
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2145
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    if-nez v0, :cond_97

    iget-boolean v1, v7, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    if-eqz v1, :cond_a2

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    if-eqz v1, :cond_a2

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v1, :cond_a2

    :cond_97
    if-eqz v0, :cond_98

    .line 2146
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    goto :goto_5a

    :cond_98
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    .line 2148
    :goto_5a
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v4, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v8, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v5, 0x2

    aput-object v4, v1, v5

    .line 2149
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2150
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2151
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v1, :cond_9a

    .line 2152
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    invoke-virtual {v1, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2153
    iget v1, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_99

    .line 2154
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v7, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-static {v4, v10}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawableByColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2155
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda19;

    invoke-direct {v4, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5b

    .line 2167
    :cond_99
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    invoke-virtual {v7, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2171
    :cond_9a
    :goto_5b
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v4, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v8, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v5, 0x3

    aput-object v4, v1, v5

    .line 2172
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2173
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2174
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_9c

    .line 2175
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    invoke-virtual {v1, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2176
    iget v1, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_9b

    .line 2177
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v7, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-static {v4, v10}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawableByColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2178
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda14;

    invoke-direct {v4, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5c

    .line 2190
    :cond_9b
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    invoke-virtual {v7, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2194
    :cond_9c
    :goto_5c
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v4, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v8, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v5, 0x4

    aput-object v4, v1, v5

    .line 2195
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2196
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2197
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    if-eqz v1, :cond_9e

    .line 2198
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    invoke-virtual {v1, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2199
    iget v1, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    if-ne v1, v5, :cond_9d

    .line 2200
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v7, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-static {v4, v10}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawableByColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2201
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda10;

    invoke-direct {v4, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5d

    .line 2213
    :cond_9d
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    invoke-virtual {v7, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2217
    :cond_9e
    :goto_5d
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v4, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v8, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v4, v1, v18

    .line 2218
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v18

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2219
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v18

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2220
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    if-eqz v1, :cond_a0

    .line 2221
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v18

    invoke-virtual {v1, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2222
    iget v1, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_9f

    .line 2223
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v18

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v7, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawableByColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2224
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v18

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda15;

    invoke-direct {v4, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5e

    .line 2236
    :cond_9f
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v18

    invoke-virtual {v7, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2240
    :cond_a0
    :goto_5e
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-eqz v1, :cond_a1

    .line 2241
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v4, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v8, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v5, 0x6

    aput-object v4, v1, v5

    .line 2242
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    invoke-virtual {v7, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2243
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v5

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->title:Ljava/lang/String;

    sget v10, Lorg/telegram/messenger/R$string;->PaymentCheckoutShippingMethod:I

    const-string v12, "PaymentCheckoutShippingMethod"

    invoke-static {v12, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_payment_delivery:I

    invoke-virtual {v1, v4, v10, v12, v14}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    .line 2244
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2246
    :cond_a1
    invoke-direct {v7, v0}, Lorg/telegram/ui/PaymentFormActivity;->setAddressFields(Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;)V

    .line 2249
    :cond_a2
    iget v0, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_ac

    .line 2250
    iget-boolean v0, v7, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, v7, Lorg/telegram/ui/PaymentFormActivity;->isAcceptTermsChecked:Z

    iput-boolean v0, v7, Lorg/telegram/ui/PaymentFormActivity;->recurrentAccepted:Z

    .line 2251
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    invoke-direct {v0, v7, v8, v1}, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    .line 2252
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a3

    .line 2253
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2254
    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-static {v4, v14}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2255
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    const/4 v5, -0x1

    invoke-static {v5, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v1, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5f

    :cond_a3
    const/4 v5, -0x1

    .line 2257
    :goto_5f
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    const/16 v4, 0x30

    const/16 v10, 0x50

    invoke-static {v5, v4, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v15, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2258
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda21;

    invoke-direct {v4, v7, v11}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2336
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    .line 2337
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_contacts_inviteText:I

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2338
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->PaymentCheckoutPay:I

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    iget-object v12, v7, Lorg/telegram/ui/PaymentFormActivity;->totalPrice:[Ljava/lang/String;

    aget-object v12, v12, v14

    aput-object v12, v11, v14

    const-string v12, "PaymentCheckoutPay"

    invoke-static {v12, v5, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2339
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v1, v10, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2340
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 2341
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2342
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const/4 v10, -0x1

    invoke-static {v10, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v5, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2344
    new-instance v1, Lorg/telegram/ui/Components/ContextProgressView;

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v8, v14, v5}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v5, 0x4

    .line 2345
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 2346
    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    .line 2347
    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const v5, 0x2fffffff

    and-int/2addr v5, v1

    invoke-virtual {v4, v5, v1}, Lorg/telegram/ui/Components/ContextProgressView;->setColors(II)V

    .line 2348
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v5, -0x1

    invoke-static {v5, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v1, v4, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2350
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->recurring:Z

    if-eqz v4, :cond_a5

    iget-boolean v4, v7, Lorg/telegram/ui/PaymentFormActivity;->isAcceptTermsChecked:Z

    if-eqz v4, :cond_a4

    goto :goto_60

    :cond_a4
    move v4, v14

    goto :goto_61

    :cond_a5
    :goto_60
    const/4 v4, 0x1

    :goto_61
    invoke-virtual {v1, v4}, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->setChecked(Z)V

    .line 2351
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    iget-object v4, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->recurring:Z

    if-eqz v4, :cond_a6

    iget-boolean v4, v7, Lorg/telegram/ui/PaymentFormActivity;->isAcceptTermsChecked:Z

    if-nez v4, :cond_a6

    const v4, 0x3f4ccccd    # 0.8f

    goto :goto_62

    :cond_a6
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_62
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2353
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v14}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2354
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2356
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$18;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/PaymentFormActivity$18;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const/4 v4, -0x1

    .line 2363
    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 2364
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2365
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a7

    .line 2368
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 2369
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 2370
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v4}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 2373
    :cond_a7
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$19;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/PaymentFormActivity$19;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2416
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->recurring:Z

    if-eqz v0, :cond_ab

    .line 2417
    new-instance v0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/PaymentFormActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    .line 2418
    iget-object v1, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->recurring:Z

    if-eqz v1, :cond_a8

    iget-boolean v1, v7, Lorg/telegram/ui/PaymentFormActivity;->isAcceptTermsChecked:Z

    if-eqz v1, :cond_a8

    const/4 v1, 0x1

    goto :goto_63

    :cond_a8
    move v1, v14

    :goto_63
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->setChecked(Z)V

    .line 2419
    sget v0, Lorg/telegram/messenger/R$string;->PaymentCheckoutAcceptRecurrent:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2420
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v4, 0x2a

    .line 2421
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/16 v5, 0x2a

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v10, -0x1

    if-eq v4, v10, :cond_a9

    if-eq v5, v10, :cond_a9

    .line 2423
    new-instance v10, Landroid/text/SpannableString;

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v0, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2424
    new-instance v11, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    iget-object v12, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$TL_invoice;->recurring_terms_url:Ljava/lang/String;

    invoke-direct {v11, v12}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/text/SpannableString;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v10, v11, v14, v12, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/4 v11, 0x1

    add-int/2addr v5, v11

    .line 2425
    invoke-virtual {v1, v4, v5, v10}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2426
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a9
    const-string v4, "%1$s"

    .line 2429
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_aa

    add-int/lit8 v4, v0, 0x4

    .line 2431
    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    invoke-virtual {v1, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2432
    new-instance v4, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    iget-object v5, v7, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    const/16 v10, 0x21

    invoke-virtual {v1, v4, v0, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2435
    :cond_aa
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->setText(Ljava/lang/CharSequence;)V

    .line 2437
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    invoke-virtual {v7, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorWithBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2438
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->recurrentAcceptCell:Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, v7}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2448
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

    .line 2451
    :cond_ab
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, -0x1

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v15, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2452
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2455
    :cond_ac
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v8, v3}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 2456
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v0, v0, v3

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v8, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v6, :cond_ae

    .line 2457
    iget v0, v7, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_ae

    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    if-nez v0, :cond_ae

    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    if-eqz v0, :cond_ad

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-nez v0, :cond_ae

    .line 2458
    :cond_ad
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_64

    :cond_ae
    const/4 v1, 0x1

    .line 2460
    :goto_64
    iget-object v0, v7, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v3, v7, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v1, v3, v1

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2636
    :cond_af
    :goto_65
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

    .line 3199
    sget p2, Lorg/telegram/messenger/NotificationCenter;->twoStepPasswordChanged:I

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 3200
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iput-boolean p3, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    .line 3201
    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->can_save_credentials:Z

    .line 3202
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    goto :goto_0

    .line 3203
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didRemoveTwoStepPassword:I

    if-ne p1, p2, :cond_1

    .line 3204
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    .line 3205
    iput-boolean p3, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->can_save_credentials:Z

    .line 3206
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    goto :goto_0

    .line 3207
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    if-ne p1, p2, :cond_2

    .line 3208
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentStatusSent:Z

    .line 3209
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :cond_2
    :goto_0
    return-void
.end method

.method public fillNumber(Ljava/lang/String;)V
    .locals 7

    .line 3463
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3466
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eq v2, v1, :cond_8

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-eqz v2, :cond_8

    .line 3467
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-lt v2, v3, :cond_2

    .line 3468
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

    .line 3472
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    const/4 v0, 0x0

    .line 3476
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3477
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_7

    :goto_2
    const/16 v2, 0x8

    if-lt v3, v1, :cond_6

    .line 3479
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 3480
    iget-object v6, p0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 3483
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3484
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

    .line 3489
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3490
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v3, v2

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    if-eqz v0, :cond_8

    .line 3494
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v1, 0x9

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3495
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

    .line 3501
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

    .line 3021
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->getBaseRequest()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "allowedPaymentMethods"

    .line 3022
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 3023
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->getBaseCardPaymentMethod()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    .line 3022
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3025
    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3027
    :catch_0
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getOtherSameFragmentDiff()I
    .locals 3

    .line 3093
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3096
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 3098
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3101
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3102
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 3103
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

    .line 467
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

    .line 4377
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4379
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

    .line 4380
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

    .line 4381
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4382
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4383
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4384
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4385
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearch:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4386
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearchPlaceholder:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4387
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

    .line 4388
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

    .line 4389
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

    .line 4390
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4391
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    move-object v13, v2

    move/from16 v20, v28

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4393
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v2, :cond_0

    move v2, v12

    .line 4394
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 4395
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

    .line 4396
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

    .line 4397
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

    .line 4400
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

    .line 4401
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

    .line 4403
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    const-string v3, "radioButton"

    const-string v4, "textView"

    if-eqz v2, :cond_2

    move v2, v12

    .line 4404
    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 4405
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

    .line 4406
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

    .line 4407
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

    .line 4408
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

    .line 4409
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

    .line 4412
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

    .line 4413
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

    .line 4414
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

    .line 4416
    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 4417
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

    .line 4418
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

    .line 4420
    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 4421
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

    .line 4423
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 4424
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

    .line 4425
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

    .line 4426
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

    .line 4428
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 4429
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

    .line 4432
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

    .line 4433
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

    .line 4434
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

    .line 4436
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    move-object v13, v2

    move/from16 v20, v21

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4438
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

    .line 4439
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

    .line 4440
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

    .line 4441
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

    .line 4442
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

    .line 4444
    :goto_6
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell:[Lorg/telegram/ui/Cells/TextSettingsCell;

    array-length v3, v3

    if-ge v2, v3, :cond_8

    .line 4445
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

    .line 4446
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

    .line 4447
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

    .line 4450
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

    .line 4452
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

    .line 4453
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

    .line 4454
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

    .line 4455
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

    .line 4456
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

    .line 4458
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v14, v3, v12

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4459
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

    .line 4461
    :goto_7
    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    array-length v3, v3

    if-ge v2, v3, :cond_9

    .line 4462
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

    .line 4463
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

    .line 4464
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

    .line 4467
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

    .line 4468
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

    .line 4469
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

    .line 4470
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

    .line 4472
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

    .line 4473
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

    .line 4475
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 4476
    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object v4, v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    goto :goto_8

    :cond_a
    return-object v1
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 4141
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->swipeBackEnabled:Z

    return p1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x3df

    if-ne p1, v0, :cond_0

    .line 3216
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda36;

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/PaymentFormActivity;ILandroid/content/Intent;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 4367
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->shouldNavigateBack:Z

    if-eqz v0, :cond_0

    .line 4368
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->webViewUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4369
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->shouldNavigateBack:Z

    return v0

    .line 4372
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onBecomeFullyVisible()V
    .locals 2

    .line 3155
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    .line 3157
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3158
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->needPayAfterTransition:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3159
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->needPayAfterTransition:Z

    .line 3160
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->callOnClick()Z

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 3084
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->twoStepPasswordChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3085
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didRemoveTwoStepPassword:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3086
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    if-eqz v0, :cond_1

    .line 3087
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3089
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 3113
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    if-eqz v0, :cond_0

    .line 3114
    invoke-interface {v0}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;->onFragmentDestroyed()V

    .line 3116
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentStatusSent:Z

    if-nez v0, :cond_1

    .line 3117
    sget-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->CANCELLED:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    .line 3118
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getOtherSameFragmentDiff()I

    move-result v0

    if-nez v0, :cond_1

    .line 3119
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->invoiceStatus:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    invoke-interface {v0, v1}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;->onInvoiceStatusChanged(Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    .line 3122
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->twoStepPasswordChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3123
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didRemoveTwoStepPassword:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3124
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->isCheckoutPreview:Z

    if-eqz v0, :cond_3

    .line 3125
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3127
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_5

    .line 3129
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3131
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3133
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 3134
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3135
    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webViewUrl:Ljava/lang/String;

    .line 3136
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 3137
    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3139
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3143
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

    .line 3144
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

    .line 3147
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3149
    :cond_8
    :goto_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 v0, 0x1

    .line 3150
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->canceled:Z

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 509
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 510
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 511
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 513
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

    .line 514
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 515
    :cond_1
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    if-eqz v0, :cond_3

    .line 516
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

    .line 519
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 2

    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    .line 3168
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const/4 p2, 0x4

    if-eqz p1, :cond_1

    .line 3169
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    if-eq v0, p2, :cond_5

    .line 3170
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormMethod:Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;

    if-eqz p2, :cond_0

    .line 3171
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_paymentFormMethod;->url:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->webViewUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 3173
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->url:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->webViewUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 3176
    :cond_1
    iget p1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 3177
    new-instance p1, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda35;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 3182
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3183
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    .line 3185
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p1, :cond_5

    .line 3186
    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_4
    const/4 p2, 0x6

    if-ne p1, p2, :cond_5

    .line 3189
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->waitingForEmail:Z

    if-nez p1, :cond_5

    .line 3190
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3191
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 0

    .line 4345
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->onPresentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 4346
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    return p1
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z
    .locals 0

    .line 4351
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->onPresentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 4352
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    move-result p1

    return p1
.end method

.method public setPaymentFormCallback(Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentFormCallback:Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;

    return-void
.end method

.method public setResourcesProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method
