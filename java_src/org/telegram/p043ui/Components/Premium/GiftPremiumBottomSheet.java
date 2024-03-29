package org.telegram.p043ui.Components.Premium;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.util.Consumer;
import androidx.recyclerview.widget.RecyclerView;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.ProductDetailsResponseListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.storage.data.manager.analytics.AnalyticsManager;
import com.iMe.storage.domain.model.analytics.AnalyticsEvent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BillingController;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.GenericProvider;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.browser.Browser;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.AlertsCreator;
import org.telegram.p043ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p043ui.Components.CheckBoxBase;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Premium.GiftPremiumBottomSheet;
import org.telegram.p043ui.Components.Premium.PremiumGradient;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.PremiumPreviewFragment;
import org.telegram.p043ui.ProfileActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_boolTrue;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputStorePaymentGiftPremium;
import org.telegram.tgnet.TLRPC$TL_payments_canPurchasePremium;
import org.telegram.tgnet.TLRPC$TL_premiumGiftOption;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserFull;
/* renamed from: org.telegram.ui.Components.Premium.GiftPremiumBottomSheet */
/* loaded from: classes6.dex */
public class GiftPremiumBottomSheet extends BottomSheetWithRecyclerListView implements NotificationCenter.NotificationCenterDelegate {
    private int buttonRow;
    private PremiumGiftTierCell dummyCell;
    private int footerRow;
    private List<GiftTier> giftTiers;
    private PremiumGradient.PremiumGradientTools gradientTools;
    private int headerRow;
    private PremiumGradient.PremiumGradientTools outlineGradient;
    private PremiumButtonView premiumButtonView;
    private int rowsCount;
    private int selectedTierIndex;
    private int tiersEndRow;
    private int tiersStartRow;
    private int totalGradientHeight;
    private TLRPC$User user;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateButtonText$4(View view) {
    }

