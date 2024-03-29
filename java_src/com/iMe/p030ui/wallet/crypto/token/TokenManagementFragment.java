package com.iMe.p030ui.wallet.crypto.token;

import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.p023ui.dialog.SelectNetworkBottomSheet;
import com.iMe.fork.p023ui.dialog.TokenListsBottomSheet;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.mapper.wallet.NetworkUiMappingKt;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p030ui.custom.NetworkTypeView;
import com.iMe.p030ui.wallet.crypto.token.TokenManagementFragment;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.model.wallet.token.TokenListInfo;
import com.iMe.utils.dialogs.DialogExtKt;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt__StringsKt;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MrzRecognizer;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.databinding.ForkFragmentTokenManagementBinding;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.CameraScanActivity;
import org.telegram.p043ui.Components.LayoutHelper;
/* compiled from: TokenManagementFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementFragment */
/* loaded from: classes3.dex */
public final class TokenManagementFragment extends WalletAuthBaseFragment implements TokenManagementView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(TokenManagementFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(TokenManagementFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private NetworkTypeView networkTypeView;
    private final MoxyKtxDelegate presenter$delegate;
    private final ScreenType screenType;

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return true;
    }

    public TokenManagementFragment(ScreenType screenType) {
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        this.screenType = screenType;
        Function0<TokenManagementPresenter> function0 = new Function0<TokenManagementPresenter>() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TokenManagementPresenter invoke() {
                Lazy lazy;
                final TokenManagementFragment tokenManagementFragment = TokenManagementFragment.this;
                final Function0<ParametersHolder> function02 = new Function0<ParametersHolder>() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$presenter$2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final ParametersHolder invoke() {
                        TokenManagementFragment.ScreenType screenType2;
                        screenType2 = TokenManagementFragment.this.screenType;
                        return ParametersHolderKt.parametersOf(screenType2);
                    }
                };
                lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<TokenManagementPresenter>() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.crypto.token.TokenManagementPresenter, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final TokenManagementPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function03 = function02;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(TokenManagementPresenter.class), qualifier, function03);
                    }
                });
                return (TokenManagementPresenter) lazy.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, TokenManagementPresenter.class.getName() + ".presenter", function0);
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentTokenManagementBinding>() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentTokenManagementBinding invoke() {
                return ForkFragmentTokenManagementBinding.inflate(BaseFragmentExtKt.getLayoutInflater(TokenManagementFragment.this));
            }
        }, 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TokenManagementPresenter getPresenter() {
        return (TokenManagementPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final ForkFragmentTokenManagementBinding getBinding() {
        return (ForkFragmentTokenManagementBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupColors();
        setupViews();
        setupListeners();
        FrameLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] permissions, int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        if ((!(grantResults.length == 0)) && grantResults[0] == 0 && i == 34) {
            openQRScan();
        }
    }

    @Override // com.iMe.p030ui.base.mvp.SwitchNetworkView
    public void showChooseNetworkDialog(NetworkItem network, List<? extends NetworkItem> availableNetworks) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(availableNetworks, "availableNetworks");
        SelectNetworkBottomSheet.Companion companion = SelectNetworkBottomSheet.Companion;
        Activity parentActivity = getParentActivity();
        Callbacks$Callback1<NetworkItem.Crypto> callbacks$Callback1 = new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                TokenManagementFragment.showChooseNetworkDialog$lambda$0(TokenManagementFragment.this, (NetworkItem.Crypto) obj);
            }
        };
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(companion.newInstance(parentActivity, network, availableNetworks, callbacks$Callback1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showChooseNetworkDialog$lambda$0(TokenManagementFragment this$0, NetworkItem.Crypto crypto) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onNetworkSelected(crypto);
    }

    @Override // com.iMe.p030ui.wallet.crypto.token.TokenManagementView
    public void showTokensListsDialog(List<TokenListInfo> tokenLists) {
        Intrinsics.checkNotNullParameter(tokenLists, "tokenLists");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(new TokenListsBottomSheet(parentActivity, tokenLists, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                TokenManagementFragment.this.showTokensListsInfoDialog();
            }
        }));
    }

    @Override // com.iMe.p030ui.base.mvp.SwitchNetworkView
    public void setupNetwork(NetworkItem networkItem) {
        Intrinsics.checkNotNullParameter(networkItem, "networkItem");
        NetworkTypeView networkTypeView = this.networkTypeView;
        if (networkTypeView == null) {
            return;
        }
        networkTypeView.setNetwork(networkItem);
    }

    @Override // com.iMe.p030ui.wallet.crypto.token.TokenManagementView
    public void copyAddressToClipboard(String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        ContextExtKt.copyToClipboard$default(address, null, 2, null);
    }

    @Override // com.iMe.p030ui.wallet.crypto.token.TokenManagementView
    public void openBrowserUrl(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Browser.openUrl(getParentActivity(), url);
    }

    @Override // com.iMe.p030ui.wallet.crypto.token.TokenManagementView
    public void updateErrorTextVisibility(boolean z) {
        AppCompatTextView appCompatTextView = getBinding().textNotFound;
        Intrinsics.checkNotNullExpressionValue(appCompatTextView, "binding.textNotFound");
        appCompatTextView.setVisibility(z ? 0 : 8);
    }

    @Override // com.iMe.p030ui.wallet.crypto.token.TokenManagementView
    public void resetImportScreen() {
        ForkFragmentTokenManagementBinding binding = getBinding();
        setupAddressOptions(false, null);
        ConstraintLayout linearInfo = binding.linearInfo;
        Intrinsics.checkNotNullExpressionValue(linearInfo, "linearInfo");
        ViewExtKt.gone$default(linearInfo, false, 1, null);
        LinearLayout linearSafety = binding.linearSafety;
        Intrinsics.checkNotNullExpressionValue(linearSafety, "linearSafety");
        ViewExtKt.gone$default(linearSafety, false, 1, null);
    }

    @Override // com.iMe.p030ui.wallet.crypto.token.TokenManagementView
    public void setScannedAddressText(String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        getBinding().editAddress.setText(address);
    }

    @Override // com.iMe.p030ui.wallet.crypto.token.TokenManagementView
    public void setupActionButtonState(boolean z, boolean z2) {
        TextView setupActionButtonState$lambda$2 = getBinding().buttonAction;
        setupActionButtonState$lambda$2.setTextColor(-1);
        Intrinsics.checkNotNullExpressionValue(setupActionButtonState$lambda$2, "setupActionButtonState$lambda$2");
        ViewExtKt.withMediumTypeface(setupActionButtonState$lambda$2);
        ScreenType screenType = this.screenType;
        if (screenType instanceof ScreenType.Import) {
            ViewExtKt.visible$default(setupActionButtonState$lambda$2, false, 1, null);
            setupActionButtonState$lambda$2.setText(getResourceManager().getString(C3632R.string.wallet_tokens_management_import_confirmation_import));
            setupActionButtonState$lambda$2.setEnabled(z2);
            setupActionButtonState$lambda$2.setAlpha(z2 ? 1.0f : 0.5f);
        } else if ((screenType instanceof ScreenType.View) && z) {
            ViewExtKt.visible$default(setupActionButtonState$lambda$2, false, 1, null);
            setupActionButtonState$lambda$2.setText(getResourceManager().getString(C3632R.string.favorite_folder_delete));
        }
    }

    @Override // com.iMe.p030ui.wallet.crypto.token.TokenManagementView
    public void setupTokenData(String logoUrl, String address, String ticker, String name, String decimals, Network network, Integer num) {
        Intrinsics.checkNotNullParameter(logoUrl, "logoUrl");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(ticker, "ticker");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(decimals, "decimals");
        Intrinsics.checkNotNullParameter(network, "network");
        setupAddressOptions(true, network);
        ForkFragmentTokenManagementBinding binding = getBinding();
        ConstraintLayout linearInfo = binding.linearInfo;
        Intrinsics.checkNotNullExpressionValue(linearInfo, "linearInfo");
        ViewExtKt.visible$default(linearInfo, false, 1, null);
        ScreenType screenType = this.screenType;
        if (screenType instanceof ScreenType.Import) {
            binding.editAddress.setText(address);
        } else if (screenType instanceof ScreenType.View) {
            binding.textAddress.setText(address);
        }
        AppCompatImageView imageLogo = binding.imageLogo;
        Intrinsics.checkNotNullExpressionValue(imageLogo, "imageLogo");
        ImageViewExtKt.loadFrom$default(imageLogo, logoUrl, null, false, 6, null);
        binding.textSymbolValue.setText(ticker);
        binding.textNameValue.setText(name);
        binding.textDecimalsValue.setText(decimals);
        binding.textNetworkValue.setText(network.getFullName());
        if (num != null) {
            LinearLayout linearSafety = binding.linearSafety;
            Intrinsics.checkNotNullExpressionValue(linearSafety, "linearSafety");
            ViewExtKt.visible$default(linearSafety, false, 1, null);
            binding.textSafetyStatus.setText(LocaleController.formatPluralStringInternal(C3632R.string.plural_wallet_tokens_management_verified, num.intValue()));
            binding.imageSafetyStatus.setImageResource(num.intValue() > 0 ? C3632R.C3634drawable.fork_ic_verified : C3632R.C3634drawable.fork_ic_warning_info);
        }
    }

    @Override // com.iMe.p030ui.wallet.crypto.token.TokenManagementView
    public void showEnableConfirmationDialog(DialogModel dialogModel) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        final TokenManagementPresenter presenter = getPresenter();
        showDialog(DialogUtils.createFormattedDialog$default(parentActivity, dialogModel, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$$ExternalSyntheticLambda3
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                TokenManagementPresenter.this.enableToken();
            }
        }, null, 8, null));
    }

    @Override // com.iMe.p030ui.wallet.crypto.token.TokenManagementView
    public void showDeleteConfirmationDialog(DialogModel dialogModel) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        final TokenManagementPresenter presenter = getPresenter();
        AlertDialog createFormattedDialog$default = DialogUtils.createFormattedDialog$default(parentActivity, dialogModel, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                TokenManagementPresenter.this.deleteToken();
            }
        }, null, 8, null);
        showDialog(createFormattedDialog$default);
        DialogExtKt.makeRedPositiveButton(createFormattedDialog$default);
        showDialog(createFormattedDialog$default);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, Theme.key_actionBarDefaultSelector), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$$ExternalSyntheticLambda5
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                TokenManagementFragment.this.setupColors();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3704ActionBar c3704ActionBar = this.actionBar;
        c3704ActionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        c3704ActionBar.setTitle(getResourceManager().getString(Intrinsics.areEqual(this.screenType, ScreenType.Import.INSTANCE) ? C3632R.string.wallet_tokens_management_title_import : C3632R.string.wallet_tokens_management_title_details));
        c3704ActionBar.setAllowOverlayTitle(true);
        c3704ActionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                TokenManagementPresenter presenter;
                if (i == -1) {
                    TokenManagementFragment.this.finishFragment();
                } else if (i == IdFabric$Menu.NETWORK_SWITCH) {
                    presenter = TokenManagementFragment.this.getPresenter();
                    presenter.startChooseNetworkDialog();
                }
            }
        });
        if (this.screenType instanceof ScreenType.Import) {
            Activity parentActivity = getParentActivity();
            Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
            this.networkTypeView = new NetworkTypeView(parentActivity, null, 0, 6, null);
            ActionBarMenuItem setupActionBar$lambda$6$lambda$5 = c3704ActionBar.createMenu().addItemWithWidth(IdFabric$Menu.NETWORK_SWITCH, 0, -2);
            setupActionBar$lambda$6$lambda$5.disableRipple();
            Intrinsics.checkNotNullExpressionValue(setupActionBar$lambda$6$lambda$5, "setupActionBar$lambda$6$lambda$5");
            com.tbuonomo.viewpagerdotsindicator.ViewExtKt.setPaddingHorizontal(setupActionBar$lambda$6$lambda$5, AndroidUtilities.m107dp(14));
            setupActionBar$lambda$6$lambda$5.addView(this.networkTypeView, LayoutHelper.createFrame(-2, -2, 8388629));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupColors() {
        List<ViewGroup> listOf;
        List<AppCompatTextView> listOf2;
        ForkFragmentTokenManagementBinding binding = getBinding();
        binding.getRoot().setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        LinearLayout linearAddress = binding.linearAddress;
        Intrinsics.checkNotNullExpressionValue(linearAddress, "linearAddress");
        ConstraintLayout linearInfo = binding.linearInfo;
        Intrinsics.checkNotNullExpressionValue(linearInfo, "linearInfo");
        LinearLayout linearSafety = binding.linearSafety;
        Intrinsics.checkNotNullExpressionValue(linearSafety, "linearSafety");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ViewGroup[]{linearAddress, linearInfo, linearSafety});
        for (ViewGroup viewGroup : listOf) {
            viewGroup.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
        }
        EditText editText = binding.editAddress;
        int i = Theme.key_windowBackgroundWhiteGrayText;
        editText.setHintTextColor(getThemedColor(i));
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        editText.setTextColor(getThemedColor(i2));
        binding.buttonAddressOptions.setIconColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayIcon));
        TextView textAddress = binding.textAddress;
        Intrinsics.checkNotNullExpressionValue(textAddress, "textAddress");
        AppCompatTextView textSymbolValue = binding.textSymbolValue;
        Intrinsics.checkNotNullExpressionValue(textSymbolValue, "textSymbolValue");
        AppCompatTextView textNameValue = binding.textNameValue;
        Intrinsics.checkNotNullExpressionValue(textNameValue, "textNameValue");
        AppCompatTextView textDecimalsValue = binding.textDecimalsValue;
        Intrinsics.checkNotNullExpressionValue(textDecimalsValue, "textDecimalsValue");
        AppCompatTextView textNetworkValue = binding.textNetworkValue;
        Intrinsics.checkNotNullExpressionValue(textNetworkValue, "textNetworkValue");
        AppCompatTextView textSafetyStatus = binding.textSafetyStatus;
        Intrinsics.checkNotNullExpressionValue(textSafetyStatus, "textSafetyStatus");
        ViewExtKt.setTextsColorKey(i2, textAddress, textSymbolValue, textNameValue, textDecimalsValue, textNetworkValue, textSafetyStatus);
        AppCompatTextView textIconTitle = binding.textIconTitle;
        Intrinsics.checkNotNullExpressionValue(textIconTitle, "textIconTitle");
        AppCompatTextView textSymbolTitle = binding.textSymbolTitle;
        Intrinsics.checkNotNullExpressionValue(textSymbolTitle, "textSymbolTitle");
        AppCompatTextView textNameTitle = binding.textNameTitle;
        Intrinsics.checkNotNullExpressionValue(textNameTitle, "textNameTitle");
        AppCompatTextView textDecimalsTitle = binding.textDecimalsTitle;
        Intrinsics.checkNotNullExpressionValue(textDecimalsTitle, "textDecimalsTitle");
        AppCompatTextView textNetworkTitle = binding.textNetworkTitle;
        Intrinsics.checkNotNullExpressionValue(textNetworkTitle, "textNetworkTitle");
        AppCompatTextView textSafetyTitle = binding.textSafetyTitle;
        Intrinsics.checkNotNullExpressionValue(textSafetyTitle, "textSafetyTitle");
        ViewExtKt.setTextsColorKey(i, textIconTitle, textSymbolTitle, textNameTitle, textDecimalsTitle, textNetworkTitle, textSafetyTitle);
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new AppCompatTextView[]{binding.textAddressTitle, binding.textInformationTitle, binding.textSafetyTitle});
        for (AppCompatTextView setupColors$lambda$12$lambda$9 : listOf2) {
            setupColors$lambda$12$lambda$9.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlueText));
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$12$lambda$9, "setupColors$lambda$12$lambda$9");
            ViewExtKt.withMediumTypeface(setupColors$lambda$12$lambda$9);
        }
        AppCompatImageView setupColors$lambda$12$lambda$10 = binding.buttonSafetyInfo;
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$12$lambda$10, "setupColors$lambda$12$lambda$10");
        ViewExtKt.setCircleRippleBackground(setupColors$lambda$12$lambda$10);
        int i3 = Theme.key_windowBackgroundWhiteBlueIcon;
        ImageViewExtKt.setImageColor(setupColors$lambda$12$lambda$10, getThemedColor(i3));
        LinearLayout linearVerification = binding.linearVerification;
        Intrinsics.checkNotNullExpressionValue(linearVerification, "linearVerification");
        ViewExtKt.setRippleBackground$default(linearVerification, false, 1, null);
        AppCompatImageView imageSafetyStatusArrow = binding.imageSafetyStatusArrow;
        Intrinsics.checkNotNullExpressionValue(imageSafetyStatusArrow, "imageSafetyStatusArrow");
        ImageViewExtKt.setImageColor(imageSafetyStatusArrow, getThemedColor(i3));
        AppCompatTextView appCompatTextView = binding.textNotFound;
        int i4 = Theme.key_color_red;
        appCompatTextView.setTextColor(getThemedColor(i4));
        TextView setupColors$lambda$12$lambda$11 = binding.buttonAction;
        setupColors$lambda$12$lambda$11.setTextColor(ColorStateList.valueOf(-1));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$12$lambda$11, "setupColors$lambda$12$lambda$11");
        ViewExtKt.withMediumTypeface(setupColors$lambda$12$lambda$11);
        ScreenType screenType = this.screenType;
        if (screenType instanceof ScreenType.Import) {
            i4 = Theme.key_featuredStickers_addButton;
        } else if (!(screenType instanceof ScreenType.View)) {
            throw new NoWhenBranchMatchedException();
        }
        setupColors$lambda$12$lambda$11.setBackgroundColor(getThemedColor(i4));
        ViewExtKt.setRippleForeground$default(setupColors$lambda$12$lambda$11, false, 1, null);
    }

    private final void setupListeners() {
        ForkFragmentTokenManagementBinding binding = getBinding();
        AppCompatImageView buttonSafetyInfo = binding.buttonSafetyInfo;
        Intrinsics.checkNotNullExpressionValue(buttonSafetyInfo, "buttonSafetyInfo");
        ViewExtKt.safeThrottledClick$default(buttonSafetyInfo, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$setupListeners$1$1
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
                Intrinsics.checkNotNullParameter(it, "it");
                TokenManagementFragment.this.showTokensListsInfoDialog();
            }
        }, 1, null);
        LinearLayout linearVerification = binding.linearVerification;
        Intrinsics.checkNotNullExpressionValue(linearVerification, "linearVerification");
        ViewExtKt.safeThrottledClick$default(linearVerification, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$setupListeners$1$2
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
                TokenManagementPresenter presenter;
                Intrinsics.checkNotNullParameter(it, "it");
                presenter = TokenManagementFragment.this.getPresenter();
                presenter.onVerificationClicked();
            }
        }, 1, null);
        TextView buttonAction = binding.buttonAction;
        Intrinsics.checkNotNullExpressionValue(buttonAction, "buttonAction");
        ViewExtKt.safeThrottledClick$default(buttonAction, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$setupListeners$1$3
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
                TokenManagementPresenter presenter;
                Intrinsics.checkNotNullParameter(it, "it");
                presenter = TokenManagementFragment.this.getPresenter();
                presenter.onActionButtonClicked();
            }
        }, 1, null);
        if (Intrinsics.areEqual(this.screenType, ScreenType.Import.INSTANCE)) {
            EditText editAddress = binding.editAddress;
            Intrinsics.checkNotNullExpressionValue(editAddress, "editAddress");
            editAddress.addTextChangedListener(new TextWatcher() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$setupListeners$lambda$14$$inlined$doAfterTextChanged$1
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    TokenManagementPresenter presenter;
                    CharSequence trim;
                    presenter = TokenManagementFragment.this.getPresenter();
                    String obj = editable != null ? editable.toString() : null;
                    if (obj == null) {
                        obj = "";
                    }
                    trim = StringsKt__StringsKt.trim(obj);
                    presenter.onAddressUpdated(trim.toString());
                }
            });
        }
    }

    private final void setupViews() {
        ForkFragmentTokenManagementBinding binding = getBinding();
        ActionBarMenuItem setupViews$lambda$18$lambda$16 = binding.buttonAddressOptions;
        Intrinsics.checkNotNullExpressionValue(setupViews$lambda$18$lambda$16, "setupViews$lambda$18$lambda$16");
        ViewExtKt.setCircleRippleBackground(setupViews$lambda$18$lambda$16);
        boolean z = this.screenType instanceof ScreenType.View;
        NetworkTypeView networkTypeView = this.networkTypeView;
        NetworkItem network = networkTypeView != null ? networkTypeView.getNetwork() : null;
        NetworkItem.Crypto crypto = network instanceof NetworkItem.Crypto ? (NetworkItem.Crypto) network : null;
        setupAddressOptions(z, crypto != null ? NetworkUiMappingKt.mapToDomain(crypto) : null);
        setupViews$lambda$18$lambda$16.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$$ExternalSyntheticLambda4
            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i) {
                TokenManagementFragment.setupViews$lambda$18$lambda$16$lambda$15(TokenManagementFragment.this, i);
            }
        });
        EditText setupViews$lambda$18$lambda$17 = binding.editAddress;
        Intrinsics.checkNotNullExpressionValue(setupViews$lambda$18$lambda$17, "setupViews$lambda$18$lambda$17");
        setupViews$lambda$18$lambda$17.setVisibility(Intrinsics.areEqual(this.screenType, ScreenType.Import.INSTANCE) ? 0 : 8);
        setupViews$lambda$18$lambda$17.setBackground(null);
        setupViews$lambda$18$lambda$17.setHint(getResourceManager().getString(C3632R.string.channel_donations_address_field_hint));
        TextView textAddress = binding.textAddress;
        Intrinsics.checkNotNullExpressionValue(textAddress, "textAddress");
        textAddress.setVisibility(this.screenType instanceof ScreenType.View ? 0 : 8);
        binding.textAddressTitle.setText(getResourceManager().getString(C3632R.string.wallet_tokens_management_token_address));
        binding.textInformationTitle.setText(getResourceManager().getString(C3632R.string.wallet_tokens_management_token_information));
        binding.textIconTitle.setText(getResourceManager().getString(C3632R.string.wallet_tokens_management_icon));
        binding.textSymbolTitle.setText(getResourceManager().getString(C3632R.string.wallet_tokens_management_symbol));
        binding.textNameTitle.setText(getResourceManager().getString(C3632R.string.wallet_tokens_management_name));
        binding.textDecimalsTitle.setText(getResourceManager().getString(C3632R.string.wallet_tokens_management_decimals));
        binding.textNetworkTitle.setText(getResourceManager().getString(C3632R.string.wallet_connect_session_details_network));
        binding.textSafetyTitle.setText(getResourceManager().getString(C3632R.string.wallet_tokens_management_token_safety));
        binding.textNotFound.setText(getResourceManager().getString(C3632R.string.wallet_tokens_management_token_not_found));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViews$lambda$18$lambda$16$lambda$15(TokenManagementFragment this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i == IdFabric$Menu.COPY) {
            this$0.getPresenter().copyAddressToClipboard();
        } else if (i == IdFabric$Menu.SCAN_ADDRESS) {
            this$0.getPresenter().openTokenScannerUrl();
        }
    }

    private final void setupAddressOptions(boolean z, Network network) {
        Network.Explorer explorer;
        final ActionBarMenuItem setupAddressOptions$lambda$21 = getBinding().buttonAddressOptions;
        setupAddressOptions$lambda$21.removeAllSubItems();
        if (Intrinsics.areEqual(this.screenType, ScreenType.Import.INSTANCE)) {
            setupAddressOptions$lambda$21.setIcon(C3632R.C3634drawable.msg_qrcode);
            setupAddressOptions$lambda$21.setContentDescription(getResourceManager().getString(C3632R.string.wallet_backup_scan_qr));
            Intrinsics.checkNotNullExpressionValue(setupAddressOptions$lambda$21, "setupAddressOptions$lambda$21");
            ViewExtKt.safeThrottledClick$default(setupAddressOptions$lambda$21, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$setupAddressOptions$1$1
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
                    Intrinsics.checkNotNullParameter(it, "it");
                    TokenManagementFragment.this.openQRScan();
                }
            }, 1, null);
        }
        if (z) {
            setupAddressOptions$lambda$21.setIcon(C3632R.C3634drawable.ic_ab_other);
            setupAddressOptions$lambda$21.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3632R.string.AccDescrMoreOptions));
            setupAddressOptions$lambda$21.addSubItem(IdFabric$Menu.COPY, C3632R.C3634drawable.msg_copy, getResourceManager().getString(C3632R.string.wallet_transaction_details_action_copy_address));
            if (network != null && (explorer = network.getExplorer()) != null) {
                setupAddressOptions$lambda$21.addSubItem(IdFabric$Menu.SCAN_ADDRESS, 0, getResourceManager().getString(C3632R.string.wallet_transaction_details_action_open_etherscan, explorer.getName())).setIcon(explorer.getLogoUrl());
            }
            Intrinsics.checkNotNullExpressionValue(setupAddressOptions$lambda$21, "setupAddressOptions$lambda$21");
            ViewExtKt.safeThrottledClick$default(setupAddressOptions$lambda$21, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$setupAddressOptions$1$3
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
                    Intrinsics.checkNotNullParameter(it, "it");
                    ActionBarMenuItem.this.toggleSubMenu();
                }
            }, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openQRScan() {
        CameraScanActivity.showAsSheet((BaseFragment) this, true, 1, new CameraScanActivity.CameraScanActivityDelegate() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$openQRScan$1
            @Override // org.telegram.p043ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void didFindMrzInfo(MrzRecognizer.Result result) {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$didFindMrzInfo(this, result);
            }

            @Override // org.telegram.p043ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ String getSubtitleText() {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$getSubtitleText(this);
            }

            @Override // org.telegram.p043ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void onDismiss() {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$onDismiss(this);
            }

            @Override // org.telegram.p043ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ boolean processQr(String str, Runnable runnable) {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$processQr(this, str, runnable);
            }

            @Override // org.telegram.p043ui.CameraScanActivity.CameraScanActivityDelegate
            public void didFindQr(String text) {
                TokenManagementPresenter presenter;
                Intrinsics.checkNotNullParameter(text, "text");
                presenter = TokenManagementFragment.this.getPresenter();
                presenter.onAddressScanned(text);
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showTokensListsInfoDialog() {
        showDialog(DialogsFactoryKt.createDialogInfoWithAnimation$default(this, 0, null, getResourceManager().getString(C3632R.string.token_lists_description), 0, null, null, 59, null));
    }

    /* compiled from: TokenManagementFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$ScreenType */
    /* loaded from: classes3.dex */
    public static abstract class ScreenType {
        public /* synthetic */ ScreenType(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private ScreenType() {
        }

        /* compiled from: TokenManagementFragment.kt */
        /* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$ScreenType$Import */
        /* loaded from: classes3.dex */
        public static final class Import extends ScreenType {
            public static final Import INSTANCE = new Import();

            private Import() {
                super(null);
            }
        }

        /* compiled from: TokenManagementFragment.kt */
        /* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$ScreenType$View */
        /* loaded from: classes3.dex */
        public static final class View extends ScreenType {
            private final Boolean isCustomToken;
            private final TokenDetailed token;

            public /* synthetic */ View(TokenDetailed tokenDetailed, Boolean bool, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this(tokenDetailed, (i & 2) != 0 ? null : bool);
            }

            public final TokenDetailed getToken() {
                return this.token;
            }

            public final Boolean isCustomToken() {
                return this.isCustomToken;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public View(TokenDetailed token, Boolean bool) {
                super(null);
                Intrinsics.checkNotNullParameter(token, "token");
                this.token = token;
                this.isCustomToken = bool;
            }
        }
    }

    /* compiled from: TokenManagementFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TokenManagementFragment newInstance(ScreenType screenType) {
            Intrinsics.checkNotNullParameter(screenType, "screenType");
            return new TokenManagementFragment(screenType);
        }
    }
}
