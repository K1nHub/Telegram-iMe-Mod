package com.iMe.p030ui.wallet.fragment.usernames.details;

import android.os.Bundle;
import android.view.View;
import androidx.core.widget.NestedScrollView;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.wallet.fragment.TonFragmentItem;
import com.iMe.p030ui.base.mvp.MvpBottomSheet;
import com.iMe.p030ui.custom.DetailsIconCellView;
import com.iMe.p030ui.custom.ImageHeaderView;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt___StringsKt;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.databinding.ForkContentFragmentProductDetailsBinding;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Premium.PremiumButtonView;
/* compiled from: TonFragmentProductDetailsBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.fragment.usernames.details.TonFragmentProductDetailsBottomSheetDialog */
/* loaded from: classes4.dex */
public final class TonFragmentProductDetailsBottomSheetDialog extends MvpBottomSheet implements TonFragmentProductDetailsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(TonFragmentProductDetailsBottomSheetDialog.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(TonFragmentProductDetailsBottomSheetDialog.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;", 0)), Reflection.property1(new PropertyReference1Impl(TonFragmentProductDetailsBottomSheetDialog.class, "actionButton", "getActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy actionButton$delegate;
    private final ResettableLazy binding$delegate;
    private final Callbacks$Callback onBuyClickAction;
    private final Lazy resourceManager$delegate;

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return true;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TonFragmentProductDetailsBottomSheetDialog(final com.iMe.model.wallet.fragment.TonFragmentItem.Product r5, final org.telegram.p043ui.ActionBar.BaseFragment r6, com.iMe.fork.utils.Callbacks$Callback r7) {
        /*
            r4 = this;
            java.lang.String r0 = "productItem"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "fragment"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "onBuyClickAction"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            android.app.Activity r0 = r6.getParentActivity()
            java.lang.String r1 = "fragment.parentActivity"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r1 = 1
            r4.<init>(r0, r1)
            r4.onBuyClickAction = r7
            com.iMe.ui.wallet.fragment.usernames.details.TonFragmentProductDetailsBottomSheetDialog$presenter$2 r7 = new com.iMe.ui.wallet.fragment.usernames.details.TonFragmentProductDetailsBottomSheetDialog$presenter$2
            r7.<init>()
            moxy.ktx.MoxyKtxDelegate r5 = new moxy.ktx.MoxyKtxDelegate
            moxy.MvpDelegate r0 = r4.getMvpDelegate()
            java.lang.String r2 = "mvpDelegate"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.Class<com.iMe.ui.wallet.fragment.usernames.details.TonFragmentProductDetailsPresenter> r3 = com.iMe.p030ui.wallet.fragment.usernames.details.TonFragmentProductDetailsPresenter.class
            java.lang.String r3 = r3.getName()
            r2.append(r3)
            java.lang.String r3 = "."
            r2.append(r3)
            java.lang.String r3 = "presenter"
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r5.<init>(r0, r2, r7)
            org.koin.mp.KoinPlatformTools r5 = org.koin.p041mp.KoinPlatformTools.INSTANCE
            kotlin.LazyThreadSafetyMode r5 = r5.defaultLazyMode()
            com.iMe.ui.wallet.fragment.usernames.details.TonFragmentProductDetailsBottomSheetDialog$special$$inlined$inject$default$1 r7 = new com.iMe.ui.wallet.fragment.usernames.details.TonFragmentProductDetailsBottomSheetDialog$special$$inlined$inject$default$1
            r0 = 0
            r7.<init>()
            kotlin.Lazy r5 = kotlin.LazyKt.lazy(r5, r7)
            r4.resourceManager$delegate = r5
            com.iMe.ui.wallet.fragment.usernames.details.TonFragmentProductDetailsBottomSheetDialog$binding$2 r5 = new com.iMe.ui.wallet.fragment.usernames.details.TonFragmentProductDetailsBottomSheetDialog$binding$2
            r5.<init>()
            com.iMe.utils.extentions.delegate.ResettableLazy r5 = com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt.resettableLazy$default(r4, r0, r5, r1, r0)
            r4.binding$delegate = r5
            com.iMe.ui.wallet.fragment.usernames.details.TonFragmentProductDetailsBottomSheetDialog$actionButton$2 r5 = new com.iMe.ui.wallet.fragment.usernames.details.TonFragmentProductDetailsBottomSheetDialog$actionButton$2
            r5.<init>()
            com.iMe.utils.extentions.delegate.ResettableLazy r5 = com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt.resettableLazy$default(r4, r0, r5, r1, r0)
            r4.actionButton$delegate = r5
            r5 = 0
            r4.setApplyBottomPadding(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p030ui.wallet.fragment.usernames.details.TonFragmentProductDetailsBottomSheetDialog.<init>(com.iMe.model.wallet.fragment.TonFragmentItem$Product, org.telegram.ui.ActionBar.BaseFragment, com.iMe.fork.utils.Callbacks$Callback):void");
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final ForkContentFragmentProductDetailsBinding getBinding() {
        return (ForkContentFragmentProductDetailsBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    private final PremiumButtonView getActionButton() {
        return (PremiumButtonView) this.actionButton$delegate.getValue(this, $$delegatedProperties[2]);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpBottomSheet
    public View onCreateView(Bundle bundle) {
        setupViews();
        setupColors();
        setupListeners();
        NestedScrollView root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p030ui.wallet.fragment.usernames.details.TonFragmentProductDetailsView
    public void renderScreenData(String titleText, String username, String priceText) {
        Character orNull;
        Intrinsics.checkNotNullParameter(titleText, "titleText");
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(priceText, "priceText");
        ForkContentFragmentProductDetailsBinding binding = getBinding();
        ImageHeaderView viewHeader = binding.viewHeader;
        Intrinsics.checkNotNullExpressionValue(viewHeader, "viewHeader");
        long hashCode = username.hashCode();
        orNull = StringsKt___StringsKt.getOrNull(username, 1);
        ImageHeaderView.setupViewData$default(viewHeader, new ImageHeaderView.IconData.TextAvatar(hashCode, username, orNull != null ? orNull.toString() : null), null, titleText, getResourceManager().getString(C3632R.string.fragment_username_details_description), 2, null);
        binding.viewPriceCell.setupViewData(getResourceManager().getString(C3632R.string.wallet_buy_tokens_purchase_slide_price_title), priceText, C3632R.C3634drawable.fork_ic_donations_24, true);
        getActionButton().setOverlayText(getResourceManager().getString(C3632R.string.fragment_username_details_buy, priceText), false, true);
    }

    @Override // com.iMe.p030ui.wallet.fragment.usernames.details.TonFragmentProductDetailsView
    public void renderTimeLeft(String timeLeftText) {
        Intrinsics.checkNotNullParameter(timeLeftText, "timeLeftText");
        DetailsIconCellView detailsIconCellView = getBinding().viewTimeLeftCell;
        Intrinsics.checkNotNullExpressionValue(detailsIconCellView, "binding.viewTimeLeftCell");
        DetailsIconCellView.setupViewData$default(detailsIconCellView, getResourceManager().getString(C3632R.string.fragment_username_details_ends_in), timeLeftText, C3632R.C3634drawable.fork_ic_done_24, false, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PremiumButtonView initActionButton() {
        return new PremiumButtonView(getContext(), ViewExtKt.getDpToPx(4), true, this.resourcesProvider);
    }

    private final void setupViews() {
        getBinding().frameButtonContainer.addView(getActionButton(), LayoutHelper.createFrame(-1, 48, 16));
    }

    private final void setupColors() {
        ForkContentFragmentProductDetailsBinding binding = getBinding();
        binding.viewHeader.setupColors();
        binding.viewPriceCell.setupColors();
        binding.viewTimeLeftCell.setupColors();
    }

    private final void setupListeners() {
        ViewExtKt.safeThrottledClick$default(getActionButton(), 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.fragment.usernames.details.TonFragmentProductDetailsBottomSheetDialog$setupListeners$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Callbacks$Callback callbacks$Callback;
                Intrinsics.checkNotNullParameter(it, "it");
                callbacks$Callback = TonFragmentProductDetailsBottomSheetDialog.this.onBuyClickAction;
                callbacks$Callback.invoke();
            }
        }, 1, null);
    }

    /* compiled from: TonFragmentProductDetailsBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.wallet.fragment.usernames.details.TonFragmentProductDetailsBottomSheetDialog$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TonFragmentProductDetailsBottomSheetDialog newInstance(BaseFragment fragment, TonFragmentItem.Product productItem, Callbacks$Callback onBuyClickAction) {
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            Intrinsics.checkNotNullParameter(productItem, "productItem");
            Intrinsics.checkNotNullParameter(onBuyClickAction, "onBuyClickAction");
            return new TonFragmentProductDetailsBottomSheetDialog(productItem, fragment, onBuyClickAction);
        }
    }
}