    public GiftPremiumBottomSheet(BaseFragment baseFragment, TLRPC$User tLRPC$User) {
        super(baseFragment, false, true);
        this.giftTiers = new ArrayList();
        this.selectedTierIndex = 0;
        AnalyticsManager.trackEvent(AnalyticsEvent.OpenGiftTelegramPremiumScreen.INSTANCE);
        fixNavigationBar();
        this.user = tLRPC$User;
        int i = Theme.key_premiumGradient1;
        int i2 = Theme.key_premiumGradient2;
        PremiumGradient.PremiumGradientTools premiumGradientTools = new PremiumGradient.PremiumGradientTools(i, i2, -1, -1);
        this.gradientTools = premiumGradientTools;
        premiumGradientTools.exactly = true;
        premiumGradientTools.f1915x1 = BitmapDescriptorFactory.HUE_RED;
        premiumGradientTools.f1917y1 = BitmapDescriptorFactory.HUE_RED;
        premiumGradientTools.f1916x2 = BitmapDescriptorFactory.HUE_RED;
        premiumGradientTools.f1918y2 = 1.0f;
        premiumGradientTools.f1913cx = BitmapDescriptorFactory.HUE_RED;
        premiumGradientTools.f1914cy = BitmapDescriptorFactory.HUE_RED;
        PremiumGradient.PremiumGradientTools premiumGradientTools2 = new PremiumGradient.PremiumGradientTools(i, i2, Theme.key_premiumGradient3, Theme.key_premiumGradient4);
        this.outlineGradient = premiumGradientTools2;
        premiumGradientTools2.paint.setStyle(Paint.Style.STROKE);
        this.outlineGradient.paint.setStrokeWidth(AndroidUtilities.m108dp(1.5f));
        this.dummyCell = new PremiumGiftTierCell(getContext());
        initData();
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.Premium.GiftPremiumBottomSheet$$ExternalSyntheticLambda10
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i3) {
                GiftPremiumBottomSheet.this.lambda$new$0(view, i3);
            }
        });
        this.recyclerListView.setOverScrollMode(2);
        final Path path = new Path();
        this.recyclerListView.setSelectorTransformer(new Consumer() { // from class: org.telegram.ui.Components.Premium.GiftPremiumBottomSheet$$ExternalSyntheticLambda3
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                GiftPremiumBottomSheet.this.lambda$new$1(path, (Canvas) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i) {
        if (view instanceof PremiumGiftTierCell) {
            PremiumGiftTierCell premiumGiftTierCell = (PremiumGiftTierCell) view;
            this.selectedTierIndex = this.giftTiers.indexOf(premiumGiftTierCell.tier);
            updateButtonText(true);
            premiumGiftTierCell.setChecked(true, true);
            for (int i2 = 0; i2 < this.recyclerListView.getChildCount(); i2++) {
                View childAt = this.recyclerListView.getChildAt(i2);
                if (childAt instanceof PremiumGiftTierCell) {
                    PremiumGiftTierCell premiumGiftTierCell2 = (PremiumGiftTierCell) childAt;
                    if (premiumGiftTierCell2.tier != premiumGiftTierCell.tier) {
                        premiumGiftTierCell2.setChecked(false, true);
                    }
                }
            }
            for (int i3 = 0; i3 < this.recyclerListView.getHiddenChildCount(); i3++) {
                View hiddenChildAt = this.recyclerListView.getHiddenChildAt(i3);
                if (hiddenChildAt instanceof PremiumGiftTierCell) {
                    PremiumGiftTierCell premiumGiftTierCell3 = (PremiumGiftTierCell) hiddenChildAt;
                    if (premiumGiftTierCell3.tier != premiumGiftTierCell.tier) {
                        premiumGiftTierCell3.setChecked(false, true);
                    }
                }
            }
            for (int i4 = 0; i4 < this.recyclerListView.getCachedChildCount(); i4++) {
                View cachedChildAt = this.recyclerListView.getCachedChildAt(i4);
                if (cachedChildAt instanceof PremiumGiftTierCell) {
                    PremiumGiftTierCell premiumGiftTierCell4 = (PremiumGiftTierCell) cachedChildAt;
                    if (premiumGiftTierCell4.tier != premiumGiftTierCell.tier) {
                        premiumGiftTierCell4.setChecked(false, true);
                    }
                }
            }
            for (int i5 = 0; i5 < this.recyclerListView.getAttachedScrapChildCount(); i5++) {
                View attachedScrapChildAt = this.recyclerListView.getAttachedScrapChildAt(i5);
                if (attachedScrapChildAt instanceof PremiumGiftTierCell) {
                    PremiumGiftTierCell premiumGiftTierCell5 = (PremiumGiftTierCell) attachedScrapChildAt;
                    if (premiumGiftTierCell5.tier != premiumGiftTierCell.tier) {
                        premiumGiftTierCell5.setChecked(false, true);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(Path path, Canvas canvas) {
        path.rewind();
        Rect selectorRect = this.recyclerListView.getSelectorRect();
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(selectorRect.left + AndroidUtilities.m107dp(20), selectorRect.top + AndroidUtilities.m107dp(3), selectorRect.right - AndroidUtilities.m107dp(20), selectorRect.bottom - AndroidUtilities.m107dp(3));
        path.addRoundRect(rectF, AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(12), Path.Direction.CW);
        canvas.clipPath(path);
    }

    private void initData() {
        this.giftTiers.clear();
        this.rowsCount = 0;
        TLRPC$UserFull userFull = MessagesController.getInstance(this.currentAccount).getUserFull(this.user.f1751id);
        if (userFull != null) {
            ArrayList arrayList = new ArrayList();
            long j = 0;
            Iterator<TLRPC$TL_premiumGiftOption> it = userFull.premium_gifts.iterator();
            while (it.hasNext()) {
                GiftTier giftTier = new GiftTier(it.next());
                this.giftTiers.add(giftTier);
                if (BuildVars.useInvoiceBilling()) {
                    if (giftTier.getPricePerMonth() > j) {
                        j = giftTier.getPricePerMonth();
                    }
                } else if (giftTier.giftOption.store_product != null && BillingController.getInstance().isReady()) {
                    arrayList.add(QueryProductDetailsParams.Product.newBuilder().setProductType("inapp").setProductId(giftTier.giftOption.store_product).build());
                }
            }
            if (BuildVars.useInvoiceBilling()) {
                for (GiftTier giftTier2 : this.giftTiers) {
                    giftTier2.setPricePerMonthRegular(j);
                }
            } else if (!arrayList.isEmpty()) {
                final long currentTimeMillis = System.currentTimeMillis();
                BillingController.getInstance().queryProductDetails(arrayList, new ProductDetailsResponseListener() { // from class: org.telegram.ui.Components.Premium.GiftPremiumBottomSheet$$ExternalSyntheticLambda4
                    @Override // com.android.billingclient.api.ProductDetailsResponseListener
                    public final void onProductDetailsResponse(BillingResult billingResult, List list) {
                        GiftPremiumBottomSheet.this.lambda$initData$3(currentTimeMillis, billingResult, list);
                    }
                });
            }
        }
        if (!this.giftTiers.isEmpty()) {
            this.selectedTierIndex = 0;
            updateButtonText(false);
        }
        int i = this.rowsCount;
        int i2 = i + 1;
        this.rowsCount = i2;
        this.headerRow = i;
        this.tiersStartRow = i2;
        int size = i2 + this.giftTiers.size();
        this.rowsCount = size;
        this.tiersEndRow = size;
        int i3 = size + 1;
        this.rowsCount = i3;
        this.footerRow = size;
        this.rowsCount = i3 + 1;
        this.buttonRow = i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initData$3(final long j, BillingResult billingResult, List list) {
        Iterator it = list.iterator();
        long j2 = 0;
        while (it.hasNext()) {
            ProductDetails productDetails = (ProductDetails) it.next();
            Iterator<GiftTier> it2 = this.giftTiers.iterator();
            while (true) {
                if (it2.hasNext()) {
                    GiftTier next = it2.next();
                    String str = next.giftOption.store_product;
                    if (str != null && str.equals(productDetails.getProductId())) {
                        next.setGooglePlayProductDetails(productDetails);
                        if (next.getPricePerMonth() > j2) {
                            j2 = next.getPricePerMonth();
                        }
                    }
                }
            }
        }
        for (GiftTier giftTier : this.giftTiers) {
            giftTier.setPricePerMonthRegular(j2);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.GiftPremiumBottomSheet$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                GiftPremiumBottomSheet.this.lambda$initData$2(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initData$2(long j) {
        this.recyclerListView.getAdapter().notifyDataSetChanged();
        updateButtonText(System.currentTimeMillis() - j > 1000);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.ActionBar.BottomSheet, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.billingProductDetailsUpdated);
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.billingProductDetailsUpdated);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.billingProductDetailsUpdated) {
            initData();
        }
    }

    private void updateButtonText(boolean z) {
        if (LocaleController.isRTL) {
            z = false;
        }
        if (!BuildVars.useInvoiceBilling() && (!BillingController.getInstance().isReady() || this.giftTiers.get(this.selectedTierIndex).googlePlayProductDetails == null)) {
            this.premiumButtonView.setButton(LocaleController.getString(C3632R.string.Loading), new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.GiftPremiumBottomSheet$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    GiftPremiumBottomSheet.lambda$updateButtonText$4(view);
                }
            }, !LocaleController.isRTL);
            this.premiumButtonView.setFlickerDisabled(true);
            return;
        }
        this.premiumButtonView.setButton(LocaleController.formatString(C3632R.string.GiftSubscriptionFor, this.giftTiers.get(this.selectedTierIndex).getFormattedPrice()), new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.GiftPremiumBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GiftPremiumBottomSheet.this.lambda$updateButtonText$5(view);
            }
        }, z);
        this.premiumButtonView.setFlickerDisabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateButtonText$5(View view) {
        onGiftPremium();
    }

    private void onGiftSuccess(boolean z) {
        TLRPC$UserFull userFull = MessagesController.getInstance(this.currentAccount).getUserFull(this.user.f1751id);
        if (userFull != null) {
            this.user.premium = true;
            MessagesController.getInstance(this.currentAccount).putUser(this.user, true);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.userInfoDidLoad, Long.valueOf(this.user.f1751id), userFull);
        }
        if (getBaseFragment() != null) {
            ArrayList<BaseFragment> arrayList = new ArrayList(((LaunchActivity) getBaseFragment().getParentActivity()).getActionBarLayout().getFragmentStack());
            INavigationLayout parentLayout = getBaseFragment().getParentLayout();
            ChatActivity chatActivity = null;
            for (BaseFragment baseFragment : arrayList) {
                if (baseFragment instanceof ChatActivity) {
                    chatActivity = (ChatActivity) baseFragment;
                    if (chatActivity.getDialogId() != this.user.f1751id) {
                        baseFragment.removeSelfFromStack();
                    }
                } else if (baseFragment instanceof ProfileActivity) {
                    if (z && parentLayout.getLastFragment() == baseFragment) {
                        baseFragment.finishFragment();
                    } else {
                        baseFragment.removeSelfFromStack();
                    }
                }
            }
            if (chatActivity == null || chatActivity.getDialogId() != this.user.f1751id) {
                Bundle bundle = new Bundle();
                bundle.putLong("user_id", this.user.f1751id);
                parentLayout.presentFragment(new ChatActivity(bundle), true);
            }
        }
    }

    private void onGiftPremium() {
        AnalyticsManager.trackEvent(AnalyticsEvent.ClickGiftPremiumButton.INSTANCE);
        final GiftTier giftTier = this.giftTiers.get(this.selectedTierIndex);
        if (BuildVars.useInvoiceBilling()) {
            if (getBaseFragment().getParentActivity() instanceof LaunchActivity) {
                Uri parse = Uri.parse(giftTier.giftOption.bot_url);
                if (parse.getHost().equals("t.me")) {
                    if (!parse.getPath().startsWith("/$") && !parse.getPath().startsWith("/invoice/")) {
                        ((LaunchActivity) getBaseFragment().getParentActivity()).setNavigateToPremiumBot(true);
                    } else {
                        ((LaunchActivity) getBaseFragment().getParentActivity()).setNavigateToPremiumGiftCallback(new Runnable() { // from class: org.telegram.ui.Components.Premium.GiftPremiumBottomSheet$$ExternalSyntheticLambda5
                            @Override // java.lang.Runnable
                            public final void run() {
                                GiftPremiumBottomSheet.this.lambda$onGiftPremium$6();
                            }
                        });
                    }
                }
                Browser.openUrl(getBaseFragment().getParentActivity(), giftTier.giftOption.bot_url);
                dismiss();
            }
        } else if (!BillingController.getInstance().isReady() || giftTier.googlePlayProductDetails == null) {
        } else {
            final TLRPC$TL_inputStorePaymentGiftPremium tLRPC$TL_inputStorePaymentGiftPremium = new TLRPC$TL_inputStorePaymentGiftPremium();
            tLRPC$TL_inputStorePaymentGiftPremium.user_id = MessagesController.getInstance(this.currentAccount).getInputUser(this.user);
            ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails = giftTier.googlePlayProductDetails.getOneTimePurchaseOfferDetails();
            tLRPC$TL_inputStorePaymentGiftPremium.currency = oneTimePurchaseOfferDetails.getPriceCurrencyCode();
            tLRPC$TL_inputStorePaymentGiftPremium.amount = (long) ((oneTimePurchaseOfferDetails.getPriceAmountMicros() / Math.pow(10.0d, 6.0d)) * Math.pow(10.0d, BillingController.getInstance().getCurrencyExp(tLRPC$TL_inputStorePaymentGiftPremium.currency)));
            BillingController.getInstance().addResultListener(giftTier.giftOption.store_product, new Consumer() { // from class: org.telegram.ui.Components.Premium.GiftPremiumBottomSheet$$ExternalSyntheticLambda2
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    GiftPremiumBottomSheet.this.lambda$onGiftPremium$8((BillingResult) obj);
                }
            });
            final TLRPC$TL_payments_canPurchasePremium tLRPC$TL_payments_canPurchasePremium = new TLRPC$TL_payments_canPurchasePremium();
            tLRPC$TL_payments_canPurchasePremium.purpose = tLRPC$TL_inputStorePaymentGiftPremium;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_payments_canPurchasePremium, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.GiftPremiumBottomSheet$$ExternalSyntheticLambda9
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    GiftPremiumBottomSheet.this.lambda$onGiftPremium$10(tLRPC$TL_inputStorePaymentGiftPremium, giftTier, tLRPC$TL_payments_canPurchasePremium, tLObject, tLRPC$TL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onGiftPremium$6() {
        onGiftSuccess(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onGiftPremium$8(BillingResult billingResult) {
        if (billingResult.getResponseCode() == 0) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.GiftPremiumBottomSheet$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    GiftPremiumBottomSheet.this.lambda$onGiftPremium$7();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onGiftPremium$7() {
        onGiftSuccess(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onGiftPremium$10(final TLRPC$TL_inputStorePaymentGiftPremium tLRPC$TL_inputStorePaymentGiftPremium, final GiftTier giftTier, final TLRPC$TL_payments_canPurchasePremium tLRPC$TL_payments_canPurchasePremium, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.GiftPremiumBottomSheet$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                GiftPremiumBottomSheet.this.lambda$onGiftPremium$9(tLObject, tLRPC$TL_inputStorePaymentGiftPremium, giftTier, tLRPC$TL_error, tLRPC$TL_payments_canPurchasePremium);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onGiftPremium$9(TLObject tLObject, TLRPC$TL_inputStorePaymentGiftPremium tLRPC$TL_inputStorePaymentGiftPremium, GiftTier giftTier, TLRPC$TL_error tLRPC$TL_error, TLRPC$TL_payments_canPurchasePremium tLRPC$TL_payments_canPurchasePremium) {
        if (tLObject instanceof TLRPC$TL_boolTrue) {
            BillingController.getInstance().launchBillingFlow(getBaseFragment().getParentActivity(), AccountInstance.getInstance(this.currentAccount), tLRPC$TL_inputStorePaymentGiftPremium, Collections.singletonList(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails(giftTier.googlePlayProductDetails).build()));
        } else if (tLRPC$TL_error != null) {
            AlertsCreator.processError(this.currentAccount, tLRPC$TL_error, getBaseFragment(), tLRPC$TL_payments_canPurchasePremium, new Object[0]);
        }
    }

    @Override // org.telegram.p043ui.Components.BottomSheetWithRecyclerListView
    public void onViewCreated(FrameLayout frameLayout) {
        super.onViewCreated(frameLayout);
        this.premiumButtonView = new PremiumButtonView(getContext(), true, this.resourcesProvider);
        FrameLayout frameLayout2 = new FrameLayout(getContext());
        frameLayout2.addView(this.premiumButtonView, LayoutHelper.createFrame(-1, 48, 16, 16, 0, 16, 0));
        frameLayout2.setBackgroundColor(getThemedColor(Theme.key_dialogBackground));
        frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, 68, 80));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.BottomSheetWithRecyclerListView
    public void onPreMeasure(int i, int i2) {
        super.onPreMeasure(i, i2);
        measureGradient(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
    }

    private void measureGradient(int i, int i2) {
        int i3 = 0;
        for (int i4 = 0; i4 < this.giftTiers.size(); i4++) {
            this.dummyCell.bind(this.giftTiers.get(i4));
            this.dummyCell.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE));
            this.giftTiers.get(i4).yOffset = i3;
            i3 += this.dummyCell.getMeasuredHeight();
        }
        this.totalGradientHeight = i3;
    }

    @Override // org.telegram.p043ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        return LocaleController.getString(C3632R.string.GiftTelegramPremiumTitle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.Premium.GiftPremiumBottomSheet$1 */
    /* loaded from: classes6.dex */
    public class C54081 extends RecyclerListView.SelectionAdapter {
        C54081() {
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            PremiumGiftTierCell premiumGiftTierCell;
            View view;
            if (i == 1) {
                final AtomicReference atomicReference = new AtomicReference(Float.valueOf((float) BitmapDescriptorFactory.HUE_RED));
                final PremiumGiftTierCell premiumGiftTierCell2 = new PremiumGiftTierCell(GiftPremiumBottomSheet.this.getContext()) { // from class: org.telegram.ui.Components.Premium.GiftPremiumBottomSheet.1.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // org.telegram.p043ui.Components.Premium.PremiumGiftTierCell, android.view.ViewGroup, android.view.View
                    public void dispatchDraw(Canvas canvas) {
                        if (this.discountView.getVisibility() == 0) {
                            RectF rectF = AndroidUtilities.rectTmp;
                            rectF.set(this.discountView.getLeft(), this.discountView.getTop(), this.discountView.getRight(), this.discountView.getBottom());
                            GiftPremiumBottomSheet.this.gradientTools.gradientMatrix(0, 0, getMeasuredWidth(), GiftPremiumBottomSheet.this.totalGradientHeight, BitmapDescriptorFactory.HUE_RED, -this.tier.yOffset);
                            canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), GiftPremiumBottomSheet.this.gradientTools.paint);
                        }
                        float floatValue = ((Float) atomicReference.get()).floatValue();
                        int alpha = GiftPremiumBottomSheet.this.outlineGradient.paint.getAlpha();
                        GiftPremiumBottomSheet.this.outlineGradient.paint.setAlpha((int) (floatValue * alpha));
                        RectF rectF2 = AndroidUtilities.rectTmp;
                        rectF2.set(AndroidUtilities.m107dp(20), AndroidUtilities.m107dp(3), getWidth() - AndroidUtilities.m107dp(20), getHeight() - AndroidUtilities.m107dp(3));
                        GiftPremiumBottomSheet.this.outlineGradient.gradientMatrix(0, 0, getMeasuredWidth(), getMeasuredHeight(), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                        canvas.drawRoundRect(rectF2, AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(12), GiftPremiumBottomSheet.this.outlineGradient.paint);
                        GiftPremiumBottomSheet.this.outlineGradient.paint.setAlpha(alpha);
                        super.dispatchDraw(canvas);
                    }
                };
                premiumGiftTierCell2.setCirclePaintProvider(new GenericProvider() { // from class: org.telegram.ui.Components.Premium.GiftPremiumBottomSheet$1$$ExternalSyntheticLambda0
                    @Override // org.telegram.messenger.GenericProvider
                    public final Object provide(Object obj) {
                        Paint lambda$onCreateViewHolder$0;
                        lambda$onCreateViewHolder$0 = GiftPremiumBottomSheet.C54081.this.lambda$onCreateViewHolder$0(premiumGiftTierCell2, (Void) obj);
                        return lambda$onCreateViewHolder$0;
                    }
                });
                premiumGiftTierCell2.setProgressDelegate(new CheckBoxBase.ProgressDelegate() { // from class: org.telegram.ui.Components.Premium.GiftPremiumBottomSheet$1$$ExternalSyntheticLambda1
                    @Override // org.telegram.p043ui.Components.CheckBoxBase.ProgressDelegate
                    public final void setProgress(float f) {
                        GiftPremiumBottomSheet.C54081.lambda$onCreateViewHolder$1(atomicReference, premiumGiftTierCell2, f);
                    }
                });
                premiumGiftTierCell = premiumGiftTierCell2;
            } else if (i == 2) {
                TextInfoPrivacyCell textInfoPrivacyCell = new TextInfoPrivacyCell(GiftPremiumBottomSheet.this.getContext());
                textInfoPrivacyCell.setTopPadding(28);
                textInfoPrivacyCell.getTextView().setGravity(1);
                String string = LocaleController.getString(C3632R.string.GiftPremiumListFeaturesAndTerms);
                int indexOf = string.indexOf(42);
                int lastIndexOf = string.lastIndexOf(42);
                if (indexOf != -1 && lastIndexOf != -1) {
                    SpannableString spannableString = new SpannableString(string.substring(0, indexOf) + string.substring(indexOf + 1, lastIndexOf) + string.substring(lastIndexOf + 1));
                    spannableString.setSpan(new LinkSpan(GiftPremiumBottomSheet.this, null), indexOf, lastIndexOf - 1, 33);
                    textInfoPrivacyCell.setText(spannableString);
                } else {
                    textInfoPrivacyCell.setText(string);
                }
                textInfoPrivacyCell.setPadding(AndroidUtilities.m107dp(21), 0, AndroidUtilities.m107dp(21), 0);
                premiumGiftTierCell = textInfoPrivacyCell;
            } else {
                if (i != 3) {
                    view = new PremiumGiftHeaderCell(GiftPremiumBottomSheet.this.getContext());
                } else {
                    view = new View(this, GiftPremiumBottomSheet.this.getContext()) { // from class: org.telegram.ui.Components.Premium.GiftPremiumBottomSheet.1.2
                        @Override // android.view.View
                        protected void onMeasure(int i2, int i3) {
                            super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(68), 1073741824));
                        }
                    };
                }
                return new RecyclerListView.Holder(view);
            }
            view = premiumGiftTierCell;
            return new RecyclerListView.Holder(view);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Paint lambda$onCreateViewHolder$0(PremiumGiftTierCell premiumGiftTierCell, Void r9) {
            GiftPremiumBottomSheet.this.gradientTools.gradientMatrix(0, 0, premiumGiftTierCell.getMeasuredWidth(), GiftPremiumBottomSheet.this.totalGradientHeight, BitmapDescriptorFactory.HUE_RED, -premiumGiftTierCell.tier.yOffset);
            return GiftPremiumBottomSheet.this.gradientTools.paint;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onCreateViewHolder$1(AtomicReference atomicReference, PremiumGiftTierCell premiumGiftTierCell, float f) {
            atomicReference.set(Float.valueOf(f));
            premiumGiftTierCell.invalidate();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (i == GiftPremiumBottomSheet.this.headerRow) {
                ((PremiumGiftHeaderCell) viewHolder.itemView).bind(GiftPremiumBottomSheet.this.user);
            } else if (i < GiftPremiumBottomSheet.this.tiersStartRow || i >= GiftPremiumBottomSheet.this.tiersEndRow) {
            } else {
                PremiumGiftTierCell premiumGiftTierCell = (PremiumGiftTierCell) viewHolder.itemView;
                premiumGiftTierCell.bind((GiftTier) GiftPremiumBottomSheet.this.giftTiers.get(i - GiftPremiumBottomSheet.this.tiersStartRow));
                premiumGiftTierCell.setChecked(i - GiftPremiumBottomSheet.this.tiersStartRow == GiftPremiumBottomSheet.this.selectedTierIndex, false);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == GiftPremiumBottomSheet.this.headerRow) {
                return 0;
            }
            if (i < GiftPremiumBottomSheet.this.tiersStartRow || i >= GiftPremiumBottomSheet.this.tiersEndRow) {
                if (i == GiftPremiumBottomSheet.this.footerRow) {
                    return 2;
                }
                return i == GiftPremiumBottomSheet.this.buttonRow ? 3 : 0;
            }
            return 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return GiftPremiumBottomSheet.this.rowsCount;
        }
    }

    @Override // org.telegram.p043ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter() {
        return new C54081();
    }

    /* renamed from: org.telegram.ui.Components.Premium.GiftPremiumBottomSheet$LinkSpan */
    /* loaded from: classes6.dex */
    private final class LinkSpan extends ClickableSpan {
        private LinkSpan() {
        }

        /* synthetic */ LinkSpan(GiftPremiumBottomSheet giftPremiumBottomSheet, C54081 c54081) {
            this();
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            GiftPremiumBottomSheet.this.getBaseFragment().presentFragment(new PremiumPreviewFragment("profile"));
            GiftPremiumBottomSheet.this.dismiss();
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setUnderlineText(false);
        }
    }

    /* renamed from: org.telegram.ui.Components.Premium.GiftPremiumBottomSheet$GiftTier */
    /* loaded from: classes6.dex */
    public static final class GiftTier {
        private int discount;
        public final TLRPC$TL_premiumGiftOption giftOption;
        private ProductDetails googlePlayProductDetails;
        private long pricePerMonth;
        private long pricePerMonthRegular;
        public int yOffset;

        public GiftTier(TLRPC$TL_premiumGiftOption tLRPC$TL_premiumGiftOption) {
            this.giftOption = tLRPC$TL_premiumGiftOption;
        }

        public ProductDetails getGooglePlayProductDetails() {
            return this.googlePlayProductDetails;
        }

        public void setGooglePlayProductDetails(ProductDetails productDetails) {
            this.googlePlayProductDetails = productDetails;
        }

        public void setPricePerMonthRegular(long j) {
            this.pricePerMonthRegular = j;
        }

        public int getMonths() {
            return this.giftOption.months;
        }

        public int getDiscount() {
            if (this.discount == 0) {
                if (getPricePerMonth() == 0) {
                    return 0;
                }
                if (this.pricePerMonthRegular != 0) {
                    int pricePerMonth = (int) ((1.0d - (getPricePerMonth() / this.pricePerMonthRegular)) * 100.0d);
                    this.discount = pricePerMonth;
                    if (pricePerMonth == 0) {
                        this.discount = -1;
                    }
                }
            }
            return this.discount;
        }

        public long getPricePerMonth() {
            if (this.pricePerMonth == 0) {
                long price = getPrice();
                if (price != 0) {
                    this.pricePerMonth = price / this.giftOption.months;
                }
            }
            return this.pricePerMonth;
        }

        public String getFormattedPricePerMonth() {
            if (BuildVars.useInvoiceBilling() || this.giftOption.store_product == null) {
                return BillingController.getInstance().formatCurrency(getPricePerMonth(), getCurrency());
            }
            return this.googlePlayProductDetails == null ? "" : BillingController.getInstance().formatCurrency(getPricePerMonth(), getCurrency(), 6);
        }

        public String getFormattedPrice() {
            if (BuildVars.useInvoiceBilling() || this.giftOption.store_product == null) {
                return BillingController.getInstance().formatCurrency(getPrice(), getCurrency());
            }
            return this.googlePlayProductDetails == null ? "" : BillingController.getInstance().formatCurrency(getPrice(), getCurrency(), 6);
        }

        public long getPrice() {
            if (BuildVars.useInvoiceBilling() || this.giftOption.store_product == null) {
                return this.giftOption.amount;
            }
            ProductDetails productDetails = this.googlePlayProductDetails;
            if (productDetails == null) {
                return 0L;
            }
            return productDetails.getOneTimePurchaseOfferDetails().getPriceAmountMicros();
        }

        public String getCurrency() {
            if (BuildVars.useInvoiceBilling() || this.giftOption.store_product == null) {
                return this.giftOption.currency;
            }
            ProductDetails productDetails = this.googlePlayProductDetails;
            return productDetails == null ? "" : productDetails.getOneTimePurchaseOfferDetails().getPriceCurrencyCode();
        }
    }
}
