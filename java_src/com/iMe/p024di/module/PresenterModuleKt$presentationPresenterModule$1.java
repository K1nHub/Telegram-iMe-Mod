package com.iMe.p024di.module;

import com.binance.android.opensdk.api.BinanceAPI;
import com.iMe.domain.contacts.ContactsInteractor;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.i_staking.StakingInteractor;
import com.iMe.manager.TelegramApi;
import com.iMe.manager.crypto.pay.BinancePayProcessManager;
import com.iMe.manager.crypto.recipient.CryptoRecipientManager;
import com.iMe.manager.multireply.MultiReplyInteractor;
import com.iMe.manager.wallet.create.WalletCreateManager;
import com.iMe.model.catalog.CampaignItem;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.model.translation.TranslationArgs;
import com.iMe.model.wallet.crypto.buy.CryptoBuyItem;
import com.iMe.model.wallet.crypto.create.CreateWalletScreenType;
import com.iMe.model.wallet.crypto.pin.EnterPinCodeScreenType;
import com.iMe.model.wallet.crypto.settings.BlockchainWalletItem;
import com.iMe.model.wallet.crypto.swap.SwapFeeScreenArgs;
import com.iMe.model.wallet.crypto.tutorial.TutorialType;
import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectTransactionScreenType;
import com.iMe.model.wallet.details.TokenDetailsArgs;
import com.iMe.model.wallet.home.pay.BinancePayScreenArgs;
import com.iMe.model.wallet.notification.NotificationItem;
import com.iMe.model.wallet.pin.WalletPinScreenArgs;
import com.iMe.model.wallet.select.SelectableToken;
import com.iMe.model.wallet.select.SelectableType;
import com.iMe.model.wallet.transfer.TransferScreenArgs;
import com.iMe.p032ui.catalog.CatalogRootPresenter;
import com.iMe.p032ui.catalog.details.ChannelDetailsPresenter;
import com.iMe.p032ui.catalog.tabs.CatalogPresenter;
import com.iMe.p032ui.catalog.tabs.all.CatalogAllPresenter;
import com.iMe.p032ui.catalog.tabs.categories.CatalogCategoriesPresenter;
import com.iMe.p032ui.catalog.tabs.user_channels.CatalogUserChannelsPresenter;
import com.iMe.p032ui.chat.ChatPresenter;
import com.iMe.p032ui.contacts.ContactsPresenter;
import com.iMe.p032ui.custom.backup.switcher.BackupWordSwitcherPresenter;
import com.iMe.p032ui.debug.DebugPresenter;
import com.iMe.p032ui.kikliko.EmojiViewPresenter;
import com.iMe.p032ui.profile.ProfilePresenter;
import com.iMe.p032ui.reaction.ReactionPresenter;
import com.iMe.p032ui.recognition.PhotoViewerPresenter;
import com.iMe.p032ui.translate.TranslationPresenter;
import com.iMe.p032ui.twitter.TwitterPresenter;
import com.iMe.p032ui.twitter.auth.TwitterAuthPresenter;
import com.iMe.p032ui.twitter.search.TwitterSearchPresenter;
import com.iMe.p032ui.wallet.actions.send.amount.WalletSendAmountPresenter;
import com.iMe.p032ui.wallet.actions.send.recipient.WalletSendRecipientPresenter;
import com.iMe.p032ui.wallet.airdrop.WalletAirdropPresenter;
import com.iMe.p032ui.wallet.airdrop.dialog.WalletAirdropDialogPresenter;
import com.iMe.p032ui.wallet.common.WalletRootPresenter;
import com.iMe.p032ui.wallet.crypto.address_mismatch.AddressMismatchPresenter;
import com.iMe.p032ui.wallet.crypto.buy.BuyCryptoProductPresenter;
import com.iMe.p032ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPricePresenter;
import com.iMe.p032ui.wallet.crypto.buy.processing.SimplexWebViewProcessingPresenter;
import com.iMe.p032ui.wallet.crypto.create.CreateWalletPresenter;
import com.iMe.p032ui.wallet.crypto.create.password.CreateWalletPasswordPresenter;
import com.iMe.p032ui.wallet.crypto.create.pin.CreateWalletPinPresenter;
import com.iMe.p032ui.wallet.crypto.create.secret_words_count.SecretWordsCountPresenter;
import com.iMe.p032ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter;
import com.iMe.p032ui.wallet.crypto.enter.pin.EnterWalletPinPresenter;
import com.iMe.p032ui.wallet.crypto.settings.WalletAccountSettingsPresenter;
import com.iMe.p032ui.wallet.crypto.settings.blockchains.BlockchainsManagementPresenter;
import com.iMe.p032ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsPresenter;
import com.iMe.p032ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter;
import com.iMe.p032ui.wallet.crypto.tutorial.CreateWalletTutorialPresenter;
import com.iMe.p032ui.wallet.crypto.wallet_connect.WalletConnectPresenter;
import com.iMe.p032ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignPresenter;
import com.iMe.p032ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkPresenter;
import com.iMe.p032ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionPresenter;
import com.iMe.p032ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsPresenter;
import com.iMe.p032ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionPresenter;
import com.iMe.p032ui.wallet.donations.WalletDonationsPresenter;
import com.iMe.p032ui.wallet.home.old.WalletAttachAlertPresenter;
import com.iMe.p032ui.wallet.home.p033v2.WalletHomePresenter;
import com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsPresenter;
import com.iMe.p032ui.wallet.home.p033v2.tabs.binancepay.WalletHomeBinancePayPresenter;
import com.iMe.p032ui.wallet.home.p033v2.tabs.binancepay.history.WalletBinancePayHistoryFragment;
import com.iMe.p032ui.wallet.home.p033v2.tabs.binancepay.history.WalletBinancePayHistoryPresenter;
import com.iMe.p032ui.wallet.home.p033v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter;
import com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.WalletHomeCryptoPresenter;
import com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment;
import com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter;
import com.iMe.p032ui.wallet.home.p033v2.tabs.services.WalletHomeServicesPresenter;
import com.iMe.p032ui.wallet.notifications.WalletNotificationsPresenter;
import com.iMe.p032ui.wallet.notifications.details.WalletNotificationDetailsPresenter;
import com.iMe.p032ui.wallet.settings.WalletSettingsPresenter;
import com.iMe.p032ui.wallet.settings.appearance.WalletAppearanceSettingsPresenter;
import com.iMe.p032ui.wallet.staking.StakingPresenter;
import com.iMe.p032ui.wallet.staking.calculator.StakingCalculatorPresenter;
import com.iMe.p032ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesPresenter;
import com.iMe.p032ui.wallet.staking.conditions.StakingConditionsPresenter;
import com.iMe.p032ui.wallet.staking.operations.StakingOperationsPresenter;
import com.iMe.p032ui.wallet.staking.programmes.StakingProgrammesPresenter;
import com.iMe.p032ui.wallet.staking.transaction.StakingTransactionPresenter;
import com.iMe.p032ui.wallet.swap.WalletSwapProtocolsPresenter;
import com.iMe.p032ui.wallet.swap.fee.WalletSwapFeePresenter;
import com.iMe.p032ui.wallet.swap.process.WalletSwapProcessFragment;
import com.iMe.p032ui.wallet.swap.process.WalletSwapProcessPresenter;
import com.iMe.p032ui.wallet.swap.token.WalletSelectTokenPresenter;
import com.iMe.p032ui.wallet.transaction.WalletTransactionsFragment;
import com.iMe.p032ui.wallet.transaction.WalletTransactionsPresenter;
import com.iMe.p032ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog;
import com.iMe.p032ui.wallet.transaction.details.WalletTransactionDetailsPresenter;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.iMe.storage.domain.interactor.catalog.CatalogInteractor;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.interactor.crypto.airdrop.AirdropInteractor;
import com.iMe.storage.domain.interactor.crypto.boost.BoostInteractor;
import com.iMe.storage.domain.interactor.crypto.cancel.CancelInteractor;
import com.iMe.storage.domain.interactor.crypto.donations.DonationsInteractor;
import com.iMe.storage.domain.interactor.crypto.level.AccountLevelInteractor;
import com.iMe.storage.domain.interactor.crypto.nft.avatar.NftAvatarInteractor;
import com.iMe.storage.domain.interactor.crypto.permission.CryptoPermissionInteractor;
import com.iMe.storage.domain.interactor.crypto.pin.PinCodeInteractor;
import com.iMe.storage.domain.interactor.crypto.simplex.SimplexInteractor;
import com.iMe.storage.domain.interactor.crypto.swap.SwapInteractor;
import com.iMe.storage.domain.interactor.crypto.wallet_connect.WalletConnectInteractor;
import com.iMe.storage.domain.interactor.google.GoogleServicesInteractor;
import com.iMe.storage.domain.interactor.kikliko.KiklikoInteractor;
import com.iMe.storage.domain.interactor.notification.PushNotificationInteractor;
import com.iMe.storage.domain.interactor.socialEmotion.ReactionInteractor;
import com.iMe.storage.domain.interactor.translate.TranslationInteractor;
import com.iMe.storage.domain.interactor.twitter.TwitterInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletSessionInteractor;
import com.iMe.storage.domain.manager.auth.AuthManager;
import com.iMe.storage.domain.manager.binancepay.BinancePayManager;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.iMe.storage.domain.model.catalog.ChatType;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.staking.StakingTabType;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.storage.HintsPreferenceHelper;
import com.iMe.storage.domain.storage.PreferenceHelper;
import com.iMe.storage.domain.storage.TwitterPreferenceHelper;
import com.iMe.storage.domain.utils.p031rx.RxEventBus;
import com.iMe.storage.domain.utils.p031rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.validator.wallet.CustomPriceValidator;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: PresenterModule.kt */
/* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1 */
/* loaded from: classes3.dex */
final class PresenterModuleKt$presentationPresenterModule$1 extends Lambda implements Function1<Module, Unit> {
    public static final PresenterModuleKt$presentationPresenterModule$1 INSTANCE = new PresenterModuleKt$presentationPresenterModule$1();

