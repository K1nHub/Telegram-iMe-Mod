package com.iMe.p032ui.wallet.home.p033v2.tabs.binancepay.receive;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.manager.TelegramApi;
import com.iMe.model.wallet.home.pay.BinancePayScreenArgs;
import com.iMe.model.wallet.select.SelectableToken;
import com.iMe.model.wallet.select.SelectableType;
import com.iMe.p032ui.base.mvp.base.BasePresenter;
import com.iMe.p032ui.base.mvp.base.BaseView;
import com.iMe.storage.common.AppConfiguration$Wallet;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceTokenInfo;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p031rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p034rx.RxExtKt;
import com.iMe.utils.extentions.p034rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsJVMKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3316R;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ManageLinksActivity;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: WalletReceiveBinancePayPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter */
/* loaded from: classes3.dex */
public final class WalletReceiveBinancePayPresenter extends BasePresenter<WalletReceiveBinancePayView> {
    private final BinancePayScreenArgs args;
    private List<BinanceTokenInfo> availablePaymentTokens;
    private final BinanceInternalInteractor binanceInternalInteractor;
    private long chatId;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private Long recipientId;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final int screenType;
    private List<? extends SelectableToken> selectableAvailablePaymentTokens;
    private SelectableToken selectedToken;
    private TLRPC$User selectedUser;
    private final TelegramApi telegramApi;
    private final TelegramControllersGateway telegramControllersGateway;
    private final TelegramGateway telegramGateway;

    public WalletReceiveBinancePayPresenter(int i, BinancePayScreenArgs args, TelegramApi telegramApi, TelegramGateway telegramGateway, TelegramControllersGateway telegramControllersGateway, BinanceInternalInteractor binanceInternalInteractor, SchedulersProvider schedulersProvider, CryptoPreferenceHelper cryptoPreferenceHelper, ResourceManager resourceManager) {
        List<BinanceTokenInfo> emptyList;
        List<? extends SelectableToken> emptyList2;
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(telegramApi, "telegramApi");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(telegramControllersGateway, "telegramControllersGateway");
        Intrinsics.checkNotNullParameter(binanceInternalInteractor, "binanceInternalInteractor");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.screenType = i;
        this.args = args;
        this.telegramApi = telegramApi;
        this.telegramGateway = telegramGateway;
        this.telegramControllersGateway = telegramControllersGateway;
        this.binanceInternalInteractor = binanceInternalInteractor;
        this.schedulersProvider = schedulersProvider;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.resourceManager = resourceManager;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.availablePaymentTokens = emptyList;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        this.selectableAvailablePaymentTokens = emptyList2;
        this.chatId = -1L;
        this.recipientId = -1L;
    }

    public final List<BinanceTokenInfo> getAvailablePaymentTokens() {
        return this.availablePaymentTokens;
    }

    public final void setAvailablePaymentTokens(List<BinanceTokenInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.availablePaymentTokens = list;
    }

    public final void setSelectableAvailablePaymentTokens(List<? extends SelectableToken> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.selectableAvailablePaymentTokens = list;
    }

    public final TLRPC$User getSelectedUser() {
        return this.selectedUser;
    }

    public final void setSelectedUser(TLRPC$User tLRPC$User) {
        this.selectedUser = tLRPC$User;
    }

    public final SelectableToken getSelectedToken() {
        return this.selectedToken;
    }

    public final void startSelectTokenFlow(Callbacks$Callback1<SelectableToken> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        if (this.availablePaymentTokens.isEmpty()) {
            loadAvailableToPayTokens(true, new WalletReceiveBinancePayPresenter$startSelectTokenFlow$1(this, action));
        } else {
            processShowSelectTokenDialog(action);
        }
    }

