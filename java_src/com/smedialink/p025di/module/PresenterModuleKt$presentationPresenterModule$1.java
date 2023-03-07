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
import com.smedialink.p031ui.wallet.actions.send.amount.WalletSendAmountPresenter;
import com.smedialink.p031ui.wallet.actions.send.recipient.WalletSendRecipientPresenter;
import com.smedialink.p031ui.wallet.airdrop.WalletAirdropPresenter;
import com.smedialink.p031ui.wallet.airdrop.dialog.WalletAirdropDialogPresenter;
import com.smedialink.p031ui.wallet.common.WalletRootPresenter;
import com.smedialink.p031ui.wallet.crypto.address_mismatch.AddressMismatchPresenter;
import com.smedialink.p031ui.wallet.crypto.buy.BuyCryptoProductPresenter;
import com.smedialink.p031ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPricePresenter;
import com.smedialink.p031ui.wallet.crypto.buy.processing.SimplexWebViewProcessingPresenter;
import com.smedialink.p031ui.wallet.crypto.create.CreateWalletFragment;
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
import com.smedialink.storage.domain.interactor.wallet.WalletInteractor;
import com.smedialink.storage.domain.interactor.wallet.WalletSessionInteractor;
import com.smedialink.storage.domain.manager.binancepay.BinancePayManager;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.smedialink.storage.domain.model.catalog.ChatType;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.staking.StakingTabType;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.storage.HintsPreferenceHelper;
import com.smedialink.storage.domain.storage.PreferenceHelper;
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
    public static final class C13601 extends Lambda implements Function2<Scope, ParametersHolder, TranslationPresenter> {
        public static final C13601 INSTANCE = new C13601();

        C13601() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final TranslationPresenter invoke(Scope factory, ParametersHolder dstr$args) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$args, "$dstr$args");
            TranslationArgs translationArgs = (TranslationArgs) dstr$args.elementAt(0, Reflection.getOrCreateKotlinClass(TranslationArgs.class));
            TelegramGateway telegramGateway = (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null);
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            return new TranslationPresenter(translationArgs, (TranslationInteractor) factory.get(Reflection.getOrCreateKotlinClass(TranslationInteractor.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), resourceManager, telegramGateway);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$12 */
    /* loaded from: classes3.dex */
    public static final class C136312 extends Lambda implements Function2<Scope, ParametersHolder, WalletHomeCryptoTokensSettingsPresenter> {
        public static final C136312 INSTANCE = new C136312();

        C136312() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletHomeCryptoTokensSettingsPresenter invoke(Scope factory, ParametersHolder dstr$screenType) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$screenType, "$dstr$screenType");
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            return new WalletHomeCryptoTokensSettingsPresenter((CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), resourceManager, (WalletHomeCryptoTokensSettingsFragment.ScreenType) dstr$screenType.elementAt(0, Reflection.getOrCreateKotlinClass(WalletHomeCryptoTokensSettingsFragment.ScreenType.class)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$14 */
    /* loaded from: classes3.dex */
    public static final class C136514 extends Lambda implements Function2<Scope, ParametersHolder, WalletTokenDetailsPresenter> {
        public static final C136514 INSTANCE = new C136514();

        C136514() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletTokenDetailsPresenter invoke(Scope factory, ParametersHolder dstr$args) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$args, "$dstr$args");
            return new WalletTokenDetailsPresenter((TokenDetailsArgs) dstr$args.elementAt(0, Reflection.getOrCreateKotlinClass(TokenDetailsArgs.class)), (AccountLevelInteractor) factory.get(Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, null), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (StakingInteractor) factory.get(Reflection.getOrCreateKotlinClass(StakingInteractor.class), null, null), (WalletCreateManager) factory.get(Reflection.getOrCreateKotlinClass(WalletCreateManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$16 */
    /* loaded from: classes3.dex */
    public static final class C136716 extends Lambda implements Function2<Scope, ParametersHolder, WalletTransactionsPresenter> {
        public static final C136716 INSTANCE = new C136716();

        C136716() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletTransactionsPresenter invoke(Scope factory, ParametersHolder dstr$screenType$token) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$screenType$token, "$dstr$screenType$token");
            WalletTransactionsFragment.ScreenType screenType = (WalletTransactionsFragment.ScreenType) dstr$screenType$token.elementAt(0, Reflection.getOrCreateKotlinClass(WalletTransactionsFragment.ScreenType.class));
            TokenCode tokenCode = (TokenCode) dstr$screenType$token.elementAt(1, Reflection.getOrCreateKotlinClass(TokenCode.class));
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
    public static final class C136817 extends Lambda implements Function2<Scope, ParametersHolder, WalletNotificationDetailsPresenter> {
        public static final C136817 INSTANCE = new C136817();

        C136817() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletNotificationDetailsPresenter invoke(Scope factory, ParametersHolder dstr$item) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$item, "$dstr$item");
            return new WalletNotificationDetailsPresenter((NotificationItem) dstr$item.elementAt(0, Reflection.getOrCreateKotlinClass(NotificationItem.class)), (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$18 */
    /* loaded from: classes3.dex */
    public static final class C136918 extends Lambda implements Function2<Scope, ParametersHolder, WalletTransactionDetailsPresenter> {
        public static final C136918 INSTANCE = new C136918();

        C136918() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletTransactionDetailsPresenter invoke(Scope factory, ParametersHolder dstr$screenType) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$screenType, "$dstr$screenType");
            WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = (WalletTransactionDetailsBottomSheetDialog.ScreenType) dstr$screenType.elementAt(0, Reflection.getOrCreateKotlinClass(WalletTransactionDetailsBottomSheetDialog.ScreenType.class));
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
    public static final class C137019 extends Lambda implements Function2<Scope, ParametersHolder, ReactionPresenter> {
        public static final C137019 INSTANCE = new C137019();

        C137019() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final ReactionPresenter invoke(Scope factory, ParametersHolder dstr$dialogId) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$dialogId, "$dstr$dialogId");
            long longValue = ((Number) dstr$dialogId.elementAt(0, Reflection.getOrCreateKotlinClass(Long.class))).longValue();
            return new ReactionPresenter((ReactionInteractor) factory.get(Reflection.getOrCreateKotlinClass(ReactionInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null), (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), longValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$21 */
    /* loaded from: classes3.dex */
    public static final class C137321 extends Lambda implements Function2<Scope, ParametersHolder, ProfilePresenter> {
        public static final C137321 INSTANCE = new C137321();

        C137321() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final ProfilePresenter invoke(Scope factory, ParametersHolder dstr$userId) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$userId, "$dstr$userId");
            return new ProfilePresenter(((Number) dstr$userId.elementAt(0, Reflection.getOrCreateKotlinClass(Long.class))).longValue(), (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null), (AccountLevelInteractor) factory.get(Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$23 */
    /* loaded from: classes3.dex */
    public static final class C137523 extends Lambda implements Function2<Scope, ParametersHolder, CreateWalletTutorialPresenter> {
        public static final C137523 INSTANCE = new C137523();

        C137523() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CreateWalletTutorialPresenter invoke(Scope factory, ParametersHolder dstr$tutorialType) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$tutorialType, "$dstr$tutorialType");
            return new CreateWalletTutorialPresenter((TutorialType) dstr$tutorialType.elementAt(0, Reflection.getOrCreateKotlinClass(TutorialType.class)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$24 */
    /* loaded from: classes3.dex */
    public static final class C137624 extends Lambda implements Function2<Scope, ParametersHolder, BuyCryptoProductPresenter> {
        public static final C137624 INSTANCE = new C137624();

        C137624() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BuyCryptoProductPresenter invoke(Scope factory, ParametersHolder dstr$token) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$token, "$dstr$token");
            return new BuyCryptoProductPresenter((TokenCode) dstr$token.elementAt(0, Reflection.getOrCreateKotlinClass(TokenCode.class)), (SimplexInteractor) factory.get(Reflection.getOrCreateKotlinClass(SimplexInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$25 */
    /* loaded from: classes3.dex */
    public static final class C137725 extends Lambda implements Function2<Scope, ParametersHolder, CryptoBuyCustomPricePresenter> {
        public static final C137725 INSTANCE = new C137725();

        C137725() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CryptoBuyCustomPricePresenter invoke(Scope factory, ParametersHolder dstr$item) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$item, "$dstr$item");
            return new CryptoBuyCustomPricePresenter((CryptoBuyItem) dstr$item.elementAt(0, Reflection.getOrCreateKotlinClass(CryptoBuyItem.class)), (SimplexInteractor) factory.get(Reflection.getOrCreateKotlinClass(SimplexInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (CustomPriceValidator) factory.get(Reflection.getOrCreateKotlinClass(CustomPriceValidator.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$27 */
    /* loaded from: classes3.dex */
    public static final class C137927 extends Lambda implements Function2<Scope, ParametersHolder, CreateWalletPinPresenter> {
        public static final C137927 INSTANCE = new C137927();

        C137927() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CreateWalletPinPresenter invoke(Scope factory, ParametersHolder dstr$walletPinScreenArgs) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$walletPinScreenArgs, "$dstr$walletPinScreenArgs");
            return new CreateWalletPinPresenter((WalletPinScreenArgs) dstr$walletPinScreenArgs.elementAt(0, Reflection.getOrCreateKotlinClass(WalletPinScreenArgs.class)), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$28 */
    /* loaded from: classes3.dex */
    public static final class C138028 extends Lambda implements Function2<Scope, ParametersHolder, WalletPrivacySettingPresenter> {
        public static final C138028 INSTANCE = new C138028();

        C138028() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletPrivacySettingPresenter invoke(Scope factory, ParametersHolder dstr$settingsType) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$settingsType, "$dstr$settingsType");
            int intValue = ((Number) dstr$settingsType.elementAt(0, Reflection.getOrCreateKotlinClass(Integer.class))).intValue();
            CryptoPermissionInteractor cryptoPermissionInteractor = (CryptoPermissionInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoPermissionInteractor.class), null, null);
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            return new WalletPrivacySettingPresenter(intValue, (AccountLevelInteractor) factory.get(Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, null), cryptoPermissionInteractor, (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), resourceManager);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$29 */
    /* loaded from: classes3.dex */
    public static final class C138129 extends Lambda implements Function2<Scope, ParametersHolder, EnterWalletPinPresenter> {
        public static final C138129 INSTANCE = new C138129();

        C138129() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final EnterWalletPinPresenter invoke(Scope factory, ParametersHolder dstr$screenType) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$screenType, "$dstr$screenType");
            EnterPinCodeScreenType enterPinCodeScreenType = (EnterPinCodeScreenType) dstr$screenType.elementAt(0, Reflection.getOrCreateKotlinClass(EnterPinCodeScreenType.class));
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
            return new EnterWalletPinPresenter(enterPinCodeScreenType, (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null), resourceManager, (PinCodeInteractor) factory.get(Reflection.getOrCreateKotlinClass(PinCodeInteractor.class), null, null), schedulersProvider);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C13823 extends Lambda implements Function2<Scope, ParametersHolder, WalletSendRecipientPresenter> {
        public static final C13823 INSTANCE = new C13823();

        C13823() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletSendRecipientPresenter invoke(Scope factory, ParametersHolder dstr$networkType) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$networkType, "$dstr$networkType");
            return new WalletSendRecipientPresenter((NetworkType) dstr$networkType.elementAt(0, Reflection.getOrCreateKotlinClass(NetworkType.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoRecipientManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoRecipientManager.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$31 */
    /* loaded from: classes3.dex */
    public static final class C138431 extends Lambda implements Function2<Scope, ParametersHolder, WalletBinancePayHistoryPresenter> {
        public static final C138431 INSTANCE = new C138431();

        C138431() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletBinancePayHistoryPresenter invoke(Scope factory, ParametersHolder dstr$screenType$token) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$screenType$token, "$dstr$screenType$token");
            WalletBinancePayHistoryFragment.ScreenType screenType = (WalletBinancePayHistoryFragment.ScreenType) dstr$screenType$token.elementAt(0, Reflection.getOrCreateKotlinClass(WalletBinancePayHistoryFragment.ScreenType.class));
            String str = (String) dstr$screenType$token.elementAt(1, Reflection.getOrCreateKotlinClass(String.class));
            BinanceInternalInteractor binanceInternalInteractor = (BinanceInternalInteractor) factory.get(Reflection.getOrCreateKotlinClass(BinanceInternalInteractor.class), null, null);
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
            return new WalletBinancePayHistoryPresenter(screenType, str, (BinancePayProcessManager) factory.get(Reflection.getOrCreateKotlinClass(BinancePayProcessManager.class), null, null), binanceInternalInteractor, (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), schedulersProvider, resourceManager);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$32 */
    /* loaded from: classes3.dex */
    public static final class C138532 extends Lambda implements Function2<Scope, ParametersHolder, WalletHomeBinancePayPresenter> {
        public static final C138532 INSTANCE = new C138532();

        C138532() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletHomeBinancePayPresenter invoke(Scope factory, ParametersHolder dstr$binanceApi) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$binanceApi, "$dstr$binanceApi");
            BinanceAPI binanceAPI = (BinanceAPI) dstr$binanceApi.elementAt(0, Reflection.getOrCreateKotlinClass(BinanceAPI.class));
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$33 */
    /* loaded from: classes3.dex */
    public static final class C138633 extends Lambda implements Function2<Scope, ParametersHolder, WalletReceiveBinancePayPresenter> {
        public static final C138633 INSTANCE = new C138633();

        C138633() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletReceiveBinancePayPresenter invoke(Scope factory, ParametersHolder dstr$screenType$args) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$screenType$args, "$dstr$screenType$args");
            int intValue = ((Number) dstr$screenType$args.elementAt(0, Reflection.getOrCreateKotlinClass(Integer.class))).intValue();
            BinancePayScreenArgs binancePayScreenArgs = (BinancePayScreenArgs) dstr$screenType$args.elementAt(1, Reflection.getOrCreateKotlinClass(BinancePayScreenArgs.class));
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            CryptoPreferenceHelper cryptoPreferenceHelper = (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null);
            SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
            BinanceInternalInteractor binanceInternalInteractor = (BinanceInternalInteractor) factory.get(Reflection.getOrCreateKotlinClass(BinanceInternalInteractor.class), null, null);
            return new WalletReceiveBinancePayPresenter(intValue, binancePayScreenArgs, (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null), (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null), binanceInternalInteractor, schedulersProvider, cryptoPreferenceHelper, resourceManager);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$34 */
    /* loaded from: classes3.dex */
    public static final class C138734 extends Lambda implements Function2<Scope, ParametersHolder, CreateWalletPresenter> {
        public static final C138734 INSTANCE = new C138734();

        C138734() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CreateWalletPresenter invoke(Scope factory, ParametersHolder dstr$screenType) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$screenType, "$dstr$screenType");
            CreateWalletFragment.ScreenType screenType = (CreateWalletFragment.ScreenType) dstr$screenType.elementAt(0, Reflection.getOrCreateKotlinClass(CreateWalletFragment.ScreenType.class));
            CryptoWalletInteractor cryptoWalletInteractor = (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null);
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            RxEventBus rxEventBus = (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null);
            SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
            CryptoWalletInteractor cryptoWalletInteractor2 = (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null);
            return new CreateWalletPresenter(screenType, (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), cryptoWalletInteractor, resourceManager, rxEventBus, schedulersProvider, cryptoWalletInteractor2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$38 */
    /* loaded from: classes3.dex */
    public static final class C139138 extends Lambda implements Function2<Scope, ParametersHolder, BlockchainWalletDetailsPresenter> {
        public static final C139138 INSTANCE = new C139138();

        C139138() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final BlockchainWalletDetailsPresenter invoke(Scope factory, ParametersHolder dstr$walletItem) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$walletItem, "$dstr$walletItem");
            return new BlockchainWalletDetailsPresenter((BlockchainWalletItem) dstr$walletItem.elementAt(0, Reflection.getOrCreateKotlinClass(BlockchainWalletItem.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C13934 extends Lambda implements Function2<Scope, ParametersHolder, WalletSendAmountPresenter> {
        public static final C13934 INSTANCE = new C13934();

        C13934() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletSendAmountPresenter invoke(Scope factory, ParametersHolder dstr$screenType$args) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$screenType$args, "$dstr$screenType$args");
            int intValue = ((Number) dstr$screenType$args.elementAt(0, Reflection.getOrCreateKotlinClass(Integer.class))).intValue();
            TransferScreenArgs transferScreenArgs = (TransferScreenArgs) dstr$screenType$args.elementAt(1, Reflection.getOrCreateKotlinClass(TransferScreenArgs.class));
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$42 */
    /* loaded from: classes3.dex */
    public static final class C139642 extends Lambda implements Function2<Scope, ParametersHolder, WalletSwapProcessPresenter> {
        public static final C139642 INSTANCE = new C139642();

        C139642() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletSwapProcessPresenter invoke(Scope factory, ParametersHolder dstr$type) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$type, "$dstr$type");
            WalletSwapProcessFragment.ScreenType screenType = (WalletSwapProcessFragment.ScreenType) dstr$type.elementAt(0, Reflection.getOrCreateKotlinClass(WalletSwapProcessFragment.ScreenType.class));
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
            BinanceInternalInteractor binanceInternalInteractor = (BinanceInternalInteractor) factory.get(Reflection.getOrCreateKotlinClass(BinanceInternalInteractor.class), null, null);
            return new WalletSwapProcessPresenter(screenType, (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null), binanceInternalInteractor, (SwapInteractor) factory.get(Reflection.getOrCreateKotlinClass(SwapInteractor.class), null, null), schedulersProvider, (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), resourceManager, (HintsPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(HintsPreferenceHelper.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$43 */
    /* loaded from: classes3.dex */
    public static final class C139743 extends Lambda implements Function2<Scope, ParametersHolder, WalletSelectTokenPresenter> {
        public static final C139743 INSTANCE = new C139743();

        C139743() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletSelectTokenPresenter invoke(Scope factory, ParametersHolder dstr$type$selectedTokenArg$allTokensArg$networkType$onlyPositiveBalance) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$type$selectedTokenArg$allTokensArg$networkType$onlyPositiveBalance, "$dstr$type$selectedTokenArg$allTokensArg$networkType$onlyPositiveBalance");
            SelectableType selectableType = (SelectableType) dstr$type$selectedTokenArg$allTokensArg$networkType$onlyPositiveBalance.elementAt(0, Reflection.getOrCreateKotlinClass(SelectableType.class));
            SelectableToken selectableToken = (SelectableToken) dstr$type$selectedTokenArg$allTokensArg$networkType$onlyPositiveBalance.elementAt(1, Reflection.getOrCreateKotlinClass(SelectableToken.class));
            List list = (List) dstr$type$selectedTokenArg$allTokensArg$networkType$onlyPositiveBalance.elementAt(2, Reflection.getOrCreateKotlinClass(List.class));
            NetworkType networkType = (NetworkType) dstr$type$selectedTokenArg$allTokensArg$networkType$onlyPositiveBalance.elementAt(3, Reflection.getOrCreateKotlinClass(NetworkType.class));
            boolean booleanValue = ((Boolean) dstr$type$selectedTokenArg$allTokensArg$networkType$onlyPositiveBalance.elementAt(4, Reflection.getOrCreateKotlinClass(Boolean.class))).booleanValue();
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            return new WalletSelectTokenPresenter(selectableType, selectableToken, list, networkType, booleanValue, (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null), (BinanceInternalInteractor) factory.get(Reflection.getOrCreateKotlinClass(BinanceInternalInteractor.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), resourceManager);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$44 */
    /* loaded from: classes3.dex */
    public static final class C139844 extends Lambda implements Function2<Scope, ParametersHolder, WalletSwapFeePresenter> {
        public static final C139844 INSTANCE = new C139844();

        C139844() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletSwapFeePresenter invoke(Scope factory, ParametersHolder dstr$args) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$args, "$dstr$args");
            SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
            return new WalletSwapFeePresenter((SwapFeeScreenArgs) dstr$args.elementAt(0, Reflection.getOrCreateKotlinClass(SwapFeeScreenArgs.class)), (SwapInteractor) factory.get(Reflection.getOrCreateKotlinClass(SwapInteractor.class), null, null), schedulersProvider, (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$5 */
    /* loaded from: classes3.dex */
    public static final class C14045 extends Lambda implements Function2<Scope, ParametersHolder, WalletDonationsPresenter> {
        public static final C14045 INSTANCE = new C14045();

        C14045() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletDonationsPresenter invoke(Scope factory, ParametersHolder dstr$screenType$chatId) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$screenType$chatId, "$dstr$screenType$chatId");
            int intValue = ((Number) dstr$screenType$chatId.elementAt(0, Reflection.getOrCreateKotlinClass(Integer.class))).intValue();
            long longValue = ((Number) dstr$screenType$chatId.elementAt(1, Reflection.getOrCreateKotlinClass(Long.class))).longValue();
            ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
            SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
            return new WalletDonationsPresenter(longValue, intValue, (DonationsInteractor) factory.get(Reflection.getOrCreateKotlinClass(DonationsInteractor.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), resourceManager, schedulersProvider, (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$51 */
    /* loaded from: classes3.dex */
    public static final class C140651 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectSessionDetailsPresenter> {
        public static final C140651 INSTANCE = new C140651();

        C140651() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletConnectSessionDetailsPresenter invoke(Scope factory, ParametersHolder dstr$item) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$item, "$dstr$item");
            return new WalletConnectSessionDetailsPresenter((WalletConnectSessionItem) dstr$item.elementAt(0, Reflection.getOrCreateKotlinClass(WalletConnectSessionItem.class)), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$52 */
    /* loaded from: classes3.dex */
    public static final class C140752 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectNewSessionPresenter> {
        public static final C140752 INSTANCE = new C140752();

        C140752() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletConnectNewSessionPresenter invoke(Scope factory, ParametersHolder dstr$sessionItem) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$sessionItem, "$dstr$sessionItem");
            return new WalletConnectNewSessionPresenter((WCSessionStoreItem) dstr$sessionItem.elementAt(0, Reflection.getOrCreateKotlinClass(WCSessionStoreItem.class)), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (WalletConnectManager) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$53 */
    /* loaded from: classes3.dex */
    public static final class C140853 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectTransactionPresenter> {
        public static final C140853 INSTANCE = new C140853();

        C140853() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletConnectTransactionPresenter invoke(Scope factory, ParametersHolder dstr$screenType) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$screenType, "$dstr$screenType");
            return new WalletConnectTransactionPresenter((WalletConnectTransactionScreenType) dstr$screenType.elementAt(0, Reflection.getOrCreateKotlinClass(WalletConnectTransactionScreenType.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (WalletConnectInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectInteractor.class), null, null), (WalletConnectManager) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$54 */
    /* loaded from: classes3.dex */
    public static final class C140954 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectMessageSignPresenter> {
        public static final C140954 INSTANCE = new C140954();

        C140954() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletConnectMessageSignPresenter invoke(Scope factory, ParametersHolder dstr$requestId$sessionItem$message) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$requestId$sessionItem$message, "$dstr$requestId$sessionItem$message");
            long longValue = ((Number) dstr$requestId$sessionItem$message.elementAt(0, Reflection.getOrCreateKotlinClass(Long.class))).longValue();
            WalletConnectSessionItem walletConnectSessionItem = (WalletConnectSessionItem) dstr$requestId$sessionItem$message.elementAt(1, Reflection.getOrCreateKotlinClass(WalletConnectSessionItem.class));
            WCEthereumSignMessage wCEthereumSignMessage = (WCEthereumSignMessage) dstr$requestId$sessionItem$message.elementAt(2, Reflection.getOrCreateKotlinClass(WCEthereumSignMessage.class));
            CryptoAccessManager cryptoAccessManager = (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null);
            return new WalletConnectMessageSignPresenter(longValue, walletConnectSessionItem, wCEthereumSignMessage, (WalletConnectManager) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectManager.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), cryptoAccessManager);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$55 */
    /* loaded from: classes3.dex */
    public static final class C141055 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectSwitchNetworkPresenter> {
        public static final C141055 INSTANCE = new C141055();

        C141055() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletConnectSwitchNetworkPresenter invoke(Scope factory, ParametersHolder dstr$requestId$sessionItem$networkType) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$requestId$sessionItem$networkType, "$dstr$requestId$sessionItem$networkType");
            return new WalletConnectSwitchNetworkPresenter(((Number) dstr$requestId$sessionItem$networkType.elementAt(0, Reflection.getOrCreateKotlinClass(Long.class))).longValue(), (WalletConnectSessionItem) dstr$requestId$sessionItem$networkType.elementAt(1, Reflection.getOrCreateKotlinClass(WalletConnectSessionItem.class)), (NetworkType) dstr$requestId$sessionItem$networkType.elementAt(2, Reflection.getOrCreateKotlinClass(NetworkType.class)), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (WalletConnectManager) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$58 */
    /* loaded from: classes3.dex */
    public static final class C141358 extends Lambda implements Function2<Scope, ParametersHolder, ChannelDetailsPresenter> {
        public static final C141358 INSTANCE = new C141358();

        C141358() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final ChannelDetailsPresenter invoke(Scope factory, ParametersHolder dstr$campaign$chat) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$campaign$chat, "$dstr$campaign$chat");
            return new ChannelDetailsPresenter((CampaignItem) dstr$campaign$chat.elementAt(0, Reflection.getOrCreateKotlinClass(CampaignItem.class)), (TLRPC$Chat) dstr$campaign$chat.elementAt(1, Reflection.getOrCreateKotlinClass(TLRPC$Chat.class)), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$59 */
    /* loaded from: classes3.dex */
    public static final class C141459 extends Lambda implements Function2<Scope, ParametersHolder, CatalogAllPresenter> {
        public static final C141459 INSTANCE = new C141459();

        C141459() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CatalogAllPresenter invoke(Scope factory, ParametersHolder dstr$chatType) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$chatType, "$dstr$chatType");
            return new CatalogAllPresenter((ChatType) dstr$chatType.elementAt(0, Reflection.getOrCreateKotlinClass(ChatType.class)), (CatalogInteractor) factory.get(Reflection.getOrCreateKotlinClass(CatalogInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$6 */
    /* loaded from: classes3.dex */
    public static final class C14156 extends Lambda implements Function2<Scope, ParametersHolder, ChatPresenter> {
        public static final C14156 INSTANCE = new C14156();

        C14156() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final ChatPresenter invoke(Scope factory, ParametersHolder dstr$chat) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$chat, "$dstr$chat");
            TLRPC$Chat tLRPC$Chat = (TLRPC$Chat) dstr$chat.elementAt(0, Reflection.getOrCreateKotlinClass(TLRPC$Chat.class));
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$60 */
    /* loaded from: classes3.dex */
    public static final class C141660 extends Lambda implements Function2<Scope, ParametersHolder, CatalogCategoriesPresenter> {
        public static final C141660 INSTANCE = new C141660();

        C141660() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CatalogCategoriesPresenter invoke(Scope factory, ParametersHolder dstr$chatType) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$chatType, "$dstr$chatType");
            return new CatalogCategoriesPresenter((ChatType) dstr$chatType.elementAt(0, Reflection.getOrCreateKotlinClass(ChatType.class)), (CatalogInteractor) factory.get(Reflection.getOrCreateKotlinClass(CatalogInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$61 */
    /* loaded from: classes3.dex */
    public static final class C141761 extends Lambda implements Function2<Scope, ParametersHolder, CatalogUserChannelsPresenter> {
        public static final C141761 INSTANCE = new C141761();

        C141761() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final CatalogUserChannelsPresenter invoke(Scope factory, ParametersHolder dstr$chatType) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$chatType, "$dstr$chatType");
            return new CatalogUserChannelsPresenter((ChatType) dstr$chatType.elementAt(0, Reflection.getOrCreateKotlinClass(ChatType.class)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$63 */
    /* loaded from: classes3.dex */
    public static final class C141963 extends Lambda implements Function2<Scope, ParametersHolder, StakingProgrammesPresenter> {
        public static final C141963 INSTANCE = new C141963();

        C141963() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final StakingProgrammesPresenter invoke(Scope factory, ParametersHolder dstr$stakingTabType) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$stakingTabType, "$dstr$stakingTabType");
            return new StakingProgrammesPresenter((StakingTabType) dstr$stakingTabType.elementAt(0, Reflection.getOrCreateKotlinClass(StakingTabType.class)), (AccountLevelInteractor) factory.get(Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (StakingInteractor) factory.get(Reflection.getOrCreateKotlinClass(StakingInteractor.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$64 */
    /* loaded from: classes3.dex */
    public static final class C142064 extends Lambda implements Function2<Scope, ParametersHolder, StakingConditionsPresenter> {
        public static final C142064 INSTANCE = new C142064();

        C142064() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final StakingConditionsPresenter invoke(Scope factory, ParametersHolder dstr$stakingDetails) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$stakingDetails, "$dstr$stakingDetails");
            return new StakingConditionsPresenter((StakingDetailsItem) dstr$stakingDetails.elementAt(0, Reflection.getOrCreateKotlinClass(StakingDetailsItem.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$65 */
    /* loaded from: classes3.dex */
    public static final class C142165 extends Lambda implements Function2<Scope, ParametersHolder, StakingTransactionPresenter> {
        public static final C142165 INSTANCE = new C142165();

        C142165() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final StakingTransactionPresenter invoke(Scope factory, ParametersHolder dstr$screenType$stakingDetails$presetAmount) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$screenType$stakingDetails$presetAmount, "$dstr$screenType$stakingDetails$presetAmount");
            return new StakingTransactionPresenter((Double) dstr$screenType$stakingDetails$presetAmount.elementAt(2, Reflection.getOrCreateKotlinClass(Double.class)), ((Number) dstr$screenType$stakingDetails$presetAmount.elementAt(0, Reflection.getOrCreateKotlinClass(Integer.class))).intValue(), (StakingDetailsItem) dstr$screenType$stakingDetails$presetAmount.elementAt(1, Reflection.getOrCreateKotlinClass(StakingDetailsItem.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (StakingInteractor) factory.get(Reflection.getOrCreateKotlinClass(StakingInteractor.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$67 */
    /* loaded from: classes3.dex */
    public static final class C142367 extends Lambda implements Function2<Scope, ParametersHolder, StakingCalculatorPresenter> {
        public static final C142367 INSTANCE = new C142367();

        C142367() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final StakingCalculatorPresenter invoke(Scope factory, ParametersHolder dstr$stakingDetails) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(dstr$stakingDetails, "$dstr$stakingDetails");
            return new StakingCalculatorPresenter((StakingDetailsItem) dstr$stakingDetails.elementAt(0, Reflection.getOrCreateKotlinClass(StakingDetailsItem.class)), (AccountLevelInteractor) factory.get(Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
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
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C13601 c13601 = C13601.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(TranslationPresenter.class), null, c13601, kind, emptyList));
        module.indexPrimaryType(factoryInstanceFactory);
        new Pair(module, factoryInstanceFactory);
        C13712 c13712 = C13712.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory2 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(WalletAttachAlertPresenter.class), null, c13712, kind, emptyList2));
        module.indexPrimaryType(factoryInstanceFactory2);
        new Pair(module, factoryInstanceFactory2);
        C13823 c13823 = C13823.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory3 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(WalletSendRecipientPresenter.class), null, c13823, kind, emptyList3));
        module.indexPrimaryType(factoryInstanceFactory3);
        new Pair(module, factoryInstanceFactory3);
        C13934 c13934 = C13934.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory4 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(WalletSendAmountPresenter.class), null, c13934, kind, emptyList4));
        module.indexPrimaryType(factoryInstanceFactory4);
        new Pair(module, factoryInstanceFactory4);
        C14045 c14045 = C14045.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory5 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(WalletDonationsPresenter.class), null, c14045, kind, emptyList5));
        module.indexPrimaryType(factoryInstanceFactory5);
        new Pair(module, factoryInstanceFactory5);
        C14156 c14156 = C14156.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory6 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(ChatPresenter.class), null, c14156, kind, emptyList6));
        module.indexPrimaryType(factoryInstanceFactory6);
        new Pair(module, factoryInstanceFactory6);
        C14257 c14257 = C14257.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory7 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(WalletRootPresenter.class), null, c14257, kind, emptyList7));
        module.indexPrimaryType(factoryInstanceFactory7);
        new Pair(module, factoryInstanceFactory7);
        C14268 c14268 = C14268.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory8 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(WalletSettingsPresenter.class), null, c14268, kind, emptyList8));
        module.indexPrimaryType(factoryInstanceFactory8);
        new Pair(module, factoryInstanceFactory8);
        C14279 c14279 = C14279.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory9 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(PhotoViewerPresenter.class), null, c14279, kind, emptyList9));
        module.indexPrimaryType(factoryInstanceFactory9);
        new Pair(module, factoryInstanceFactory9);
        C136110 c136110 = C136110.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory10 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(WalletHomePresenter.class), null, c136110, kind, emptyList10));
        module.indexPrimaryType(factoryInstanceFactory10);
        new Pair(module, factoryInstanceFactory10);
        C136211 c136211 = C136211.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory11 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(WalletHomeCryptoPresenter.class), null, c136211, kind, emptyList11));
        module.indexPrimaryType(factoryInstanceFactory11);
        new Pair(module, factoryInstanceFactory11);
        C136312 c136312 = C136312.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory12 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(WalletHomeCryptoTokensSettingsPresenter.class), null, c136312, kind, emptyList12));
        module.indexPrimaryType(factoryInstanceFactory12);
        new Pair(module, factoryInstanceFactory12);
        C136413 c136413 = C136413.INSTANCE;
        StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory13 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(WalletHomeServicesPresenter.class), null, c136413, kind, emptyList13));
        module.indexPrimaryType(factoryInstanceFactory13);
        new Pair(module, factoryInstanceFactory13);
        C136514 c136514 = C136514.INSTANCE;
        StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory14 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(WalletTokenDetailsPresenter.class), null, c136514, kind, emptyList14));
        module.indexPrimaryType(factoryInstanceFactory14);
        new Pair(module, factoryInstanceFactory14);
        C136615 c136615 = C136615.INSTANCE;
        StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory15 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(WalletNotificationsPresenter.class), null, c136615, kind, emptyList15));
        module.indexPrimaryType(factoryInstanceFactory15);
        new Pair(module, factoryInstanceFactory15);
        C136716 c136716 = C136716.INSTANCE;
        StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
        emptyList16 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory16 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(WalletTransactionsPresenter.class), null, c136716, kind, emptyList16));
        module.indexPrimaryType(factoryInstanceFactory16);
        new Pair(module, factoryInstanceFactory16);
        C136817 c136817 = C136817.INSTANCE;
        StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
        emptyList17 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory17 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(WalletNotificationDetailsPresenter.class), null, c136817, kind, emptyList17));
        module.indexPrimaryType(factoryInstanceFactory17);
        new Pair(module, factoryInstanceFactory17);
        C136918 c136918 = C136918.INSTANCE;
        StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
        emptyList18 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory18 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(WalletTransactionDetailsPresenter.class), null, c136918, kind, emptyList18));
        module.indexPrimaryType(factoryInstanceFactory18);
        new Pair(module, factoryInstanceFactory18);
        C137019 c137019 = C137019.INSTANCE;
        StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
        emptyList19 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory19 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(ReactionPresenter.class), null, c137019, kind, emptyList19));
        module.indexPrimaryType(factoryInstanceFactory19);
        new Pair(module, factoryInstanceFactory19);
        C137220 c137220 = C137220.INSTANCE;
        StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
        emptyList20 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory20 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(ContactsPresenter.class), null, c137220, kind, emptyList20));
        module.indexPrimaryType(factoryInstanceFactory20);
        new Pair(module, factoryInstanceFactory20);
        C137321 c137321 = C137321.INSTANCE;
        StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
        emptyList21 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory21 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(ProfilePresenter.class), null, c137321, kind, emptyList21));
        module.indexPrimaryType(factoryInstanceFactory21);
        new Pair(module, factoryInstanceFactory21);
        C137422 c137422 = C137422.INSTANCE;
        StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
        emptyList22 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory22 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(EmojiViewPresenter.class), null, c137422, kind, emptyList22));
        module.indexPrimaryType(factoryInstanceFactory22);
        new Pair(module, factoryInstanceFactory22);
        C137523 c137523 = C137523.INSTANCE;
        StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
        emptyList23 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory23 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(CreateWalletTutorialPresenter.class), null, c137523, kind, emptyList23));
        module.indexPrimaryType(factoryInstanceFactory23);
        new Pair(module, factoryInstanceFactory23);
        C137624 c137624 = C137624.INSTANCE;
        StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
        emptyList24 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory24 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(BuyCryptoProductPresenter.class), null, c137624, kind, emptyList24));
        module.indexPrimaryType(factoryInstanceFactory24);
        new Pair(module, factoryInstanceFactory24);
        C137725 c137725 = C137725.INSTANCE;
        StringQualifier rootScopeQualifier25 = companion.getRootScopeQualifier();
        emptyList25 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory25 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier25, Reflection.getOrCreateKotlinClass(CryptoBuyCustomPricePresenter.class), null, c137725, kind, emptyList25));
        module.indexPrimaryType(factoryInstanceFactory25);
        new Pair(module, factoryInstanceFactory25);
        C137826 c137826 = C137826.INSTANCE;
        StringQualifier rootScopeQualifier26 = companion.getRootScopeQualifier();
        emptyList26 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory26 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier26, Reflection.getOrCreateKotlinClass(CreateWalletPasswordPresenter.class), null, c137826, kind, emptyList26));
        module.indexPrimaryType(factoryInstanceFactory26);
        new Pair(module, factoryInstanceFactory26);
        C137927 c137927 = C137927.INSTANCE;
        StringQualifier rootScopeQualifier27 = companion.getRootScopeQualifier();
        emptyList27 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory27 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier27, Reflection.getOrCreateKotlinClass(CreateWalletPinPresenter.class), null, c137927, kind, emptyList27));
        module.indexPrimaryType(factoryInstanceFactory27);
        new Pair(module, factoryInstanceFactory27);
        C138028 c138028 = C138028.INSTANCE;
        StringQualifier rootScopeQualifier28 = companion.getRootScopeQualifier();
        emptyList28 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory28 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier28, Reflection.getOrCreateKotlinClass(WalletPrivacySettingPresenter.class), null, c138028, kind, emptyList28));
        module.indexPrimaryType(factoryInstanceFactory28);
        new Pair(module, factoryInstanceFactory28);
        C138129 c138129 = C138129.INSTANCE;
        StringQualifier rootScopeQualifier29 = companion.getRootScopeQualifier();
        emptyList29 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory29 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier29, Reflection.getOrCreateKotlinClass(EnterWalletPinPresenter.class), null, c138129, kind, emptyList29));
        module.indexPrimaryType(factoryInstanceFactory29);
        new Pair(module, factoryInstanceFactory29);
        C138330 c138330 = C138330.INSTANCE;
        StringQualifier rootScopeQualifier30 = companion.getRootScopeQualifier();
        emptyList30 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory30 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier30, Reflection.getOrCreateKotlinClass(EnterWalletPasswordPresenter.class), null, c138330, kind, emptyList30));
        module.indexPrimaryType(factoryInstanceFactory30);
        new Pair(module, factoryInstanceFactory30);
        C138431 c138431 = C138431.INSTANCE;
        StringQualifier rootScopeQualifier31 = companion.getRootScopeQualifier();
        emptyList31 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory31 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier31, Reflection.getOrCreateKotlinClass(WalletBinancePayHistoryPresenter.class), null, c138431, kind, emptyList31));
        module.indexPrimaryType(factoryInstanceFactory31);
        new Pair(module, factoryInstanceFactory31);
        C138532 c138532 = C138532.INSTANCE;
        StringQualifier rootScopeQualifier32 = companion.getRootScopeQualifier();
        emptyList32 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory32 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier32, Reflection.getOrCreateKotlinClass(WalletHomeBinancePayPresenter.class), null, c138532, kind, emptyList32));
        module.indexPrimaryType(factoryInstanceFactory32);
        new Pair(module, factoryInstanceFactory32);
        C138633 c138633 = C138633.INSTANCE;
        StringQualifier rootScopeQualifier33 = companion.getRootScopeQualifier();
        emptyList33 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory33 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier33, Reflection.getOrCreateKotlinClass(WalletReceiveBinancePayPresenter.class), null, c138633, kind, emptyList33));
        module.indexPrimaryType(factoryInstanceFactory33);
        new Pair(module, factoryInstanceFactory33);
        C138734 c138734 = C138734.INSTANCE;
        StringQualifier rootScopeQualifier34 = companion.getRootScopeQualifier();
        emptyList34 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory34 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier34, Reflection.getOrCreateKotlinClass(CreateWalletPresenter.class), null, c138734, kind, emptyList34));
        module.indexPrimaryType(factoryInstanceFactory34);
        new Pair(module, factoryInstanceFactory34);
        C138835 c138835 = C138835.INSTANCE;
        StringQualifier rootScopeQualifier35 = companion.getRootScopeQualifier();
        emptyList35 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory35 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier35, Reflection.getOrCreateKotlinClass(SecretWordsCountPresenter.class), null, c138835, kind, emptyList35));
        module.indexPrimaryType(factoryInstanceFactory35);
        new Pair(module, factoryInstanceFactory35);
        C138936 c138936 = C138936.INSTANCE;
        StringQualifier rootScopeQualifier36 = companion.getRootScopeQualifier();
        emptyList36 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory36 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier36, Reflection.getOrCreateKotlinClass(WalletAccountSettingsPresenter.class), null, c138936, kind, emptyList36));
        module.indexPrimaryType(factoryInstanceFactory36);
        new Pair(module, factoryInstanceFactory36);
        C139037 c139037 = C139037.INSTANCE;
        StringQualifier rootScopeQualifier37 = companion.getRootScopeQualifier();
        emptyList37 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory37 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier37, Reflection.getOrCreateKotlinClass(BlockchainsManagementPresenter.class), null, c139037, kind, emptyList37));
        module.indexPrimaryType(factoryInstanceFactory37);
        new Pair(module, factoryInstanceFactory37);
        C139138 c139138 = C139138.INSTANCE;
        StringQualifier rootScopeQualifier38 = companion.getRootScopeQualifier();
        emptyList38 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory38 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier38, Reflection.getOrCreateKotlinClass(BlockchainWalletDetailsPresenter.class), null, c139138, kind, emptyList38));
        module.indexPrimaryType(factoryInstanceFactory38);
        new Pair(module, factoryInstanceFactory38);
        C139239 c139239 = C139239.INSTANCE;
        StringQualifier rootScopeQualifier39 = companion.getRootScopeQualifier();
        emptyList39 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory39 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier39, Reflection.getOrCreateKotlinClass(BackupWordSwitcherPresenter.class), null, c139239, kind, emptyList39));
        module.indexPrimaryType(factoryInstanceFactory39);
        new Pair(module, factoryInstanceFactory39);
        C139440 c139440 = C139440.INSTANCE;
        StringQualifier rootScopeQualifier40 = companion.getRootScopeQualifier();
        emptyList40 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory40 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier40, Reflection.getOrCreateKotlinClass(AddressMismatchPresenter.class), null, c139440, kind, emptyList40));
        module.indexPrimaryType(factoryInstanceFactory40);
        new Pair(module, factoryInstanceFactory40);
        C139541 c139541 = C139541.INSTANCE;
        StringQualifier rootScopeQualifier41 = companion.getRootScopeQualifier();
        emptyList41 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory41 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier41, Reflection.getOrCreateKotlinClass(WalletSwapProtocolsPresenter.class), null, c139541, kind, emptyList41));
        module.indexPrimaryType(factoryInstanceFactory41);
        new Pair(module, factoryInstanceFactory41);
        C139642 c139642 = C139642.INSTANCE;
        StringQualifier rootScopeQualifier42 = companion.getRootScopeQualifier();
        emptyList42 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory42 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier42, Reflection.getOrCreateKotlinClass(WalletSwapProcessPresenter.class), null, c139642, kind, emptyList42));
        module.indexPrimaryType(factoryInstanceFactory42);
        new Pair(module, factoryInstanceFactory42);
        C139743 c139743 = C139743.INSTANCE;
        StringQualifier rootScopeQualifier43 = companion.getRootScopeQualifier();
        emptyList43 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory43 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier43, Reflection.getOrCreateKotlinClass(WalletSelectTokenPresenter.class), null, c139743, kind, emptyList43));
        module.indexPrimaryType(factoryInstanceFactory43);
        new Pair(module, factoryInstanceFactory43);
        C139844 c139844 = C139844.INSTANCE;
        StringQualifier rootScopeQualifier44 = companion.getRootScopeQualifier();
        emptyList44 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory44 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier44, Reflection.getOrCreateKotlinClass(WalletSwapFeePresenter.class), null, c139844, kind, emptyList44));
        module.indexPrimaryType(factoryInstanceFactory44);
        new Pair(module, factoryInstanceFactory44);
        C139945 c139945 = C139945.INSTANCE;
        StringQualifier rootScopeQualifier45 = companion.getRootScopeQualifier();
        emptyList45 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory45 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier45, Reflection.getOrCreateKotlinClass(SimplexWebViewProcessingPresenter.class), null, c139945, kind, emptyList45));
        module.indexPrimaryType(factoryInstanceFactory45);
        new Pair(module, factoryInstanceFactory45);
        C140046 c140046 = C140046.INSTANCE;
        StringQualifier rootScopeQualifier46 = companion.getRootScopeQualifier();
        emptyList46 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory46 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier46, Reflection.getOrCreateKotlinClass(WalletAppearanceSettingsPresenter.class), null, c140046, kind, emptyList46));
        module.indexPrimaryType(factoryInstanceFactory46);
        new Pair(module, factoryInstanceFactory46);
        C140147 c140147 = C140147.INSTANCE;
        StringQualifier rootScopeQualifier47 = companion.getRootScopeQualifier();
        emptyList47 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory47 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier47, Reflection.getOrCreateKotlinClass(WalletAirdropPresenter.class), null, c140147, kind, emptyList47));
        module.indexPrimaryType(factoryInstanceFactory47);
        new Pair(module, factoryInstanceFactory47);
        C140248 c140248 = C140248.INSTANCE;
        StringQualifier rootScopeQualifier48 = companion.getRootScopeQualifier();
        emptyList48 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory48 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier48, Reflection.getOrCreateKotlinClass(WalletAirdropDialogPresenter.class), null, c140248, kind, emptyList48));
        module.indexPrimaryType(factoryInstanceFactory48);
        new Pair(module, factoryInstanceFactory48);
        C140349 c140349 = C140349.INSTANCE;
        StringQualifier rootScopeQualifier49 = companion.getRootScopeQualifier();
        emptyList49 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory49 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier49, Reflection.getOrCreateKotlinClass(DebugPresenter.class), null, c140349, kind, emptyList49));
        module.indexPrimaryType(factoryInstanceFactory49);
        new Pair(module, factoryInstanceFactory49);
        C140550 c140550 = C140550.INSTANCE;
        StringQualifier rootScopeQualifier50 = companion.getRootScopeQualifier();
        emptyList50 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory50 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier50, Reflection.getOrCreateKotlinClass(WalletConnectPresenter.class), null, c140550, kind, emptyList50));
        module.indexPrimaryType(factoryInstanceFactory50);
        new Pair(module, factoryInstanceFactory50);
        C140651 c140651 = C140651.INSTANCE;
        StringQualifier rootScopeQualifier51 = companion.getRootScopeQualifier();
        emptyList51 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory51 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier51, Reflection.getOrCreateKotlinClass(WalletConnectSessionDetailsPresenter.class), null, c140651, kind, emptyList51));
        module.indexPrimaryType(factoryInstanceFactory51);
        new Pair(module, factoryInstanceFactory51);
        C140752 c140752 = C140752.INSTANCE;
        StringQualifier rootScopeQualifier52 = companion.getRootScopeQualifier();
        emptyList52 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory52 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier52, Reflection.getOrCreateKotlinClass(WalletConnectNewSessionPresenter.class), null, c140752, kind, emptyList52));
        module.indexPrimaryType(factoryInstanceFactory52);
        new Pair(module, factoryInstanceFactory52);
        C140853 c140853 = C140853.INSTANCE;
        StringQualifier rootScopeQualifier53 = companion.getRootScopeQualifier();
        emptyList53 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory53 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier53, Reflection.getOrCreateKotlinClass(WalletConnectTransactionPresenter.class), null, c140853, kind, emptyList53));
        module.indexPrimaryType(factoryInstanceFactory53);
        new Pair(module, factoryInstanceFactory53);
        C140954 c140954 = C140954.INSTANCE;
        StringQualifier rootScopeQualifier54 = companion.getRootScopeQualifier();
        emptyList54 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory54 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier54, Reflection.getOrCreateKotlinClass(WalletConnectMessageSignPresenter.class), null, c140954, kind, emptyList54));
        module.indexPrimaryType(factoryInstanceFactory54);
        new Pair(module, factoryInstanceFactory54);
        C141055 c141055 = C141055.INSTANCE;
        StringQualifier rootScopeQualifier55 = companion.getRootScopeQualifier();
        emptyList55 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory55 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier55, Reflection.getOrCreateKotlinClass(WalletConnectSwitchNetworkPresenter.class), null, c141055, kind, emptyList55));
        module.indexPrimaryType(factoryInstanceFactory55);
        new Pair(module, factoryInstanceFactory55);
        C141156 c141156 = C141156.INSTANCE;
        StringQualifier rootScopeQualifier56 = companion.getRootScopeQualifier();
        emptyList56 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory56 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier56, Reflection.getOrCreateKotlinClass(CatalogRootPresenter.class), null, c141156, kind, emptyList56));
        module.indexPrimaryType(factoryInstanceFactory56);
        new Pair(module, factoryInstanceFactory56);
        C141257 c141257 = C141257.INSTANCE;
        StringQualifier rootScopeQualifier57 = companion.getRootScopeQualifier();
        emptyList57 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory57 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier57, Reflection.getOrCreateKotlinClass(CatalogPresenter.class), null, c141257, kind, emptyList57));
        module.indexPrimaryType(factoryInstanceFactory57);
        new Pair(module, factoryInstanceFactory57);
        C141358 c141358 = C141358.INSTANCE;
        StringQualifier rootScopeQualifier58 = companion.getRootScopeQualifier();
        emptyList58 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory58 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier58, Reflection.getOrCreateKotlinClass(ChannelDetailsPresenter.class), null, c141358, kind, emptyList58));
        module.indexPrimaryType(factoryInstanceFactory58);
        new Pair(module, factoryInstanceFactory58);
        C141459 c141459 = C141459.INSTANCE;
        StringQualifier rootScopeQualifier59 = companion.getRootScopeQualifier();
        emptyList59 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory59 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier59, Reflection.getOrCreateKotlinClass(CatalogAllPresenter.class), null, c141459, kind, emptyList59));
        module.indexPrimaryType(factoryInstanceFactory59);
        new Pair(module, factoryInstanceFactory59);
        C141660 c141660 = C141660.INSTANCE;
        StringQualifier rootScopeQualifier60 = companion.getRootScopeQualifier();
        emptyList60 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory60 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier60, Reflection.getOrCreateKotlinClass(CatalogCategoriesPresenter.class), null, c141660, kind, emptyList60));
        module.indexPrimaryType(factoryInstanceFactory60);
        new Pair(module, factoryInstanceFactory60);
        C141761 c141761 = C141761.INSTANCE;
        StringQualifier rootScopeQualifier61 = companion.getRootScopeQualifier();
        emptyList61 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory61 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier61, Reflection.getOrCreateKotlinClass(CatalogUserChannelsPresenter.class), null, c141761, kind, emptyList61));
        module.indexPrimaryType(factoryInstanceFactory61);
        new Pair(module, factoryInstanceFactory61);
        C141862 c141862 = C141862.INSTANCE;
        StringQualifier rootScopeQualifier62 = companion.getRootScopeQualifier();
        emptyList62 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory62 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier62, Reflection.getOrCreateKotlinClass(StakingPresenter.class), null, c141862, kind, emptyList62));
        module.indexPrimaryType(factoryInstanceFactory62);
        new Pair(module, factoryInstanceFactory62);
        C141963 c141963 = C141963.INSTANCE;
        StringQualifier rootScopeQualifier63 = companion.getRootScopeQualifier();
        emptyList63 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory63 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier63, Reflection.getOrCreateKotlinClass(StakingProgrammesPresenter.class), null, c141963, kind, emptyList63));
        module.indexPrimaryType(factoryInstanceFactory63);
        new Pair(module, factoryInstanceFactory63);
        C142064 c142064 = C142064.INSTANCE;
        StringQualifier rootScopeQualifier64 = companion.getRootScopeQualifier();
        emptyList64 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory64 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier64, Reflection.getOrCreateKotlinClass(StakingConditionsPresenter.class), null, c142064, kind, emptyList64));
        module.indexPrimaryType(factoryInstanceFactory64);
        new Pair(module, factoryInstanceFactory64);
        C142165 c142165 = C142165.INSTANCE;
        StringQualifier rootScopeQualifier65 = companion.getRootScopeQualifier();
        emptyList65 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory65 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier65, Reflection.getOrCreateKotlinClass(StakingTransactionPresenter.class), null, c142165, kind, emptyList65));
        module.indexPrimaryType(factoryInstanceFactory65);
        new Pair(module, factoryInstanceFactory65);
        C142266 c142266 = C142266.INSTANCE;
        StringQualifier rootScopeQualifier66 = companion.getRootScopeQualifier();
        emptyList66 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory66 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier66, Reflection.getOrCreateKotlinClass(StakingOperationsPresenter.class), null, c142266, kind, emptyList66));
        module.indexPrimaryType(factoryInstanceFactory66);
        new Pair(module, factoryInstanceFactory66);
        C142367 c142367 = C142367.INSTANCE;
        StringQualifier rootScopeQualifier67 = companion.getRootScopeQualifier();
        emptyList67 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory67 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier67, Reflection.getOrCreateKotlinClass(StakingCalculatorPresenter.class), null, c142367, kind, emptyList67));
        module.indexPrimaryType(factoryInstanceFactory67);
        new Pair(module, factoryInstanceFactory67);
        C142468 c142468 = C142468.INSTANCE;
        StringQualifier rootScopeQualifier68 = companion.getRootScopeQualifier();
        emptyList68 = CollectionsKt__CollectionsKt.emptyList();
        FactoryInstanceFactory factoryInstanceFactory68 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier68, Reflection.getOrCreateKotlinClass(StakingCalculatorProgrammesPresenter.class), null, c142468, kind, emptyList68));
        module.indexPrimaryType(factoryInstanceFactory68);
        new Pair(module, factoryInstanceFactory68);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PresenterModule.kt */
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$15 */
    /* loaded from: classes3.dex */
    public static final class C136615 extends Lambda implements Function2<Scope, ParametersHolder, WalletNotificationsPresenter> {
        public static final C136615 INSTANCE = new C136615();

        C136615() {
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
    public static final class C13712 extends Lambda implements Function2<Scope, ParametersHolder, WalletAttachAlertPresenter> {
        public static final C13712 INSTANCE = new C13712();

        C13712() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$30 */
    /* loaded from: classes3.dex */
    public static final class C138330 extends Lambda implements Function2<Scope, ParametersHolder, EnterWalletPasswordPresenter> {
        public static final C138330 INSTANCE = new C138330();

        C138330() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$40 */
    /* loaded from: classes3.dex */
    public static final class C139440 extends Lambda implements Function2<Scope, ParametersHolder, AddressMismatchPresenter> {
        public static final C139440 INSTANCE = new C139440();

        C139440() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$41 */
    /* loaded from: classes3.dex */
    public static final class C139541 extends Lambda implements Function2<Scope, ParametersHolder, WalletSwapProtocolsPresenter> {
        public static final C139541 INSTANCE = new C139541();

        C139541() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$47 */
    /* loaded from: classes3.dex */
    public static final class C140147 extends Lambda implements Function2<Scope, ParametersHolder, WalletAirdropPresenter> {
        public static final C140147 INSTANCE = new C140147();

        C140147() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$48 */
    /* loaded from: classes3.dex */
    public static final class C140248 extends Lambda implements Function2<Scope, ParametersHolder, WalletAirdropDialogPresenter> {
        public static final C140248 INSTANCE = new C140248();

        C140248() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$49 */
    /* loaded from: classes3.dex */
    public static final class C140349 extends Lambda implements Function2<Scope, ParametersHolder, DebugPresenter> {
        public static final C140349 INSTANCE = new C140349();

        C140349() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$62 */
    /* loaded from: classes3.dex */
    public static final class C141862 extends Lambda implements Function2<Scope, ParametersHolder, StakingPresenter> {
        public static final C141862 INSTANCE = new C141862();

        C141862() {
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
    public static final class C14257 extends Lambda implements Function2<Scope, ParametersHolder, WalletRootPresenter> {
        public static final C14257 INSTANCE = new C14257();

        C14257() {
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
    public static final class C14268 extends Lambda implements Function2<Scope, ParametersHolder, WalletSettingsPresenter> {
        public static final C14268 INSTANCE = new C14268();

        C14268() {
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
    public static final class C14279 extends Lambda implements Function2<Scope, ParametersHolder, PhotoViewerPresenter> {
        public static final C14279 INSTANCE = new C14279();

        C14279() {
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
    public static final class C136110 extends Lambda implements Function2<Scope, ParametersHolder, WalletHomePresenter> {
        public static final C136110 INSTANCE = new C136110();

        C136110() {
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
    public static final class C136211 extends Lambda implements Function2<Scope, ParametersHolder, WalletHomeCryptoPresenter> {
        public static final C136211 INSTANCE = new C136211();

        C136211() {
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
    public static final class C136413 extends Lambda implements Function2<Scope, ParametersHolder, WalletHomeServicesPresenter> {
        public static final C136413 INSTANCE = new C136413();

        C136413() {
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
    public static final class C137220 extends Lambda implements Function2<Scope, ParametersHolder, ContactsPresenter> {
        public static final C137220 INSTANCE = new C137220();

        C137220() {
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
    public static final class C137422 extends Lambda implements Function2<Scope, ParametersHolder, EmojiViewPresenter> {
        public static final C137422 INSTANCE = new C137422();

        C137422() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$26 */
    /* loaded from: classes3.dex */
    public static final class C137826 extends Lambda implements Function2<Scope, ParametersHolder, CreateWalletPasswordPresenter> {
        public static final C137826 INSTANCE = new C137826();

        C137826() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$35 */
    /* loaded from: classes3.dex */
    public static final class C138835 extends Lambda implements Function2<Scope, ParametersHolder, SecretWordsCountPresenter> {
        public static final C138835 INSTANCE = new C138835();

        C138835() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$36 */
    /* loaded from: classes3.dex */
    public static final class C138936 extends Lambda implements Function2<Scope, ParametersHolder, WalletAccountSettingsPresenter> {
        public static final C138936 INSTANCE = new C138936();

        C138936() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$37 */
    /* loaded from: classes3.dex */
    public static final class C139037 extends Lambda implements Function2<Scope, ParametersHolder, BlockchainsManagementPresenter> {
        public static final C139037 INSTANCE = new C139037();

        C139037() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$39 */
    /* loaded from: classes3.dex */
    public static final class C139239 extends Lambda implements Function2<Scope, ParametersHolder, BackupWordSwitcherPresenter> {
        public static final C139239 INSTANCE = new C139239();

        C139239() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$45 */
    /* loaded from: classes3.dex */
    public static final class C139945 extends Lambda implements Function2<Scope, ParametersHolder, SimplexWebViewProcessingPresenter> {
        public static final C139945 INSTANCE = new C139945();

        C139945() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$46 */
    /* loaded from: classes3.dex */
    public static final class C140046 extends Lambda implements Function2<Scope, ParametersHolder, WalletAppearanceSettingsPresenter> {
        public static final C140046 INSTANCE = new C140046();

        C140046() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$50 */
    /* loaded from: classes3.dex */
    public static final class C140550 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectPresenter> {
        public static final C140550 INSTANCE = new C140550();

        C140550() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$56 */
    /* loaded from: classes3.dex */
    public static final class C141156 extends Lambda implements Function2<Scope, ParametersHolder, CatalogRootPresenter> {
        public static final C141156 INSTANCE = new C141156();

        C141156() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$57 */
    /* loaded from: classes3.dex */
    public static final class C141257 extends Lambda implements Function2<Scope, ParametersHolder, CatalogPresenter> {
        public static final C141257 INSTANCE = new C141257();

        C141257() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$66 */
    /* loaded from: classes3.dex */
    public static final class C142266 extends Lambda implements Function2<Scope, ParametersHolder, StakingOperationsPresenter> {
        public static final C142266 INSTANCE = new C142266();

        C142266() {
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
    /* renamed from: com.smedialink.di.module.PresenterModuleKt$presentationPresenterModule$1$68 */
    /* loaded from: classes3.dex */
    public static final class C142468 extends Lambda implements Function2<Scope, ParametersHolder, StakingCalculatorProgrammesPresenter> {
        public static final C142468 INSTANCE = new C142468();

        C142468() {
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