    PresenterModuleKt$presentationPresenterModule$1() {
        super(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C13411 extends Lambda implements Function2<Scope, ParametersHolder, TranslationPresenter> {
        public static final C13411 INSTANCE = new C13411();

        C13411() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TranslationPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            TranslationArgs translationArgs = (TranslationArgs) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(TranslationArgs.class));
            TelegramGateway telegramGateway = (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null);
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            return new TranslationPresenter(translationArgs, (TranslationInteractor) factory.get(Reflection.getOrCreateKotlinClass(TranslationInteractor.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), resourceManager, telegramGateway);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$12 */
    /* loaded from: classes3.dex */
    public static final class C134412 extends Lambda implements Function2<Scope, ParametersHolder, WalletHomeCryptoTokensSettingsPresenter> {
        public static final C134412 INSTANCE = new C134412();

        C134412() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletHomeCryptoTokensSettingsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            return new WalletHomeCryptoTokensSettingsPresenter((CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), resourceManager, (WalletHomeCryptoTokensSettingsFragment.ScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WalletHomeCryptoTokensSettingsFragment.ScreenType.class)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$14 */
    /* loaded from: classes3.dex */
    public static final class C134614 extends Lambda implements Function2<Scope, ParametersHolder, WalletTokenDetailsPresenter> {
        public static final C134614 INSTANCE = new C134614();

        C134614() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletTokenDetailsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new WalletTokenDetailsPresenter((TokenDetailsArgs) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(TokenDetailsArgs.class)), (AccountLevelInteractor) factory.get(Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, null), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (StakingInteractor) factory.get(Reflection.getOrCreateKotlinClass(StakingInteractor.class), null, null), (WalletCreateManager) factory.get(Reflection.getOrCreateKotlinClass(WalletCreateManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$16 */
    /* loaded from: classes3.dex */
    public static final class C134816 extends Lambda implements Function2<Scope, ParametersHolder, WalletTransactionsPresenter> {
        public static final C134816 INSTANCE = new C134816();

        C134816() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletTransactionsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            WalletTransactionsFragment.ScreenType screenType = (WalletTransactionsFragment.ScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WalletTransactionsFragment.ScreenType.class));
            TokenCode tokenCode = (TokenCode) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(TokenCode.class));
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
            RxEventBus rxEventBus = (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null);
            WalletInteractor walletInteractor = (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null);
            return new WalletTransactionsPresenter((CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), tokenCode, screenType, (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (HintsPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(HintsPreferenceHelper.class), null, null), resourceManager, rxEventBus, schedulersProvider, (StakingInteractor) factory.get(Reflection.getOrCreateKotlinClass(StakingInteractor.class), null, null), walletInteractor);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$17 */
    /* loaded from: classes3.dex */
    public static final class C134917 extends Lambda implements Function2<Scope, ParametersHolder, WalletNotificationDetailsPresenter> {
        public static final C134917 INSTANCE = new C134917();

        C134917() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletNotificationDetailsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new WalletNotificationDetailsPresenter((NotificationItem) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(NotificationItem.class)), (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$18 */
    /* loaded from: classes3.dex */
    public static final class C135018 extends Lambda implements Function2<Scope, ParametersHolder, WalletTransactionDetailsPresenter> {
        public static final C135018 INSTANCE = new C135018();

        C135018() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletTransactionDetailsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = (WalletTransactionDetailsBottomSheetDialog.ScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WalletTransactionDetailsBottomSheetDialog.ScreenType.class));
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            BoostInteractor boostInteractor = (BoostInteractor) factory.get(Reflection.getOrCreateKotlinClass(BoostInteractor.class), null, null);
            TelegramGateway telegramGateway = (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null);
            return new WalletTransactionDetailsPresenter(screenType, (CancelInteractor) factory.get(Reflection.getOrCreateKotlinClass(CancelInteractor.class), null, null), boostInteractor, resourceManager, (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), telegramGateway);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$19 */
    /* loaded from: classes3.dex */
    public static final class C135119 extends Lambda implements Function2<Scope, ParametersHolder, ReactionPresenter> {
        public static final C135119 INSTANCE = new C135119();

        C135119() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final ReactionPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            long longValue = ((Number) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Long.class))).longValue();
            return new ReactionPresenter((ReactionInteractor) factory.get(Reflection.getOrCreateKotlinClass(ReactionInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null), (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), longValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$21 */
    /* loaded from: classes3.dex */
    public static final class C135421 extends Lambda implements Function2<Scope, ParametersHolder, ProfilePresenter> {
        public static final C135421 INSTANCE = new C135421();

        C135421() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final ProfilePresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new ProfilePresenter(((Number) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Long.class))).longValue(), ((Number) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(Long.class))).longValue(), (AccountLevelInteractor) factory.get(Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, null), (AuthManager) factory.get(Reflection.getOrCreateKotlinClass(AuthManager.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null), (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (TwitterInteractor) factory.get(Reflection.getOrCreateKotlinClass(TwitterInteractor.class), null, null), (TwitterPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(TwitterPreferenceHelper.class), null, null), (WalletSessionInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletSessionInteractor.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$23 */
    /* loaded from: classes3.dex */
    public static final class C135623 extends Lambda implements Function2<Scope, ParametersHolder, TwitterPresenter> {
        public static final C135623 INSTANCE = new C135623();

        C135623() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TwitterPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new TwitterPresenter(((Number) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Long.class))).longValue(), ((Number) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(Long.class))).longValue(), (String) parametersHolder.elementAt(2, Reflection.getOrCreateKotlinClass(String.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TwitterInteractor) factory.get(Reflection.getOrCreateKotlinClass(TwitterInteractor.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$24 */
    /* loaded from: classes3.dex */
    public static final class C135724 extends Lambda implements Function2<Scope, ParametersHolder, TwitterSearchPresenter> {
        public static final C135724 INSTANCE = new C135724();

        C135724() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TwitterSearchPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            BlockchainType blockchainType = (BlockchainType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(BlockchainType.class));
            return new TwitterSearchPresenter((TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), blockchainType, (CryptoRecipientManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoRecipientManager.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null), (TwitterInteractor) factory.get(Reflection.getOrCreateKotlinClass(TwitterInteractor.class), null, null), (TwitterPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(TwitterPreferenceHelper.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$26 */
    /* loaded from: classes3.dex */
    public static final class C135926 extends Lambda implements Function2<Scope, ParametersHolder, CreateWalletTutorialPresenter> {
        public static final C135926 INSTANCE = new C135926();

        C135926() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CreateWalletTutorialPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new CreateWalletTutorialPresenter((TutorialType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(TutorialType.class)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$27 */
    /* loaded from: classes3.dex */
    public static final class C136027 extends Lambda implements Function2<Scope, ParametersHolder, BuyCryptoProductPresenter> {
        public static final C136027 INSTANCE = new C136027();

        C136027() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BuyCryptoProductPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new BuyCryptoProductPresenter((TokenCode) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(TokenCode.class)), (SimplexInteractor) factory.get(Reflection.getOrCreateKotlinClass(SimplexInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$28 */
    /* loaded from: classes3.dex */
    public static final class C136128 extends Lambda implements Function2<Scope, ParametersHolder, CryptoBuyCustomPricePresenter> {
        public static final C136128 INSTANCE = new C136128();

        C136128() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CryptoBuyCustomPricePresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new CryptoBuyCustomPricePresenter((CryptoBuyItem) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(CryptoBuyItem.class)), (SimplexInteractor) factory.get(Reflection.getOrCreateKotlinClass(SimplexInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (CustomPriceValidator) factory.get(Reflection.getOrCreateKotlinClass(CustomPriceValidator.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C13633 extends Lambda implements Function2<Scope, ParametersHolder, WalletSendRecipientPresenter> {
        public static final C13633 INSTANCE = new C13633();

        C13633() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletSendRecipientPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new WalletSendRecipientPresenter((NetworkType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(NetworkType.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoRecipientManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoRecipientManager.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$30 */
    /* loaded from: classes3.dex */
    public static final class C136430 extends Lambda implements Function2<Scope, ParametersHolder, CreateWalletPinPresenter> {
        public static final C136430 INSTANCE = new C136430();

        C136430() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CreateWalletPinPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new CreateWalletPinPresenter((WalletPinScreenArgs) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WalletPinScreenArgs.class)), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$31 */
    /* loaded from: classes3.dex */
    public static final class C136531 extends Lambda implements Function2<Scope, ParametersHolder, WalletPrivacySettingPresenter> {
        public static final C136531 INSTANCE = new C136531();

        C136531() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletPrivacySettingPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            int intValue = ((Number) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Integer.class))).intValue();
            CryptoPermissionInteractor cryptoPermissionInteractor = (CryptoPermissionInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoPermissionInteractor.class), null, null);
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            return new WalletPrivacySettingPresenter(intValue, (AccountLevelInteractor) factory.get(Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, null), cryptoPermissionInteractor, (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), resourceManager);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$32 */
    /* loaded from: classes3.dex */
    public static final class C136632 extends Lambda implements Function2<Scope, ParametersHolder, EnterWalletPinPresenter> {
        public static final C136632 INSTANCE = new C136632();

        C136632() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final EnterWalletPinPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            EnterPinCodeScreenType enterPinCodeScreenType = (EnterPinCodeScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(EnterPinCodeScreenType.class));
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
            return new EnterWalletPinPresenter(enterPinCodeScreenType, (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null), resourceManager, (PinCodeInteractor) factory.get(Reflection.getOrCreateKotlinClass(PinCodeInteractor.class), null, null), schedulersProvider);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$34 */
    /* loaded from: classes3.dex */
    public static final class C136834 extends Lambda implements Function2<Scope, ParametersHolder, WalletBinancePayHistoryPresenter> {
        public static final C136834 INSTANCE = new C136834();

        C136834() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletBinancePayHistoryPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            WalletBinancePayHistoryFragment.ScreenType screenType = (WalletBinancePayHistoryFragment.ScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WalletBinancePayHistoryFragment.ScreenType.class));
            String str = (String) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(String.class));
            BinanceInternalInteractor binanceInternalInteractor = (BinanceInternalInteractor) factory.get(Reflection.getOrCreateKotlinClass(BinanceInternalInteractor.class), null, null);
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
            return new WalletBinancePayHistoryPresenter(screenType, str, (BinancePayProcessManager) factory.get(Reflection.getOrCreateKotlinClass(BinancePayProcessManager.class), null, null), binanceInternalInteractor, (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), schedulersProvider, resourceManager);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$35 */
    /* loaded from: classes3.dex */
    public static final class C136935 extends Lambda implements Function2<Scope, ParametersHolder, WalletHomeBinancePayPresenter> {
        public static final C136935 INSTANCE = new C136935();

        C136935() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletHomeBinancePayPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            BinanceAPI binanceAPI = (BinanceAPI) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(BinanceAPI.class));
            BinancePayProcessManager binancePayProcessManager = (BinancePayProcessManager) factory.get(Reflection.getOrCreateKotlinClass(BinancePayProcessManager.class), null, null);
            BinancePayManager binancePayManager = (BinancePayManager) factory.get(Reflection.getOrCreateKotlinClass(BinancePayManager.class), null, null);
            CryptoPreferenceHelper cryptoPreferenceHelper = (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null);
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
            return new WalletHomeBinancePayPresenter(binanceAPI, binancePayProcessManager, (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (BinanceInternalInteractor) factory.get(Reflection.getOrCreateKotlinClass(BinanceInternalInteractor.class), null, null), schedulersProvider, cryptoPreferenceHelper, binancePayManager, (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), resourceManager);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$36 */
    /* loaded from: classes3.dex */
    public static final class C137036 extends Lambda implements Function2<Scope, ParametersHolder, WalletReceiveBinancePayPresenter> {
        public static final C137036 INSTANCE = new C137036();

        C137036() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletReceiveBinancePayPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            int intValue = ((Number) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Integer.class))).intValue();
            BinancePayScreenArgs binancePayScreenArgs = (BinancePayScreenArgs) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(BinancePayScreenArgs.class));
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            CryptoPreferenceHelper cryptoPreferenceHelper = (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null);
            SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
            BinanceInternalInteractor binanceInternalInteractor = (BinanceInternalInteractor) factory.get(Reflection.getOrCreateKotlinClass(BinanceInternalInteractor.class), null, null);
            return new WalletReceiveBinancePayPresenter(intValue, binancePayScreenArgs, (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null), (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null), binanceInternalInteractor, schedulersProvider, cryptoPreferenceHelper, resourceManager);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$37 */
    /* loaded from: classes3.dex */
    public static final class C137137 extends Lambda implements Function2<Scope, ParametersHolder, CreateWalletPresenter> {
        public static final C137137 INSTANCE = new C137137();

        C137137() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CreateWalletPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            CreateWalletScreenType createWalletScreenType = (CreateWalletScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(CreateWalletScreenType.class));
            CryptoWalletInteractor cryptoWalletInteractor = (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null);
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            RxEventBus rxEventBus = (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null);
            SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
            CryptoWalletInteractor cryptoWalletInteractor2 = (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null);
            return new CreateWalletPresenter(createWalletScreenType, (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), cryptoWalletInteractor, resourceManager, rxEventBus, schedulersProvider, cryptoWalletInteractor2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C13744 extends Lambda implements Function2<Scope, ParametersHolder, WalletSendAmountPresenter> {
        public static final C13744 INSTANCE = new C13744();

        C13744() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletSendAmountPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            int intValue = ((Number) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Integer.class))).intValue();
            TransferScreenArgs transferScreenArgs = (TransferScreenArgs) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(TransferScreenArgs.class));
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
            WalletInteractor walletInteractor = (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null);
            TelegramGateway telegramGateway = (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null);
            TelegramControllersGateway telegramControllersGateway = (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null);
            RxEventBus rxEventBus = (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null);
            return new WalletSendAmountPresenter(intValue, transferScreenArgs, walletInteractor, (DonationsInteractor) factory.get(Reflection.getOrCreateKotlinClass(DonationsInteractor.class), null, null), (BinanceInternalInteractor) factory.get(Reflection.getOrCreateKotlinClass(BinanceInternalInteractor.class), null, null), telegramGateway, telegramControllersGateway, resourceManager, (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), schedulersProvider, rxEventBus);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$41 */
    /* loaded from: classes3.dex */
    public static final class C137641 extends Lambda implements Function2<Scope, ParametersHolder, BlockchainWalletDetailsPresenter> {
        public static final C137641 INSTANCE = new C137641();

        C137641() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BlockchainWalletDetailsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new BlockchainWalletDetailsPresenter((BlockchainWalletItem) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(BlockchainWalletItem.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$45 */
    /* loaded from: classes3.dex */
    public static final class C138045 extends Lambda implements Function2<Scope, ParametersHolder, WalletSwapProcessPresenter> {
        public static final C138045 INSTANCE = new C138045();

        C138045() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletSwapProcessPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            WalletSwapProcessFragment.ScreenType screenType = (WalletSwapProcessFragment.ScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WalletSwapProcessFragment.ScreenType.class));
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
            BinanceInternalInteractor binanceInternalInteractor = (BinanceInternalInteractor) factory.get(Reflection.getOrCreateKotlinClass(BinanceInternalInteractor.class), null, null);
            return new WalletSwapProcessPresenter(screenType, (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null), binanceInternalInteractor, (SwapInteractor) factory.get(Reflection.getOrCreateKotlinClass(SwapInteractor.class), null, null), schedulersProvider, (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), resourceManager, (HintsPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(HintsPreferenceHelper.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$46 */
    /* loaded from: classes3.dex */
    public static final class C138146 extends Lambda implements Function2<Scope, ParametersHolder, WalletSelectTokenPresenter> {
        public static final C138146 INSTANCE = new C138146();

        C138146() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletSelectTokenPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            SelectableType selectableType = (SelectableType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(SelectableType.class));
            SelectableToken selectableToken = (SelectableToken) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(SelectableToken.class));
            List list = (List) parametersHolder.elementAt(2, Reflection.getOrCreateKotlinClass(List.class));
            NetworkType networkType = (NetworkType) parametersHolder.elementAt(3, Reflection.getOrCreateKotlinClass(NetworkType.class));
            boolean booleanValue = ((Boolean) parametersHolder.elementAt(4, Reflection.getOrCreateKotlinClass(Boolean.class))).booleanValue();
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            return new WalletSelectTokenPresenter(selectableType, selectableToken, list, networkType, booleanValue, (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null), (BinanceInternalInteractor) factory.get(Reflection.getOrCreateKotlinClass(BinanceInternalInteractor.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), resourceManager);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$47 */
    /* loaded from: classes3.dex */
    public static final class C138247 extends Lambda implements Function2<Scope, ParametersHolder, WalletSwapFeePresenter> {
        public static final C138247 INSTANCE = new C138247();

        C138247() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletSwapFeePresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
            return new WalletSwapFeePresenter((SwapFeeScreenArgs) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(SwapFeeScreenArgs.class)), (SwapInteractor) factory.get(Reflection.getOrCreateKotlinClass(SwapInteractor.class), null, null), schedulersProvider, (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$5 */
    /* loaded from: classes3.dex */
    public static final class C13855 extends Lambda implements Function2<Scope, ParametersHolder, WalletDonationsPresenter> {
        public static final C13855 INSTANCE = new C13855();

        C13855() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletDonationsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            int intValue = ((Number) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Integer.class))).intValue();
            long longValue = ((Number) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(Long.class))).longValue();
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
            return new WalletDonationsPresenter(longValue, intValue, (DonationsInteractor) factory.get(Reflection.getOrCreateKotlinClass(DonationsInteractor.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), resourceManager, schedulersProvider, (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$54 */
    /* loaded from: classes3.dex */
    public static final class C139054 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectSessionDetailsPresenter> {
        public static final C139054 INSTANCE = new C139054();

        C139054() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletConnectSessionDetailsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new WalletConnectSessionDetailsPresenter((WalletConnectSessionItem) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WalletConnectSessionItem.class)), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$55 */
    /* loaded from: classes3.dex */
    public static final class C139155 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectNewSessionPresenter> {
        public static final C139155 INSTANCE = new C139155();

        C139155() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletConnectNewSessionPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new WalletConnectNewSessionPresenter((WCSessionStoreItem) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WCSessionStoreItem.class)), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (WalletConnectManager) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$56 */
    /* loaded from: classes3.dex */
    public static final class C139256 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectTransactionPresenter> {
        public static final C139256 INSTANCE = new C139256();

        C139256() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletConnectTransactionPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new WalletConnectTransactionPresenter((WalletConnectTransactionScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WalletConnectTransactionScreenType.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (WalletConnectInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectInteractor.class), null, null), (WalletConnectManager) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$57 */
    /* loaded from: classes3.dex */
    public static final class C139357 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectMessageSignPresenter> {
        public static final C139357 INSTANCE = new C139357();

        C139357() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletConnectMessageSignPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            long longValue = ((Number) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Long.class))).longValue();
            WalletConnectSessionItem walletConnectSessionItem = (WalletConnectSessionItem) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(WalletConnectSessionItem.class));
            WCEthereumSignMessage wCEthereumSignMessage = (WCEthereumSignMessage) parametersHolder.elementAt(2, Reflection.getOrCreateKotlinClass(WCEthereumSignMessage.class));
            CryptoAccessManager cryptoAccessManager = (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null);
            return new WalletConnectMessageSignPresenter(longValue, walletConnectSessionItem, wCEthereumSignMessage, (WalletConnectManager) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectManager.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), cryptoAccessManager);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$58 */
    /* loaded from: classes3.dex */
    public static final class C139458 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectSwitchNetworkPresenter> {
        public static final C139458 INSTANCE = new C139458();

        C139458() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletConnectSwitchNetworkPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new WalletConnectSwitchNetworkPresenter(((Number) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Long.class))).longValue(), (WalletConnectSessionItem) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(WalletConnectSessionItem.class)), (NetworkType) parametersHolder.elementAt(2, Reflection.getOrCreateKotlinClass(NetworkType.class)), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (WalletConnectManager) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$6 */
    /* loaded from: classes3.dex */
    public static final class C13966 extends Lambda implements Function2<Scope, ParametersHolder, ChatPresenter> {
        public static final C13966 INSTANCE = new C13966();

        C13966() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final ChatPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            TLRPC$Chat tLRPC$Chat = (TLRPC$Chat) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(TLRPC$Chat.class));
            TelegramApi telegramApi = (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null);
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            WalletSessionInteractor walletSessionInteractor = (WalletSessionInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletSessionInteractor.class), null, null);
            SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
            GoogleServicesInteractor googleServicesInteractor = (GoogleServicesInteractor) factory.get(Reflection.getOrCreateKotlinClass(GoogleServicesInteractor.class), null, null);
            BinancePayProcessManager binancePayProcessManager = (BinancePayProcessManager) factory.get(Reflection.getOrCreateKotlinClass(BinancePayProcessManager.class), null, null);
            TelegramGateway telegramGateway = (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null);
            MultiReplyInteractor multiReplyInteractor = (MultiReplyInteractor) factory.get(Reflection.getOrCreateKotlinClass(MultiReplyInteractor.class), null, null);
            TranslationInteractor translationInteractor = (TranslationInteractor) factory.get(Reflection.getOrCreateKotlinClass(TranslationInteractor.class), null, null);
            return new ChatPresenter(tLRPC$Chat, telegramApi, (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), resourceManager, walletSessionInteractor, (DonationsInteractor) factory.get(Reflection.getOrCreateKotlinClass(DonationsInteractor.class), null, null), schedulersProvider, googleServicesInteractor, binancePayProcessManager, telegramGateway, multiReplyInteractor, translationInteractor);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$61 */
    /* loaded from: classes3.dex */
    public static final class C139861 extends Lambda implements Function2<Scope, ParametersHolder, ChannelDetailsPresenter> {
        public static final C139861 INSTANCE = new C139861();

        C139861() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final ChannelDetailsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new ChannelDetailsPresenter((CampaignItem) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(CampaignItem.class)), (TLRPC$Chat) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(TLRPC$Chat.class)), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$62 */
    /* loaded from: classes3.dex */
    public static final class C139962 extends Lambda implements Function2<Scope, ParametersHolder, CatalogAllPresenter> {
        public static final C139962 INSTANCE = new C139962();

        C139962() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CatalogAllPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new CatalogAllPresenter((ChatType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(ChatType.class)), (CatalogInteractor) factory.get(Reflection.getOrCreateKotlinClass(CatalogInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$63 */
    /* loaded from: classes3.dex */
    public static final class C140063 extends Lambda implements Function2<Scope, ParametersHolder, CatalogCategoriesPresenter> {
        public static final C140063 INSTANCE = new C140063();

        C140063() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CatalogCategoriesPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new CatalogCategoriesPresenter((ChatType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(ChatType.class)), (CatalogInteractor) factory.get(Reflection.getOrCreateKotlinClass(CatalogInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$64 */
    /* loaded from: classes3.dex */
    public static final class C140164 extends Lambda implements Function2<Scope, ParametersHolder, CatalogUserChannelsPresenter> {
        public static final C140164 INSTANCE = new C140164();

        C140164() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CatalogUserChannelsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new CatalogUserChannelsPresenter((ChatType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(ChatType.class)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$66 */
    /* loaded from: classes3.dex */
    public static final class C140366 extends Lambda implements Function2<Scope, ParametersHolder, StakingProgrammesPresenter> {
        public static final C140366 INSTANCE = new C140366();

        C140366() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final StakingProgrammesPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new StakingProgrammesPresenter((StakingTabType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(StakingTabType.class)), (AccountLevelInteractor) factory.get(Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (StakingInteractor) factory.get(Reflection.getOrCreateKotlinClass(StakingInteractor.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$67 */
    /* loaded from: classes3.dex */
    public static final class C140467 extends Lambda implements Function2<Scope, ParametersHolder, StakingConditionsPresenter> {
        public static final C140467 INSTANCE = new C140467();

        C140467() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final StakingConditionsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new StakingConditionsPresenter((StakingDetailsItem) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(StakingDetailsItem.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$68 */
    /* loaded from: classes3.dex */
    public static final class C140568 extends Lambda implements Function2<Scope, ParametersHolder, StakingTransactionPresenter> {
        public static final C140568 INSTANCE = new C140568();

        C140568() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final StakingTransactionPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new StakingTransactionPresenter((Double) parametersHolder.elementAt(2, Reflection.getOrCreateKotlinClass(Double.class)), ((Number) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Integer.class))).intValue(), (StakingDetailsItem) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(StakingDetailsItem.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (StakingInteractor) factory.get(Reflection.getOrCreateKotlinClass(StakingInteractor.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$70 */
    /* loaded from: classes3.dex */
    public static final class C140870 extends Lambda implements Function2<Scope, ParametersHolder, StakingCalculatorPresenter> {
        public static final C140870 INSTANCE = new C140870();

        C140870() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final StakingCalculatorPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new StakingCalculatorPresenter((StakingDetailsItem) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(StakingDetailsItem.class)), (AccountLevelInteractor) factory.get(Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Module module) {
        invoke2(module);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Module module) {
        List emptyList;
        List emptyList2;
        List emptyList3;
        List emptyList4;
        List emptyList5;
        List emptyList6;
        List emptyList7;
        List emptyList8;
        List emptyList9;
        List emptyList10;
        List emptyList11;
        List emptyList12;
        List emptyList13;
        List emptyList14;
        List emptyList15;
        List emptyList16;
        List emptyList17;
        List emptyList18;
        List emptyList19;
        List emptyList20;
        List emptyList21;
        List emptyList22;
        List emptyList23;
        List emptyList24;
        List emptyList25;
        List emptyList26;
        List emptyList27;
        List emptyList28;
        List emptyList29;
        List emptyList30;
        List emptyList31;
        List emptyList32;
        List emptyList33;
        List emptyList34;
        List emptyList35;
        List emptyList36;
        List emptyList37;
        List emptyList38;
        List emptyList39;
        List emptyList40;
        List emptyList41;
        List emptyList42;
        List emptyList43;
        List emptyList44;
        List emptyList45;
        List emptyList46;
        List emptyList47;
        List emptyList48;
        List emptyList49;
        List emptyList50;
        List emptyList51;
        List emptyList52;
        List emptyList53;
        List emptyList54;
        List emptyList55;
        List emptyList56;
        List emptyList57;
        List emptyList58;
        List emptyList59;
        List emptyList60;
        List emptyList61;
        List emptyList62;
        List emptyList63;
        List emptyList64;
        List emptyList65;
        List emptyList66;
        List emptyList67;
        List emptyList68;
        List emptyList69;
        List emptyList70;
        List emptyList71;
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C13411 c13411 = C13411.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(TranslationPresenter.class), null, c13411, kind, emptyList));
        module.indexPrimaryType(factoryInstanceFactory);
        new Pair(module, factoryInstanceFactory);
        C13522 c13522 = C13522.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory2 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(WalletAttachAlertPresenter.class), null, c13522, kind, emptyList2));
        module.indexPrimaryType(factoryInstanceFactory2);
        new Pair(module, factoryInstanceFactory2);
        C13633 c13633 = C13633.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory3 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(WalletSendRecipientPresenter.class), null, c13633, kind, emptyList3));
        module.indexPrimaryType(factoryInstanceFactory3);
        new Pair(module, factoryInstanceFactory3);
        C13744 c13744 = C13744.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory4 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(WalletSendAmountPresenter.class), null, c13744, kind, emptyList4));
        module.indexPrimaryType(factoryInstanceFactory4);
        new Pair(module, factoryInstanceFactory4);
        C13855 c13855 = C13855.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory5 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(WalletDonationsPresenter.class), null, c13855, kind, emptyList5));
        module.indexPrimaryType(factoryInstanceFactory5);
        new Pair(module, factoryInstanceFactory5);
        C13966 c13966 = C13966.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory6 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(ChatPresenter.class), null, c13966, kind, emptyList6));
        module.indexPrimaryType(factoryInstanceFactory6);
        new Pair(module, factoryInstanceFactory6);
        C14077 c14077 = C14077.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory7 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(WalletRootPresenter.class), null, c14077, kind, emptyList7));
        module.indexPrimaryType(factoryInstanceFactory7);
        new Pair(module, factoryInstanceFactory7);
        C14108 c14108 = C14108.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory8 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(WalletSettingsPresenter.class), null, c14108, kind, emptyList8));
        module.indexPrimaryType(factoryInstanceFactory8);
        new Pair(module, factoryInstanceFactory8);
        C14119 c14119 = C14119.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory9 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(PhotoViewerPresenter.class), null, c14119, kind, emptyList9));
        module.indexPrimaryType(factoryInstanceFactory9);
        new Pair(module, factoryInstanceFactory9);
        C134210 c134210 = C134210.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory10 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(WalletHomePresenter.class), null, c134210, kind, emptyList10));
        module.indexPrimaryType(factoryInstanceFactory10);
        new Pair(module, factoryInstanceFactory10);
        C134311 c134311 = C134311.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory11 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(WalletHomeCryptoPresenter.class), null, c134311, kind, emptyList11));
        module.indexPrimaryType(factoryInstanceFactory11);
        new Pair(module, factoryInstanceFactory11);
        C134412 c134412 = C134412.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory12 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(WalletHomeCryptoTokensSettingsPresenter.class), null, c134412, kind, emptyList12));
        module.indexPrimaryType(factoryInstanceFactory12);
        new Pair(module, factoryInstanceFactory12);
        C134513 c134513 = C134513.INSTANCE;
        StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory13 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(WalletHomeServicesPresenter.class), null, c134513, kind, emptyList13));
        module.indexPrimaryType(factoryInstanceFactory13);
        new Pair(module, factoryInstanceFactory13);
        C134614 c134614 = C134614.INSTANCE;
        StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory14 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(WalletTokenDetailsPresenter.class), null, c134614, kind, emptyList14));
        module.indexPrimaryType(factoryInstanceFactory14);
        new Pair(module, factoryInstanceFactory14);
        C134715 c134715 = C134715.INSTANCE;
        StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory15 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(WalletNotificationsPresenter.class), null, c134715, kind, emptyList15));
        module.indexPrimaryType(factoryInstanceFactory15);
        new Pair(module, factoryInstanceFactory15);
        C134816 c134816 = C134816.INSTANCE;
        StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
        emptyList16 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory16 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(WalletTransactionsPresenter.class), null, c134816, kind, emptyList16));
        module.indexPrimaryType(factoryInstanceFactory16);
        new Pair(module, factoryInstanceFactory16);
        C134917 c134917 = C134917.INSTANCE;
        StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
        emptyList17 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory17 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(WalletNotificationDetailsPresenter.class), null, c134917, kind, emptyList17));
        module.indexPrimaryType(factoryInstanceFactory17);
        new Pair(module, factoryInstanceFactory17);
        C135018 c135018 = C135018.INSTANCE;
        StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
        emptyList18 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory18 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(WalletTransactionDetailsPresenter.class), null, c135018, kind, emptyList18));
        module.indexPrimaryType(factoryInstanceFactory18);
        new Pair(module, factoryInstanceFactory18);
        C135119 c135119 = C135119.INSTANCE;
        StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
        emptyList19 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory19 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(ReactionPresenter.class), null, c135119, kind, emptyList19));
        module.indexPrimaryType(factoryInstanceFactory19);
        new Pair(module, factoryInstanceFactory19);
        C135320 c135320 = C135320.INSTANCE;
        StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
        emptyList20 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory20 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(ContactsPresenter.class), null, c135320, kind, emptyList20));
        module.indexPrimaryType(factoryInstanceFactory20);
        new Pair(module, factoryInstanceFactory20);
        C135421 c135421 = C135421.INSTANCE;
        StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
        emptyList21 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory21 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(ProfilePresenter.class), null, c135421, kind, emptyList21));
        module.indexPrimaryType(factoryInstanceFactory21);
        new Pair(module, factoryInstanceFactory21);
        C135522 c135522 = C135522.INSTANCE;
        StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
        emptyList22 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory22 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(EmojiViewPresenter.class), null, c135522, kind, emptyList22));
        module.indexPrimaryType(factoryInstanceFactory22);
        new Pair(module, factoryInstanceFactory22);
        C135623 c135623 = C135623.INSTANCE;
        StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
        emptyList23 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory23 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(TwitterPresenter.class), null, c135623, kind, emptyList23));
        module.indexPrimaryType(factoryInstanceFactory23);
        new Pair(module, factoryInstanceFactory23);
        C135724 c135724 = C135724.INSTANCE;
        StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
        emptyList24 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory24 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(TwitterSearchPresenter.class), null, c135724, kind, emptyList24));
        module.indexPrimaryType(factoryInstanceFactory24);
        new Pair(module, factoryInstanceFactory24);
        C135825 c135825 = C135825.INSTANCE;
        StringQualifier rootScopeQualifier25 = companion.getRootScopeQualifier();
        emptyList25 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory25 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier25, Reflection.getOrCreateKotlinClass(TwitterAuthPresenter.class), null, c135825, kind, emptyList25));
        module.indexPrimaryType(factoryInstanceFactory25);
        new Pair(module, factoryInstanceFactory25);
        C135926 c135926 = C135926.INSTANCE;
        StringQualifier rootScopeQualifier26 = companion.getRootScopeQualifier();
        emptyList26 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory26 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier26, Reflection.getOrCreateKotlinClass(CreateWalletTutorialPresenter.class), null, c135926, kind, emptyList26));
        module.indexPrimaryType(factoryInstanceFactory26);
        new Pair(module, factoryInstanceFactory26);
        C136027 c136027 = C136027.INSTANCE;
        StringQualifier rootScopeQualifier27 = companion.getRootScopeQualifier();
        emptyList27 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory27 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier27, Reflection.getOrCreateKotlinClass(BuyCryptoProductPresenter.class), null, c136027, kind, emptyList27));
        module.indexPrimaryType(factoryInstanceFactory27);
        new Pair(module, factoryInstanceFactory27);
        C136128 c136128 = C136128.INSTANCE;
        StringQualifier rootScopeQualifier28 = companion.getRootScopeQualifier();
        emptyList28 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory28 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier28, Reflection.getOrCreateKotlinClass(CryptoBuyCustomPricePresenter.class), null, c136128, kind, emptyList28));
        module.indexPrimaryType(factoryInstanceFactory28);
        new Pair(module, factoryInstanceFactory28);
        C136229 c136229 = C136229.INSTANCE;
        StringQualifier rootScopeQualifier29 = companion.getRootScopeQualifier();
        emptyList29 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory29 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier29, Reflection.getOrCreateKotlinClass(CreateWalletPasswordPresenter.class), null, c136229, kind, emptyList29));
        module.indexPrimaryType(factoryInstanceFactory29);
        new Pair(module, factoryInstanceFactory29);
        C136430 c136430 = C136430.INSTANCE;
        StringQualifier rootScopeQualifier30 = companion.getRootScopeQualifier();
        emptyList30 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory30 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier30, Reflection.getOrCreateKotlinClass(CreateWalletPinPresenter.class), null, c136430, kind, emptyList30));
        module.indexPrimaryType(factoryInstanceFactory30);
        new Pair(module, factoryInstanceFactory30);
        C136531 c136531 = C136531.INSTANCE;
        StringQualifier rootScopeQualifier31 = companion.getRootScopeQualifier();
        emptyList31 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory31 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier31, Reflection.getOrCreateKotlinClass(WalletPrivacySettingPresenter.class), null, c136531, kind, emptyList31));
        module.indexPrimaryType(factoryInstanceFactory31);
        new Pair(module, factoryInstanceFactory31);
        C136632 c136632 = C136632.INSTANCE;
        StringQualifier rootScopeQualifier32 = companion.getRootScopeQualifier();
        emptyList32 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory32 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier32, Reflection.getOrCreateKotlinClass(EnterWalletPinPresenter.class), null, c136632, kind, emptyList32));
        module.indexPrimaryType(factoryInstanceFactory32);
        new Pair(module, factoryInstanceFactory32);
        C136733 c136733 = C136733.INSTANCE;
        StringQualifier rootScopeQualifier33 = companion.getRootScopeQualifier();
        emptyList33 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory33 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier33, Reflection.getOrCreateKotlinClass(EnterWalletPasswordPresenter.class), null, c136733, kind, emptyList33));
        module.indexPrimaryType(factoryInstanceFactory33);
        new Pair(module, factoryInstanceFactory33);
        C136834 c136834 = C136834.INSTANCE;
        StringQualifier rootScopeQualifier34 = companion.getRootScopeQualifier();
        emptyList34 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory34 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier34, Reflection.getOrCreateKotlinClass(WalletBinancePayHistoryPresenter.class), null, c136834, kind, emptyList34));
        module.indexPrimaryType(factoryInstanceFactory34);
        new Pair(module, factoryInstanceFactory34);
        C136935 c136935 = C136935.INSTANCE;
        StringQualifier rootScopeQualifier35 = companion.getRootScopeQualifier();
        emptyList35 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory35 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier35, Reflection.getOrCreateKotlinClass(WalletHomeBinancePayPresenter.class), null, c136935, kind, emptyList35));
        module.indexPrimaryType(factoryInstanceFactory35);
        new Pair(module, factoryInstanceFactory35);
        C137036 c137036 = C137036.INSTANCE;
        StringQualifier rootScopeQualifier36 = companion.getRootScopeQualifier();
        emptyList36 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory36 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier36, Reflection.getOrCreateKotlinClass(WalletReceiveBinancePayPresenter.class), null, c137036, kind, emptyList36));
        module.indexPrimaryType(factoryInstanceFactory36);
        new Pair(module, factoryInstanceFactory36);
        C137137 c137137 = C137137.INSTANCE;
        StringQualifier rootScopeQualifier37 = companion.getRootScopeQualifier();
        emptyList37 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory37 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier37, Reflection.getOrCreateKotlinClass(CreateWalletPresenter.class), null, c137137, kind, emptyList37));
        module.indexPrimaryType(factoryInstanceFactory37);
        new Pair(module, factoryInstanceFactory37);
        C137238 c137238 = C137238.INSTANCE;
        StringQualifier rootScopeQualifier38 = companion.getRootScopeQualifier();
        emptyList38 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory38 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier38, Reflection.getOrCreateKotlinClass(SecretWordsCountPresenter.class), null, c137238, kind, emptyList38));
        module.indexPrimaryType(factoryInstanceFactory38);
        new Pair(module, factoryInstanceFactory38);
        C137339 c137339 = C137339.INSTANCE;
        StringQualifier rootScopeQualifier39 = companion.getRootScopeQualifier();
        emptyList39 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory39 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier39, Reflection.getOrCreateKotlinClass(WalletAccountSettingsPresenter.class), null, c137339, kind, emptyList39));
        module.indexPrimaryType(factoryInstanceFactory39);
        new Pair(module, factoryInstanceFactory39);
        C137540 c137540 = C137540.INSTANCE;
        StringQualifier rootScopeQualifier40 = companion.getRootScopeQualifier();
        emptyList40 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory40 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier40, Reflection.getOrCreateKotlinClass(BlockchainsManagementPresenter.class), null, c137540, kind, emptyList40));
        module.indexPrimaryType(factoryInstanceFactory40);
        new Pair(module, factoryInstanceFactory40);
        C137641 c137641 = C137641.INSTANCE;
        StringQualifier rootScopeQualifier41 = companion.getRootScopeQualifier();
        emptyList41 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory41 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier41, Reflection.getOrCreateKotlinClass(BlockchainWalletDetailsPresenter.class), null, c137641, kind, emptyList41));
        module.indexPrimaryType(factoryInstanceFactory41);
        new Pair(module, factoryInstanceFactory41);
        C137742 c137742 = C137742.INSTANCE;
        StringQualifier rootScopeQualifier42 = companion.getRootScopeQualifier();
        emptyList42 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory42 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier42, Reflection.getOrCreateKotlinClass(BackupWordSwitcherPresenter.class), null, c137742, kind, emptyList42));
        module.indexPrimaryType(factoryInstanceFactory42);
        new Pair(module, factoryInstanceFactory42);
        C137843 c137843 = C137843.INSTANCE;
        StringQualifier rootScopeQualifier43 = companion.getRootScopeQualifier();
        emptyList43 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory43 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier43, Reflection.getOrCreateKotlinClass(AddressMismatchPresenter.class), null, c137843, kind, emptyList43));
        module.indexPrimaryType(factoryInstanceFactory43);
        new Pair(module, factoryInstanceFactory43);
        C137944 c137944 = C137944.INSTANCE;
        StringQualifier rootScopeQualifier44 = companion.getRootScopeQualifier();
        emptyList44 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory44 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier44, Reflection.getOrCreateKotlinClass(WalletSwapProtocolsPresenter.class), null, c137944, kind, emptyList44));
        module.indexPrimaryType(factoryInstanceFactory44);
        new Pair(module, factoryInstanceFactory44);
        C138045 c138045 = C138045.INSTANCE;
        StringQualifier rootScopeQualifier45 = companion.getRootScopeQualifier();
        emptyList45 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory45 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier45, Reflection.getOrCreateKotlinClass(WalletSwapProcessPresenter.class), null, c138045, kind, emptyList45));
        module.indexPrimaryType(factoryInstanceFactory45);
        new Pair(module, factoryInstanceFactory45);
        C138146 c138146 = C138146.INSTANCE;
        StringQualifier rootScopeQualifier46 = companion.getRootScopeQualifier();
        emptyList46 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory46 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier46, Reflection.getOrCreateKotlinClass(WalletSelectTokenPresenter.class), null, c138146, kind, emptyList46));
        module.indexPrimaryType(factoryInstanceFactory46);
        new Pair(module, factoryInstanceFactory46);
        C138247 c138247 = C138247.INSTANCE;
        StringQualifier rootScopeQualifier47 = companion.getRootScopeQualifier();
        emptyList47 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory47 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier47, Reflection.getOrCreateKotlinClass(WalletSwapFeePresenter.class), null, c138247, kind, emptyList47));
        module.indexPrimaryType(factoryInstanceFactory47);
        new Pair(module, factoryInstanceFactory47);
        C138348 c138348 = C138348.INSTANCE;
        StringQualifier rootScopeQualifier48 = companion.getRootScopeQualifier();
        emptyList48 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory48 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier48, Reflection.getOrCreateKotlinClass(SimplexWebViewProcessingPresenter.class), null, c138348, kind, emptyList48));
        module.indexPrimaryType(factoryInstanceFactory48);
        new Pair(module, factoryInstanceFactory48);
        C138449 c138449 = C138449.INSTANCE;
        StringQualifier rootScopeQualifier49 = companion.getRootScopeQualifier();
        emptyList49 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory49 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier49, Reflection.getOrCreateKotlinClass(WalletAppearanceSettingsPresenter.class), null, c138449, kind, emptyList49));
        module.indexPrimaryType(factoryInstanceFactory49);
        new Pair(module, factoryInstanceFactory49);
        C138650 c138650 = C138650.INSTANCE;
        StringQualifier rootScopeQualifier50 = companion.getRootScopeQualifier();
        emptyList50 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory50 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier50, Reflection.getOrCreateKotlinClass(WalletAirdropPresenter.class), null, c138650, kind, emptyList50));
        module.indexPrimaryType(factoryInstanceFactory50);
        new Pair(module, factoryInstanceFactory50);
        C138751 c138751 = C138751.INSTANCE;
        StringQualifier rootScopeQualifier51 = companion.getRootScopeQualifier();
        emptyList51 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory51 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier51, Reflection.getOrCreateKotlinClass(WalletAirdropDialogPresenter.class), null, c138751, kind, emptyList51));
        module.indexPrimaryType(factoryInstanceFactory51);
        new Pair(module, factoryInstanceFactory51);
        C138852 c138852 = C138852.INSTANCE;
        StringQualifier rootScopeQualifier52 = companion.getRootScopeQualifier();
        emptyList52 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory52 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier52, Reflection.getOrCreateKotlinClass(DebugPresenter.class), null, c138852, kind, emptyList52));
        module.indexPrimaryType(factoryInstanceFactory52);
        new Pair(module, factoryInstanceFactory52);
        C138953 c138953 = C138953.INSTANCE;
        StringQualifier rootScopeQualifier53 = companion.getRootScopeQualifier();
        emptyList53 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory53 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier53, Reflection.getOrCreateKotlinClass(WalletConnectPresenter.class), null, c138953, kind, emptyList53));
        module.indexPrimaryType(factoryInstanceFactory53);
        new Pair(module, factoryInstanceFactory53);
        C139054 c139054 = C139054.INSTANCE;
        StringQualifier rootScopeQualifier54 = companion.getRootScopeQualifier();
        emptyList54 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory54 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier54, Reflection.getOrCreateKotlinClass(WalletConnectSessionDetailsPresenter.class), null, c139054, kind, emptyList54));
        module.indexPrimaryType(factoryInstanceFactory54);
        new Pair(module, factoryInstanceFactory54);
        C139155 c139155 = C139155.INSTANCE;
        StringQualifier rootScopeQualifier55 = companion.getRootScopeQualifier();
        emptyList55 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory55 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier55, Reflection.getOrCreateKotlinClass(WalletConnectNewSessionPresenter.class), null, c139155, kind, emptyList55));
        module.indexPrimaryType(factoryInstanceFactory55);
        new Pair(module, factoryInstanceFactory55);
        C139256 c139256 = C139256.INSTANCE;
        StringQualifier rootScopeQualifier56 = companion.getRootScopeQualifier();
        emptyList56 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory56 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier56, Reflection.getOrCreateKotlinClass(WalletConnectTransactionPresenter.class), null, c139256, kind, emptyList56));
        module.indexPrimaryType(factoryInstanceFactory56);
        new Pair(module, factoryInstanceFactory56);
        C139357 c139357 = C139357.INSTANCE;
        StringQualifier rootScopeQualifier57 = companion.getRootScopeQualifier();
        emptyList57 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory57 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier57, Reflection.getOrCreateKotlinClass(WalletConnectMessageSignPresenter.class), null, c139357, kind, emptyList57));
        module.indexPrimaryType(factoryInstanceFactory57);
        new Pair(module, factoryInstanceFactory57);
        C139458 c139458 = C139458.INSTANCE;
        StringQualifier rootScopeQualifier58 = companion.getRootScopeQualifier();
        emptyList58 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory58 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier58, Reflection.getOrCreateKotlinClass(WalletConnectSwitchNetworkPresenter.class), null, c139458, kind, emptyList58));
        module.indexPrimaryType(factoryInstanceFactory58);
        new Pair(module, factoryInstanceFactory58);
        C139559 c139559 = C139559.INSTANCE;
        StringQualifier rootScopeQualifier59 = companion.getRootScopeQualifier();
        emptyList59 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory59 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier59, Reflection.getOrCreateKotlinClass(CatalogRootPresenter.class), null, c139559, kind, emptyList59));
        module.indexPrimaryType(factoryInstanceFactory59);
        new Pair(module, factoryInstanceFactory59);
        C139760 c139760 = C139760.INSTANCE;
        StringQualifier rootScopeQualifier60 = companion.getRootScopeQualifier();
        emptyList60 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory60 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier60, Reflection.getOrCreateKotlinClass(CatalogPresenter.class), null, c139760, kind, emptyList60));
        module.indexPrimaryType(factoryInstanceFactory60);
        new Pair(module, factoryInstanceFactory60);
        C139861 c139861 = C139861.INSTANCE;
        StringQualifier rootScopeQualifier61 = companion.getRootScopeQualifier();
        emptyList61 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory61 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier61, Reflection.getOrCreateKotlinClass(ChannelDetailsPresenter.class), null, c139861, kind, emptyList61));
        module.indexPrimaryType(factoryInstanceFactory61);
        new Pair(module, factoryInstanceFactory61);
        C139962 c139962 = C139962.INSTANCE;
        StringQualifier rootScopeQualifier62 = companion.getRootScopeQualifier();
        emptyList62 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory62 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier62, Reflection.getOrCreateKotlinClass(CatalogAllPresenter.class), null, c139962, kind, emptyList62));
        module.indexPrimaryType(factoryInstanceFactory62);
        new Pair(module, factoryInstanceFactory62);
        C140063 c140063 = C140063.INSTANCE;
        StringQualifier rootScopeQualifier63 = companion.getRootScopeQualifier();
        emptyList63 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory63 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier63, Reflection.getOrCreateKotlinClass(CatalogCategoriesPresenter.class), null, c140063, kind, emptyList63));
        module.indexPrimaryType(factoryInstanceFactory63);
        new Pair(module, factoryInstanceFactory63);
        C140164 c140164 = C140164.INSTANCE;
        StringQualifier rootScopeQualifier64 = companion.getRootScopeQualifier();
        emptyList64 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory64 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier64, Reflection.getOrCreateKotlinClass(CatalogUserChannelsPresenter.class), null, c140164, kind, emptyList64));
        module.indexPrimaryType(factoryInstanceFactory64);
        new Pair(module, factoryInstanceFactory64);
        C140265 c140265 = C140265.INSTANCE;
        StringQualifier rootScopeQualifier65 = companion.getRootScopeQualifier();
        emptyList65 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory65 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier65, Reflection.getOrCreateKotlinClass(StakingPresenter.class), null, c140265, kind, emptyList65));
        module.indexPrimaryType(factoryInstanceFactory65);
        new Pair(module, factoryInstanceFactory65);
        C140366 c140366 = C140366.INSTANCE;
        StringQualifier rootScopeQualifier66 = companion.getRootScopeQualifier();
        emptyList66 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory66 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier66, Reflection.getOrCreateKotlinClass(StakingProgrammesPresenter.class), null, c140366, kind, emptyList66));
        module.indexPrimaryType(factoryInstanceFactory66);
        new Pair(module, factoryInstanceFactory66);
        C140467 c140467 = C140467.INSTANCE;
        StringQualifier rootScopeQualifier67 = companion.getRootScopeQualifier();
        emptyList67 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory67 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier67, Reflection.getOrCreateKotlinClass(StakingConditionsPresenter.class), null, c140467, kind, emptyList67));
        module.indexPrimaryType(factoryInstanceFactory67);
        new Pair(module, factoryInstanceFactory67);
        C140568 c140568 = C140568.INSTANCE;
        StringQualifier rootScopeQualifier68 = companion.getRootScopeQualifier();
        emptyList68 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory68 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier68, Reflection.getOrCreateKotlinClass(StakingTransactionPresenter.class), null, c140568, kind, emptyList68));
        module.indexPrimaryType(factoryInstanceFactory68);
        new Pair(module, factoryInstanceFactory68);
        C140669 c140669 = C140669.INSTANCE;
        StringQualifier rootScopeQualifier69 = companion.getRootScopeQualifier();
        emptyList69 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory69 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier69, Reflection.getOrCreateKotlinClass(StakingOperationsPresenter.class), null, c140669, kind, emptyList69));
        module.indexPrimaryType(factoryInstanceFactory69);
        new Pair(module, factoryInstanceFactory69);
        C140870 c140870 = C140870.INSTANCE;
        StringQualifier rootScopeQualifier70 = companion.getRootScopeQualifier();
        emptyList70 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory70 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier70, Reflection.getOrCreateKotlinClass(StakingCalculatorPresenter.class), null, c140870, kind, emptyList70));
        module.indexPrimaryType(factoryInstanceFactory70);
        new Pair(module, factoryInstanceFactory70);
        C140971 c140971 = C140971.INSTANCE;
        StringQualifier rootScopeQualifier71 = companion.getRootScopeQualifier();
        emptyList71 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory71 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier71, Reflection.getOrCreateKotlinClass(StakingCalculatorProgrammesPresenter.class), null, c140971, kind, emptyList71));
        module.indexPrimaryType(factoryInstanceFactory71);
        new Pair(module, factoryInstanceFactory71);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$15 */
    /* loaded from: classes3.dex */
    public static final class C134715 extends Lambda implements Function2<Scope, ParametersHolder, WalletNotificationsPresenter> {
        public static final C134715 INSTANCE = new C134715();

        C134715() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletNotificationsPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletNotificationsPresenter((PushNotificationInteractor) factory.get(Reflection.getOrCreateKotlinClass(PushNotificationInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C13522 extends Lambda implements Function2<Scope, ParametersHolder, WalletAttachAlertPresenter> {
        public static final C13522 INSTANCE = new C13522();

        C13522() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletAttachAlertPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
            return new WalletAttachAlertPresenter((WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), schedulersProvider, resourceManager, (CryptoRecipientManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoRecipientManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$33 */
    /* loaded from: classes3.dex */
    public static final class C136733 extends Lambda implements Function2<Scope, ParametersHolder, EnterWalletPasswordPresenter> {
        public static final C136733 INSTANCE = new C136733();

        C136733() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final EnterWalletPasswordPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            CryptoAccessManager cryptoAccessManager = (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null);
            CryptoWalletInteractor cryptoWalletInteractor = (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null);
            return new EnterWalletPasswordPresenter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), cryptoAccessManager, (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), cryptoWalletInteractor, (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$43 */
    /* loaded from: classes3.dex */
    public static final class C137843 extends Lambda implements Function2<Scope, ParametersHolder, AddressMismatchPresenter> {
        public static final C137843 INSTANCE = new C137843();

        C137843() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final AddressMismatchPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new AddressMismatchPresenter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$44 */
    /* loaded from: classes3.dex */
    public static final class C137944 extends Lambda implements Function2<Scope, ParametersHolder, WalletSwapProtocolsPresenter> {
        public static final C137944 INSTANCE = new C137944();

        C137944() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletSwapProtocolsPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletSwapProtocolsPresenter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (BinancePayManager) factory.get(Reflection.getOrCreateKotlinClass(BinancePayManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$50 */
    /* loaded from: classes3.dex */
    public static final class C138650 extends Lambda implements Function2<Scope, ParametersHolder, WalletAirdropPresenter> {
        public static final C138650 INSTANCE = new C138650();

        C138650() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletAirdropPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            RxEventBus rxEventBus = (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null);
            CryptoPreferenceHelper cryptoPreferenceHelper = (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null);
            return new WalletAirdropPresenter((AirdropInteractor) factory.get(Reflection.getOrCreateKotlinClass(AirdropInteractor.class), null, null), rxEventBus, (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), cryptoPreferenceHelper, resourceManager, (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$51 */
    /* loaded from: classes3.dex */
    public static final class C138751 extends Lambda implements Function2<Scope, ParametersHolder, WalletAirdropDialogPresenter> {
        public static final C138751 INSTANCE = new C138751();

        C138751() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletAirdropDialogPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            CryptoPreferenceHelper cryptoPreferenceHelper = (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null);
            return new WalletAirdropDialogPresenter((AirdropInteractor) factory.get(Reflection.getOrCreateKotlinClass(AirdropInteractor.class), null, null), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), cryptoPreferenceHelper, resourceManager, (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$52 */
    /* loaded from: classes3.dex */
    public static final class C138852 extends Lambda implements Function2<Scope, ParametersHolder, DebugPresenter> {
        public static final C138852 INSTANCE = new C138852();

        C138852() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final DebugPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new DebugPresenter((CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$65 */
    /* loaded from: classes3.dex */
    public static final class C140265 extends Lambda implements Function2<Scope, ParametersHolder, StakingPresenter> {
        public static final C140265 INSTANCE = new C140265();

        C140265() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final StakingPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new StakingPresenter((HintsPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(HintsPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (StakingInteractor) factory.get(Reflection.getOrCreateKotlinClass(StakingInteractor.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$7 */
    /* loaded from: classes3.dex */
    public static final class C14077 extends Lambda implements Function2<Scope, ParametersHolder, WalletRootPresenter> {
        public static final C14077 INSTANCE = new C14077();

        C14077() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletRootPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletRootPresenter((CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$8 */
    /* loaded from: classes3.dex */
    public static final class C14108 extends Lambda implements Function2<Scope, ParametersHolder, WalletSettingsPresenter> {
        public static final C14108 INSTANCE = new C14108();

        C14108() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletSettingsPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletSettingsPresenter((CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$9 */
    /* loaded from: classes3.dex */
    public static final class C14119 extends Lambda implements Function2<Scope, ParametersHolder, PhotoViewerPresenter> {
        public static final C14119 INSTANCE = new C14119();

        C14119() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final PhotoViewerPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new PhotoViewerPresenter((GoogleServicesInteractor) factory.get(Reflection.getOrCreateKotlinClass(GoogleServicesInteractor.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$10 */
    /* loaded from: classes3.dex */
    public static final class C134210 extends Lambda implements Function2<Scope, ParametersHolder, WalletHomePresenter> {
        public static final C134210 INSTANCE = new C134210();

        C134210() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletHomePresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletHomePresenter((RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$11 */
    /* loaded from: classes3.dex */
    public static final class C134311 extends Lambda implements Function2<Scope, ParametersHolder, WalletHomeCryptoPresenter> {
        public static final C134311 INSTANCE = new C134311();

        C134311() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletHomeCryptoPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletHomeCryptoPresenter((CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (HintsPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(HintsPreferenceHelper.class), null, null), (NftAvatarInteractor) factory.get(Reflection.getOrCreateKotlinClass(NftAvatarInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null), (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (WalletCreateManager) factory.get(Reflection.getOrCreateKotlinClass(WalletCreateManager.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$13 */
    /* loaded from: classes3.dex */
    public static final class C134513 extends Lambda implements Function2<Scope, ParametersHolder, WalletHomeServicesPresenter> {
        public static final C134513 INSTANCE = new C134513();

        C134513() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletHomeServicesPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletHomeServicesPresenter((CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$20 */
    /* loaded from: classes3.dex */
    public static final class C135320 extends Lambda implements Function2<Scope, ParametersHolder, ContactsPresenter> {
        public static final C135320 INSTANCE = new C135320();

        C135320() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final ContactsPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new ContactsPresenter((SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (ContactsInteractor) factory.get(Reflection.getOrCreateKotlinClass(ContactsInteractor.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$22 */
    /* loaded from: classes3.dex */
    public static final class C135522 extends Lambda implements Function2<Scope, ParametersHolder, EmojiViewPresenter> {
        public static final C135522 INSTANCE = new C135522();

        C135522() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final EmojiViewPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new EmojiViewPresenter((KiklikoInteractor) factory.get(Reflection.getOrCreateKotlinClass(KiklikoInteractor.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$25 */
    /* loaded from: classes3.dex */
    public static final class C135825 extends Lambda implements Function2<Scope, ParametersHolder, TwitterAuthPresenter> {
        public static final C135825 INSTANCE = new C135825();

        C135825() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TwitterAuthPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TwitterAuthPresenter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$29 */
    /* loaded from: classes3.dex */
    public static final class C136229 extends Lambda implements Function2<Scope, ParametersHolder, CreateWalletPasswordPresenter> {
        public static final C136229 INSTANCE = new C136229();

        C136229() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CreateWalletPasswordPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CreateWalletPasswordPresenter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$38 */
    /* loaded from: classes3.dex */
    public static final class C137238 extends Lambda implements Function2<Scope, ParametersHolder, SecretWordsCountPresenter> {
        public static final C137238 INSTANCE = new C137238();

        C137238() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final SecretWordsCountPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new SecretWordsCountPresenter();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$39 */
    /* loaded from: classes3.dex */
    public static final class C137339 extends Lambda implements Function2<Scope, ParametersHolder, WalletAccountSettingsPresenter> {
        public static final C137339 INSTANCE = new C137339();

        C137339() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletAccountSettingsPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletAccountSettingsPresenter((CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$40 */
    /* loaded from: classes3.dex */
    public static final class C137540 extends Lambda implements Function2<Scope, ParametersHolder, BlockchainsManagementPresenter> {
        public static final C137540 INSTANCE = new C137540();

        C137540() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BlockchainsManagementPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new BlockchainsManagementPresenter((CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$42 */
    /* loaded from: classes3.dex */
    public static final class C137742 extends Lambda implements Function2<Scope, ParametersHolder, BackupWordSwitcherPresenter> {
        public static final C137742 INSTANCE = new C137742();

        C137742() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BackupWordSwitcherPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new BackupWordSwitcherPresenter();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$48 */
    /* loaded from: classes3.dex */
    public static final class C138348 extends Lambda implements Function2<Scope, ParametersHolder, SimplexWebViewProcessingPresenter> {
        public static final C138348 INSTANCE = new C138348();

        C138348() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final SimplexWebViewProcessingPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new SimplexWebViewProcessingPresenter();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$49 */
    /* loaded from: classes3.dex */
    public static final class C138449 extends Lambda implements Function2<Scope, ParametersHolder, WalletAppearanceSettingsPresenter> {
        public static final C138449 INSTANCE = new C138449();

        C138449() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletAppearanceSettingsPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletAppearanceSettingsPresenter((CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$53 */
    /* loaded from: classes3.dex */
    public static final class C138953 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectPresenter> {
        public static final C138953 INSTANCE = new C138953();

        C138953() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletConnectPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletConnectPresenter((CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (HintsPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(HintsPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (WalletConnectInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectInteractor.class), null, null), (WalletConnectManager) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$59 */
    /* loaded from: classes3.dex */
    public static final class C139559 extends Lambda implements Function2<Scope, ParametersHolder, CatalogRootPresenter> {
        public static final C139559 INSTANCE = new C139559();

        C139559() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CatalogRootPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CatalogRootPresenter((CatalogInteractor) factory.get(Reflection.getOrCreateKotlinClass(CatalogInteractor.class), null, null), (PreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(PreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$60 */
    /* loaded from: classes3.dex */
    public static final class C139760 extends Lambda implements Function2<Scope, ParametersHolder, CatalogPresenter> {
        public static final C139760 INSTANCE = new C139760();

        C139760() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CatalogPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new CatalogPresenter();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$69 */
    /* loaded from: classes3.dex */
    public static final class C140669 extends Lambda implements Function2<Scope, ParametersHolder, StakingOperationsPresenter> {
        public static final C140669 INSTANCE = new C140669();

        C140669() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final StakingOperationsPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new StakingOperationsPresenter((CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$71 */
    /* loaded from: classes3.dex */
    public static final class C140971 extends Lambda implements Function2<Scope, ParametersHolder, StakingCalculatorProgrammesPresenter> {
        public static final C140971 INSTANCE = new C140971();

        C140971() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final StakingCalculatorProgrammesPresenter invoke(Scope factory, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(it, "it");
            return new StakingCalculatorProgrammesPresenter((SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (StakingInteractor) factory.get(Reflection.getOrCreateKotlinClass(StakingInteractor.class), null, null));
        }
    }
}