    public final void createCollection(BaseFragment fragment, String amount) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(amount, "amount");
        if (isValidFields(amount)) {
            BinanceInternalInteractor binanceInternalInteractor = this.binanceInternalInteractor;
            TLRPC$User tLRPC$User = this.selectedUser;
            Intrinsics.checkNotNull(tLRPC$User);
            long j = tLRPC$User.f1642id;
            double parseDouble = Double.parseDouble(amount);
            SelectableToken selectableToken = this.selectedToken;
            Intrinsics.checkNotNull(selectableToken);
            Observable<R> flatMap = binanceInternalInteractor.createCollection(j, parseDouble, selectableToken.getId()).flatMap(new C2261xde1d1050(new C2254x1b3c7af8(this)));
            Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
            Observable observeOn = flatMap.observeOn(this.schedulersProvider.mo707ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Disposable subscribe = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2255xcd7a3035(fragment, this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2256xcd7a3036((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        if (this.screenType == ManageLinksActivity.BINANCE_PAY_CREATE_COLLECTION_SCREEN_TYPE) {
            preInitFields();
            loadAvailableToPayTokens$default(this, false, null, 3, null);
        }
    }

    private final void preInitFields() {
        TLRPC$User user;
        if (this.args.getUserId() != null && (user = TelegramControllersGateway.CC.getMessagesController$default(this.telegramControllersGateway, 0, 1, null).getUser(this.args.getUserId())) != null) {
            this.selectedUser = user;
            ((WalletReceiveBinancePayView) getViewState()).updateSelectedUser();
        }
        if (this.args.getToken() != null) {
            this.selectedToken = this.args.getToken();
            ((WalletReceiveBinancePayView) getViewState()).updateSelectedToken();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HashMap<String, String> formatBotRequestParams(String str, String str2) {
        HashMap<String, String> hashMapOf;
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.m94to(TtmlNode.ATTR_ID, str), TuplesKt.m94to("query_id", str2), TuplesKt.m94to("bot", String.valueOf(AppConfiguration$Wallet.getWalletBotId())), TuplesKt.m94to("bot_name", AppConfiguration$Wallet.getWalletBotUsernameLowerCase()));
        return hashMapOf;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void loadAvailableToPayTokens$default(WalletReceiveBinancePayPresenter walletReceiveBinancePayPresenter, boolean z, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            function0 = WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$1.INSTANCE;
        }
        walletReceiveBinancePayPresenter.loadAvailableToPayTokens(z, function0);
    }

    private final void loadAvailableToPayTokens(final boolean z, Function0<Unit> function0) {
        Observable<Result<List<BinanceTokenInfo>>> doFinally = this.binanceInternalInteractor.getAvailablePaymentTokens().observeOn(this.schedulersProvider.mo707ui()).doFinally(new Action() { // from class: com.iMe.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletReceiveBinancePayPresenter.loadAvailableToPayTokens$lambda$2(z, this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "binanceInternalInteracto…      }\n                }");
        Disposable subscribe = doFinally.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2259x7b59101f(this, function0, z)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2260x7b591020((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadAvailableToPayTokens$lambda$2(boolean z, WalletReceiveBinancePayPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            T viewState = this$0.getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            BaseView.CC.showLoadingDialog$default((BaseView) viewState, false, true, null, 4, null);
        }
    }

    private final boolean isValidFields(String str) {
        boolean z;
        Double doubleOrNull;
        Double doubleOrNull2;
        if (this.selectedUser == null) {
            ((WalletReceiveBinancePayView) getViewState()).showToast(this.resourceManager.getString(C3316R.string.wallet_binance_receive_selected_user_is_empty));
        } else if (this.selectedToken == null) {
            ((WalletReceiveBinancePayView) getViewState()).showToast(this.resourceManager.getString(C3316R.string.wallet_binance_receive_selected_token_is_empty));
        } else {
            List<BinanceTokenInfo> list = this.availablePaymentTokens;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                for (BinanceTokenInfo binanceTokenInfo : list) {
                    String asset = binanceTokenInfo.getAsset();
                    SelectableToken selectableToken = this.selectedToken;
                    if (Intrinsics.areEqual(asset, selectableToken != null ? selectableToken.getId() : null)) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            if (!z) {
                ((WalletReceiveBinancePayView) getViewState()).showToast(this.resourceManager.getString(C3316R.string.wallet_binance_receive_selected_token_is_unsupported));
            } else {
                doubleOrNull = StringsKt__StringNumberConversionsJVMKt.toDoubleOrNull(str);
                if (doubleOrNull != null) {
                    doubleOrNull2 = StringsKt__StringNumberConversionsJVMKt.toDoubleOrNull(str);
                    if (!Intrinsics.areEqual(doubleOrNull2, 0.0d)) {
                        return true;
                    }
                }
                ((WalletReceiveBinancePayView) getViewState()).showToast(this.resourceManager.getString(C3316R.string.wallet_binance_receive_amount_is_empty_or_zero));
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processShowSelectTokenDialog(final Callbacks$Callback1<SelectableToken> callbacks$Callback1) {
        ((WalletReceiveBinancePayView) getViewState()).showSelectTokenDialog(SelectableType.BINANCE, this.selectableAvailablePaymentTokens, this.cryptoPreferenceHelper.getNetworkType(), false, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletReceiveBinancePayPresenter.processShowSelectTokenDialog$lambda$5(WalletReceiveBinancePayPresenter.this, callbacks$Callback1, (SelectableToken) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void processShowSelectTokenDialog$lambda$5(WalletReceiveBinancePayPresenter this$0, Callbacks$Callback1 action, SelectableToken token) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(action, "$action");
        Intrinsics.checkNotNullParameter(token, "token");
        this$0.selectedToken = token;
        action.invoke(token);
    }
}
