package org.telegram.p043ui.Components.Premium.boosts;

import android.os.Build;
import android.util.Pair;
import androidx.core.util.Consumer;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.ProductDetailsResponseListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import org.json.JSONObject;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BillingController;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.Components.BotWebViewSheet;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.PaymentFormActivity;
import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$ChannelParticipantsFilter;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.TLRPC$TL_channelParticipantsRecent;
import org.telegram.tgnet.TLRPC$TL_channelParticipantsSearch;
import org.telegram.tgnet.TLRPC$TL_channels_channelParticipants;
import org.telegram.tgnet.TLRPC$TL_channels_getParticipants;
import org.telegram.tgnet.TLRPC$TL_contacts_found;
import org.telegram.tgnet.TLRPC$TL_contacts_search;
import org.telegram.tgnet.TLRPC$TL_dataJSON;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_help_countriesList;
import org.telegram.tgnet.TLRPC$TL_help_country;
import org.telegram.tgnet.TLRPC$TL_help_getCountriesList;
import org.telegram.tgnet.TLRPC$TL_inputInvoicePremiumGiftCode;
import org.telegram.tgnet.TLRPC$TL_inputStorePaymentPremiumGiftCode;
import org.telegram.tgnet.TLRPC$TL_inputStorePaymentPremiumGiveaway;
import org.telegram.tgnet.TLRPC$TL_payments_applyGiftCode;
import org.telegram.tgnet.TLRPC$TL_payments_canPurchasePremium;
import org.telegram.tgnet.TLRPC$TL_payments_checkGiftCode;
import org.telegram.tgnet.TLRPC$TL_payments_checkedGiftCode;
import org.telegram.tgnet.TLRPC$TL_payments_getGiveawayInfo;
import org.telegram.tgnet.TLRPC$TL_payments_getPaymentForm;
import org.telegram.tgnet.TLRPC$TL_payments_getPremiumGiftCodeOptions;
import org.telegram.tgnet.TLRPC$TL_payments_launchPrepaidGiveaway;
import org.telegram.tgnet.TLRPC$TL_payments_paymentForm;
import org.telegram.tgnet.TLRPC$TL_payments_paymentReceipt;
import org.telegram.tgnet.TLRPC$TL_premiumGiftCodeOption;
import org.telegram.tgnet.TLRPC$Updates;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$Vector;
import org.telegram.tgnet.TLRPC$payments_GiveawayInfo;
import org.telegram.tgnet.p042tl.TL_stories$TL_premium_applyBoost;
import org.telegram.tgnet.p042tl.TL_stories$TL_premium_myBoosts;
import org.telegram.tgnet.p042tl.TL_stories$TL_prepaidGiveaway;
/* renamed from: org.telegram.ui.Components.Premium.boosts.BoostRepository */
/* loaded from: classes6.dex */
public class BoostRepository {
    public static int prepareServerDate(long j) {
        if (j < System.currentTimeMillis() + 120000) {
            j = System.currentTimeMillis() + 120000;
        }
        return (int) (j / 1000);
    }

    public static long giveawayAddPeersMax() {
        return MessagesController.getInstance(UserConfig.selectedAccount).giveawayAddPeersMax;
    }

    public static long giveawayPeriodMax() {
        return MessagesController.getInstance(UserConfig.selectedAccount).giveawayPeriodMax;
    }

    public static long giveawayCountriesMax() {
        return MessagesController.getInstance(UserConfig.selectedAccount).giveawayCountriesMax;
    }

    public static int giveawayBoostsPerPremium() {
        return (int) MessagesController.getInstance(UserConfig.selectedAccount).giveawayBoostsPerPremium;
    }

    public static boolean isMultiBoostsAvailable() {
        return MessagesController.getInstance(UserConfig.selectedAccount).boostsPerSentGift > 0;
    }

    public static int boostsPerSentGift() {
        return (int) MessagesController.getInstance(UserConfig.selectedAccount).boostsPerSentGift;
    }

