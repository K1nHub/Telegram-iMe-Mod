package com.smedialink.p025di.module;

import com.binance.android.opensdk.api.BinanceAPI;
import com.iMe.i_staking.StakingInteractor;
import com.smedialink.domain.contacts.ContactsInteractor;
import com.smedialink.gateway.TelegramControllersGateway;
import com.smedialink.manager.TelegramApi;
import com.smedialink.manager.crypto.pay.BinancePayProcessManager;
import com.smedialink.manager.crypto.recipient.CryptoRecipientManager;
import com.smedialink.manager.multireply.MultiReplyInteractor;
import com.smedialink.manager.wallet.create.WalletCreateManager;
import com.smedialink.model.catalog.CampaignItem;
import com.smedialink.model.staking.StakingDetailsItem;
import com.smedialink.model.translation.TranslationArgs;
import com.smedialink.model.wallet.crypto.buy.CryptoBuyItem;
import com.smedialink.model.wallet.crypto.create.CreateWalletScreenType;
import com.smedialink.model.wallet.crypto.pin.EnterPinCodeScreenType;
import com.smedialink.model.wallet.crypto.settings.BlockchainWalletItem;
import com.smedialink.model.wallet.crypto.swap.SwapFeeScreenArgs;
import com.smedialink.model.wallet.crypto.tutorial.TutorialType;
import com.smedialink.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import com.smedialink.model.wallet.crypto.wallet_connect.WalletConnectTransactionScreenType;
import com.smedialink.model.wallet.details.TokenDetailsArgs;
import com.smedialink.model.wallet.home.pay.BinancePayScreenArgs;
import com.smedialink.model.wallet.notification.NotificationItem;
import com.smedialink.model.wallet.pin.WalletPinScreenArgs;
import com.smedialink.model.wallet.select.SelectableToken;
import com.smedialink.model.wallet.select.SelectableType;
import com.smedialink.model.wallet.transfer.TransferScreenArgs;
import com.smedialink.p031ui.catalog.CatalogRootPresenter;
import com.smedialink.p031ui.catalog.details.ChannelDetailsPresenter;
import com.smedialink.p031ui.catalog.tabs.CatalogPresenter;
import com.smedialink.p031ui.catalog.tabs.all.CatalogAllPresenter;
import com.smedialink.p031ui.catalog.tabs.categories.CatalogCategoriesPresenter;
import com.smedialink.p031ui.catalog.tabs.user_channels.CatalogUserChannelsPresenter;
import com.smedialink.p031ui.chat.ChatPresenter;
import com.smedialink.p031ui.contacts.ContactsPresenter;
import com.smedialink.p031ui.custom.backup.switcher.BackupWordSwitcherPresenter;
import com.smedialink.p031ui.debug.DebugPresenter;
import com.smedialink.p031ui.kikliko.EmojiViewPresenter;
import com.smedialink.p031ui.profile.ProfilePresenter;
import com.smedialink.p031ui.reaction.ReactionPresenter;
import com.smedialink.p031ui.recognition.PhotoViewerPresenter;
import com.smedialink.p031ui.translate.TranslationPresenter;
import com.smedialink.p031ui.twitter.TwitterPresenter;
import com.smedialink.p031ui.twitter.auth.TwitterAuthPresenter;
import com.smedialink.p031ui.twitter.search.TwitterSearchPresenter;
import com.smedialink.p031ui.wallet.actions.send.amount.WalletSendAmountPresenter;
import com.smedialink.p031ui.wallet.actions.send.recipient.WalletSendRecipientPresenter;
import com.smedialink.p031ui.wallet.airdrop.WalletAirdropPresenter;
import com.smedialink.p031ui.wallet.airdrop.dialog.WalletAirdropDialogPresenter;
import com.smedialink.p031ui.wallet.common.WalletRootPresenter;
import com.smedialink.p031ui.wallet.crypto.address_mismatch.AddressMismatchPresenter;
import com.smedialink.p031ui.wallet.crypto.buy.BuyCryptoProductPresenter;
import com.smedialink.p031ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPricePresenter;
import com.smedialink.p031ui.wallet.crypto.buy.processing.SimplexWebViewProcessingPresenter;
import com.smedialink.p031ui.wallet.crypto.create.CreateWalletPresenter;
import com.smedialink.p031ui.wallet.crypto.create.password.CreateWalletPasswordPresenter;
import com.smedialink.p031ui.wallet.crypto.create.pin.CreateWalletPinPresenter;
import com.smedialink.p031ui.wallet.crypto.create.secret_words_count.SecretWordsCountPresenter;
import com.smedialink.p031ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter;
import com.smedialink.p031ui.wallet.crypto.enter.pin.EnterWalletPinPresenter;
import com.smedialink.p031ui.wallet.crypto.settings.WalletAccountSettingsPresenter;
import com.smedialink.p031ui.wallet.crypto.settings.blockchains.BlockchainsManagementPresenter;
import com.smedialink.p031ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsPresenter;
import com.smedialink.p031ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter;
import com.smedialink.p031ui.wallet.crypto.tutorial.CreateWalletTutorialPresenter;
import com.smedialink.p031ui.wallet.crypto.wallet_connect.WalletConnectPresenter;
import com.smedialink.p031ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignPresenter;
import com.smedialink.p031ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkPresenter;
import com.smedialink.p031ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionPresenter;
import com.smedialink.p031ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsPresenter;
import com.smedialink.p031ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionPresenter;
import com.smedialink.p031ui.wallet.donations.WalletDonationsPresenter;
import com.smedialink.p031ui.wallet.home.old.WalletAttachAlertPresenter;
import com.smedialink.p031ui.wallet.home.p032v2.WalletHomePresenter;
import com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsPresenter;
import com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.WalletHomeBinancePayPresenter;
import com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.history.WalletBinancePayHistoryFragment;
import com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.history.WalletBinancePayHistoryPresenter;
import com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter;
import com.smedialink.p031ui.wallet.home.p032v2.tabs.crypto.WalletHomeCryptoPresenter;
import com.smedialink.p031ui.wallet.home.p032v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment;
import com.smedialink.p031ui.wallet.home.p032v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter;
import com.smedialink.p031ui.wallet.home.p032v2.tabs.services.WalletHomeServicesPresenter;
import com.smedialink.p031ui.wallet.notifications.WalletNotificationsPresenter;
import com.smedialink.p031ui.wallet.notifications.details.WalletNotificationDetailsPresenter;
import com.smedialink.p031ui.wallet.settings.WalletSettingsPresenter;
import com.smedialink.p031ui.wallet.settings.appearance.WalletAppearanceSettingsPresenter;
import com.smedialink.p031ui.wallet.staking.StakingPresenter;
import com.smedialink.p031ui.wallet.staking.calculator.StakingCalculatorPresenter;
import com.smedialink.p031ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesPresenter;
import com.smedialink.p031ui.wallet.staking.conditions.StakingConditionsPresenter;
import com.smedialink.p031ui.wallet.staking.operations.StakingOperationsPresenter;
import com.smedialink.p031ui.wallet.staking.programmes.StakingProgrammesPresenter;
import com.smedialink.p031ui.wallet.staking.transaction.StakingTransactionPresenter;
import com.smedialink.p031ui.wallet.swap.WalletSwapProtocolsPresenter;
import com.smedialink.p031ui.wallet.swap.fee.WalletSwapFeePresenter;
import com.smedialink.p031ui.wallet.swap.process.WalletSwapProcessFragment;
import com.smedialink.p031ui.wallet.swap.process.WalletSwapProcessPresenter;
import com.smedialink.p031ui.wallet.swap.token.WalletSelectTokenPresenter;
import com.smedialink.p031ui.wallet.transaction.WalletTransactionsFragment;
import com.smedialink.p031ui.wallet.transaction.WalletTransactionsPresenter;
import com.smedialink.p031ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog;
import com.smedialink.p031ui.wallet.transaction.details.WalletTransactionDetailsPresenter;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.smedialink.storage.domain.interactor.catalog.CatalogInteractor;
import com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.smedialink.storage.domain.interactor.crypto.airdrop.AirdropInteractor;
import com.smedialink.storage.domain.interactor.crypto.boost.BoostInteractor;
import com.smedialink.storage.domain.interactor.crypto.cancel.CancelInteractor;
import com.smedialink.storage.domain.interactor.crypto.donations.DonationsInteractor;
import com.smedialink.storage.domain.interactor.crypto.level.AccountLevelInteractor;
import com.smedialink.storage.domain.interactor.crypto.nft.avatar.NftAvatarInteractor;
import com.smedialink.storage.domain.interactor.crypto.permission.CryptoPermissionInteractor;
import com.smedialink.storage.domain.interactor.crypto.pin.PinCodeInteractor;
import com.smedialink.storage.domain.interactor.crypto.simplex.SimplexInteractor;
import com.smedialink.storage.domain.interactor.crypto.swap.SwapInteractor;
import com.smedialink.storage.domain.interactor.crypto.wallet_connect.WalletConnectInteractor;
import com.smedialink.storage.domain.interactor.google.GoogleServicesInteractor;
import com.smedialink.storage.domain.interactor.kikliko.KiklikoInteractor;
import com.smedialink.storage.domain.interactor.notification.PushNotificationInteractor;
import com.smedialink.storage.domain.interactor.socialEmotion.ReactionInteractor;
import com.smedialink.storage.domain.interactor.translate.TranslationInteractor;
import com.smedialink.storage.domain.interactor.twitter.TwitterInteractor;
import com.smedialink.storage.domain.interactor.wallet.WalletInteractor;
import com.smedialink.storage.domain.interactor.wallet.WalletSessionInteractor;
import com.smedialink.storage.domain.manager.auth.AuthManager;
import com.smedialink.storage.domain.manager.binancepay.BinancePayManager;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.smedialink.storage.domain.model.catalog.ChatType;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.staking.StakingTabType;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.storage.HintsPreferenceHelper;
import com.smedialink.storage.domain.storage.PreferenceHelper;
import com.smedialink.storage.domain.storage.TwitterPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.validator.wallet.CustomPriceValidator;
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
/* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1 */
/* loaded from: classes3.dex */
final class PresenterModuleKt$presentationPresenterModule$1 extends Lambda implements Function1<Module, Unit> {
    public static final PresenterModuleKt$presentationPresenterModule$1 INSTANCE = new PresenterModuleKt$presentationPresenterModule$1();

