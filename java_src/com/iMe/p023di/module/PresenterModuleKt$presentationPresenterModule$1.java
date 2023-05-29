package com.iMe.p023di.module;

import com.binance.android.opensdk.api.BinanceAPI;
import com.iMe.domain.contacts.ContactsInteractor;
import com.iMe.feature.profile.GroupMembershipUseCase;
import com.iMe.feature.profile.ProfileData;
import com.iMe.feature.profile.ProfilePresenter;
import com.iMe.feature.profile.ProfileUseCase;
import com.iMe.feature.socialMedias.SocialNetwork;
import com.iMe.feature.socialMedias.SocialUseCase;
import com.iMe.feature.twitter.TwitterPresenter;
import com.iMe.feature.twitter.search.TwitterSearchPresenter;
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
import com.iMe.p031ui.catalog.CatalogRootPresenter;
import com.iMe.p031ui.catalog.details.ChannelDetailsPresenter;
import com.iMe.p031ui.catalog.tabs.CatalogPresenter;
import com.iMe.p031ui.catalog.tabs.all.CatalogAllPresenter;
import com.iMe.p031ui.catalog.tabs.categories.CatalogCategoriesPresenter;
import com.iMe.p031ui.catalog.tabs.user_channels.CatalogUserChannelsPresenter;
import com.iMe.p031ui.chat.ChatPresenter;
import com.iMe.p031ui.contacts.ContactsPresenter;
import com.iMe.p031ui.custom.backup.switcher.BackupWordSwitcherPresenter;
import com.iMe.p031ui.debug.DebugPresenter;
import com.iMe.p031ui.kikliko.EmojiViewPresenter;
import com.iMe.p031ui.reaction.ReactionPresenter;
import com.iMe.p031ui.recognition.PhotoViewerPresenter;
import com.iMe.p031ui.translate.TranslationPresenter;
import com.iMe.p031ui.wallet.actions.send.amount.WalletSendAmountPresenter;
import com.iMe.p031ui.wallet.actions.send.recipient.WalletSendRecipientPresenter;
import com.iMe.p031ui.wallet.airdrop.WalletAirdropPresenter;
import com.iMe.p031ui.wallet.airdrop.dialog.WalletAirdropDialogPresenter;
import com.iMe.p031ui.wallet.common.WalletRootPresenter;
import com.iMe.p031ui.wallet.crypto.address_mismatch.AddressMismatchPresenter;
import com.iMe.p031ui.wallet.crypto.buy.BuyCryptoProductPresenter;
import com.iMe.p031ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPricePresenter;
import com.iMe.p031ui.wallet.crypto.buy.processing.SimplexWebViewProcessingPresenter;
import com.iMe.p031ui.wallet.crypto.create.CreateWalletPresenter;
import com.iMe.p031ui.wallet.crypto.create.password.CreateWalletPasswordPresenter;
import com.iMe.p031ui.wallet.crypto.create.pin.CreateWalletPinPresenter;
import com.iMe.p031ui.wallet.crypto.create.secret_words_count.SecretWordsCountPresenter;
import com.iMe.p031ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter;
import com.iMe.p031ui.wallet.crypto.enter.pin.EnterWalletPinPresenter;
import com.iMe.p031ui.wallet.crypto.settings.WalletAccountSettingsPresenter;
import com.iMe.p031ui.wallet.crypto.settings.blockchains.BlockchainsManagementPresenter;
import com.iMe.p031ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsPresenter;
import com.iMe.p031ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter;
import com.iMe.p031ui.wallet.crypto.tutorial.CreateWalletTutorialPresenter;
import com.iMe.p031ui.wallet.crypto.wallet_connect.WalletConnectPresenter;
import com.iMe.p031ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignPresenter;
import com.iMe.p031ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkPresenter;
import com.iMe.p031ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionPresenter;
import com.iMe.p031ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsPresenter;
import com.iMe.p031ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionPresenter;
import com.iMe.p031ui.wallet.donations.WalletDonationsPresenter;
import com.iMe.p031ui.wallet.home.old.WalletAttachAlertPresenter;
import com.iMe.p031ui.wallet.home.p032v2.WalletHomePresenter;
import com.iMe.p031ui.wallet.home.p032v2.details.WalletTokenDetailsPresenter;
import com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.WalletHomeBinancePayPresenter;
import com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.history.WalletBinancePayHistoryFragment;
import com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.history.WalletBinancePayHistoryPresenter;
import com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter;
import com.iMe.p031ui.wallet.home.p032v2.tabs.crypto.WalletHomeCryptoPresenter;
import com.iMe.p031ui.wallet.home.p032v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment;
import com.iMe.p031ui.wallet.home.p032v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter;
import com.iMe.p031ui.wallet.home.p032v2.tabs.services.WalletHomeServicesPresenter;
import com.iMe.p031ui.wallet.notifications.WalletNotificationsPresenter;
import com.iMe.p031ui.wallet.notifications.details.WalletNotificationDetailsPresenter;
import com.iMe.p031ui.wallet.settings.WalletSettingsPresenter;
import com.iMe.p031ui.wallet.settings.appearance.WalletAppearanceSettingsPresenter;
import com.iMe.p031ui.wallet.staking.StakingPresenter;
import com.iMe.p031ui.wallet.staking.calculator.StakingCalculatorPresenter;
import com.iMe.p031ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesPresenter;
import com.iMe.p031ui.wallet.staking.conditions.StakingConditionsPresenter;
import com.iMe.p031ui.wallet.staking.operations.StakingOperationsPresenter;
import com.iMe.p031ui.wallet.staking.programmes.StakingProgrammesPresenter;
import com.iMe.p031ui.wallet.staking.transaction.StakingTransactionPresenter;
import com.iMe.p031ui.wallet.swap.WalletSwapProtocolsPresenter;
import com.iMe.p031ui.wallet.swap.fee.WalletSwapFeePresenter;
import com.iMe.p031ui.wallet.swap.process.WalletSwapProcessFragment;
import com.iMe.p031ui.wallet.swap.process.WalletSwapProcessPresenter;
import com.iMe.p031ui.wallet.swap.token.WalletSelectTokenPresenter;
import com.iMe.p031ui.wallet.transaction.WalletTransactionsFragment;
import com.iMe.p031ui.wallet.transaction.WalletTransactionsPresenter;
import com.iMe.p031ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog;
import com.iMe.p031ui.wallet.transaction.details.WalletTransactionDetailsPresenter;
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
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.validator.wallet.CustomPriceValidator;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.definition.KoinDefinition;
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
    public static final class C13421 extends Lambda implements Function2<Scope, ParametersHolder, TranslationPresenter> {
        public static final C13421 INSTANCE = new C13421();

        C13421() {
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
    public static final class C134512 extends Lambda implements Function2<Scope, ParametersHolder, WalletHomeCryptoTokensSettingsPresenter> {
        public static final C134512 INSTANCE = new C134512();

        C134512() {
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
    public static final class C134714 extends Lambda implements Function2<Scope, ParametersHolder, WalletTokenDetailsPresenter> {
        public static final C134714 INSTANCE = new C134714();

        C134714() {
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
    public static final class C134916 extends Lambda implements Function2<Scope, ParametersHolder, WalletTransactionsPresenter> {
        public static final C134916 INSTANCE = new C134916();

        C134916() {
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
    public static final class C135017 extends Lambda implements Function2<Scope, ParametersHolder, WalletNotificationDetailsPresenter> {
        public static final C135017 INSTANCE = new C135017();

        C135017() {
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
    public static final class C135118 extends Lambda implements Function2<Scope, ParametersHolder, WalletTransactionDetailsPresenter> {
        public static final C135118 INSTANCE = new C135118();

        C135118() {
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
    public static final class C135219 extends Lambda implements Function2<Scope, ParametersHolder, ReactionPresenter> {
        public static final C135219 INSTANCE = new C135219();

        C135219() {
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
    public static final class C135521 extends Lambda implements Function2<Scope, ParametersHolder, ProfilePresenter> {
        public static final C135521 INSTANCE = new C135521();

        C135521() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final ProfilePresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new ProfilePresenter((ProfileData) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(ProfileData.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (TwitterInteractor) factory.get(Reflection.getOrCreateKotlinClass(TwitterInteractor.class), null, null), (AccountLevelInteractor) factory.get(Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, null), (ProfileUseCase) factory.get(Reflection.getOrCreateKotlinClass(ProfileUseCase.class), null, null), (SocialUseCase) factory.get(Reflection.getOrCreateKotlinClass(SocialUseCase.class), null, null), (GroupMembershipUseCase) factory.get(Reflection.getOrCreateKotlinClass(GroupMembershipUseCase.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$23 */
    /* loaded from: classes3.dex */
    public static final class C135723 extends Lambda implements Function2<Scope, ParametersHolder, TwitterPresenter> {
        public static final C135723 INSTANCE = new C135723();

        C135723() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TwitterPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
            return new TwitterPresenter(((Number) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Long.class))).longValue(), (SocialNetwork) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(SocialNetwork.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (TwitterInteractor) factory.get(Reflection.getOrCreateKotlinClass(TwitterInteractor.class), null, null), (SocialUseCase) factory.get(Reflection.getOrCreateKotlinClass(SocialUseCase.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$24 */
    /* loaded from: classes3.dex */
    public static final class C135824 extends Lambda implements Function2<Scope, ParametersHolder, TwitterSearchPresenter> {
        public static final C135824 INSTANCE = new C135824();

        C135824() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$25 */
    /* loaded from: classes3.dex */
    public static final class C135925 extends Lambda implements Function2<Scope, ParametersHolder, CreateWalletTutorialPresenter> {
        public static final C135925 INSTANCE = new C135925();

        C135925() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$26 */
    /* loaded from: classes3.dex */
    public static final class C136026 extends Lambda implements Function2<Scope, ParametersHolder, BuyCryptoProductPresenter> {
        public static final C136026 INSTANCE = new C136026();

        C136026() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$27 */
    /* loaded from: classes3.dex */
    public static final class C136127 extends Lambda implements Function2<Scope, ParametersHolder, CryptoBuyCustomPricePresenter> {
        public static final C136127 INSTANCE = new C136127();

        C136127() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$29 */
    /* loaded from: classes3.dex */
    public static final class C136329 extends Lambda implements Function2<Scope, ParametersHolder, CreateWalletPinPresenter> {
        public static final C136329 INSTANCE = new C136329();

        C136329() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C13643 extends Lambda implements Function2<Scope, ParametersHolder, WalletSendRecipientPresenter> {
        public static final C13643 INSTANCE = new C13643();

        C13643() {
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
    public static final class C136530 extends Lambda implements Function2<Scope, ParametersHolder, WalletPrivacySettingPresenter> {
        public static final C136530 INSTANCE = new C136530();

        C136530() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$31 */
    /* loaded from: classes3.dex */
    public static final class C136631 extends Lambda implements Function2<Scope, ParametersHolder, EnterWalletPinPresenter> {
        public static final C136631 INSTANCE = new C136631();

        C136631() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$33 */
    /* loaded from: classes3.dex */
    public static final class C136833 extends Lambda implements Function2<Scope, ParametersHolder, WalletBinancePayHistoryPresenter> {
        public static final C136833 INSTANCE = new C136833();

        C136833() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$34 */
    /* loaded from: classes3.dex */
    public static final class C136934 extends Lambda implements Function2<Scope, ParametersHolder, WalletHomeBinancePayPresenter> {
        public static final C136934 INSTANCE = new C136934();

        C136934() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$35 */
    /* loaded from: classes3.dex */
    public static final class C137035 extends Lambda implements Function2<Scope, ParametersHolder, WalletReceiveBinancePayPresenter> {
        public static final C137035 INSTANCE = new C137035();

        C137035() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$36 */
    /* loaded from: classes3.dex */
    public static final class C137136 extends Lambda implements Function2<Scope, ParametersHolder, CreateWalletPresenter> {
        public static final C137136 INSTANCE = new C137136();

        C137136() {
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
    public static final class C13754 extends Lambda implements Function2<Scope, ParametersHolder, WalletSendAmountPresenter> {
        public static final C13754 INSTANCE = new C13754();

        C13754() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$40 */
    /* loaded from: classes3.dex */
    public static final class C137640 extends Lambda implements Function2<Scope, ParametersHolder, BlockchainWalletDetailsPresenter> {
        public static final C137640 INSTANCE = new C137640();

        C137640() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$44 */
    /* loaded from: classes3.dex */
    public static final class C138044 extends Lambda implements Function2<Scope, ParametersHolder, WalletSwapProcessPresenter> {
        public static final C138044 INSTANCE = new C138044();

        C138044() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$45 */
    /* loaded from: classes3.dex */
    public static final class C138145 extends Lambda implements Function2<Scope, ParametersHolder, WalletSelectTokenPresenter> {
        public static final C138145 INSTANCE = new C138145();

        C138145() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$46 */
    /* loaded from: classes3.dex */
    public static final class C138246 extends Lambda implements Function2<Scope, ParametersHolder, WalletSwapFeePresenter> {
        public static final C138246 INSTANCE = new C138246();

        C138246() {
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
    public static final class C13865 extends Lambda implements Function2<Scope, ParametersHolder, WalletDonationsPresenter> {
        public static final C13865 INSTANCE = new C13865();

        C13865() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$53 */
    /* loaded from: classes3.dex */
    public static final class C139053 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectSessionDetailsPresenter> {
        public static final C139053 INSTANCE = new C139053();

        C139053() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$54 */
    /* loaded from: classes3.dex */
    public static final class C139154 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectNewSessionPresenter> {
        public static final C139154 INSTANCE = new C139154();

        C139154() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$55 */
    /* loaded from: classes3.dex */
    public static final class C139255 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectTransactionPresenter> {
        public static final C139255 INSTANCE = new C139255();

        C139255() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$56 */
    /* loaded from: classes3.dex */
    public static final class C139356 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectMessageSignPresenter> {
        public static final C139356 INSTANCE = new C139356();

        C139356() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$57 */
    /* loaded from: classes3.dex */
    public static final class C139457 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectSwitchNetworkPresenter> {
        public static final C139457 INSTANCE = new C139457();

        C139457() {
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
    public static final class C13976 extends Lambda implements Function2<Scope, ParametersHolder, ChatPresenter> {
        public static final C13976 INSTANCE = new C13976();

        C13976() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$60 */
    /* loaded from: classes3.dex */
    public static final class C139860 extends Lambda implements Function2<Scope, ParametersHolder, ChannelDetailsPresenter> {
        public static final C139860 INSTANCE = new C139860();

        C139860() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$61 */
    /* loaded from: classes3.dex */
    public static final class C139961 extends Lambda implements Function2<Scope, ParametersHolder, CatalogAllPresenter> {
        public static final C139961 INSTANCE = new C139961();

        C139961() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$62 */
    /* loaded from: classes3.dex */
    public static final class C140062 extends Lambda implements Function2<Scope, ParametersHolder, CatalogCategoriesPresenter> {
        public static final C140062 INSTANCE = new C140062();

        C140062() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$63 */
    /* loaded from: classes3.dex */
    public static final class C140163 extends Lambda implements Function2<Scope, ParametersHolder, CatalogUserChannelsPresenter> {
        public static final C140163 INSTANCE = new C140163();

        C140163() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$65 */
    /* loaded from: classes3.dex */
    public static final class C140365 extends Lambda implements Function2<Scope, ParametersHolder, StakingProgrammesPresenter> {
        public static final C140365 INSTANCE = new C140365();

        C140365() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$66 */
    /* loaded from: classes3.dex */
    public static final class C140466 extends Lambda implements Function2<Scope, ParametersHolder, StakingConditionsPresenter> {
        public static final C140466 INSTANCE = new C140466();

        C140466() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$67 */
    /* loaded from: classes3.dex */
    public static final class C140567 extends Lambda implements Function2<Scope, ParametersHolder, StakingTransactionPresenter> {
        public static final C140567 INSTANCE = new C140567();

        C140567() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$69 */
    /* loaded from: classes3.dex */
    public static final class C140769 extends Lambda implements Function2<Scope, ParametersHolder, StakingCalculatorPresenter> {
        public static final C140769 INSTANCE = new C140769();

        C140769() {
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
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C13421 c13421 = C13421.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(TranslationPresenter.class), null, c13421, kind, emptyList));
        module.indexPrimaryType(factoryInstanceFactory);
        new KoinDefinition(module, factoryInstanceFactory);
        C13532 c13532 = C13532.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory2 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(WalletAttachAlertPresenter.class), null, c13532, kind, emptyList2));
        module.indexPrimaryType(factoryInstanceFactory2);
        new KoinDefinition(module, factoryInstanceFactory2);
        C13643 c13643 = C13643.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory3 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(WalletSendRecipientPresenter.class), null, c13643, kind, emptyList3));
        module.indexPrimaryType(factoryInstanceFactory3);
        new KoinDefinition(module, factoryInstanceFactory3);
        C13754 c13754 = C13754.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory4 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(WalletSendAmountPresenter.class), null, c13754, kind, emptyList4));
        module.indexPrimaryType(factoryInstanceFactory4);
        new KoinDefinition(module, factoryInstanceFactory4);
        C13865 c13865 = C13865.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory5 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(WalletDonationsPresenter.class), null, c13865, kind, emptyList5));
        module.indexPrimaryType(factoryInstanceFactory5);
        new KoinDefinition(module, factoryInstanceFactory5);
        C13976 c13976 = C13976.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory6 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(ChatPresenter.class), null, c13976, kind, emptyList6));
        module.indexPrimaryType(factoryInstanceFactory6);
        new KoinDefinition(module, factoryInstanceFactory6);
        C14087 c14087 = C14087.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory7 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(WalletRootPresenter.class), null, c14087, kind, emptyList7));
        module.indexPrimaryType(factoryInstanceFactory7);
        new KoinDefinition(module, factoryInstanceFactory7);
        C14108 c14108 = C14108.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory8 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(WalletSettingsPresenter.class), null, c14108, kind, emptyList8));
        module.indexPrimaryType(factoryInstanceFactory8);
        new KoinDefinition(module, factoryInstanceFactory8);
        C14119 c14119 = C14119.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory9 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(PhotoViewerPresenter.class), null, c14119, kind, emptyList9));
        module.indexPrimaryType(factoryInstanceFactory9);
        new KoinDefinition(module, factoryInstanceFactory9);
        C134310 c134310 = C134310.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory10 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(WalletHomePresenter.class), null, c134310, kind, emptyList10));
        module.indexPrimaryType(factoryInstanceFactory10);
        new KoinDefinition(module, factoryInstanceFactory10);
        C134411 c134411 = C134411.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory11 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(WalletHomeCryptoPresenter.class), null, c134411, kind, emptyList11));
        module.indexPrimaryType(factoryInstanceFactory11);
        new KoinDefinition(module, factoryInstanceFactory11);
        C134512 c134512 = C134512.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory12 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(WalletHomeCryptoTokensSettingsPresenter.class), null, c134512, kind, emptyList12));
        module.indexPrimaryType(factoryInstanceFactory12);
        new KoinDefinition(module, factoryInstanceFactory12);
        C134613 c134613 = C134613.INSTANCE;
        StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory13 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(WalletHomeServicesPresenter.class), null, c134613, kind, emptyList13));
        module.indexPrimaryType(factoryInstanceFactory13);
        new KoinDefinition(module, factoryInstanceFactory13);
        C134714 c134714 = C134714.INSTANCE;
        StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory14 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(WalletTokenDetailsPresenter.class), null, c134714, kind, emptyList14));
        module.indexPrimaryType(factoryInstanceFactory14);
        new KoinDefinition(module, factoryInstanceFactory14);
        C134815 c134815 = C134815.INSTANCE;
        StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory15 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(WalletNotificationsPresenter.class), null, c134815, kind, emptyList15));
        module.indexPrimaryType(factoryInstanceFactory15);
        new KoinDefinition(module, factoryInstanceFactory15);
        C134916 c134916 = C134916.INSTANCE;
        StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
        emptyList16 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory16 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(WalletTransactionsPresenter.class), null, c134916, kind, emptyList16));
        module.indexPrimaryType(factoryInstanceFactory16);
        new KoinDefinition(module, factoryInstanceFactory16);
        C135017 c135017 = C135017.INSTANCE;
        StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
        emptyList17 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory17 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(WalletNotificationDetailsPresenter.class), null, c135017, kind, emptyList17));
        module.indexPrimaryType(factoryInstanceFactory17);
        new KoinDefinition(module, factoryInstanceFactory17);
        C135118 c135118 = C135118.INSTANCE;
        StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
        emptyList18 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory18 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(WalletTransactionDetailsPresenter.class), null, c135118, kind, emptyList18));
        module.indexPrimaryType(factoryInstanceFactory18);
        new KoinDefinition(module, factoryInstanceFactory18);
        C135219 c135219 = C135219.INSTANCE;
        StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
        emptyList19 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory19 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(ReactionPresenter.class), null, c135219, kind, emptyList19));
        module.indexPrimaryType(factoryInstanceFactory19);
        new KoinDefinition(module, factoryInstanceFactory19);
        C135420 c135420 = C135420.INSTANCE;
        StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
        emptyList20 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory20 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(ContactsPresenter.class), null, c135420, kind, emptyList20));
        module.indexPrimaryType(factoryInstanceFactory20);
        new KoinDefinition(module, factoryInstanceFactory20);
        C135521 c135521 = C135521.INSTANCE;
        StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
        emptyList21 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory21 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(ProfilePresenter.class), null, c135521, kind, emptyList21));
        module.indexPrimaryType(factoryInstanceFactory21);
        new KoinDefinition(module, factoryInstanceFactory21);
        C135622 c135622 = C135622.INSTANCE;
        StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
        emptyList22 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory22 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(EmojiViewPresenter.class), null, c135622, kind, emptyList22));
        module.indexPrimaryType(factoryInstanceFactory22);
        new KoinDefinition(module, factoryInstanceFactory22);
        C135723 c135723 = C135723.INSTANCE;
        StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
        emptyList23 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory23 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(TwitterPresenter.class), null, c135723, kind, emptyList23));
        module.indexPrimaryType(factoryInstanceFactory23);
        new KoinDefinition(module, factoryInstanceFactory23);
        C135824 c135824 = C135824.INSTANCE;
        StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
        emptyList24 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory24 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(TwitterSearchPresenter.class), null, c135824, kind, emptyList24));
        module.indexPrimaryType(factoryInstanceFactory24);
        new KoinDefinition(module, factoryInstanceFactory24);
        C135925 c135925 = C135925.INSTANCE;
        StringQualifier rootScopeQualifier25 = companion.getRootScopeQualifier();
        emptyList25 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory25 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier25, Reflection.getOrCreateKotlinClass(CreateWalletTutorialPresenter.class), null, c135925, kind, emptyList25));
        module.indexPrimaryType(factoryInstanceFactory25);
        new KoinDefinition(module, factoryInstanceFactory25);
        C136026 c136026 = C136026.INSTANCE;
        StringQualifier rootScopeQualifier26 = companion.getRootScopeQualifier();
        emptyList26 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory26 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier26, Reflection.getOrCreateKotlinClass(BuyCryptoProductPresenter.class), null, c136026, kind, emptyList26));
        module.indexPrimaryType(factoryInstanceFactory26);
        new KoinDefinition(module, factoryInstanceFactory26);
        C136127 c136127 = C136127.INSTANCE;
        StringQualifier rootScopeQualifier27 = companion.getRootScopeQualifier();
        emptyList27 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory27 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier27, Reflection.getOrCreateKotlinClass(CryptoBuyCustomPricePresenter.class), null, c136127, kind, emptyList27));
        module.indexPrimaryType(factoryInstanceFactory27);
        new KoinDefinition(module, factoryInstanceFactory27);
        C136228 c136228 = C136228.INSTANCE;
        StringQualifier rootScopeQualifier28 = companion.getRootScopeQualifier();
        emptyList28 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory28 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier28, Reflection.getOrCreateKotlinClass(CreateWalletPasswordPresenter.class), null, c136228, kind, emptyList28));
        module.indexPrimaryType(factoryInstanceFactory28);
        new KoinDefinition(module, factoryInstanceFactory28);
        C136329 c136329 = C136329.INSTANCE;
        StringQualifier rootScopeQualifier29 = companion.getRootScopeQualifier();
        emptyList29 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory29 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier29, Reflection.getOrCreateKotlinClass(CreateWalletPinPresenter.class), null, c136329, kind, emptyList29));
        module.indexPrimaryType(factoryInstanceFactory29);
        new KoinDefinition(module, factoryInstanceFactory29);
        C136530 c136530 = C136530.INSTANCE;
        StringQualifier rootScopeQualifier30 = companion.getRootScopeQualifier();
        emptyList30 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory30 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier30, Reflection.getOrCreateKotlinClass(WalletPrivacySettingPresenter.class), null, c136530, kind, emptyList30));
        module.indexPrimaryType(factoryInstanceFactory30);
        new KoinDefinition(module, factoryInstanceFactory30);
        C136631 c136631 = C136631.INSTANCE;
        StringQualifier rootScopeQualifier31 = companion.getRootScopeQualifier();
        emptyList31 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory31 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier31, Reflection.getOrCreateKotlinClass(EnterWalletPinPresenter.class), null, c136631, kind, emptyList31));
        module.indexPrimaryType(factoryInstanceFactory31);
        new KoinDefinition(module, factoryInstanceFactory31);
        C136732 c136732 = C136732.INSTANCE;
        StringQualifier rootScopeQualifier32 = companion.getRootScopeQualifier();
        emptyList32 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory32 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier32, Reflection.getOrCreateKotlinClass(EnterWalletPasswordPresenter.class), null, c136732, kind, emptyList32));
        module.indexPrimaryType(factoryInstanceFactory32);
        new KoinDefinition(module, factoryInstanceFactory32);
        C136833 c136833 = C136833.INSTANCE;
        StringQualifier rootScopeQualifier33 = companion.getRootScopeQualifier();
        emptyList33 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory33 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier33, Reflection.getOrCreateKotlinClass(WalletBinancePayHistoryPresenter.class), null, c136833, kind, emptyList33));
        module.indexPrimaryType(factoryInstanceFactory33);
        new KoinDefinition(module, factoryInstanceFactory33);
        C136934 c136934 = C136934.INSTANCE;
        StringQualifier rootScopeQualifier34 = companion.getRootScopeQualifier();
        emptyList34 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory34 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier34, Reflection.getOrCreateKotlinClass(WalletHomeBinancePayPresenter.class), null, c136934, kind, emptyList34));
        module.indexPrimaryType(factoryInstanceFactory34);
        new KoinDefinition(module, factoryInstanceFactory34);
        C137035 c137035 = C137035.INSTANCE;
        StringQualifier rootScopeQualifier35 = companion.getRootScopeQualifier();
        emptyList35 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory35 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier35, Reflection.getOrCreateKotlinClass(WalletReceiveBinancePayPresenter.class), null, c137035, kind, emptyList35));
        module.indexPrimaryType(factoryInstanceFactory35);
        new KoinDefinition(module, factoryInstanceFactory35);
        C137136 c137136 = C137136.INSTANCE;
        StringQualifier rootScopeQualifier36 = companion.getRootScopeQualifier();
        emptyList36 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory36 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier36, Reflection.getOrCreateKotlinClass(CreateWalletPresenter.class), null, c137136, kind, emptyList36));
        module.indexPrimaryType(factoryInstanceFactory36);
        new KoinDefinition(module, factoryInstanceFactory36);
        C137237 c137237 = C137237.INSTANCE;
        StringQualifier rootScopeQualifier37 = companion.getRootScopeQualifier();
        emptyList37 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory37 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier37, Reflection.getOrCreateKotlinClass(SecretWordsCountPresenter.class), null, c137237, kind, emptyList37));
        module.indexPrimaryType(factoryInstanceFactory37);
        new KoinDefinition(module, factoryInstanceFactory37);
        C137338 c137338 = C137338.INSTANCE;
        StringQualifier rootScopeQualifier38 = companion.getRootScopeQualifier();
        emptyList38 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory38 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier38, Reflection.getOrCreateKotlinClass(WalletAccountSettingsPresenter.class), null, c137338, kind, emptyList38));
        module.indexPrimaryType(factoryInstanceFactory38);
        new KoinDefinition(module, factoryInstanceFactory38);
        C137439 c137439 = C137439.INSTANCE;
        StringQualifier rootScopeQualifier39 = companion.getRootScopeQualifier();
        emptyList39 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory39 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier39, Reflection.getOrCreateKotlinClass(BlockchainsManagementPresenter.class), null, c137439, kind, emptyList39));
        module.indexPrimaryType(factoryInstanceFactory39);
        new KoinDefinition(module, factoryInstanceFactory39);
        C137640 c137640 = C137640.INSTANCE;
        StringQualifier rootScopeQualifier40 = companion.getRootScopeQualifier();
        emptyList40 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory40 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier40, Reflection.getOrCreateKotlinClass(BlockchainWalletDetailsPresenter.class), null, c137640, kind, emptyList40));
        module.indexPrimaryType(factoryInstanceFactory40);
        new KoinDefinition(module, factoryInstanceFactory40);
        C137741 c137741 = C137741.INSTANCE;
        StringQualifier rootScopeQualifier41 = companion.getRootScopeQualifier();
        emptyList41 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory41 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier41, Reflection.getOrCreateKotlinClass(BackupWordSwitcherPresenter.class), null, c137741, kind, emptyList41));
        module.indexPrimaryType(factoryInstanceFactory41);
        new KoinDefinition(module, factoryInstanceFactory41);
        C137842 c137842 = C137842.INSTANCE;
        StringQualifier rootScopeQualifier42 = companion.getRootScopeQualifier();
        emptyList42 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory42 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier42, Reflection.getOrCreateKotlinClass(AddressMismatchPresenter.class), null, c137842, kind, emptyList42));
        module.indexPrimaryType(factoryInstanceFactory42);
        new KoinDefinition(module, factoryInstanceFactory42);
        C137943 c137943 = C137943.INSTANCE;
        StringQualifier rootScopeQualifier43 = companion.getRootScopeQualifier();
        emptyList43 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory43 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier43, Reflection.getOrCreateKotlinClass(WalletSwapProtocolsPresenter.class), null, c137943, kind, emptyList43));
        module.indexPrimaryType(factoryInstanceFactory43);
        new KoinDefinition(module, factoryInstanceFactory43);
        C138044 c138044 = C138044.INSTANCE;
        StringQualifier rootScopeQualifier44 = companion.getRootScopeQualifier();
        emptyList44 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory44 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier44, Reflection.getOrCreateKotlinClass(WalletSwapProcessPresenter.class), null, c138044, kind, emptyList44));
        module.indexPrimaryType(factoryInstanceFactory44);
        new KoinDefinition(module, factoryInstanceFactory44);
        C138145 c138145 = C138145.INSTANCE;
        StringQualifier rootScopeQualifier45 = companion.getRootScopeQualifier();
        emptyList45 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory45 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier45, Reflection.getOrCreateKotlinClass(WalletSelectTokenPresenter.class), null, c138145, kind, emptyList45));
        module.indexPrimaryType(factoryInstanceFactory45);
        new KoinDefinition(module, factoryInstanceFactory45);
        C138246 c138246 = C138246.INSTANCE;
        StringQualifier rootScopeQualifier46 = companion.getRootScopeQualifier();
        emptyList46 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory46 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier46, Reflection.getOrCreateKotlinClass(WalletSwapFeePresenter.class), null, c138246, kind, emptyList46));
        module.indexPrimaryType(factoryInstanceFactory46);
        new KoinDefinition(module, factoryInstanceFactory46);
        C138347 c138347 = C138347.INSTANCE;
        StringQualifier rootScopeQualifier47 = companion.getRootScopeQualifier();
        emptyList47 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory47 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier47, Reflection.getOrCreateKotlinClass(SimplexWebViewProcessingPresenter.class), null, c138347, kind, emptyList47));
        module.indexPrimaryType(factoryInstanceFactory47);
        new KoinDefinition(module, factoryInstanceFactory47);
        C138448 c138448 = C138448.INSTANCE;
        StringQualifier rootScopeQualifier48 = companion.getRootScopeQualifier();
        emptyList48 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory48 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier48, Reflection.getOrCreateKotlinClass(WalletAppearanceSettingsPresenter.class), null, c138448, kind, emptyList48));
        module.indexPrimaryType(factoryInstanceFactory48);
        new KoinDefinition(module, factoryInstanceFactory48);
        C138549 c138549 = C138549.INSTANCE;
        StringQualifier rootScopeQualifier49 = companion.getRootScopeQualifier();
        emptyList49 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory49 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier49, Reflection.getOrCreateKotlinClass(WalletAirdropPresenter.class), null, c138549, kind, emptyList49));
        module.indexPrimaryType(factoryInstanceFactory49);
        new KoinDefinition(module, factoryInstanceFactory49);
        C138750 c138750 = C138750.INSTANCE;
        StringQualifier rootScopeQualifier50 = companion.getRootScopeQualifier();
        emptyList50 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory50 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier50, Reflection.getOrCreateKotlinClass(WalletAirdropDialogPresenter.class), null, c138750, kind, emptyList50));
        module.indexPrimaryType(factoryInstanceFactory50);
        new KoinDefinition(module, factoryInstanceFactory50);
        C138851 c138851 = C138851.INSTANCE;
        StringQualifier rootScopeQualifier51 = companion.getRootScopeQualifier();
        emptyList51 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory51 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier51, Reflection.getOrCreateKotlinClass(DebugPresenter.class), null, c138851, kind, emptyList51));
        module.indexPrimaryType(factoryInstanceFactory51);
        new KoinDefinition(module, factoryInstanceFactory51);
        C138952 c138952 = C138952.INSTANCE;
        StringQualifier rootScopeQualifier52 = companion.getRootScopeQualifier();
        emptyList52 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory52 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier52, Reflection.getOrCreateKotlinClass(WalletConnectPresenter.class), null, c138952, kind, emptyList52));
        module.indexPrimaryType(factoryInstanceFactory52);
        new KoinDefinition(module, factoryInstanceFactory52);
        C139053 c139053 = C139053.INSTANCE;
        StringQualifier rootScopeQualifier53 = companion.getRootScopeQualifier();
        emptyList53 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory53 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier53, Reflection.getOrCreateKotlinClass(WalletConnectSessionDetailsPresenter.class), null, c139053, kind, emptyList53));
        module.indexPrimaryType(factoryInstanceFactory53);
        new KoinDefinition(module, factoryInstanceFactory53);
        C139154 c139154 = C139154.INSTANCE;
        StringQualifier rootScopeQualifier54 = companion.getRootScopeQualifier();
        emptyList54 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory54 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier54, Reflection.getOrCreateKotlinClass(WalletConnectNewSessionPresenter.class), null, c139154, kind, emptyList54));
        module.indexPrimaryType(factoryInstanceFactory54);
        new KoinDefinition(module, factoryInstanceFactory54);
        C139255 c139255 = C139255.INSTANCE;
        StringQualifier rootScopeQualifier55 = companion.getRootScopeQualifier();
        emptyList55 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory55 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier55, Reflection.getOrCreateKotlinClass(WalletConnectTransactionPresenter.class), null, c139255, kind, emptyList55));
        module.indexPrimaryType(factoryInstanceFactory55);
        new KoinDefinition(module, factoryInstanceFactory55);
        C139356 c139356 = C139356.INSTANCE;
        StringQualifier rootScopeQualifier56 = companion.getRootScopeQualifier();
        emptyList56 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory56 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier56, Reflection.getOrCreateKotlinClass(WalletConnectMessageSignPresenter.class), null, c139356, kind, emptyList56));
        module.indexPrimaryType(factoryInstanceFactory56);
        new KoinDefinition(module, factoryInstanceFactory56);
        C139457 c139457 = C139457.INSTANCE;
        StringQualifier rootScopeQualifier57 = companion.getRootScopeQualifier();
        emptyList57 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory57 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier57, Reflection.getOrCreateKotlinClass(WalletConnectSwitchNetworkPresenter.class), null, c139457, kind, emptyList57));
        module.indexPrimaryType(factoryInstanceFactory57);
        new KoinDefinition(module, factoryInstanceFactory57);
        C139558 c139558 = C139558.INSTANCE;
        StringQualifier rootScopeQualifier58 = companion.getRootScopeQualifier();
        emptyList58 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory58 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier58, Reflection.getOrCreateKotlinClass(CatalogRootPresenter.class), null, c139558, kind, emptyList58));
        module.indexPrimaryType(factoryInstanceFactory58);
        new KoinDefinition(module, factoryInstanceFactory58);
        C139659 c139659 = C139659.INSTANCE;
        StringQualifier rootScopeQualifier59 = companion.getRootScopeQualifier();
        emptyList59 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory59 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier59, Reflection.getOrCreateKotlinClass(CatalogPresenter.class), null, c139659, kind, emptyList59));
        module.indexPrimaryType(factoryInstanceFactory59);
        new KoinDefinition(module, factoryInstanceFactory59);
        C139860 c139860 = C139860.INSTANCE;
        StringQualifier rootScopeQualifier60 = companion.getRootScopeQualifier();
        emptyList60 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory60 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier60, Reflection.getOrCreateKotlinClass(ChannelDetailsPresenter.class), null, c139860, kind, emptyList60));
        module.indexPrimaryType(factoryInstanceFactory60);
        new KoinDefinition(module, factoryInstanceFactory60);
        C139961 c139961 = C139961.INSTANCE;
        StringQualifier rootScopeQualifier61 = companion.getRootScopeQualifier();
        emptyList61 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory61 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier61, Reflection.getOrCreateKotlinClass(CatalogAllPresenter.class), null, c139961, kind, emptyList61));
        module.indexPrimaryType(factoryInstanceFactory61);
        new KoinDefinition(module, factoryInstanceFactory61);
        C140062 c140062 = C140062.INSTANCE;
        StringQualifier rootScopeQualifier62 = companion.getRootScopeQualifier();
        emptyList62 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory62 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier62, Reflection.getOrCreateKotlinClass(CatalogCategoriesPresenter.class), null, c140062, kind, emptyList62));
        module.indexPrimaryType(factoryInstanceFactory62);
        new KoinDefinition(module, factoryInstanceFactory62);
        C140163 c140163 = C140163.INSTANCE;
        StringQualifier rootScopeQualifier63 = companion.getRootScopeQualifier();
        emptyList63 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory63 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier63, Reflection.getOrCreateKotlinClass(CatalogUserChannelsPresenter.class), null, c140163, kind, emptyList63));
        module.indexPrimaryType(factoryInstanceFactory63);
        new KoinDefinition(module, factoryInstanceFactory63);
        C140264 c140264 = C140264.INSTANCE;
        StringQualifier rootScopeQualifier64 = companion.getRootScopeQualifier();
        emptyList64 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory64 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier64, Reflection.getOrCreateKotlinClass(StakingPresenter.class), null, c140264, kind, emptyList64));
        module.indexPrimaryType(factoryInstanceFactory64);
        new KoinDefinition(module, factoryInstanceFactory64);
        C140365 c140365 = C140365.INSTANCE;
        StringQualifier rootScopeQualifier65 = companion.getRootScopeQualifier();
        emptyList65 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory65 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier65, Reflection.getOrCreateKotlinClass(StakingProgrammesPresenter.class), null, c140365, kind, emptyList65));
        module.indexPrimaryType(factoryInstanceFactory65);
        new KoinDefinition(module, factoryInstanceFactory65);
        C140466 c140466 = C140466.INSTANCE;
        StringQualifier rootScopeQualifier66 = companion.getRootScopeQualifier();
        emptyList66 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory66 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier66, Reflection.getOrCreateKotlinClass(StakingConditionsPresenter.class), null, c140466, kind, emptyList66));
        module.indexPrimaryType(factoryInstanceFactory66);
        new KoinDefinition(module, factoryInstanceFactory66);
        C140567 c140567 = C140567.INSTANCE;
        StringQualifier rootScopeQualifier67 = companion.getRootScopeQualifier();
        emptyList67 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory67 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier67, Reflection.getOrCreateKotlinClass(StakingTransactionPresenter.class), null, c140567, kind, emptyList67));
        module.indexPrimaryType(factoryInstanceFactory67);
        new KoinDefinition(module, factoryInstanceFactory67);
        C140668 c140668 = C140668.INSTANCE;
        StringQualifier rootScopeQualifier68 = companion.getRootScopeQualifier();
        emptyList68 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory68 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier68, Reflection.getOrCreateKotlinClass(StakingOperationsPresenter.class), null, c140668, kind, emptyList68));
        module.indexPrimaryType(factoryInstanceFactory68);
        new KoinDefinition(module, factoryInstanceFactory68);
        C140769 c140769 = C140769.INSTANCE;
        StringQualifier rootScopeQualifier69 = companion.getRootScopeQualifier();
        emptyList69 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory69 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier69, Reflection.getOrCreateKotlinClass(StakingCalculatorPresenter.class), null, c140769, kind, emptyList69));
        module.indexPrimaryType(factoryInstanceFactory69);
        new KoinDefinition(module, factoryInstanceFactory69);
        C140970 c140970 = C140970.INSTANCE;
        StringQualifier rootScopeQualifier70 = companion.getRootScopeQualifier();
        emptyList70 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory70 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier70, Reflection.getOrCreateKotlinClass(StakingCalculatorProgrammesPresenter.class), null, c140970, kind, emptyList70));
        module.indexPrimaryType(factoryInstanceFactory70);
        new KoinDefinition(module, factoryInstanceFactory70);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$15 */
    /* loaded from: classes3.dex */
    public static final class C134815 extends Lambda implements Function2<Scope, ParametersHolder, WalletNotificationsPresenter> {
        public static final C134815 INSTANCE = new C134815();

        C134815() {
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
    public static final class C13532 extends Lambda implements Function2<Scope, ParametersHolder, WalletAttachAlertPresenter> {
        public static final C13532 INSTANCE = new C13532();

        C13532() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$32 */
    /* loaded from: classes3.dex */
    public static final class C136732 extends Lambda implements Function2<Scope, ParametersHolder, EnterWalletPasswordPresenter> {
        public static final C136732 INSTANCE = new C136732();

        C136732() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$42 */
    /* loaded from: classes3.dex */
    public static final class C137842 extends Lambda implements Function2<Scope, ParametersHolder, AddressMismatchPresenter> {
        public static final C137842 INSTANCE = new C137842();

        C137842() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$43 */
    /* loaded from: classes3.dex */
    public static final class C137943 extends Lambda implements Function2<Scope, ParametersHolder, WalletSwapProtocolsPresenter> {
        public static final C137943 INSTANCE = new C137943();

        C137943() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$49 */
    /* loaded from: classes3.dex */
    public static final class C138549 extends Lambda implements Function2<Scope, ParametersHolder, WalletAirdropPresenter> {
        public static final C138549 INSTANCE = new C138549();

        C138549() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$50 */
    /* loaded from: classes3.dex */
    public static final class C138750 extends Lambda implements Function2<Scope, ParametersHolder, WalletAirdropDialogPresenter> {
        public static final C138750 INSTANCE = new C138750();

        C138750() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$51 */
    /* loaded from: classes3.dex */
    public static final class C138851 extends Lambda implements Function2<Scope, ParametersHolder, DebugPresenter> {
        public static final C138851 INSTANCE = new C138851();

        C138851() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$64 */
    /* loaded from: classes3.dex */
    public static final class C140264 extends Lambda implements Function2<Scope, ParametersHolder, StakingPresenter> {
        public static final C140264 INSTANCE = new C140264();

        C140264() {
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
    public static final class C14087 extends Lambda implements Function2<Scope, ParametersHolder, WalletRootPresenter> {
        public static final C14087 INSTANCE = new C14087();

        C14087() {
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
    public static final class C134310 extends Lambda implements Function2<Scope, ParametersHolder, WalletHomePresenter> {
        public static final C134310 INSTANCE = new C134310();

        C134310() {
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
    public static final class C134411 extends Lambda implements Function2<Scope, ParametersHolder, WalletHomeCryptoPresenter> {
        public static final C134411 INSTANCE = new C134411();

        C134411() {
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
    public static final class C134613 extends Lambda implements Function2<Scope, ParametersHolder, WalletHomeServicesPresenter> {
        public static final C134613 INSTANCE = new C134613();

        C134613() {
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
    public static final class C135420 extends Lambda implements Function2<Scope, ParametersHolder, ContactsPresenter> {
        public static final C135420 INSTANCE = new C135420();

        C135420() {
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
    public static final class C135622 extends Lambda implements Function2<Scope, ParametersHolder, EmojiViewPresenter> {
        public static final C135622 INSTANCE = new C135622();

        C135622() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$28 */
    /* loaded from: classes3.dex */
    public static final class C136228 extends Lambda implements Function2<Scope, ParametersHolder, CreateWalletPasswordPresenter> {
        public static final C136228 INSTANCE = new C136228();

        C136228() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$37 */
    /* loaded from: classes3.dex */
    public static final class C137237 extends Lambda implements Function2<Scope, ParametersHolder, SecretWordsCountPresenter> {
        public static final C137237 INSTANCE = new C137237();

        C137237() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$38 */
    /* loaded from: classes3.dex */
    public static final class C137338 extends Lambda implements Function2<Scope, ParametersHolder, WalletAccountSettingsPresenter> {
        public static final C137338 INSTANCE = new C137338();

        C137338() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$39 */
    /* loaded from: classes3.dex */
    public static final class C137439 extends Lambda implements Function2<Scope, ParametersHolder, BlockchainsManagementPresenter> {
        public static final C137439 INSTANCE = new C137439();

        C137439() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$41 */
    /* loaded from: classes3.dex */
    public static final class C137741 extends Lambda implements Function2<Scope, ParametersHolder, BackupWordSwitcherPresenter> {
        public static final C137741 INSTANCE = new C137741();

        C137741() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$47 */
    /* loaded from: classes3.dex */
    public static final class C138347 extends Lambda implements Function2<Scope, ParametersHolder, SimplexWebViewProcessingPresenter> {
        public static final C138347 INSTANCE = new C138347();

        C138347() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$48 */
    /* loaded from: classes3.dex */
    public static final class C138448 extends Lambda implements Function2<Scope, ParametersHolder, WalletAppearanceSettingsPresenter> {
        public static final C138448 INSTANCE = new C138448();

        C138448() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$52 */
    /* loaded from: classes3.dex */
    public static final class C138952 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectPresenter> {
        public static final C138952 INSTANCE = new C138952();

        C138952() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$58 */
    /* loaded from: classes3.dex */
    public static final class C139558 extends Lambda implements Function2<Scope, ParametersHolder, CatalogRootPresenter> {
        public static final C139558 INSTANCE = new C139558();

        C139558() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$59 */
    /* loaded from: classes3.dex */
    public static final class C139659 extends Lambda implements Function2<Scope, ParametersHolder, CatalogPresenter> {
        public static final C139659 INSTANCE = new C139659();

        C139659() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$68 */
    /* loaded from: classes3.dex */
    public static final class C140668 extends Lambda implements Function2<Scope, ParametersHolder, StakingOperationsPresenter> {
        public static final C140668 INSTANCE = new C140668();

        C140668() {
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
    /* renamed from: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1$70 */
    /* loaded from: classes3.dex */
    public static final class C140970 extends Lambda implements Function2<Scope, ParametersHolder, StakingCalculatorProgrammesPresenter> {
        public static final C140970 INSTANCE = new C140970();

        C140970() {
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