    public static void loadParticipantsCount(final Utilities.Callback<HashMap<Long, Integer>> callback) {
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(UserConfig.selectedAccount);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                BoostRepository.lambda$loadParticipantsCount$1(MessagesStorage.this, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadParticipantsCount$1(MessagesStorage messagesStorage, final Utilities.Callback callback) {
        final HashMap<Long, Integer> smallGroupsParticipantsCount = messagesStorage.getSmallGroupsParticipantsCount();
        if (smallGroupsParticipantsCount == null || smallGroupsParticipantsCount.isEmpty()) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                Utilities.Callback.this.run(smallGroupsParticipantsCount);
            }
        });
    }

    public static ArrayList<TLRPC$InputPeer> getMyChannels(long j) {
        ArrayList<TLRPC$InputPeer> arrayList = new ArrayList<>();
        MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        ArrayList<TLRPC$Dialog> allDialogs = messagesController.getAllDialogs();
        for (int i = 0; i < allDialogs.size(); i++) {
            TLRPC$Dialog tLRPC$Dialog = allDialogs.get(i);
            if (DialogObject.isChatDialog(tLRPC$Dialog.f1608id) && ChatObject.isChannelAndNotMegaGroup(messagesController.getChat(Long.valueOf(-tLRPC$Dialog.f1608id)))) {
                long j2 = tLRPC$Dialog.f1608id;
                if ((-j2) != j) {
                    arrayList.add(messagesController.getInputPeer(j2));
                }
            }
        }
        return arrayList;
    }

    public static void payGiftCode(List<TLObject> list, TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption, TLRPC$Chat tLRPC$Chat, BaseFragment baseFragment, Utilities.Callback<Void> callback, Utilities.Callback<TLRPC$TL_error> callback2) {
        if (!isGoogleBillingAvailable()) {
            payGiftCodeByInvoice(list, tLRPC$TL_premiumGiftCodeOption, tLRPC$Chat, baseFragment, callback, callback2);
        } else {
            payGiftCodeByGoogle(list, tLRPC$TL_premiumGiftCodeOption, tLRPC$Chat, baseFragment, callback, callback2);
        }
    }

    public static boolean isGoogleBillingAvailable() {
        if (BuildVars.useInvoiceBilling()) {
            return false;
        }
        return BillingController.getInstance().isReady();
    }

    public static void payGiftCodeByInvoice(List<TLObject> list, TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption, TLRPC$Chat tLRPC$Chat, final BaseFragment baseFragment, final Utilities.Callback<Void> callback, final Utilities.Callback<TLRPC$TL_error> callback2) {
        final MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        TLRPC$TL_payments_getPaymentForm tLRPC$TL_payments_getPaymentForm = new TLRPC$TL_payments_getPaymentForm();
        final TLRPC$TL_inputInvoicePremiumGiftCode tLRPC$TL_inputInvoicePremiumGiftCode = new TLRPC$TL_inputInvoicePremiumGiftCode();
        TLRPC$TL_inputStorePaymentPremiumGiftCode tLRPC$TL_inputStorePaymentPremiumGiftCode = new TLRPC$TL_inputStorePaymentPremiumGiftCode();
        tLRPC$TL_inputStorePaymentPremiumGiftCode.users = new ArrayList<>();
        for (TLObject tLObject : list) {
            if (tLObject instanceof TLRPC$User) {
                tLRPC$TL_inputStorePaymentPremiumGiftCode.users.add(messagesController.getInputUser((TLRPC$User) tLObject));
            }
        }
        if (tLRPC$Chat != null) {
            tLRPC$TL_inputStorePaymentPremiumGiftCode.flags = 1;
            tLRPC$TL_inputStorePaymentPremiumGiftCode.boost_peer = messagesController.getInputPeer(-tLRPC$Chat.f1602id);
        }
        tLRPC$TL_inputStorePaymentPremiumGiftCode.currency = tLRPC$TL_premiumGiftCodeOption.currency;
        tLRPC$TL_inputStorePaymentPremiumGiftCode.amount = tLRPC$TL_premiumGiftCodeOption.amount;
        tLRPC$TL_inputInvoicePremiumGiftCode.purpose = tLRPC$TL_inputStorePaymentPremiumGiftCode;
        tLRPC$TL_inputInvoicePremiumGiftCode.option = tLRPC$TL_premiumGiftCodeOption;
        JSONObject makeThemeParams = BotWebViewSheet.makeThemeParams(baseFragment.getResourceProvider());
        if (makeThemeParams != null) {
            TLRPC$TL_dataJSON tLRPC$TL_dataJSON = new TLRPC$TL_dataJSON();
            tLRPC$TL_payments_getPaymentForm.theme_params = tLRPC$TL_dataJSON;
            tLRPC$TL_dataJSON.data = makeThemeParams.toString();
            tLRPC$TL_payments_getPaymentForm.flags = 1 | tLRPC$TL_payments_getPaymentForm.flags;
        }
        tLRPC$TL_payments_getPaymentForm.invoice = tLRPC$TL_inputInvoicePremiumGiftCode;
        connectionsManager.sendRequest(tLRPC$TL_payments_getPaymentForm, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda46
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject2, TLRPC$TL_error tLRPC$TL_error) {
                BoostRepository.lambda$payGiftCodeByInvoice$4(Utilities.Callback.this, messagesController, tLRPC$TL_inputInvoicePremiumGiftCode, baseFragment, callback, tLObject2, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$payGiftCodeByInvoice$4(final Utilities.Callback callback, final MessagesController messagesController, final TLRPC$TL_inputInvoicePremiumGiftCode tLRPC$TL_inputInvoicePremiumGiftCode, final BaseFragment baseFragment, final Utilities.Callback callback2, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                BoostRepository.lambda$payGiftCodeByInvoice$3(TLRPC$TL_error.this, callback, tLObject, messagesController, tLRPC$TL_inputInvoicePremiumGiftCode, baseFragment, callback2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$payGiftCodeByInvoice$3(TLRPC$TL_error tLRPC$TL_error, final Utilities.Callback callback, TLObject tLObject, MessagesController messagesController, TLRPC$TL_inputInvoicePremiumGiftCode tLRPC$TL_inputInvoicePremiumGiftCode, BaseFragment baseFragment, final Utilities.Callback callback2) {
        PaymentFormActivity paymentFormActivity;
        if (tLRPC$TL_error != null) {
            callback.run(tLRPC$TL_error);
            return;
        }
        if (tLObject instanceof TLRPC$TL_payments_paymentForm) {
            TLRPC$TL_payments_paymentForm tLRPC$TL_payments_paymentForm = (TLRPC$TL_payments_paymentForm) tLObject;
            tLRPC$TL_payments_paymentForm.invoice.recurring = true;
            messagesController.putUsers(tLRPC$TL_payments_paymentForm.users, false);
            paymentFormActivity = new PaymentFormActivity(tLRPC$TL_payments_paymentForm, tLRPC$TL_inputInvoicePremiumGiftCode, baseFragment);
        } else {
            paymentFormActivity = tLObject instanceof TLRPC$TL_payments_paymentReceipt ? new PaymentFormActivity((TLRPC$TL_payments_paymentReceipt) tLObject) : null;
        }
        if (paymentFormActivity != null) {
            paymentFormActivity.setPaymentFormCallback(new PaymentFormActivity.PaymentFormCallback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda49
                @Override // org.telegram.p043ui.PaymentFormActivity.PaymentFormCallback
                public final void onInvoiceStatusChanged(PaymentFormActivity.InvoiceStatus invoiceStatus) {
                    BoostRepository.lambda$payGiftCodeByInvoice$2(Utilities.Callback.this, callback, invoiceStatus);
                }
            });
            LaunchActivity.getLastFragment().showAsSheet(paymentFormActivity, new BaseFragment.BottomSheetParams());
            return;
        }
        callback.run(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$payGiftCodeByInvoice$2(Utilities.Callback callback, Utilities.Callback callback2, PaymentFormActivity.InvoiceStatus invoiceStatus) {
        if (invoiceStatus == PaymentFormActivity.InvoiceStatus.PAID) {
            callback.run(null);
        } else if (invoiceStatus != PaymentFormActivity.InvoiceStatus.PENDING) {
            callback2.run(null);
        }
    }

    public static void payGiftCodeByGoogle(List<TLObject> list, final TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption, TLRPC$Chat tLRPC$Chat, final BaseFragment baseFragment, final Utilities.Callback<Void> callback, final Utilities.Callback<TLRPC$TL_error> callback2) {
        MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        final ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        final TLRPC$TL_inputStorePaymentPremiumGiftCode tLRPC$TL_inputStorePaymentPremiumGiftCode = new TLRPC$TL_inputStorePaymentPremiumGiftCode();
        tLRPC$TL_inputStorePaymentPremiumGiftCode.users = new ArrayList<>();
        for (TLObject tLObject : list) {
            if (tLObject instanceof TLRPC$User) {
                tLRPC$TL_inputStorePaymentPremiumGiftCode.users.add(messagesController.getInputUser((TLRPC$User) tLObject));
            }
        }
        if (tLRPC$Chat != null) {
            tLRPC$TL_inputStorePaymentPremiumGiftCode.flags = 1;
            tLRPC$TL_inputStorePaymentPremiumGiftCode.boost_peer = messagesController.getInputPeer(-tLRPC$Chat.f1602id);
        }
        BillingController.getInstance().queryProductDetails(Arrays.asList(QueryProductDetailsParams.Product.newBuilder().setProductType("inapp").setProductId(tLRPC$TL_premiumGiftCodeOption.store_product).build()), new ProductDetailsResponseListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda3
            @Override // com.android.billingclient.api.ProductDetailsResponseListener
            public final void onProductDetailsResponse(BillingResult billingResult, List list2) {
                BoostRepository.lambda$payGiftCodeByGoogle$11(TLRPC$TL_inputStorePaymentPremiumGiftCode.this, tLRPC$TL_premiumGiftCodeOption, connectionsManager, callback2, callback, baseFragment, billingResult, list2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$payGiftCodeByGoogle$11(final TLRPC$TL_inputStorePaymentPremiumGiftCode tLRPC$TL_inputStorePaymentPremiumGiftCode, TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption, ConnectionsManager connectionsManager, final Utilities.Callback callback, final Utilities.Callback callback2, final BaseFragment baseFragment, final BillingResult billingResult, final List list) {
        ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails = ((ProductDetails) list.get(0)).getOneTimePurchaseOfferDetails();
        tLRPC$TL_inputStorePaymentPremiumGiftCode.currency = oneTimePurchaseOfferDetails.getPriceCurrencyCode();
        tLRPC$TL_inputStorePaymentPremiumGiftCode.amount = (long) ((oneTimePurchaseOfferDetails.getPriceAmountMicros() / Math.pow(10.0d, 6.0d)) * Math.pow(10.0d, BillingController.getInstance().getCurrencyExp(tLRPC$TL_premiumGiftCodeOption.currency)));
        TLRPC$TL_payments_canPurchasePremium tLRPC$TL_payments_canPurchasePremium = new TLRPC$TL_payments_canPurchasePremium();
        tLRPC$TL_payments_canPurchasePremium.purpose = tLRPC$TL_inputStorePaymentPremiumGiftCode;
        connectionsManager.sendRequest(tLRPC$TL_payments_canPurchasePremium, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda40
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                BoostRepository.lambda$payGiftCodeByGoogle$10(Utilities.Callback.this, list, billingResult, callback2, baseFragment, tLRPC$TL_inputStorePaymentPremiumGiftCode, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$payGiftCodeByGoogle$10(final Utilities.Callback callback, final List list, final BillingResult billingResult, final Utilities.Callback callback2, final BaseFragment baseFragment, final TLRPC$TL_inputStorePaymentPremiumGiftCode tLRPC$TL_inputStorePaymentPremiumGiftCode, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                BoostRepository.lambda$payGiftCodeByGoogle$9(TLRPC$TL_error.this, callback, tLObject, list, billingResult, callback2, baseFragment, tLRPC$TL_inputStorePaymentPremiumGiftCode);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$payGiftCodeByGoogle$9(TLRPC$TL_error tLRPC$TL_error, final Utilities.Callback callback, TLObject tLObject, List list, final BillingResult billingResult, final Utilities.Callback callback2, BaseFragment baseFragment, TLRPC$TL_inputStorePaymentPremiumGiftCode tLRPC$TL_inputStorePaymentPremiumGiftCode) {
        if (tLRPC$TL_error != null) {
            callback.run(tLRPC$TL_error);
        } else if (tLObject != null) {
            BillingController.getInstance().addResultListener(((ProductDetails) list.get(0)).getProductId(), new Consumer() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda1
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    BoostRepository.lambda$payGiftCodeByGoogle$6(BillingResult.this, callback2, (BillingResult) obj);
                }
            });
            BillingController.getInstance().setOnCanceled(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    BoostRepository.lambda$payGiftCodeByGoogle$8(Utilities.Callback.this);
                }
            });
            BillingController.getInstance().launchBillingFlow(baseFragment.getParentActivity(), AccountInstance.getInstance(UserConfig.selectedAccount), tLRPC$TL_inputStorePaymentPremiumGiftCode, Collections.singletonList(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails((ProductDetails) list.get(0)).build()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$payGiftCodeByGoogle$6(BillingResult billingResult, final Utilities.Callback callback, BillingResult billingResult2) {
        if (billingResult.getResponseCode() == 0) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    Utilities.Callback.this.run(null);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$payGiftCodeByGoogle$8(final Utilities.Callback callback) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                Utilities.Callback.this.run(null);
            }
        });
    }

    public static void launchPreparedGiveaway(TL_stories$TL_prepaidGiveaway tL_stories$TL_prepaidGiveaway, List<TLObject> list, List<TLObject> list2, TLRPC$Chat tLRPC$Chat, int i, boolean z, boolean z2, boolean z3, String str, final Utilities.Callback<Void> callback, final Utilities.Callback<TLRPC$TL_error> callback2) {
        final MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        TLRPC$TL_inputStorePaymentPremiumGiveaway tLRPC$TL_inputStorePaymentPremiumGiveaway = new TLRPC$TL_inputStorePaymentPremiumGiveaway();
        tLRPC$TL_inputStorePaymentPremiumGiveaway.only_new_subscribers = z;
        tLRPC$TL_inputStorePaymentPremiumGiveaway.winners_are_visible = z2;
        tLRPC$TL_inputStorePaymentPremiumGiveaway.prize_description = str;
        tLRPC$TL_inputStorePaymentPremiumGiveaway.until_date = i;
        int i2 = tLRPC$TL_inputStorePaymentPremiumGiveaway.flags | 2;
        tLRPC$TL_inputStorePaymentPremiumGiveaway.flags = i2;
        int i3 = i2 | 4;
        tLRPC$TL_inputStorePaymentPremiumGiveaway.flags = i3;
        if (z3) {
            tLRPC$TL_inputStorePaymentPremiumGiveaway.flags = i3 | 16;
        }
        tLRPC$TL_inputStorePaymentPremiumGiveaway.random_id = System.currentTimeMillis();
        tLRPC$TL_inputStorePaymentPremiumGiveaway.additional_peers = new ArrayList<>();
        tLRPC$TL_inputStorePaymentPremiumGiveaway.boost_peer = messagesController.getInputPeer(-tLRPC$Chat.f1602id);
        tLRPC$TL_inputStorePaymentPremiumGiveaway.currency = "";
        Iterator<TLObject> it = list2.iterator();
        while (it.hasNext()) {
            tLRPC$TL_inputStorePaymentPremiumGiveaway.countries_iso2.add(((TLRPC$TL_help_country) it.next()).iso2);
        }
        for (TLObject tLObject : list) {
            if (tLObject instanceof TLRPC$Chat) {
                tLRPC$TL_inputStorePaymentPremiumGiveaway.additional_peers.add(messagesController.getInputPeer(-((TLRPC$Chat) tLObject).f1602id));
            }
        }
        TLRPC$TL_payments_launchPrepaidGiveaway tLRPC$TL_payments_launchPrepaidGiveaway = new TLRPC$TL_payments_launchPrepaidGiveaway();
        tLRPC$TL_payments_launchPrepaidGiveaway.giveaway_id = tL_stories$TL_prepaidGiveaway.f1770id;
        tLRPC$TL_payments_launchPrepaidGiveaway.peer = messagesController.getInputPeer(-tLRPC$Chat.f1602id);
        tLRPC$TL_payments_launchPrepaidGiveaway.purpose = tLRPC$TL_inputStorePaymentPremiumGiveaway;
        connectionsManager.sendRequest(tLRPC$TL_payments_launchPrepaidGiveaway, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda43
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject2, TLRPC$TL_error tLRPC$TL_error) {
                BoostRepository.lambda$launchPreparedGiveaway$14(Utilities.Callback.this, messagesController, callback, tLObject2, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$launchPreparedGiveaway$14(final Utilities.Callback callback, MessagesController messagesController, final Utilities.Callback callback2, TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    Utilities.Callback.this.run(tLRPC$TL_error);
                }
            });
        } else if (tLObject != null) {
            messagesController.processUpdates((TLRPC$Updates) tLObject, false);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    Utilities.Callback.this.run(null);
                }
            });
        }
    }

    public static void payGiveAway(List<TLObject> list, List<TLObject> list2, TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption, TLRPC$Chat tLRPC$Chat, int i, boolean z, BaseFragment baseFragment, boolean z2, boolean z3, String str, Utilities.Callback<Void> callback, Utilities.Callback<TLRPC$TL_error> callback2) {
        if (!isGoogleBillingAvailable()) {
            payGiveAwayByInvoice(list, list2, tLRPC$TL_premiumGiftCodeOption, tLRPC$Chat, i, z, baseFragment, z2, z3, str, callback, callback2);
        } else {
            payGiveAwayByGoogle(list, list2, tLRPC$TL_premiumGiftCodeOption, tLRPC$Chat, i, z, baseFragment, z2, z3, str, callback, callback2);
        }
    }

    public static void payGiveAwayByInvoice(List<TLObject> list, List<TLObject> list2, TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption, TLRPC$Chat tLRPC$Chat, int i, boolean z, final BaseFragment baseFragment, boolean z2, boolean z3, String str, final Utilities.Callback<Void> callback, final Utilities.Callback<TLRPC$TL_error> callback2) {
        final MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        TLRPC$TL_payments_getPaymentForm tLRPC$TL_payments_getPaymentForm = new TLRPC$TL_payments_getPaymentForm();
        final TLRPC$TL_inputInvoicePremiumGiftCode tLRPC$TL_inputInvoicePremiumGiftCode = new TLRPC$TL_inputInvoicePremiumGiftCode();
        TLRPC$TL_inputStorePaymentPremiumGiveaway tLRPC$TL_inputStorePaymentPremiumGiveaway = new TLRPC$TL_inputStorePaymentPremiumGiveaway();
        tLRPC$TL_inputStorePaymentPremiumGiveaway.only_new_subscribers = z;
        tLRPC$TL_inputStorePaymentPremiumGiveaway.winners_are_visible = z2;
        tLRPC$TL_inputStorePaymentPremiumGiveaway.prize_description = str;
        tLRPC$TL_inputStorePaymentPremiumGiveaway.until_date = i;
        int i2 = tLRPC$TL_inputStorePaymentPremiumGiveaway.flags | 2;
        tLRPC$TL_inputStorePaymentPremiumGiveaway.flags = i2;
        int i3 = i2 | 4;
        tLRPC$TL_inputStorePaymentPremiumGiveaway.flags = i3;
        if (z3) {
            tLRPC$TL_inputStorePaymentPremiumGiveaway.flags = i3 | 16;
        }
        tLRPC$TL_inputStorePaymentPremiumGiveaway.random_id = System.currentTimeMillis();
        tLRPC$TL_inputStorePaymentPremiumGiveaway.additional_peers = new ArrayList<>();
        for (TLObject tLObject : list) {
            if (tLObject instanceof TLRPC$Chat) {
                tLRPC$TL_inputStorePaymentPremiumGiveaway.additional_peers.add(messagesController.getInputPeer(-((TLRPC$Chat) tLObject).f1602id));
            }
        }
        tLRPC$TL_inputStorePaymentPremiumGiveaway.boost_peer = messagesController.getInputPeer(-tLRPC$Chat.f1602id);
        tLRPC$TL_inputStorePaymentPremiumGiveaway.boost_peer = messagesController.getInputPeer(-tLRPC$Chat.f1602id);
        tLRPC$TL_inputStorePaymentPremiumGiveaway.currency = tLRPC$TL_premiumGiftCodeOption.currency;
        tLRPC$TL_inputStorePaymentPremiumGiveaway.amount = tLRPC$TL_premiumGiftCodeOption.amount;
        Iterator<TLObject> it = list2.iterator();
        while (it.hasNext()) {
            tLRPC$TL_inputStorePaymentPremiumGiveaway.countries_iso2.add(((TLRPC$TL_help_country) it.next()).iso2);
        }
        tLRPC$TL_inputInvoicePremiumGiftCode.purpose = tLRPC$TL_inputStorePaymentPremiumGiveaway;
        tLRPC$TL_inputInvoicePremiumGiftCode.option = tLRPC$TL_premiumGiftCodeOption;
        JSONObject makeThemeParams = BotWebViewSheet.makeThemeParams(baseFragment.getResourceProvider());
        if (makeThemeParams != null) {
            TLRPC$TL_dataJSON tLRPC$TL_dataJSON = new TLRPC$TL_dataJSON();
            tLRPC$TL_payments_getPaymentForm.theme_params = tLRPC$TL_dataJSON;
            tLRPC$TL_dataJSON.data = makeThemeParams.toString();
            tLRPC$TL_payments_getPaymentForm.flags |= 1;
        }
        tLRPC$TL_payments_getPaymentForm.invoice = tLRPC$TL_inputInvoicePremiumGiftCode;
        connectionsManager.sendRequest(tLRPC$TL_payments_getPaymentForm, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda45
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject2, TLRPC$TL_error tLRPC$TL_error) {
                BoostRepository.lambda$payGiveAwayByInvoice$17(Utilities.Callback.this, messagesController, tLRPC$TL_inputInvoicePremiumGiftCode, baseFragment, callback, tLObject2, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$payGiveAwayByInvoice$17(final Utilities.Callback callback, final MessagesController messagesController, final TLRPC$TL_inputInvoicePremiumGiftCode tLRPC$TL_inputInvoicePremiumGiftCode, final BaseFragment baseFragment, final Utilities.Callback callback2, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                BoostRepository.lambda$payGiveAwayByInvoice$16(TLRPC$TL_error.this, callback, tLObject, messagesController, tLRPC$TL_inputInvoicePremiumGiftCode, baseFragment, callback2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$payGiveAwayByInvoice$16(TLRPC$TL_error tLRPC$TL_error, final Utilities.Callback callback, TLObject tLObject, MessagesController messagesController, TLRPC$TL_inputInvoicePremiumGiftCode tLRPC$TL_inputInvoicePremiumGiftCode, BaseFragment baseFragment, final Utilities.Callback callback2) {
        PaymentFormActivity paymentFormActivity;
        if (tLRPC$TL_error != null) {
            callback.run(tLRPC$TL_error);
            return;
        }
        if (tLObject instanceof TLRPC$TL_payments_paymentForm) {
            TLRPC$TL_payments_paymentForm tLRPC$TL_payments_paymentForm = (TLRPC$TL_payments_paymentForm) tLObject;
            tLRPC$TL_payments_paymentForm.invoice.recurring = true;
            messagesController.putUsers(tLRPC$TL_payments_paymentForm.users, false);
            paymentFormActivity = new PaymentFormActivity(tLRPC$TL_payments_paymentForm, tLRPC$TL_inputInvoicePremiumGiftCode, baseFragment);
        } else {
            paymentFormActivity = tLObject instanceof TLRPC$TL_payments_paymentReceipt ? new PaymentFormActivity((TLRPC$TL_payments_paymentReceipt) tLObject) : null;
        }
        if (paymentFormActivity != null) {
            paymentFormActivity.setPaymentFormCallback(new PaymentFormActivity.PaymentFormCallback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda50
                @Override // org.telegram.p043ui.PaymentFormActivity.PaymentFormCallback
                public final void onInvoiceStatusChanged(PaymentFormActivity.InvoiceStatus invoiceStatus) {
                    BoostRepository.lambda$payGiveAwayByInvoice$15(Utilities.Callback.this, callback, invoiceStatus);
                }
            });
            LaunchActivity.getLastFragment().showAsSheet(paymentFormActivity, new BaseFragment.BottomSheetParams());
            return;
        }
        callback.run(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$payGiveAwayByInvoice$15(Utilities.Callback callback, Utilities.Callback callback2, PaymentFormActivity.InvoiceStatus invoiceStatus) {
        if (invoiceStatus == PaymentFormActivity.InvoiceStatus.PAID) {
            callback.run(null);
        } else if (invoiceStatus != PaymentFormActivity.InvoiceStatus.PENDING) {
            callback2.run(null);
        }
    }

    public static void payGiveAwayByGoogle(List<TLObject> list, List<TLObject> list2, final TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption, TLRPC$Chat tLRPC$Chat, int i, boolean z, final BaseFragment baseFragment, boolean z2, boolean z3, String str, final Utilities.Callback<Void> callback, final Utilities.Callback<TLRPC$TL_error> callback2) {
        MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        final ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        final TLRPC$TL_inputStorePaymentPremiumGiveaway tLRPC$TL_inputStorePaymentPremiumGiveaway = new TLRPC$TL_inputStorePaymentPremiumGiveaway();
        tLRPC$TL_inputStorePaymentPremiumGiveaway.only_new_subscribers = z;
        tLRPC$TL_inputStorePaymentPremiumGiveaway.winners_are_visible = z2;
        tLRPC$TL_inputStorePaymentPremiumGiveaway.prize_description = str;
        tLRPC$TL_inputStorePaymentPremiumGiveaway.until_date = i;
        int i2 = tLRPC$TL_inputStorePaymentPremiumGiveaway.flags | 2;
        tLRPC$TL_inputStorePaymentPremiumGiveaway.flags = i2;
        int i3 = i2 | 4;
        tLRPC$TL_inputStorePaymentPremiumGiveaway.flags = i3;
        if (z3) {
            tLRPC$TL_inputStorePaymentPremiumGiveaway.flags = i3 | 16;
        }
        tLRPC$TL_inputStorePaymentPremiumGiveaway.random_id = System.currentTimeMillis();
        tLRPC$TL_inputStorePaymentPremiumGiveaway.additional_peers = new ArrayList<>();
        for (TLObject tLObject : list) {
            if (tLObject instanceof TLRPC$Chat) {
                tLRPC$TL_inputStorePaymentPremiumGiveaway.additional_peers.add(messagesController.getInputPeer(-((TLRPC$Chat) tLObject).f1602id));
            }
        }
        tLRPC$TL_inputStorePaymentPremiumGiveaway.boost_peer = messagesController.getInputPeer(-tLRPC$Chat.f1602id);
        Iterator<TLObject> it = list2.iterator();
        while (it.hasNext()) {
            tLRPC$TL_inputStorePaymentPremiumGiveaway.countries_iso2.add(((TLRPC$TL_help_country) it.next()).iso2);
        }
        BillingController.getInstance().queryProductDetails(Arrays.asList(QueryProductDetailsParams.Product.newBuilder().setProductType("inapp").setProductId(tLRPC$TL_premiumGiftCodeOption.store_product).build()), new ProductDetailsResponseListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda4
            @Override // com.android.billingclient.api.ProductDetailsResponseListener
            public final void onProductDetailsResponse(BillingResult billingResult, List list3) {
                BoostRepository.lambda$payGiveAwayByGoogle$24(TLRPC$TL_inputStorePaymentPremiumGiveaway.this, tLRPC$TL_premiumGiftCodeOption, connectionsManager, callback2, callback, baseFragment, billingResult, list3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$payGiveAwayByGoogle$24(final TLRPC$TL_inputStorePaymentPremiumGiveaway tLRPC$TL_inputStorePaymentPremiumGiveaway, TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption, ConnectionsManager connectionsManager, final Utilities.Callback callback, final Utilities.Callback callback2, final BaseFragment baseFragment, final BillingResult billingResult, final List list) {
        ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails = ((ProductDetails) list.get(0)).getOneTimePurchaseOfferDetails();
        tLRPC$TL_inputStorePaymentPremiumGiveaway.currency = oneTimePurchaseOfferDetails.getPriceCurrencyCode();
        tLRPC$TL_inputStorePaymentPremiumGiveaway.amount = (long) ((oneTimePurchaseOfferDetails.getPriceAmountMicros() / Math.pow(10.0d, 6.0d)) * Math.pow(10.0d, BillingController.getInstance().getCurrencyExp(tLRPC$TL_premiumGiftCodeOption.currency)));
        TLRPC$TL_payments_canPurchasePremium tLRPC$TL_payments_canPurchasePremium = new TLRPC$TL_payments_canPurchasePremium();
        tLRPC$TL_payments_canPurchasePremium.purpose = tLRPC$TL_inputStorePaymentPremiumGiveaway;
        connectionsManager.sendRequest(tLRPC$TL_payments_canPurchasePremium, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda41
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                BoostRepository.lambda$payGiveAwayByGoogle$23(Utilities.Callback.this, list, billingResult, callback2, baseFragment, tLRPC$TL_inputStorePaymentPremiumGiveaway, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$payGiveAwayByGoogle$23(final Utilities.Callback callback, final List list, final BillingResult billingResult, final Utilities.Callback callback2, final BaseFragment baseFragment, final TLRPC$TL_inputStorePaymentPremiumGiveaway tLRPC$TL_inputStorePaymentPremiumGiveaway, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                BoostRepository.lambda$payGiveAwayByGoogle$22(TLRPC$TL_error.this, callback, tLObject, list, billingResult, callback2, baseFragment, tLRPC$TL_inputStorePaymentPremiumGiveaway);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$payGiveAwayByGoogle$22(TLRPC$TL_error tLRPC$TL_error, final Utilities.Callback callback, TLObject tLObject, List list, final BillingResult billingResult, final Utilities.Callback callback2, BaseFragment baseFragment, TLRPC$TL_inputStorePaymentPremiumGiveaway tLRPC$TL_inputStorePaymentPremiumGiveaway) {
        if (tLRPC$TL_error != null) {
            callback.run(tLRPC$TL_error);
        } else if (tLObject != null) {
            BillingController.getInstance().addResultListener(((ProductDetails) list.get(0)).getProductId(), new Consumer() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda0
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    BoostRepository.lambda$payGiveAwayByGoogle$19(BillingResult.this, callback2, (BillingResult) obj);
                }
            });
            BillingController.getInstance().setOnCanceled(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    BoostRepository.lambda$payGiveAwayByGoogle$21(Utilities.Callback.this);
                }
            });
            BillingController.getInstance().launchBillingFlow(baseFragment.getParentActivity(), AccountInstance.getInstance(UserConfig.selectedAccount), tLRPC$TL_inputStorePaymentPremiumGiveaway, Collections.singletonList(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails((ProductDetails) list.get(0)).build()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$payGiveAwayByGoogle$19(BillingResult billingResult, final Utilities.Callback callback, BillingResult billingResult2) {
        if (billingResult.getResponseCode() == 0) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    Utilities.Callback.this.run(null);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$payGiveAwayByGoogle$21(final Utilities.Callback callback) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                Utilities.Callback.this.run(null);
            }
        });
    }

    public static List<TLRPC$TL_premiumGiftCodeOption> filterGiftOptions(List<TLRPC$TL_premiumGiftCodeOption> list, int i) {
        ArrayList arrayList = new ArrayList();
        for (TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption : list) {
            String str = tLRPC$TL_premiumGiftCodeOption.store_product;
            if (tLRPC$TL_premiumGiftCodeOption.users == i) {
                arrayList.add(tLRPC$TL_premiumGiftCodeOption);
            }
        }
        if (arrayList.isEmpty()) {
            for (TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption2 : list) {
                if (tLRPC$TL_premiumGiftCodeOption2.users == 1) {
                    arrayList.add(tLRPC$TL_premiumGiftCodeOption2);
                }
            }
        }
        return arrayList;
    }

    public static List<TLRPC$TL_premiumGiftCodeOption> filterGiftOptionsByBilling(List<TLRPC$TL_premiumGiftCodeOption> list) {
        if (isGoogleBillingAvailable()) {
            ArrayList arrayList = new ArrayList();
            for (TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption : list) {
                if (tLRPC$TL_premiumGiftCodeOption.store_product != null) {
                    arrayList.add(tLRPC$TL_premiumGiftCodeOption);
                }
            }
            return arrayList;
        }
        return list;
    }

    public static void loadCountries(final Utilities.Callback<Pair<Map<String, List<TLRPC$TL_help_country>>, List<String>>> callback) {
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        TLRPC$TL_help_getCountriesList tLRPC$TL_help_getCountriesList = new TLRPC$TL_help_getCountriesList();
        tLRPC$TL_help_getCountriesList.lang_code = LocaleController.getInstance().getCurrentLocaleInfo() != null ? LocaleController.getInstance().getCurrentLocaleInfo().getLangCode() : Locale.getDefault().getCountry();
        connectionsManager.sendRequest(tLRPC$TL_help_getCountriesList, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda39
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                BoostRepository.lambda$loadCountries$27(Utilities.Callback.this, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadCountries$27(final Utilities.Callback callback, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        final Comparator comparator;
        if (tLObject != null) {
            TLRPC$TL_help_countriesList tLRPC$TL_help_countriesList = (TLRPC$TL_help_countriesList) tLObject;
            final HashMap hashMap = new HashMap();
            final ArrayList arrayList = new ArrayList();
            for (int i = 0; i < tLRPC$TL_help_countriesList.countries.size(); i++) {
                TLRPC$TL_help_country tLRPC$TL_help_country = tLRPC$TL_help_countriesList.countries.get(i);
                String str = tLRPC$TL_help_country.name;
                if (str != null) {
                    tLRPC$TL_help_country.default_name = str;
                }
                if (!tLRPC$TL_help_country.iso2.equalsIgnoreCase("FT")) {
                    String upperCase = tLRPC$TL_help_country.default_name.substring(0, 1).toUpperCase();
                    List list = (List) hashMap.get(upperCase);
                    if (list == null) {
                        list = new ArrayList();
                        hashMap.put(upperCase, list);
                        arrayList.add(upperCase);
                    }
                    list.add(tLRPC$TL_help_country);
                }
            }
            if (Build.VERSION.SDK_INT >= 24) {
                Collator collator = Collator.getInstance(LocaleController.getInstance().getCurrentLocale() != null ? LocaleController.getInstance().getCurrentLocale() : Locale.getDefault());
                Objects.requireNonNull(collator);
                comparator = new BoostRepository$$ExternalSyntheticLambda31(collator);
            } else {
                comparator = BoostRepository$$ExternalSyntheticLambda33.INSTANCE;
            }
            Collections.sort(arrayList, comparator);
            for (List list2 : hashMap.values()) {
                Collections.sort(list2, new Comparator() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda32
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        int lambda$loadCountries$25;
                        lambda$loadCountries$25 = BoostRepository.lambda$loadCountries$25(comparator, (TLRPC$TL_help_country) obj, (TLRPC$TL_help_country) obj2);
                        return lambda$loadCountries$25;
                    }
                });
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    BoostRepository.lambda$loadCountries$26(Utilities.Callback.this, hashMap, arrayList);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$loadCountries$25(Comparator comparator, TLRPC$TL_help_country tLRPC$TL_help_country, TLRPC$TL_help_country tLRPC$TL_help_country2) {
        return comparator.compare(tLRPC$TL_help_country.default_name, tLRPC$TL_help_country2.default_name);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadCountries$26(Utilities.Callback callback, Map map, List list) {
        callback.run(new Pair(map, list));
    }

    public static void loadGiftOptions(TLRPC$Chat tLRPC$Chat, final Utilities.Callback<List<TLRPC$TL_premiumGiftCodeOption>> callback) {
        MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        TLRPC$TL_payments_getPremiumGiftCodeOptions tLRPC$TL_payments_getPremiumGiftCodeOptions = new TLRPC$TL_payments_getPremiumGiftCodeOptions();
        if (tLRPC$Chat != null) {
            tLRPC$TL_payments_getPremiumGiftCodeOptions.flags = 1;
            tLRPC$TL_payments_getPremiumGiftCodeOptions.boost_peer = messagesController.getInputPeer(-tLRPC$Chat.f1602id);
        }
        connectionsManager.sendRequest(tLRPC$TL_payments_getPremiumGiftCodeOptions, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda38
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                BoostRepository.lambda$loadGiftOptions$31(Utilities.Callback.this, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadGiftOptions$31(final Utilities.Callback callback, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject != null) {
            TLRPC$Vector tLRPC$Vector = (TLRPC$Vector) tLObject;
            final ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < tLRPC$Vector.objects.size(); i++) {
                TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption = (TLRPC$TL_premiumGiftCodeOption) tLRPC$Vector.objects.get(i);
                arrayList.add(tLRPC$TL_premiumGiftCodeOption);
                if (tLRPC$TL_premiumGiftCodeOption.store_product != null) {
                    arrayList2.add(QueryProductDetailsParams.Product.newBuilder().setProductType("inapp").setProductId(tLRPC$TL_premiumGiftCodeOption.store_product).build());
                }
            }
            if (arrayList2.isEmpty() || !isGoogleBillingAvailable()) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda17
                    @Override // java.lang.Runnable
                    public final void run() {
                        Utilities.Callback.this.run(arrayList);
                    }
                });
            } else {
                BillingController.getInstance().queryProductDetails(arrayList2, new ProductDetailsResponseListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda2
                    @Override // com.android.billingclient.api.ProductDetailsResponseListener
                    public final void onProductDetailsResponse(BillingResult billingResult, List list) {
                        BoostRepository.lambda$loadGiftOptions$30(arrayList, callback, billingResult, list);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadGiftOptions$30(final List list, final Utilities.Callback callback, BillingResult billingResult, List list2) {
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            ProductDetails productDetails = (ProductDetails) it.next();
            ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails = productDetails.getOneTimePurchaseOfferDetails();
            Iterator it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption = (TLRPC$TL_premiumGiftCodeOption) it2.next();
                String str = tLRPC$TL_premiumGiftCodeOption.store_product;
                if (str != null && str.equals(productDetails.getProductId())) {
                    tLRPC$TL_premiumGiftCodeOption.amount = (long) ((oneTimePurchaseOfferDetails.getPriceAmountMicros() / Math.pow(10.0d, 6.0d)) * Math.pow(10.0d, BillingController.getInstance().getCurrencyExp(tLRPC$TL_premiumGiftCodeOption.currency)));
                    tLRPC$TL_premiumGiftCodeOption.currency = oneTimePurchaseOfferDetails.getPriceCurrencyCode();
                    break;
                }
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                Utilities.Callback.this.run(list);
            }
        });
    }

    public static int searchContacts(int i, String str, final Utilities.Callback<List<TLRPC$User>> callback) {
        final MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        if (i != 0) {
            connectionsManager.cancelRequest(i, false);
        }
        if (str == null || str.isEmpty()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    BoostRepository.lambda$searchContacts$32(Utilities.Callback.this);
                }
            });
            return 0;
        }
        TLRPC$TL_contacts_search tLRPC$TL_contacts_search = new TLRPC$TL_contacts_search();
        tLRPC$TL_contacts_search.f1652q = str;
        tLRPC$TL_contacts_search.limit = 50;
        return connectionsManager.sendRequest(tLRPC$TL_contacts_search, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda35
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                BoostRepository.lambda$searchContacts$34(MessagesController.this, callback, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$searchContacts$32(Utilities.Callback callback) {
        callback.run(Collections.emptyList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$searchContacts$34(MessagesController messagesController, final Utilities.Callback callback, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject instanceof TLRPC$TL_contacts_found) {
            TLRPC$TL_contacts_found tLRPC$TL_contacts_found = (TLRPC$TL_contacts_found) tLObject;
            messagesController.putUsers(tLRPC$TL_contacts_found.users, false);
            final ArrayList arrayList = new ArrayList();
            for (int i = 0; i < tLRPC$TL_contacts_found.users.size(); i++) {
                TLRPC$User tLRPC$User = tLRPC$TL_contacts_found.users.get(i);
                if (!tLRPC$User.self && !UserObject.isDeleted(tLRPC$User) && !tLRPC$User.bot && !UserObject.isService(tLRPC$User.f1751id)) {
                    arrayList.add(tLRPC$User);
                }
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    Utilities.Callback.this.run(arrayList);
                }
            });
        }
    }

    public static void searchChats(final long j, int i, String str, int i2, final Utilities.Callback<List<TLRPC$InputPeer>> callback) {
        final MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        TLRPC$TL_contacts_search tLRPC$TL_contacts_search = new TLRPC$TL_contacts_search();
        tLRPC$TL_contacts_search.f1652q = str;
        tLRPC$TL_contacts_search.limit = 50;
        connectionsManager.sendRequest(tLRPC$TL_contacts_search, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda34
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                BoostRepository.lambda$searchChats$36(MessagesController.this, j, callback, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$searchChats$36(MessagesController messagesController, long j, final Utilities.Callback callback, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject instanceof TLRPC$TL_contacts_found) {
            TLRPC$TL_contacts_found tLRPC$TL_contacts_found = (TLRPC$TL_contacts_found) tLObject;
            messagesController.putChats(tLRPC$TL_contacts_found.chats, false);
            final ArrayList arrayList = new ArrayList();
            for (int i = 0; i < tLRPC$TL_contacts_found.chats.size(); i++) {
                TLRPC$Chat tLRPC$Chat = tLRPC$TL_contacts_found.chats.get(i);
                TLRPC$InputPeer inputPeer = MessagesController.getInputPeer(tLRPC$Chat);
                if (tLRPC$Chat.f1602id != j && ChatObject.isChannelAndNotMegaGroup(tLRPC$Chat)) {
                    arrayList.add(inputPeer);
                }
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    Utilities.Callback.this.run(arrayList);
                }
            });
        }
    }

    public static void loadChatParticipants(long j, int i, String str, int i2, int i3, final Utilities.Callback<List<TLRPC$InputPeer>> callback) {
        final MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        TLRPC$TL_channels_getParticipants tLRPC$TL_channels_getParticipants = new TLRPC$TL_channels_getParticipants();
        tLRPC$TL_channels_getParticipants.channel = messagesController.getInputChannel(j);
        TLRPC$ChannelParticipantsFilter tLRPC$TL_channelParticipantsRecent = str == null ? new TLRPC$TL_channelParticipantsRecent() : new TLRPC$TL_channelParticipantsSearch();
        tLRPC$TL_channels_getParticipants.filter = tLRPC$TL_channelParticipantsRecent;
        if (str == null) {
            str = "";
        }
        tLRPC$TL_channelParticipantsRecent.f1601q = str;
        tLRPC$TL_channels_getParticipants.offset = i2;
        tLRPC$TL_channels_getParticipants.limit = i3;
        connectionsManager.sendRequest(tLRPC$TL_channels_getParticipants, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda36
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                BoostRepository.lambda$loadChatParticipants$38(MessagesController.this, callback, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadChatParticipants$38(final MessagesController messagesController, final Utilities.Callback callback, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                BoostRepository.lambda$loadChatParticipants$37(TLObject.this, messagesController, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadChatParticipants$37(TLObject tLObject, MessagesController messagesController, Utilities.Callback callback) {
        TLRPC$User user;
        if (tLObject instanceof TLRPC$TL_channels_channelParticipants) {
            TLRPC$TL_channels_channelParticipants tLRPC$TL_channels_channelParticipants = (TLRPC$TL_channels_channelParticipants) tLObject;
            messagesController.putUsers(tLRPC$TL_channels_channelParticipants.users, false);
            messagesController.putChats(tLRPC$TL_channels_channelParticipants.chats, false);
            long clientUserId = UserConfig.getInstance(UserConfig.selectedAccount).getClientUserId();
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < tLRPC$TL_channels_channelParticipants.participants.size(); i++) {
                TLRPC$Peer tLRPC$Peer = tLRPC$TL_channels_channelParticipants.participants.get(i).peer;
                if (MessageObject.getPeerId(tLRPC$Peer) != clientUserId && (user = messagesController.getUser(Long.valueOf(tLRPC$Peer.user_id))) != null && !UserObject.isDeleted(user) && !user.bot) {
                    arrayList.add(messagesController.getInputPeer(tLRPC$Peer));
                }
            }
            callback.run(arrayList);
        }
    }

    public static void checkGiftCode(String str, final Utilities.Callback<TLRPC$TL_payments_checkedGiftCode> callback, final Utilities.Callback<TLRPC$TL_error> callback2) {
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        final MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        TLRPC$TL_payments_checkGiftCode tLRPC$TL_payments_checkGiftCode = new TLRPC$TL_payments_checkGiftCode();
        tLRPC$TL_payments_checkGiftCode.slug = str;
        connectionsManager.sendRequest(tLRPC$TL_payments_checkGiftCode, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda37
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                BoostRepository.lambda$checkGiftCode$40(MessagesController.this, callback, callback2, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkGiftCode$40(final MessagesController messagesController, final Utilities.Callback callback, final Utilities.Callback callback2, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                BoostRepository.lambda$checkGiftCode$39(TLObject.this, messagesController, callback, callback2, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkGiftCode$39(TLObject tLObject, MessagesController messagesController, Utilities.Callback callback, Utilities.Callback callback2, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject instanceof TLRPC$TL_payments_checkedGiftCode) {
            TLRPC$TL_payments_checkedGiftCode tLRPC$TL_payments_checkedGiftCode = (TLRPC$TL_payments_checkedGiftCode) tLObject;
            messagesController.putChats(tLRPC$TL_payments_checkedGiftCode.chats, false);
            messagesController.putUsers(tLRPC$TL_payments_checkedGiftCode.users, false);
            callback.run(tLRPC$TL_payments_checkedGiftCode);
        }
        callback2.run(tLRPC$TL_error);
    }

    public static void applyGiftCode(String str, final Utilities.Callback<Void> callback, final Utilities.Callback<TLRPC$TL_error> callback2) {
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        TLRPC$TL_payments_applyGiftCode tLRPC$TL_payments_applyGiftCode = new TLRPC$TL_payments_applyGiftCode();
        tLRPC$TL_payments_applyGiftCode.slug = str;
        connectionsManager.sendRequest(tLRPC$TL_payments_applyGiftCode, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda48
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                BoostRepository.lambda$applyGiftCode$42(Utilities.Callback.this, callback, tLObject, tLRPC$TL_error);
            }
        }, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$applyGiftCode$42(final Utilities.Callback callback, final Utilities.Callback callback2, TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                BoostRepository.lambda$applyGiftCode$41(TLRPC$TL_error.this, callback, callback2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$applyGiftCode$41(TLRPC$TL_error tLRPC$TL_error, Utilities.Callback callback, Utilities.Callback callback2) {
        if (tLRPC$TL_error != null) {
            callback.run(tLRPC$TL_error);
        } else {
            callback2.run(null);
        }
    }

    public static void getGiveawayInfo(MessageObject messageObject, final Utilities.Callback<TLRPC$payments_GiveawayInfo> callback, final Utilities.Callback<TLRPC$TL_error> callback2) {
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        TLRPC$TL_payments_getGiveawayInfo tLRPC$TL_payments_getGiveawayInfo = new TLRPC$TL_payments_getGiveawayInfo();
        UserConfig.getInstance(UserConfig.selectedAccount).getClientUserId();
        tLRPC$TL_payments_getGiveawayInfo.msg_id = messageObject.getId();
        tLRPC$TL_payments_getGiveawayInfo.peer = messagesController.getInputPeer(messageObject.getFromChatId());
        connectionsManager.sendRequest(tLRPC$TL_payments_getGiveawayInfo, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda47
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                BoostRepository.lambda$getGiveawayInfo$44(Utilities.Callback.this, callback, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getGiveawayInfo$44(final Utilities.Callback callback, final Utilities.Callback callback2, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                BoostRepository.lambda$getGiveawayInfo$43(TLRPC$TL_error.this, callback, tLObject, callback2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getGiveawayInfo$43(TLRPC$TL_error tLRPC$TL_error, Utilities.Callback callback, TLObject tLObject, Utilities.Callback callback2) {
        if (tLRPC$TL_error != null) {
            callback.run(tLRPC$TL_error);
        } else if (tLObject instanceof TLRPC$payments_GiveawayInfo) {
            callback2.run((TLRPC$payments_GiveawayInfo) tLObject);
        }
    }

    public static void getMyBoosts(final Utilities.Callback<TL_stories$TL_premium_myBoosts> callback, final Utilities.Callback<TLRPC$TL_error> callback2) {
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        final MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        connectionsManager.sendRequest(new TLObject() { // from class: org.telegram.tgnet.tl.TL_stories$TL_premium_getMyBoosts
            public static int constructor = 199719754;

            @Override // org.telegram.tgnet.TLObject
            public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
                return TL_stories$TL_premium_myBoosts.TLdeserialize(abstractSerializedData, i, z);
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(AbstractSerializedData abstractSerializedData) {
                abstractSerializedData.writeInt32(constructor);
            }
        }, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda44
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                BoostRepository.lambda$getMyBoosts$46(Utilities.Callback.this, messagesController, callback, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getMyBoosts$46(final Utilities.Callback callback, final MessagesController messagesController, final Utilities.Callback callback2, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                BoostRepository.lambda$getMyBoosts$45(TLRPC$TL_error.this, callback, tLObject, messagesController, callback2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getMyBoosts$45(TLRPC$TL_error tLRPC$TL_error, Utilities.Callback callback, TLObject tLObject, MessagesController messagesController, Utilities.Callback callback2) {
        if (tLRPC$TL_error != null) {
            callback.run(tLRPC$TL_error);
        } else if (tLObject instanceof TL_stories$TL_premium_myBoosts) {
            TL_stories$TL_premium_myBoosts tL_stories$TL_premium_myBoosts = (TL_stories$TL_premium_myBoosts) tLObject;
            messagesController.putUsers(tL_stories$TL_premium_myBoosts.users, false);
            messagesController.putChats(tL_stories$TL_premium_myBoosts.chats, false);
            callback2.run(tL_stories$TL_premium_myBoosts);
        }
    }

    public static void applyBoost(long j, List<Integer> list, final Utilities.Callback<TL_stories$TL_premium_myBoosts> callback, final Utilities.Callback<TLRPC$TL_error> callback2) {
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        final MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        TL_stories$TL_premium_applyBoost tL_stories$TL_premium_applyBoost = new TL_stories$TL_premium_applyBoost();
        tL_stories$TL_premium_applyBoost.peer = messagesController.getInputPeer(-j);
        tL_stories$TL_premium_applyBoost.flags |= 1;
        tL_stories$TL_premium_applyBoost.slots.addAll(list);
        connectionsManager.sendRequest(tL_stories$TL_premium_applyBoost, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda42
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                BoostRepository.lambda$applyBoost$48(Utilities.Callback.this, messagesController, callback, tLObject, tLRPC$TL_error);
            }
        }, 1024);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$applyBoost$48(final Utilities.Callback callback, final MessagesController messagesController, final Utilities.Callback callback2, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                BoostRepository.lambda$applyBoost$47(TLRPC$TL_error.this, callback, tLObject, messagesController, callback2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$applyBoost$47(TLRPC$TL_error tLRPC$TL_error, Utilities.Callback callback, TLObject tLObject, MessagesController messagesController, Utilities.Callback callback2) {
        if (tLRPC$TL_error != null) {
            callback.run(tLRPC$TL_error);
        } else if (tLObject instanceof TL_stories$TL_premium_myBoosts) {
            TL_stories$TL_premium_myBoosts tL_stories$TL_premium_myBoosts = (TL_stories$TL_premium_myBoosts) tLObject;
            messagesController.putUsers(tL_stories$TL_premium_myBoosts.users, false);
            messagesController.putChats(tL_stories$TL_premium_myBoosts.chats, false);
            callback2.run(tL_stories$TL_premium_myBoosts);
        }
    }
}