    PresenterModuleKt$presentationPresenterModule$1() {
        super(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C13651 extends Lambda implements Function2<Scope, ParametersHolder, TranslationPresenter> {
        public static final C13651 INSTANCE = new C13651();

        C13651() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$12 */
    /* loaded from: classes3.dex */
    public static final class C136812 extends Lambda implements Function2<Scope, ParametersHolder, WalletHomeCryptoTokensSettingsPresenter> {
        public static final C136812 INSTANCE = new C136812();

        C136812() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$14 */
    /* loaded from: classes3.dex */
    public static final class C137014 extends Lambda implements Function2<Scope, ParametersHolder, WalletTokenDetailsPresenter> {
        public static final C137014 INSTANCE = new C137014();

        C137014() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$16 */
    /* loaded from: classes3.dex */
    public static final class C137216 extends Lambda implements Function2<Scope, ParametersHolder, WalletTransactionsPresenter> {
        public static final C137216 INSTANCE = new C137216();

        C137216() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$17 */
    /* loaded from: classes3.dex */
    public static final class C137317 extends Lambda implements Function2<Scope, ParametersHolder, WalletNotificationDetailsPresenter> {
        public static final C137317 INSTANCE = new C137317();

        C137317() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$18 */
    /* loaded from: classes3.dex */
    public static final class C137418 extends Lambda implements Function2<Scope, ParametersHolder, WalletTransactionDetailsPresenter> {
        public static final C137418 INSTANCE = new C137418();

        C137418() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$19 */
    /* loaded from: classes3.dex */
    public static final class C137519 extends Lambda implements Function2<Scope, ParametersHolder, ReactionPresenter> {
        public static final C137519 INSTANCE = new C137519();

        C137519() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$21 */
    /* loaded from: classes3.dex */
    public static final class C137821 extends Lambda implements Function2<Scope, ParametersHolder, ProfilePresenter> {
        public static final C137821 INSTANCE = new C137821();

        C137821() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$23 */
    /* loaded from: classes3.dex */
    public static final class C138023 extends Lambda implements Function2<Scope, ParametersHolder, TwitterPresenter> {
        public static final C138023 INSTANCE = new C138023();

        C138023() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$24 */
    /* loaded from: classes3.dex */
    public static final class C138124 extends Lambda implements Function2<Scope, ParametersHolder, TwitterSearchPresenter> {
        public static final C138124 INSTANCE = new C138124();

        C138124() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$26 */
    /* loaded from: classes3.dex */
    public static final class C138326 extends Lambda implements Function2<Scope, ParametersHolder, CreateWalletTutorialPresenter> {
        public static final C138326 INSTANCE = new C138326();

        C138326() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$27 */
    /* loaded from: classes3.dex */
    public static final class C138427 extends Lambda implements Function2<Scope, ParametersHolder, BuyCryptoProductPresenter> {
        public static final C138427 INSTANCE = new C138427();

        C138427() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$28 */
    /* loaded from: classes3.dex */
    public static final class C138528 extends Lambda implements Function2<Scope, ParametersHolder, CryptoBuyCustomPricePresenter> {
        public static final C138528 INSTANCE = new C138528();

        C138528() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C13873 extends Lambda implements Function2<Scope, ParametersHolder, WalletSendRecipientPresenter> {
        public static final C13873 INSTANCE = new C13873();

        C13873() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$30 */
    /* loaded from: classes3.dex */
    public static final class C138830 extends Lambda implements Function2<Scope, ParametersHolder, CreateWalletPinPresenter> {
        public static final C138830 INSTANCE = new C138830();

        C138830() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$31 */
    /* loaded from: classes3.dex */
    public static final class C138931 extends Lambda implements Function2<Scope, ParametersHolder, WalletPrivacySettingPresenter> {
        public static final C138931 INSTANCE = new C138931();

        C138931() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$32 */
    /* loaded from: classes3.dex */
    public static final class C139032 extends Lambda implements Function2<Scope, ParametersHolder, EnterWalletPinPresenter> {
        public static final C139032 INSTANCE = new C139032();

        C139032() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$34 */
    /* loaded from: classes3.dex */
    public static final class C139234 extends Lambda implements Function2<Scope, ParametersHolder, WalletBinancePayHistoryPresenter> {
        public static final C139234 INSTANCE = new C139234();

        C139234() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$35 */
    /* loaded from: classes3.dex */
    public static final class C139335 extends Lambda implements Function2<Scope, ParametersHolder, WalletHomeBinancePayPresenter> {
        public static final C139335 INSTANCE = new C139335();

        C139335() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$36 */
    /* loaded from: classes3.dex */
    public static final class C139436 extends Lambda implements Function2<Scope, ParametersHolder, WalletReceiveBinancePayPresenter> {
        public static final C139436 INSTANCE = new C139436();

        C139436() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$37 */
    /* loaded from: classes3.dex */
    public static final class C139537 extends Lambda implements Function2<Scope, ParametersHolder, CreateWalletPresenter> {
        public static final C139537 INSTANCE = new C139537();

        C139537() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C13984 extends Lambda implements Function2<Scope, ParametersHolder, WalletSendAmountPresenter> {
        public static final C13984 INSTANCE = new C13984();

        C13984() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$41 */
    /* loaded from: classes3.dex */
    public static final class C140041 extends Lambda implements Function2<Scope, ParametersHolder, BlockchainWalletDetailsPresenter> {
        public static final C140041 INSTANCE = new C140041();

        C140041() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$45 */
    /* loaded from: classes3.dex */
    public static final class C140445 extends Lambda implements Function2<Scope, ParametersHolder, WalletSwapProcessPresenter> {
        public static final C140445 INSTANCE = new C140445();

        C140445() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$46 */
    /* loaded from: classes3.dex */
    public static final class C140546 extends Lambda implements Function2<Scope, ParametersHolder, WalletSelectTokenPresenter> {
        public static final C140546 INSTANCE = new C140546();

        C140546() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$47 */
    /* loaded from: classes3.dex */
    public static final class C140647 extends Lambda implements Function2<Scope, ParametersHolder, WalletSwapFeePresenter> {
        public static final C140647 INSTANCE = new C140647();

        C140647() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$5 */
    /* loaded from: classes3.dex */
    public static final class C14095 extends Lambda implements Function2<Scope, ParametersHolder, WalletDonationsPresenter> {
        public static final C14095 INSTANCE = new C14095();

        C14095() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$54 */
    /* loaded from: classes3.dex */
    public static final class C141454 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectSessionDetailsPresenter> {
        public static final C141454 INSTANCE = new C141454();

        C141454() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$55 */
    /* loaded from: classes3.dex */
    public static final class C141555 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectNewSessionPresenter> {
        public static final C141555 INSTANCE = new C141555();

        C141555() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$56 */
    /* loaded from: classes3.dex */
    public static final class C141656 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectTransactionPresenter> {
        public static final C141656 INSTANCE = new C141656();

        C141656() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$57 */
    /* loaded from: classes3.dex */
    public static final class C141757 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectMessageSignPresenter> {
        public static final C141757 INSTANCE = new C141757();

        C141757() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$58 */
    /* loaded from: classes3.dex */
    public static final class C141858 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectSwitchNetworkPresenter> {
        public static final C141858 INSTANCE = new C141858();

        C141858() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$6 */
    /* loaded from: classes3.dex */
    public static final class C14206 extends Lambda implements Function2<Scope, ParametersHolder, ChatPresenter> {
        public static final C14206 INSTANCE = new C14206();

        C14206() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$61 */
    /* loaded from: classes3.dex */
    public static final class C142261 extends Lambda implements Function2<Scope, ParametersHolder, ChannelDetailsPresenter> {
        public static final C142261 INSTANCE = new C142261();

        C142261() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$62 */
    /* loaded from: classes3.dex */
    public static final class C142362 extends Lambda implements Function2<Scope, ParametersHolder, CatalogAllPresenter> {
        public static final C142362 INSTANCE = new C142362();

        C142362() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$63 */
    /* loaded from: classes3.dex */
    public static final class C142463 extends Lambda implements Function2<Scope, ParametersHolder, CatalogCategoriesPresenter> {
        public static final C142463 INSTANCE = new C142463();

        C142463() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$64 */
    /* loaded from: classes3.dex */
    public static final class C142564 extends Lambda implements Function2<Scope, ParametersHolder, CatalogUserChannelsPresenter> {
        public static final C142564 INSTANCE = new C142564();

        C142564() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$66 */
    /* loaded from: classes3.dex */
    public static final class C142766 extends Lambda implements Function2<Scope, ParametersHolder, StakingProgrammesPresenter> {
        public static final C142766 INSTANCE = new C142766();

        C142766() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$67 */
    /* loaded from: classes3.dex */
    public static final class C142867 extends Lambda implements Function2<Scope, ParametersHolder, StakingConditionsPresenter> {
        public static final C142867 INSTANCE = new C142867();

        C142867() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$68 */
    /* loaded from: classes3.dex */
    public static final class C142968 extends Lambda implements Function2<Scope, ParametersHolder, StakingTransactionPresenter> {
        public static final C142968 INSTANCE = new C142968();

        C142968() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$70 */
    /* loaded from: classes3.dex */
    public static final class C143270 extends Lambda implements Function2<Scope, ParametersHolder, StakingCalculatorPresenter> {
        public static final C143270 INSTANCE = new C143270();

        C143270() {
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
        C13651 c13651 = C13651.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(TranslationPresenter.class), null, c13651, kind, emptyList));
        module.indexPrimaryType(factoryInstanceFactory);
        new Pair(module, factoryInstanceFactory);
        C13762 c13762 = C13762.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory2 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(WalletAttachAlertPresenter.class), null, c13762, kind, emptyList2));
        module.indexPrimaryType(factoryInstanceFactory2);
        new Pair(module, factoryInstanceFactory2);
        C13873 c13873 = C13873.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory3 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(WalletSendRecipientPresenter.class), null, c13873, kind, emptyList3));
        module.indexPrimaryType(factoryInstanceFactory3);
        new Pair(module, factoryInstanceFactory3);
        C13984 c13984 = C13984.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory4 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(WalletSendAmountPresenter.class), null, c13984, kind, emptyList4));
        module.indexPrimaryType(factoryInstanceFactory4);
        new Pair(module, factoryInstanceFactory4);
        C14095 c14095 = C14095.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory5 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(WalletDonationsPresenter.class), null, c14095, kind, emptyList5));
        module.indexPrimaryType(factoryInstanceFactory5);
        new Pair(module, factoryInstanceFactory5);
        C14206 c14206 = C14206.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory6 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(ChatPresenter.class), null, c14206, kind, emptyList6));
        module.indexPrimaryType(factoryInstanceFactory6);
        new Pair(module, factoryInstanceFactory6);
        C14317 c14317 = C14317.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory7 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(WalletRootPresenter.class), null, c14317, kind, emptyList7));
        module.indexPrimaryType(factoryInstanceFactory7);
        new Pair(module, factoryInstanceFactory7);
        C14348 c14348 = C14348.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory8 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(WalletSettingsPresenter.class), null, c14348, kind, emptyList8));
        module.indexPrimaryType(factoryInstanceFactory8);
        new Pair(module, factoryInstanceFactory8);
        C14359 c14359 = C14359.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory9 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(PhotoViewerPresenter.class), null, c14359, kind, emptyList9));
        module.indexPrimaryType(factoryInstanceFactory9);
        new Pair(module, factoryInstanceFactory9);
        C136610 c136610 = C136610.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory10 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(WalletHomePresenter.class), null, c136610, kind, emptyList10));
        module.indexPrimaryType(factoryInstanceFactory10);
        new Pair(module, factoryInstanceFactory10);
        C136711 c136711 = C136711.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory11 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(WalletHomeCryptoPresenter.class), null, c136711, kind, emptyList11));
        module.indexPrimaryType(factoryInstanceFactory11);
        new Pair(module, factoryInstanceFactory11);
        C136812 c136812 = C136812.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory12 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(WalletHomeCryptoTokensSettingsPresenter.class), null, c136812, kind, emptyList12));
        module.indexPrimaryType(factoryInstanceFactory12);
        new Pair(module, factoryInstanceFactory12);
        C136913 c136913 = C136913.INSTANCE;
        StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory13 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(WalletHomeServicesPresenter.class), null, c136913, kind, emptyList13));
        module.indexPrimaryType(factoryInstanceFactory13);
        new Pair(module, factoryInstanceFactory13);
        C137014 c137014 = C137014.INSTANCE;
        StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory14 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(WalletTokenDetailsPresenter.class), null, c137014, kind, emptyList14));
        module.indexPrimaryType(factoryInstanceFactory14);
        new Pair(module, factoryInstanceFactory14);
        C137115 c137115 = C137115.INSTANCE;
        StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory15 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(WalletNotificationsPresenter.class), null, c137115, kind, emptyList15));
        module.indexPrimaryType(factoryInstanceFactory15);
        new Pair(module, factoryInstanceFactory15);
        C137216 c137216 = C137216.INSTANCE;
        StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
        emptyList16 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory16 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(WalletTransactionsPresenter.class), null, c137216, kind, emptyList16));
        module.indexPrimaryType(factoryInstanceFactory16);
        new Pair(module, factoryInstanceFactory16);
        C137317 c137317 = C137317.INSTANCE;
        StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
        emptyList17 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory17 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(WalletNotificationDetailsPresenter.class), null, c137317, kind, emptyList17));
        module.indexPrimaryType(factoryInstanceFactory17);
        new Pair(module, factoryInstanceFactory17);
        C137418 c137418 = C137418.INSTANCE;
        StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
        emptyList18 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory18 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(WalletTransactionDetailsPresenter.class), null, c137418, kind, emptyList18));
        module.indexPrimaryType(factoryInstanceFactory18);
        new Pair(module, factoryInstanceFactory18);
        C137519 c137519 = C137519.INSTANCE;
        StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
        emptyList19 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory19 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(ReactionPresenter.class), null, c137519, kind, emptyList19));
        module.indexPrimaryType(factoryInstanceFactory19);
        new Pair(module, factoryInstanceFactory19);
        C137720 c137720 = C137720.INSTANCE;
        StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
        emptyList20 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory20 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(ContactsPresenter.class), null, c137720, kind, emptyList20));
        module.indexPrimaryType(factoryInstanceFactory20);
        new Pair(module, factoryInstanceFactory20);
        C137821 c137821 = C137821.INSTANCE;
        StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
        emptyList21 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory21 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(ProfilePresenter.class), null, c137821, kind, emptyList21));
        module.indexPrimaryType(factoryInstanceFactory21);
        new Pair(module, factoryInstanceFactory21);
        C137922 c137922 = C137922.INSTANCE;
        StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
        emptyList22 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory22 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(EmojiViewPresenter.class), null, c137922, kind, emptyList22));
        module.indexPrimaryType(factoryInstanceFactory22);
        new Pair(module, factoryInstanceFactory22);
        C138023 c138023 = C138023.INSTANCE;
        StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
        emptyList23 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory23 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(TwitterPresenter.class), null, c138023, kind, emptyList23));
        module.indexPrimaryType(factoryInstanceFactory23);
        new Pair(module, factoryInstanceFactory23);
        C138124 c138124 = C138124.INSTANCE;
        StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
        emptyList24 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory24 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(TwitterSearchPresenter.class), null, c138124, kind, emptyList24));
        module.indexPrimaryType(factoryInstanceFactory24);
        new Pair(module, factoryInstanceFactory24);
        C138225 c138225 = C138225.INSTANCE;
        StringQualifier rootScopeQualifier25 = companion.getRootScopeQualifier();
        emptyList25 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory25 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier25, Reflection.getOrCreateKotlinClass(TwitterAuthPresenter.class), null, c138225, kind, emptyList25));
        module.indexPrimaryType(factoryInstanceFactory25);
        new Pair(module, factoryInstanceFactory25);
        C138326 c138326 = C138326.INSTANCE;
        StringQualifier rootScopeQualifier26 = companion.getRootScopeQualifier();
        emptyList26 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory26 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier26, Reflection.getOrCreateKotlinClass(CreateWalletTutorialPresenter.class), null, c138326, kind, emptyList26));
        module.indexPrimaryType(factoryInstanceFactory26);
        new Pair(module, factoryInstanceFactory26);
        C138427 c138427 = C138427.INSTANCE;
        StringQualifier rootScopeQualifier27 = companion.getRootScopeQualifier();
        emptyList27 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory27 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier27, Reflection.getOrCreateKotlinClass(BuyCryptoProductPresenter.class), null, c138427, kind, emptyList27));
        module.indexPrimaryType(factoryInstanceFactory27);
        new Pair(module, factoryInstanceFactory27);
        C138528 c138528 = C138528.INSTANCE;
        StringQualifier rootScopeQualifier28 = companion.getRootScopeQualifier();
        emptyList28 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory28 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier28, Reflection.getOrCreateKotlinClass(CryptoBuyCustomPricePresenter.class), null, c138528, kind, emptyList28));
        module.indexPrimaryType(factoryInstanceFactory28);
        new Pair(module, factoryInstanceFactory28);
        C138629 c138629 = C138629.INSTANCE;
        StringQualifier rootScopeQualifier29 = companion.getRootScopeQualifier();
        emptyList29 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory29 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier29, Reflection.getOrCreateKotlinClass(CreateWalletPasswordPresenter.class), null, c138629, kind, emptyList29));
        module.indexPrimaryType(factoryInstanceFactory29);
        new Pair(module, factoryInstanceFactory29);
        C138830 c138830 = C138830.INSTANCE;
        StringQualifier rootScopeQualifier30 = companion.getRootScopeQualifier();
        emptyList30 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory30 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier30, Reflection.getOrCreateKotlinClass(CreateWalletPinPresenter.class), null, c138830, kind, emptyList30));
        module.indexPrimaryType(factoryInstanceFactory30);
        new Pair(module, factoryInstanceFactory30);
        C138931 c138931 = C138931.INSTANCE;
        StringQualifier rootScopeQualifier31 = companion.getRootScopeQualifier();
        emptyList31 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory31 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier31, Reflection.getOrCreateKotlinClass(WalletPrivacySettingPresenter.class), null, c138931, kind, emptyList31));
        module.indexPrimaryType(factoryInstanceFactory31);
        new Pair(module, factoryInstanceFactory31);
        C139032 c139032 = C139032.INSTANCE;
        StringQualifier rootScopeQualifier32 = companion.getRootScopeQualifier();
        emptyList32 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory32 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier32, Reflection.getOrCreateKotlinClass(EnterWalletPinPresenter.class), null, c139032, kind, emptyList32));
        module.indexPrimaryType(factoryInstanceFactory32);
        new Pair(module, factoryInstanceFactory32);
        C139133 c139133 = C139133.INSTANCE;
        StringQualifier rootScopeQualifier33 = companion.getRootScopeQualifier();
        emptyList33 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory33 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier33, Reflection.getOrCreateKotlinClass(EnterWalletPasswordPresenter.class), null, c139133, kind, emptyList33));
        module.indexPrimaryType(factoryInstanceFactory33);
        new Pair(module, factoryInstanceFactory33);
        C139234 c139234 = C139234.INSTANCE;
        StringQualifier rootScopeQualifier34 = companion.getRootScopeQualifier();
        emptyList34 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory34 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier34, Reflection.getOrCreateKotlinClass(WalletBinancePayHistoryPresenter.class), null, c139234, kind, emptyList34));
        module.indexPrimaryType(factoryInstanceFactory34);
        new Pair(module, factoryInstanceFactory34);
        C139335 c139335 = C139335.INSTANCE;
        StringQualifier rootScopeQualifier35 = companion.getRootScopeQualifier();
        emptyList35 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory35 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier35, Reflection.getOrCreateKotlinClass(WalletHomeBinancePayPresenter.class), null, c139335, kind, emptyList35));
        module.indexPrimaryType(factoryInstanceFactory35);
        new Pair(module, factoryInstanceFactory35);
        C139436 c139436 = C139436.INSTANCE;
        StringQualifier rootScopeQualifier36 = companion.getRootScopeQualifier();
        emptyList36 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory36 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier36, Reflection.getOrCreateKotlinClass(WalletReceiveBinancePayPresenter.class), null, c139436, kind, emptyList36));
        module.indexPrimaryType(factoryInstanceFactory36);
        new Pair(module, factoryInstanceFactory36);
        C139537 c139537 = C139537.INSTANCE;
        StringQualifier rootScopeQualifier37 = companion.getRootScopeQualifier();
        emptyList37 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory37 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier37, Reflection.getOrCreateKotlinClass(CreateWalletPresenter.class), null, c139537, kind, emptyList37));
        module.indexPrimaryType(factoryInstanceFactory37);
        new Pair(module, factoryInstanceFactory37);
        C139638 c139638 = C139638.INSTANCE;
        StringQualifier rootScopeQualifier38 = companion.getRootScopeQualifier();
        emptyList38 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory38 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier38, Reflection.getOrCreateKotlinClass(SecretWordsCountPresenter.class), null, c139638, kind, emptyList38));
        module.indexPrimaryType(factoryInstanceFactory38);
        new Pair(module, factoryInstanceFactory38);
        C139739 c139739 = C139739.INSTANCE;
        StringQualifier rootScopeQualifier39 = companion.getRootScopeQualifier();
        emptyList39 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory39 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier39, Reflection.getOrCreateKotlinClass(WalletAccountSettingsPresenter.class), null, c139739, kind, emptyList39));
        module.indexPrimaryType(factoryInstanceFactory39);
        new Pair(module, factoryInstanceFactory39);
        C139940 c139940 = C139940.INSTANCE;
        StringQualifier rootScopeQualifier40 = companion.getRootScopeQualifier();
        emptyList40 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory40 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier40, Reflection.getOrCreateKotlinClass(BlockchainsManagementPresenter.class), null, c139940, kind, emptyList40));
        module.indexPrimaryType(factoryInstanceFactory40);
        new Pair(module, factoryInstanceFactory40);
        C140041 c140041 = C140041.INSTANCE;
        StringQualifier rootScopeQualifier41 = companion.getRootScopeQualifier();
        emptyList41 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory41 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier41, Reflection.getOrCreateKotlinClass(BlockchainWalletDetailsPresenter.class), null, c140041, kind, emptyList41));
        module.indexPrimaryType(factoryInstanceFactory41);
        new Pair(module, factoryInstanceFactory41);
        C140142 c140142 = C140142.INSTANCE;
        StringQualifier rootScopeQualifier42 = companion.getRootScopeQualifier();
        emptyList42 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory42 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier42, Reflection.getOrCreateKotlinClass(BackupWordSwitcherPresenter.class), null, c140142, kind, emptyList42));
        module.indexPrimaryType(factoryInstanceFactory42);
        new Pair(module, factoryInstanceFactory42);
        C140243 c140243 = C140243.INSTANCE;
        StringQualifier rootScopeQualifier43 = companion.getRootScopeQualifier();
        emptyList43 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory43 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier43, Reflection.getOrCreateKotlinClass(AddressMismatchPresenter.class), null, c140243, kind, emptyList43));
        module.indexPrimaryType(factoryInstanceFactory43);
        new Pair(module, factoryInstanceFactory43);
        C140344 c140344 = C140344.INSTANCE;
        StringQualifier rootScopeQualifier44 = companion.getRootScopeQualifier();
        emptyList44 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory44 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier44, Reflection.getOrCreateKotlinClass(WalletSwapProtocolsPresenter.class), null, c140344, kind, emptyList44));
        module.indexPrimaryType(factoryInstanceFactory44);
        new Pair(module, factoryInstanceFactory44);
        C140445 c140445 = C140445.INSTANCE;
        StringQualifier rootScopeQualifier45 = companion.getRootScopeQualifier();
        emptyList45 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory45 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier45, Reflection.getOrCreateKotlinClass(WalletSwapProcessPresenter.class), null, c140445, kind, emptyList45));
        module.indexPrimaryType(factoryInstanceFactory45);
        new Pair(module, factoryInstanceFactory45);
        C140546 c140546 = C140546.INSTANCE;
        StringQualifier rootScopeQualifier46 = companion.getRootScopeQualifier();
        emptyList46 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory46 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier46, Reflection.getOrCreateKotlinClass(WalletSelectTokenPresenter.class), null, c140546, kind, emptyList46));
        module.indexPrimaryType(factoryInstanceFactory46);
        new Pair(module, factoryInstanceFactory46);
        C140647 c140647 = C140647.INSTANCE;
        StringQualifier rootScopeQualifier47 = companion.getRootScopeQualifier();
        emptyList47 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory47 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier47, Reflection.getOrCreateKotlinClass(WalletSwapFeePresenter.class), null, c140647, kind, emptyList47));
        module.indexPrimaryType(factoryInstanceFactory47);
        new Pair(module, factoryInstanceFactory47);
        C140748 c140748 = C140748.INSTANCE;
        StringQualifier rootScopeQualifier48 = companion.getRootScopeQualifier();
        emptyList48 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory48 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier48, Reflection.getOrCreateKotlinClass(SimplexWebViewProcessingPresenter.class), null, c140748, kind, emptyList48));
        module.indexPrimaryType(factoryInstanceFactory48);
        new Pair(module, factoryInstanceFactory48);
        C140849 c140849 = C140849.INSTANCE;
        StringQualifier rootScopeQualifier49 = companion.getRootScopeQualifier();
        emptyList49 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory49 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier49, Reflection.getOrCreateKotlinClass(WalletAppearanceSettingsPresenter.class), null, c140849, kind, emptyList49));
        module.indexPrimaryType(factoryInstanceFactory49);
        new Pair(module, factoryInstanceFactory49);
        C141050 c141050 = C141050.INSTANCE;
        StringQualifier rootScopeQualifier50 = companion.getRootScopeQualifier();
        emptyList50 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory50 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier50, Reflection.getOrCreateKotlinClass(WalletAirdropPresenter.class), null, c141050, kind, emptyList50));
        module.indexPrimaryType(factoryInstanceFactory50);
        new Pair(module, factoryInstanceFactory50);
        C141151 c141151 = C141151.INSTANCE;
        StringQualifier rootScopeQualifier51 = companion.getRootScopeQualifier();
        emptyList51 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory51 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier51, Reflection.getOrCreateKotlinClass(WalletAirdropDialogPresenter.class), null, c141151, kind, emptyList51));
        module.indexPrimaryType(factoryInstanceFactory51);
        new Pair(module, factoryInstanceFactory51);
        C141252 c141252 = C141252.INSTANCE;
        StringQualifier rootScopeQualifier52 = companion.getRootScopeQualifier();
        emptyList52 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory52 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier52, Reflection.getOrCreateKotlinClass(DebugPresenter.class), null, c141252, kind, emptyList52));
        module.indexPrimaryType(factoryInstanceFactory52);
        new Pair(module, factoryInstanceFactory52);
        C141353 c141353 = C141353.INSTANCE;
        StringQualifier rootScopeQualifier53 = companion.getRootScopeQualifier();
        emptyList53 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory53 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier53, Reflection.getOrCreateKotlinClass(WalletConnectPresenter.class), null, c141353, kind, emptyList53));
        module.indexPrimaryType(factoryInstanceFactory53);
        new Pair(module, factoryInstanceFactory53);
        C141454 c141454 = C141454.INSTANCE;
        StringQualifier rootScopeQualifier54 = companion.getRootScopeQualifier();
        emptyList54 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory54 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier54, Reflection.getOrCreateKotlinClass(WalletConnectSessionDetailsPresenter.class), null, c141454, kind, emptyList54));
        module.indexPrimaryType(factoryInstanceFactory54);
        new Pair(module, factoryInstanceFactory54);
        C141555 c141555 = C141555.INSTANCE;
        StringQualifier rootScopeQualifier55 = companion.getRootScopeQualifier();
        emptyList55 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory55 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier55, Reflection.getOrCreateKotlinClass(WalletConnectNewSessionPresenter.class), null, c141555, kind, emptyList55));
        module.indexPrimaryType(factoryInstanceFactory55);
        new Pair(module, factoryInstanceFactory55);
        C141656 c141656 = C141656.INSTANCE;
        StringQualifier rootScopeQualifier56 = companion.getRootScopeQualifier();
        emptyList56 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory56 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier56, Reflection.getOrCreateKotlinClass(WalletConnectTransactionPresenter.class), null, c141656, kind, emptyList56));
        module.indexPrimaryType(factoryInstanceFactory56);
        new Pair(module, factoryInstanceFactory56);
        C141757 c141757 = C141757.INSTANCE;
        StringQualifier rootScopeQualifier57 = companion.getRootScopeQualifier();
        emptyList57 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory57 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier57, Reflection.getOrCreateKotlinClass(WalletConnectMessageSignPresenter.class), null, c141757, kind, emptyList57));
        module.indexPrimaryType(factoryInstanceFactory57);
        new Pair(module, factoryInstanceFactory57);
        C141858 c141858 = C141858.INSTANCE;
        StringQualifier rootScopeQualifier58 = companion.getRootScopeQualifier();
        emptyList58 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory58 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier58, Reflection.getOrCreateKotlinClass(WalletConnectSwitchNetworkPresenter.class), null, c141858, kind, emptyList58));
        module.indexPrimaryType(factoryInstanceFactory58);
        new Pair(module, factoryInstanceFactory58);
        C141959 c141959 = C141959.INSTANCE;
        StringQualifier rootScopeQualifier59 = companion.getRootScopeQualifier();
        emptyList59 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory59 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier59, Reflection.getOrCreateKotlinClass(CatalogRootPresenter.class), null, c141959, kind, emptyList59));
        module.indexPrimaryType(factoryInstanceFactory59);
        new Pair(module, factoryInstanceFactory59);
        C142160 c142160 = C142160.INSTANCE;
        StringQualifier rootScopeQualifier60 = companion.getRootScopeQualifier();
        emptyList60 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory60 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier60, Reflection.getOrCreateKotlinClass(CatalogPresenter.class), null, c142160, kind, emptyList60));
        module.indexPrimaryType(factoryInstanceFactory60);
        new Pair(module, factoryInstanceFactory60);
        C142261 c142261 = C142261.INSTANCE;
        StringQualifier rootScopeQualifier61 = companion.getRootScopeQualifier();
        emptyList61 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory61 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier61, Reflection.getOrCreateKotlinClass(ChannelDetailsPresenter.class), null, c142261, kind, emptyList61));
        module.indexPrimaryType(factoryInstanceFactory61);
        new Pair(module, factoryInstanceFactory61);
        C142362 c142362 = C142362.INSTANCE;
        StringQualifier rootScopeQualifier62 = companion.getRootScopeQualifier();
        emptyList62 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory62 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier62, Reflection.getOrCreateKotlinClass(CatalogAllPresenter.class), null, c142362, kind, emptyList62));
        module.indexPrimaryType(factoryInstanceFactory62);
        new Pair(module, factoryInstanceFactory62);
        C142463 c142463 = C142463.INSTANCE;
        StringQualifier rootScopeQualifier63 = companion.getRootScopeQualifier();
        emptyList63 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory63 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier63, Reflection.getOrCreateKotlinClass(CatalogCategoriesPresenter.class), null, c142463, kind, emptyList63));
        module.indexPrimaryType(factoryInstanceFactory63);
        new Pair(module, factoryInstanceFactory63);
        C142564 c142564 = C142564.INSTANCE;
        StringQualifier rootScopeQualifier64 = companion.getRootScopeQualifier();
        emptyList64 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory64 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier64, Reflection.getOrCreateKotlinClass(CatalogUserChannelsPresenter.class), null, c142564, kind, emptyList64));
        module.indexPrimaryType(factoryInstanceFactory64);
        new Pair(module, factoryInstanceFactory64);
        C142665 c142665 = C142665.INSTANCE;
        StringQualifier rootScopeQualifier65 = companion.getRootScopeQualifier();
        emptyList65 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory65 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier65, Reflection.getOrCreateKotlinClass(StakingPresenter.class), null, c142665, kind, emptyList65));
        module.indexPrimaryType(factoryInstanceFactory65);
        new Pair(module, factoryInstanceFactory65);
        C142766 c142766 = C142766.INSTANCE;
        StringQualifier rootScopeQualifier66 = companion.getRootScopeQualifier();
        emptyList66 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory66 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier66, Reflection.getOrCreateKotlinClass(StakingProgrammesPresenter.class), null, c142766, kind, emptyList66));
        module.indexPrimaryType(factoryInstanceFactory66);
        new Pair(module, factoryInstanceFactory66);
        C142867 c142867 = C142867.INSTANCE;
        StringQualifier rootScopeQualifier67 = companion.getRootScopeQualifier();
        emptyList67 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory67 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier67, Reflection.getOrCreateKotlinClass(StakingConditionsPresenter.class), null, c142867, kind, emptyList67));
        module.indexPrimaryType(factoryInstanceFactory67);
        new Pair(module, factoryInstanceFactory67);
        C142968 c142968 = C142968.INSTANCE;
        StringQualifier rootScopeQualifier68 = companion.getRootScopeQualifier();
        emptyList68 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory68 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier68, Reflection.getOrCreateKotlinClass(StakingTransactionPresenter.class), null, c142968, kind, emptyList68));
        module.indexPrimaryType(factoryInstanceFactory68);
        new Pair(module, factoryInstanceFactory68);
        C143069 c143069 = C143069.INSTANCE;
        StringQualifier rootScopeQualifier69 = companion.getRootScopeQualifier();
        emptyList69 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory69 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier69, Reflection.getOrCreateKotlinClass(StakingOperationsPresenter.class), null, c143069, kind, emptyList69));
        module.indexPrimaryType(factoryInstanceFactory69);
        new Pair(module, factoryInstanceFactory69);
        C143270 c143270 = C143270.INSTANCE;
        StringQualifier rootScopeQualifier70 = companion.getRootScopeQualifier();
        emptyList70 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory70 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier70, Reflection.getOrCreateKotlinClass(StakingCalculatorPresenter.class), null, c143270, kind, emptyList70));
        module.indexPrimaryType(factoryInstanceFactory70);
        new Pair(module, factoryInstanceFactory70);
        C143371 c143371 = C143371.INSTANCE;
        StringQualifier rootScopeQualifier71 = companion.getRootScopeQualifier();
        emptyList71 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory71 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier71, Reflection.getOrCreateKotlinClass(StakingCalculatorProgrammesPresenter.class), null, c143371, kind, emptyList71));
        module.indexPrimaryType(factoryInstanceFactory71);
        new Pair(module, factoryInstanceFactory71);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$15 */
    /* loaded from: classes3.dex */
    public static final class C137115 extends Lambda implements Function2<Scope, ParametersHolder, WalletNotificationsPresenter> {
        public static final C137115 INSTANCE = new C137115();

        C137115() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C13762 extends Lambda implements Function2<Scope, ParametersHolder, WalletAttachAlertPresenter> {
        public static final C13762 INSTANCE = new C13762();

        C13762() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$33 */
    /* loaded from: classes3.dex */
    public static final class C139133 extends Lambda implements Function2<Scope, ParametersHolder, EnterWalletPasswordPresenter> {
        public static final C139133 INSTANCE = new C139133();

        C139133() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$43 */
    /* loaded from: classes3.dex */
    public static final class C140243 extends Lambda implements Function2<Scope, ParametersHolder, AddressMismatchPresenter> {
        public static final C140243 INSTANCE = new C140243();

        C140243() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$44 */
    /* loaded from: classes3.dex */
    public static final class C140344 extends Lambda implements Function2<Scope, ParametersHolder, WalletSwapProtocolsPresenter> {
        public static final C140344 INSTANCE = new C140344();

        C140344() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$50 */
    /* loaded from: classes3.dex */
    public static final class C141050 extends Lambda implements Function2<Scope, ParametersHolder, WalletAirdropPresenter> {
        public static final C141050 INSTANCE = new C141050();

        C141050() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$51 */
    /* loaded from: classes3.dex */
    public static final class C141151 extends Lambda implements Function2<Scope, ParametersHolder, WalletAirdropDialogPresenter> {
        public static final C141151 INSTANCE = new C141151();

        C141151() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$52 */
    /* loaded from: classes3.dex */
    public static final class C141252 extends Lambda implements Function2<Scope, ParametersHolder, DebugPresenter> {
        public static final C141252 INSTANCE = new C141252();

        C141252() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$65 */
    /* loaded from: classes3.dex */
    public static final class C142665 extends Lambda implements Function2<Scope, ParametersHolder, StakingPresenter> {
        public static final C142665 INSTANCE = new C142665();

        C142665() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$7 */
    /* loaded from: classes3.dex */
    public static final class C14317 extends Lambda implements Function2<Scope, ParametersHolder, WalletRootPresenter> {
        public static final C14317 INSTANCE = new C14317();

        C14317() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$8 */
    /* loaded from: classes3.dex */
    public static final class C14348 extends Lambda implements Function2<Scope, ParametersHolder, WalletSettingsPresenter> {
        public static final C14348 INSTANCE = new C14348();

        C14348() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$9 */
    /* loaded from: classes3.dex */
    public static final class C14359 extends Lambda implements Function2<Scope, ParametersHolder, PhotoViewerPresenter> {
        public static final C14359 INSTANCE = new C14359();

        C14359() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$10 */
    /* loaded from: classes3.dex */
    public static final class C136610 extends Lambda implements Function2<Scope, ParametersHolder, WalletHomePresenter> {
        public static final C136610 INSTANCE = new C136610();

        C136610() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$11 */
    /* loaded from: classes3.dex */
    public static final class C136711 extends Lambda implements Function2<Scope, ParametersHolder, WalletHomeCryptoPresenter> {
        public static final C136711 INSTANCE = new C136711();

        C136711() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$13 */
    /* loaded from: classes3.dex */
    public static final class C136913 extends Lambda implements Function2<Scope, ParametersHolder, WalletHomeServicesPresenter> {
        public static final C136913 INSTANCE = new C136913();

        C136913() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$20 */
    /* loaded from: classes3.dex */
    public static final class C137720 extends Lambda implements Function2<Scope, ParametersHolder, ContactsPresenter> {
        public static final C137720 INSTANCE = new C137720();

        C137720() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$22 */
    /* loaded from: classes3.dex */
    public static final class C137922 extends Lambda implements Function2<Scope, ParametersHolder, EmojiViewPresenter> {
        public static final C137922 INSTANCE = new C137922();

        C137922() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$25 */
    /* loaded from: classes3.dex */
    public static final class C138225 extends Lambda implements Function2<Scope, ParametersHolder, TwitterAuthPresenter> {
        public static final C138225 INSTANCE = new C138225();

        C138225() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$29 */
    /* loaded from: classes3.dex */
    public static final class C138629 extends Lambda implements Function2<Scope, ParametersHolder, CreateWalletPasswordPresenter> {
        public static final C138629 INSTANCE = new C138629();

        C138629() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$38 */
    /* loaded from: classes3.dex */
    public static final class C139638 extends Lambda implements Function2<Scope, ParametersHolder, SecretWordsCountPresenter> {
        public static final C139638 INSTANCE = new C139638();

        C139638() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$39 */
    /* loaded from: classes3.dex */
    public static final class C139739 extends Lambda implements Function2<Scope, ParametersHolder, WalletAccountSettingsPresenter> {
        public static final C139739 INSTANCE = new C139739();

        C139739() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$40 */
    /* loaded from: classes3.dex */
    public static final class C139940 extends Lambda implements Function2<Scope, ParametersHolder, BlockchainsManagementPresenter> {
        public static final C139940 INSTANCE = new C139940();

        C139940() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$42 */
    /* loaded from: classes3.dex */
    public static final class C140142 extends Lambda implements Function2<Scope, ParametersHolder, BackupWordSwitcherPresenter> {
        public static final C140142 INSTANCE = new C140142();

        C140142() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$48 */
    /* loaded from: classes3.dex */
    public static final class C140748 extends Lambda implements Function2<Scope, ParametersHolder, SimplexWebViewProcessingPresenter> {
        public static final C140748 INSTANCE = new C140748();

        C140748() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$49 */
    /* loaded from: classes3.dex */
    public static final class C140849 extends Lambda implements Function2<Scope, ParametersHolder, WalletAppearanceSettingsPresenter> {
        public static final C140849 INSTANCE = new C140849();

        C140849() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$53 */
    /* loaded from: classes3.dex */
    public static final class C141353 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectPresenter> {
        public static final C141353 INSTANCE = new C141353();

        C141353() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$59 */
    /* loaded from: classes3.dex */
    public static final class C141959 extends Lambda implements Function2<Scope, ParametersHolder, CatalogRootPresenter> {
        public static final C141959 INSTANCE = new C141959();

        C141959() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$60 */
    /* loaded from: classes3.dex */
    public static final class C142160 extends Lambda implements Function2<Scope, ParametersHolder, CatalogPresenter> {
        public static final C142160 INSTANCE = new C142160();

        C142160() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$69 */
    /* loaded from: classes3.dex */
    public static final class C143069 extends Lambda implements Function2<Scope, ParametersHolder, StakingOperationsPresenter> {
        public static final C143069 INSTANCE = new C143069();

        C143069() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$71 */
    /* loaded from: classes3.dex */
    public static final class C143371 extends Lambda implements Function2<Scope, ParametersHolder, StakingCalculatorProgrammesPresenter> {
        public static final C143371 INSTANCE = new C143371();

        C143371() {
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
