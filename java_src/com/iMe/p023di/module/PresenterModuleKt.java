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
import com.iMe.model.wallet.crypto.TokensScreenType;
import com.iMe.model.wallet.crypto.buy.CryptoBuyItem;
import com.iMe.model.wallet.crypto.create.CreateWalletScreenType;
import com.iMe.model.wallet.crypto.create.WalletCreationType;
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
import com.iMe.p031ui.wallet.crypto.create.intro.CreateWalletIntroPresenter;
import com.iMe.p031ui.wallet.crypto.create.pin.CreateWalletPinPresenter;
import com.iMe.p031ui.wallet.crypto.create.secret_words_count.SecretWordsCountPresenter;
import com.iMe.p031ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter;
import com.iMe.p031ui.wallet.crypto.enter.pin.EnterWalletPinPresenter;
import com.iMe.p031ui.wallet.crypto.settings.WalletAccountSettingsPresenter;
import com.iMe.p031ui.wallet.crypto.settings.blockchains.BlockchainsManagementPresenter;
import com.iMe.p031ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsPresenter;
import com.iMe.p031ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter;
import com.iMe.p031ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter;
import com.iMe.p031ui.wallet.crypto.token.TokenManagementFragment;
import com.iMe.p031ui.wallet.crypto.token.TokenManagementPresenter;
import com.iMe.p031ui.wallet.crypto.tutorial.CreateWalletTutorialPresenter;
import com.iMe.p031ui.wallet.crypto.wallet_connect.WalletConnectPresenter;
import com.iMe.p031ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignPresenter;
import com.iMe.p031ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkPresenter;
import com.iMe.p031ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionPresenter;
import com.iMe.p031ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsPresenter;
import com.iMe.p031ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionPresenter;
import com.iMe.p031ui.wallet.donations.WalletDonationsPresenter;
import com.iMe.p031ui.wallet.home.WalletHomePresenter;
import com.iMe.p031ui.wallet.home.attach.WalletAttachAlertPresenter;
import com.iMe.p031ui.wallet.home.details.WalletTokenDetailsPresenter;
import com.iMe.p031ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter;
import com.iMe.p031ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment;
import com.iMe.p031ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryPresenter;
import com.iMe.p031ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter;
import com.iMe.p031ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter;
import com.iMe.p031ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter;
import com.iMe.p031ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyPresenter;
import com.iMe.p031ui.wallet.home.tabs.services.WalletHomeServicesPresenter;
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
import com.iMe.p031ui.wallet.swap.token.WalletSelectTokenFragment;
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
import com.iMe.storage.domain.model.staking.StakingTabType;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
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
import org.koin.dsl.ModuleDSLKt;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: PresenterModule.kt */
/* renamed from: com.iMe.di.module.PresenterModuleKt */
/* loaded from: classes3.dex */
public final class PresenterModuleKt {
    private static Module presentationPresenterModule = ModuleDSLKt.module$default(false, new Function1<Module, Unit>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1
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
            List emptyList72;
            List emptyList73;
            Intrinsics.checkNotNullParameter(module, "$this$module");
            C13501 c13501 = new Function2<Scope, ParametersHolder, TranslationPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.1
                @Override // kotlin.jvm.functions.Function2
                public final TranslationPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    TranslationArgs translationArgs = (TranslationArgs) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(TranslationArgs.class));
                    TelegramGateway telegramGateway = (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null);
                    ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
                    return new TranslationPresenter(translationArgs, (TranslationInteractor) factory.get(Reflection.getOrCreateKotlinClass(TranslationInteractor.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), resourceManager, telegramGateway);
                }
            };
            ScopeRegistry.Companion companion = ScopeRegistry.Companion;
            StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
            Kind kind = Kind.Factory;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(TranslationPresenter.class), null, c13501, kind, emptyList));
            module.indexPrimaryType(factoryInstanceFactory);
            new KoinDefinition(module, factoryInstanceFactory);
            C13612 c13612 = new Function2<Scope, ParametersHolder, WalletAttachAlertPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.2
                @Override // kotlin.jvm.functions.Function2
                public final WalletAttachAlertPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
                    SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
                    return new WalletAttachAlertPresenter((WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), schedulersProvider, resourceManager, (CryptoRecipientManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoRecipientManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory2 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(WalletAttachAlertPresenter.class), null, c13612, kind, emptyList2));
            module.indexPrimaryType(factoryInstanceFactory2);
            new KoinDefinition(module, factoryInstanceFactory2);
            C13723 c13723 = new Function2<Scope, ParametersHolder, WalletSendRecipientPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.3
                @Override // kotlin.jvm.functions.Function2
                public final WalletSendRecipientPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new WalletSendRecipientPresenter((String) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(String.class)), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (CryptoRecipientManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoRecipientManager.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
            emptyList3 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory3 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(WalletSendRecipientPresenter.class), null, c13723, kind, emptyList3));
            module.indexPrimaryType(factoryInstanceFactory3);
            new KoinDefinition(module, factoryInstanceFactory3);
            C13834 c13834 = new Function2<Scope, ParametersHolder, WalletSendAmountPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.4
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
            };
            StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
            emptyList4 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory4 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(WalletSendAmountPresenter.class), null, c13834, kind, emptyList4));
            module.indexPrimaryType(factoryInstanceFactory4);
            new KoinDefinition(module, factoryInstanceFactory4);
            C13945 c13945 = new Function2<Scope, ParametersHolder, WalletDonationsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.5
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
            };
            StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
            emptyList5 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory5 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(WalletDonationsPresenter.class), null, c13945, kind, emptyList5));
            module.indexPrimaryType(factoryInstanceFactory5);
            new KoinDefinition(module, factoryInstanceFactory5);
            C14056 c14056 = new Function2<Scope, ParametersHolder, ChatPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.6
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
            };
            StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
            emptyList6 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory6 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(ChatPresenter.class), null, c14056, kind, emptyList6));
            module.indexPrimaryType(factoryInstanceFactory6);
            new KoinDefinition(module, factoryInstanceFactory6);
            C14167 c14167 = new Function2<Scope, ParametersHolder, WalletRootPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.7
                @Override // kotlin.jvm.functions.Function2
                public final WalletRootPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletRootPresenter((CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
            emptyList7 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory7 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(WalletRootPresenter.class), null, c14167, kind, emptyList7));
            module.indexPrimaryType(factoryInstanceFactory7);
            new KoinDefinition(module, factoryInstanceFactory7);
            C14218 c14218 = new Function2<Scope, ParametersHolder, WalletSettingsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.8
                @Override // kotlin.jvm.functions.Function2
                public final WalletSettingsPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletSettingsPresenter((CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
            emptyList8 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory8 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(WalletSettingsPresenter.class), null, c14218, kind, emptyList8));
            module.indexPrimaryType(factoryInstanceFactory8);
            new KoinDefinition(module, factoryInstanceFactory8);
            C14229 c14229 = new Function2<Scope, ParametersHolder, PhotoViewerPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.9
                @Override // kotlin.jvm.functions.Function2
                public final PhotoViewerPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new PhotoViewerPresenter((GoogleServicesInteractor) factory.get(Reflection.getOrCreateKotlinClass(GoogleServicesInteractor.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
            emptyList9 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory9 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(PhotoViewerPresenter.class), null, c14229, kind, emptyList9));
            module.indexPrimaryType(factoryInstanceFactory9);
            new KoinDefinition(module, factoryInstanceFactory9);
            C135110 c135110 = new Function2<Scope, ParametersHolder, WalletHomePresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.10
                @Override // kotlin.jvm.functions.Function2
                public final WalletHomePresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletHomePresenter((RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
            emptyList10 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory10 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(WalletHomePresenter.class), null, c135110, kind, emptyList10));
            module.indexPrimaryType(factoryInstanceFactory10);
            new KoinDefinition(module, factoryInstanceFactory10);
            C135211 c135211 = new Function2<Scope, ParametersHolder, WalletHomeCryptoPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.11
                @Override // kotlin.jvm.functions.Function2
                public final WalletHomeCryptoPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletHomeCryptoPresenter((CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (HintsPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(HintsPreferenceHelper.class), null, null), (NftAvatarInteractor) factory.get(Reflection.getOrCreateKotlinClass(NftAvatarInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null), (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (WalletCreateManager) factory.get(Reflection.getOrCreateKotlinClass(WalletCreateManager.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
            emptyList11 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory11 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(WalletHomeCryptoPresenter.class), null, c135211, kind, emptyList11));
            module.indexPrimaryType(factoryInstanceFactory11);
            new KoinDefinition(module, factoryInstanceFactory11);
            C135312 c135312 = new Function2<Scope, ParametersHolder, WalletHomeCryptoTokensSettingsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.12
                @Override // kotlin.jvm.functions.Function2
                public final WalletHomeCryptoTokensSettingsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    TokensScreenType tokensScreenType = (TokensScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(TokensScreenType.class));
                    return new WalletHomeCryptoTokensSettingsPresenter((CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), tokensScreenType, (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
            emptyList12 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory12 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(WalletHomeCryptoTokensSettingsPresenter.class), null, c135312, kind, emptyList12));
            module.indexPrimaryType(factoryInstanceFactory12);
            new KoinDefinition(module, factoryInstanceFactory12);
            C135413 c135413 = new Function2<Scope, ParametersHolder, WalletHomeServicesPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.13
                @Override // kotlin.jvm.functions.Function2
                public final WalletHomeServicesPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletHomeServicesPresenter((CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
            emptyList13 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory13 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(WalletHomeServicesPresenter.class), null, c135413, kind, emptyList13));
            module.indexPrimaryType(factoryInstanceFactory13);
            new KoinDefinition(module, factoryInstanceFactory13);
            C135514 c135514 = new Function2<Scope, ParametersHolder, WalletTokenDetailsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.14
                @Override // kotlin.jvm.functions.Function2
                public final WalletTokenDetailsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new WalletTokenDetailsPresenter((TokenDetailsArgs) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(TokenDetailsArgs.class)), (AccountLevelInteractor) factory.get(Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, null), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (StakingInteractor) factory.get(Reflection.getOrCreateKotlinClass(StakingInteractor.class), null, null), (WalletCreateManager) factory.get(Reflection.getOrCreateKotlinClass(WalletCreateManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
            emptyList14 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory14 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(WalletTokenDetailsPresenter.class), null, c135514, kind, emptyList14));
            module.indexPrimaryType(factoryInstanceFactory14);
            new KoinDefinition(module, factoryInstanceFactory14);
            C135615 c135615 = new Function2<Scope, ParametersHolder, TokenManagementPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.15
                @Override // kotlin.jvm.functions.Function2
                public final TokenManagementPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new TokenManagementPresenter((TokenManagementFragment.ScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(TokenManagementFragment.ScreenType.class)), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
            emptyList15 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory15 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(TokenManagementPresenter.class), null, c135615, kind, emptyList15));
            module.indexPrimaryType(factoryInstanceFactory15);
            new KoinDefinition(module, factoryInstanceFactory15);
            C135716 c135716 = new Function2<Scope, ParametersHolder, TokenFamilyPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.16
                @Override // kotlin.jvm.functions.Function2
                public final TokenFamilyPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new TokenFamilyPresenter((List) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(List.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
            emptyList16 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory16 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(TokenFamilyPresenter.class), null, c135716, kind, emptyList16));
            module.indexPrimaryType(factoryInstanceFactory16);
            new KoinDefinition(module, factoryInstanceFactory16);
            C135817 c135817 = new Function2<Scope, ParametersHolder, WalletNotificationsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.17
                @Override // kotlin.jvm.functions.Function2
                public final WalletNotificationsPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletNotificationsPresenter((PushNotificationInteractor) factory.get(Reflection.getOrCreateKotlinClass(PushNotificationInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
            emptyList17 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory17 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(WalletNotificationsPresenter.class), null, c135817, kind, emptyList17));
            module.indexPrimaryType(factoryInstanceFactory17);
            new KoinDefinition(module, factoryInstanceFactory17);
            C135918 c135918 = new Function2<Scope, ParametersHolder, WalletTransactionsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.18
                @Override // kotlin.jvm.functions.Function2
                public final WalletTransactionsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    WalletTransactionsFragment.ScreenType screenType = (WalletTransactionsFragment.ScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WalletTransactionsFragment.ScreenType.class));
                    Token token = (Token) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(Token.class));
                    ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
                    SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
                    RxEventBus rxEventBus = (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null);
                    WalletInteractor walletInteractor = (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null);
                    return new WalletTransactionsPresenter(token, screenType, (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (HintsPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(HintsPreferenceHelper.class), null, null), resourceManager, rxEventBus, schedulersProvider, (StakingInteractor) factory.get(Reflection.getOrCreateKotlinClass(StakingInteractor.class), null, null), walletInteractor);
                }
            };
            StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
            emptyList18 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory18 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(WalletTransactionsPresenter.class), null, c135918, kind, emptyList18));
            module.indexPrimaryType(factoryInstanceFactory18);
            new KoinDefinition(module, factoryInstanceFactory18);
            C136019 c136019 = new Function2<Scope, ParametersHolder, WalletNotificationDetailsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.19
                @Override // kotlin.jvm.functions.Function2
                public final WalletNotificationDetailsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new WalletNotificationDetailsPresenter((NotificationItem) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(NotificationItem.class)), (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
            emptyList19 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory19 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(WalletNotificationDetailsPresenter.class), null, c136019, kind, emptyList19));
            module.indexPrimaryType(factoryInstanceFactory19);
            new KoinDefinition(module, factoryInstanceFactory19);
            C136220 c136220 = new Function2<Scope, ParametersHolder, WalletTransactionDetailsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.20
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
            };
            StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
            emptyList20 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory20 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(WalletTransactionDetailsPresenter.class), null, c136220, kind, emptyList20));
            module.indexPrimaryType(factoryInstanceFactory20);
            new KoinDefinition(module, factoryInstanceFactory20);
            C136321 c136321 = new Function2<Scope, ParametersHolder, ReactionPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.21
                @Override // kotlin.jvm.functions.Function2
                public final ReactionPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    long longValue = ((Number) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Long.class))).longValue();
                    return new ReactionPresenter((ReactionInteractor) factory.get(Reflection.getOrCreateKotlinClass(ReactionInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null), (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), longValue);
                }
            };
            StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
            emptyList21 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory21 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(ReactionPresenter.class), null, c136321, kind, emptyList21));
            module.indexPrimaryType(factoryInstanceFactory21);
            new KoinDefinition(module, factoryInstanceFactory21);
            C136422 c136422 = new Function2<Scope, ParametersHolder, ContactsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.22
                @Override // kotlin.jvm.functions.Function2
                public final ContactsPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new ContactsPresenter((SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (ContactsInteractor) factory.get(Reflection.getOrCreateKotlinClass(ContactsInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
            emptyList22 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory22 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(ContactsPresenter.class), null, c136422, kind, emptyList22));
            module.indexPrimaryType(factoryInstanceFactory22);
            new KoinDefinition(module, factoryInstanceFactory22);
            C136523 c136523 = new Function2<Scope, ParametersHolder, ProfilePresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.23
                @Override // kotlin.jvm.functions.Function2
                public final ProfilePresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new ProfilePresenter((ProfileData) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(ProfileData.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (TwitterInteractor) factory.get(Reflection.getOrCreateKotlinClass(TwitterInteractor.class), null, null), (AccountLevelInteractor) factory.get(Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, null), (ProfileUseCase) factory.get(Reflection.getOrCreateKotlinClass(ProfileUseCase.class), null, null), (SocialUseCase) factory.get(Reflection.getOrCreateKotlinClass(SocialUseCase.class), null, null), (GroupMembershipUseCase) factory.get(Reflection.getOrCreateKotlinClass(GroupMembershipUseCase.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
            emptyList23 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory23 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(ProfilePresenter.class), null, c136523, kind, emptyList23));
            module.indexPrimaryType(factoryInstanceFactory23);
            new KoinDefinition(module, factoryInstanceFactory23);
            C136624 c136624 = new Function2<Scope, ParametersHolder, EmojiViewPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.24
                @Override // kotlin.jvm.functions.Function2
                public final EmojiViewPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new EmojiViewPresenter((KiklikoInteractor) factory.get(Reflection.getOrCreateKotlinClass(KiklikoInteractor.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
            emptyList24 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory24 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(EmojiViewPresenter.class), null, c136624, kind, emptyList24));
            module.indexPrimaryType(factoryInstanceFactory24);
            new KoinDefinition(module, factoryInstanceFactory24);
            C136725 c136725 = new Function2<Scope, ParametersHolder, TwitterPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.25
                @Override // kotlin.jvm.functions.Function2
                public final TwitterPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new TwitterPresenter(((Number) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Long.class))).longValue(), (SocialNetwork) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(SocialNetwork.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (TwitterInteractor) factory.get(Reflection.getOrCreateKotlinClass(TwitterInteractor.class), null, null), (SocialUseCase) factory.get(Reflection.getOrCreateKotlinClass(SocialUseCase.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier25 = companion.getRootScopeQualifier();
            emptyList25 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory25 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier25, Reflection.getOrCreateKotlinClass(TwitterPresenter.class), null, c136725, kind, emptyList25));
            module.indexPrimaryType(factoryInstanceFactory25);
            new KoinDefinition(module, factoryInstanceFactory25);
            C136826 c136826 = new Function2<Scope, ParametersHolder, TwitterSearchPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.26
                @Override // kotlin.jvm.functions.Function2
                public final TwitterSearchPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    BlockchainType blockchainType = (BlockchainType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(BlockchainType.class));
                    return new TwitterSearchPresenter((TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), blockchainType, (CryptoRecipientManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoRecipientManager.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null), (TwitterInteractor) factory.get(Reflection.getOrCreateKotlinClass(TwitterInteractor.class), null, null), (TwitterPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(TwitterPreferenceHelper.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier26 = companion.getRootScopeQualifier();
            emptyList26 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory26 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier26, Reflection.getOrCreateKotlinClass(TwitterSearchPresenter.class), null, c136826, kind, emptyList26));
            module.indexPrimaryType(factoryInstanceFactory26);
            new KoinDefinition(module, factoryInstanceFactory26);
            C136927 c136927 = new Function2<Scope, ParametersHolder, CreateWalletIntroPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.27
                @Override // kotlin.jvm.functions.Function2
                public final CreateWalletIntroPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new CreateWalletIntroPresenter((CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (String) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(String.class)), (WalletCreationType.Initial) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(WalletCreationType.Initial.class)), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier27 = companion.getRootScopeQualifier();
            emptyList27 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory27 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier27, Reflection.getOrCreateKotlinClass(CreateWalletIntroPresenter.class), null, c136927, kind, emptyList27));
            module.indexPrimaryType(factoryInstanceFactory27);
            new KoinDefinition(module, factoryInstanceFactory27);
            C137028 c137028 = new Function2<Scope, ParametersHolder, CreateWalletTutorialPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.28
                @Override // kotlin.jvm.functions.Function2
                public final CreateWalletTutorialPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new CreateWalletTutorialPresenter((TutorialType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(TutorialType.class)));
                }
            };
            StringQualifier rootScopeQualifier28 = companion.getRootScopeQualifier();
            emptyList28 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory28 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier28, Reflection.getOrCreateKotlinClass(CreateWalletTutorialPresenter.class), null, c137028, kind, emptyList28));
            module.indexPrimaryType(factoryInstanceFactory28);
            new KoinDefinition(module, factoryInstanceFactory28);
            C137129 c137129 = new Function2<Scope, ParametersHolder, BuyCryptoProductPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.29
                @Override // kotlin.jvm.functions.Function2
                public final BuyCryptoProductPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new BuyCryptoProductPresenter((TokenDetailed) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(TokenDetailed.class)), (SimplexInteractor) factory.get(Reflection.getOrCreateKotlinClass(SimplexInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier29 = companion.getRootScopeQualifier();
            emptyList29 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory29 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier29, Reflection.getOrCreateKotlinClass(BuyCryptoProductPresenter.class), null, c137129, kind, emptyList29));
            module.indexPrimaryType(factoryInstanceFactory29);
            new KoinDefinition(module, factoryInstanceFactory29);
            C137330 c137330 = new Function2<Scope, ParametersHolder, CryptoBuyCustomPricePresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.30
                @Override // kotlin.jvm.functions.Function2
                public final CryptoBuyCustomPricePresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new CryptoBuyCustomPricePresenter((CryptoBuyItem) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(CryptoBuyItem.class)), (SimplexInteractor) factory.get(Reflection.getOrCreateKotlinClass(SimplexInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (CustomPriceValidator) factory.get(Reflection.getOrCreateKotlinClass(CustomPriceValidator.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier30 = companion.getRootScopeQualifier();
            emptyList30 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory30 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier30, Reflection.getOrCreateKotlinClass(CryptoBuyCustomPricePresenter.class), null, c137330, kind, emptyList30));
            module.indexPrimaryType(factoryInstanceFactory30);
            new KoinDefinition(module, factoryInstanceFactory30);
            C137431 c137431 = new Function2<Scope, ParametersHolder, CreateWalletPinPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.31
                @Override // kotlin.jvm.functions.Function2
                public final CreateWalletPinPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new CreateWalletPinPresenter((WalletPinScreenArgs) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WalletPinScreenArgs.class)), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier31 = companion.getRootScopeQualifier();
            emptyList31 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory31 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier31, Reflection.getOrCreateKotlinClass(CreateWalletPinPresenter.class), null, c137431, kind, emptyList31));
            module.indexPrimaryType(factoryInstanceFactory31);
            new KoinDefinition(module, factoryInstanceFactory31);
            C137532 c137532 = new Function2<Scope, ParametersHolder, WalletPrivacySettingPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.32
                @Override // kotlin.jvm.functions.Function2
                public final WalletPrivacySettingPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    int intValue = ((Number) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Integer.class))).intValue();
                    CryptoPermissionInteractor cryptoPermissionInteractor = (CryptoPermissionInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoPermissionInteractor.class), null, null);
                    ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
                    return new WalletPrivacySettingPresenter(intValue, (AccountLevelInteractor) factory.get(Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, null), cryptoPermissionInteractor, (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), resourceManager);
                }
            };
            StringQualifier rootScopeQualifier32 = companion.getRootScopeQualifier();
            emptyList32 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory32 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier32, Reflection.getOrCreateKotlinClass(WalletPrivacySettingPresenter.class), null, c137532, kind, emptyList32));
            module.indexPrimaryType(factoryInstanceFactory32);
            new KoinDefinition(module, factoryInstanceFactory32);
            C137633 c137633 = new Function2<Scope, ParametersHolder, EnterWalletPinPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.33
                @Override // kotlin.jvm.functions.Function2
                public final EnterWalletPinPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new EnterWalletPinPresenter((EnterPinCodeScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(EnterPinCodeScreenType.class)), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (PinCodeInteractor) factory.get(Reflection.getOrCreateKotlinClass(PinCodeInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier33 = companion.getRootScopeQualifier();
            emptyList33 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory33 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier33, Reflection.getOrCreateKotlinClass(EnterWalletPinPresenter.class), null, c137633, kind, emptyList33));
            module.indexPrimaryType(factoryInstanceFactory33);
            new KoinDefinition(module, factoryInstanceFactory33);
            C137734 c137734 = new Function2<Scope, ParametersHolder, EnterWalletPasswordPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.34
                @Override // kotlin.jvm.functions.Function2
                public final EnterWalletPasswordPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new EnterWalletPasswordPresenter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier34 = companion.getRootScopeQualifier();
            emptyList34 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory34 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier34, Reflection.getOrCreateKotlinClass(EnterWalletPasswordPresenter.class), null, c137734, kind, emptyList34));
            module.indexPrimaryType(factoryInstanceFactory34);
            new KoinDefinition(module, factoryInstanceFactory34);
            C137835 c137835 = new Function2<Scope, ParametersHolder, WalletBinancePayHistoryPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.35
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
            };
            StringQualifier rootScopeQualifier35 = companion.getRootScopeQualifier();
            emptyList35 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory35 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier35, Reflection.getOrCreateKotlinClass(WalletBinancePayHistoryPresenter.class), null, c137835, kind, emptyList35));
            module.indexPrimaryType(factoryInstanceFactory35);
            new KoinDefinition(module, factoryInstanceFactory35);
            C137936 c137936 = new Function2<Scope, ParametersHolder, WalletHomeBinancePayPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.36
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
            };
            StringQualifier rootScopeQualifier36 = companion.getRootScopeQualifier();
            emptyList36 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory36 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier36, Reflection.getOrCreateKotlinClass(WalletHomeBinancePayPresenter.class), null, c137936, kind, emptyList36));
            module.indexPrimaryType(factoryInstanceFactory36);
            new KoinDefinition(module, factoryInstanceFactory36);
            C138037 c138037 = new Function2<Scope, ParametersHolder, WalletReceiveBinancePayPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.37
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
            };
            StringQualifier rootScopeQualifier37 = companion.getRootScopeQualifier();
            emptyList37 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory37 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier37, Reflection.getOrCreateKotlinClass(WalletReceiveBinancePayPresenter.class), null, c138037, kind, emptyList37));
            module.indexPrimaryType(factoryInstanceFactory37);
            new KoinDefinition(module, factoryInstanceFactory37);
            C138138 c138138 = new Function2<Scope, ParametersHolder, CreateWalletPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.38
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
            };
            StringQualifier rootScopeQualifier38 = companion.getRootScopeQualifier();
            emptyList38 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory38 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier38, Reflection.getOrCreateKotlinClass(CreateWalletPresenter.class), null, c138138, kind, emptyList38));
            module.indexPrimaryType(factoryInstanceFactory38);
            new KoinDefinition(module, factoryInstanceFactory38);
            C138239 c138239 = new Function2<Scope, ParametersHolder, SecretWordsCountPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.39
                @Override // kotlin.jvm.functions.Function2
                public final SecretWordsCountPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new SecretWordsCountPresenter();
                }
            };
            StringQualifier rootScopeQualifier39 = companion.getRootScopeQualifier();
            emptyList39 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory39 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier39, Reflection.getOrCreateKotlinClass(SecretWordsCountPresenter.class), null, c138239, kind, emptyList39));
            module.indexPrimaryType(factoryInstanceFactory39);
            new KoinDefinition(module, factoryInstanceFactory39);
            C138440 c138440 = new Function2<Scope, ParametersHolder, WalletAccountSettingsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.40
                @Override // kotlin.jvm.functions.Function2
                public final WalletAccountSettingsPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletAccountSettingsPresenter((CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier40 = companion.getRootScopeQualifier();
            emptyList40 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory40 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier40, Reflection.getOrCreateKotlinClass(WalletAccountSettingsPresenter.class), null, c138440, kind, emptyList40));
            module.indexPrimaryType(factoryInstanceFactory40);
            new KoinDefinition(module, factoryInstanceFactory40);
            C138541 c138541 = new Function2<Scope, ParametersHolder, BlockchainsManagementPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.41
                @Override // kotlin.jvm.functions.Function2
                public final BlockchainsManagementPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new BlockchainsManagementPresenter((CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier41 = companion.getRootScopeQualifier();
            emptyList41 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory41 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier41, Reflection.getOrCreateKotlinClass(BlockchainsManagementPresenter.class), null, c138541, kind, emptyList41));
            module.indexPrimaryType(factoryInstanceFactory41);
            new KoinDefinition(module, factoryInstanceFactory41);
            C138642 c138642 = new Function2<Scope, ParametersHolder, BlockchainWalletDetailsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.42
                @Override // kotlin.jvm.functions.Function2
                public final BlockchainWalletDetailsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new BlockchainWalletDetailsPresenter((BlockchainWalletItem) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(BlockchainWalletItem.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier42 = companion.getRootScopeQualifier();
            emptyList42 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory42 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier42, Reflection.getOrCreateKotlinClass(BlockchainWalletDetailsPresenter.class), null, c138642, kind, emptyList42));
            module.indexPrimaryType(factoryInstanceFactory42);
            new KoinDefinition(module, factoryInstanceFactory42);
            C138743 c138743 = new Function2<Scope, ParametersHolder, CustomTokensPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.43
                @Override // kotlin.jvm.functions.Function2
                public final CustomTokensPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CustomTokensPresenter((RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier43 = companion.getRootScopeQualifier();
            emptyList43 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory43 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier43, Reflection.getOrCreateKotlinClass(CustomTokensPresenter.class), null, c138743, kind, emptyList43));
            module.indexPrimaryType(factoryInstanceFactory43);
            new KoinDefinition(module, factoryInstanceFactory43);
            C138844 c138844 = new Function2<Scope, ParametersHolder, BackupWordSwitcherPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.44
                @Override // kotlin.jvm.functions.Function2
                public final BackupWordSwitcherPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new BackupWordSwitcherPresenter();
                }
            };
            StringQualifier rootScopeQualifier44 = companion.getRootScopeQualifier();
            emptyList44 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory44 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier44, Reflection.getOrCreateKotlinClass(BackupWordSwitcherPresenter.class), null, c138844, kind, emptyList44));
            module.indexPrimaryType(factoryInstanceFactory44);
            new KoinDefinition(module, factoryInstanceFactory44);
            C138945 c138945 = new Function2<Scope, ParametersHolder, AddressMismatchPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.45
                @Override // kotlin.jvm.functions.Function2
                public final AddressMismatchPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new AddressMismatchPresenter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier45 = companion.getRootScopeQualifier();
            emptyList45 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory45 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier45, Reflection.getOrCreateKotlinClass(AddressMismatchPresenter.class), null, c138945, kind, emptyList45));
            module.indexPrimaryType(factoryInstanceFactory45);
            new KoinDefinition(module, factoryInstanceFactory45);
            C139046 c139046 = new Function2<Scope, ParametersHolder, WalletSwapProtocolsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.46
                @Override // kotlin.jvm.functions.Function2
                public final WalletSwapProtocolsPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletSwapProtocolsPresenter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (BinancePayManager) factory.get(Reflection.getOrCreateKotlinClass(BinancePayManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier46 = companion.getRootScopeQualifier();
            emptyList46 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory46 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier46, Reflection.getOrCreateKotlinClass(WalletSwapProtocolsPresenter.class), null, c139046, kind, emptyList46));
            module.indexPrimaryType(factoryInstanceFactory46);
            new KoinDefinition(module, factoryInstanceFactory46);
            C139147 c139147 = new Function2<Scope, ParametersHolder, WalletSwapProcessPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.47
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
            };
            StringQualifier rootScopeQualifier47 = companion.getRootScopeQualifier();
            emptyList47 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory47 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier47, Reflection.getOrCreateKotlinClass(WalletSwapProcessPresenter.class), null, c139147, kind, emptyList47));
            module.indexPrimaryType(factoryInstanceFactory47);
            new KoinDefinition(module, factoryInstanceFactory47);
            C139248 c139248 = new Function2<Scope, ParametersHolder, WalletSelectTokenPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.48
                @Override // kotlin.jvm.functions.Function2
                public final WalletSelectTokenPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new WalletSelectTokenPresenter((WalletSelectTokenFragment.ScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WalletSelectTokenFragment.ScreenType.class)), (TokenDetailed) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(TokenDetailed.class)), (String) parametersHolder.elementAt(2, Reflection.getOrCreateKotlinClass(String.class)), ((Boolean) parametersHolder.elementAt(3, Reflection.getOrCreateKotlinClass(Boolean.class))).booleanValue(), (BinanceInternalInteractor) factory.get(Reflection.getOrCreateKotlinClass(BinanceInternalInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (SwapInteractor) factory.get(Reflection.getOrCreateKotlinClass(SwapInteractor.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier48 = companion.getRootScopeQualifier();
            emptyList48 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory48 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier48, Reflection.getOrCreateKotlinClass(WalletSelectTokenPresenter.class), null, c139248, kind, emptyList48));
            module.indexPrimaryType(factoryInstanceFactory48);
            new KoinDefinition(module, factoryInstanceFactory48);
            C139349 c139349 = new Function2<Scope, ParametersHolder, WalletSwapFeePresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.49
                @Override // kotlin.jvm.functions.Function2
                public final WalletSwapFeePresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
                    return new WalletSwapFeePresenter((SwapFeeScreenArgs) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(SwapFeeScreenArgs.class)), (SwapInteractor) factory.get(Reflection.getOrCreateKotlinClass(SwapInteractor.class), null, null), schedulersProvider, (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier49 = companion.getRootScopeQualifier();
            emptyList49 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory49 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier49, Reflection.getOrCreateKotlinClass(WalletSwapFeePresenter.class), null, c139349, kind, emptyList49));
            module.indexPrimaryType(factoryInstanceFactory49);
            new KoinDefinition(module, factoryInstanceFactory49);
            C139550 c139550 = new Function2<Scope, ParametersHolder, SimplexWebViewProcessingPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.50
                @Override // kotlin.jvm.functions.Function2
                public final SimplexWebViewProcessingPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new SimplexWebViewProcessingPresenter();
                }
            };
            StringQualifier rootScopeQualifier50 = companion.getRootScopeQualifier();
            emptyList50 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory50 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier50, Reflection.getOrCreateKotlinClass(SimplexWebViewProcessingPresenter.class), null, c139550, kind, emptyList50));
            module.indexPrimaryType(factoryInstanceFactory50);
            new KoinDefinition(module, factoryInstanceFactory50);
            C139651 c139651 = new Function2<Scope, ParametersHolder, WalletAppearanceSettingsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.51
                @Override // kotlin.jvm.functions.Function2
                public final WalletAppearanceSettingsPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletAppearanceSettingsPresenter((CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier51 = companion.getRootScopeQualifier();
            emptyList51 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory51 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier51, Reflection.getOrCreateKotlinClass(WalletAppearanceSettingsPresenter.class), null, c139651, kind, emptyList51));
            module.indexPrimaryType(factoryInstanceFactory51);
            new KoinDefinition(module, factoryInstanceFactory51);
            C139752 c139752 = new Function2<Scope, ParametersHolder, WalletAirdropPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.52
                @Override // kotlin.jvm.functions.Function2
                public final WalletAirdropPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
                    RxEventBus rxEventBus = (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null);
                    CryptoPreferenceHelper cryptoPreferenceHelper = (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null);
                    return new WalletAirdropPresenter((AirdropInteractor) factory.get(Reflection.getOrCreateKotlinClass(AirdropInteractor.class), null, null), rxEventBus, (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), cryptoPreferenceHelper, resourceManager, (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier52 = companion.getRootScopeQualifier();
            emptyList52 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory52 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier52, Reflection.getOrCreateKotlinClass(WalletAirdropPresenter.class), null, c139752, kind, emptyList52));
            module.indexPrimaryType(factoryInstanceFactory52);
            new KoinDefinition(module, factoryInstanceFactory52);
            C139853 c139853 = new Function2<Scope, ParametersHolder, WalletAirdropDialogPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.53
                @Override // kotlin.jvm.functions.Function2
                public final WalletAirdropDialogPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
                    CryptoPreferenceHelper cryptoPreferenceHelper = (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null);
                    return new WalletAirdropDialogPresenter((AirdropInteractor) factory.get(Reflection.getOrCreateKotlinClass(AirdropInteractor.class), null, null), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), cryptoPreferenceHelper, resourceManager, (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier53 = companion.getRootScopeQualifier();
            emptyList53 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory53 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier53, Reflection.getOrCreateKotlinClass(WalletAirdropDialogPresenter.class), null, c139853, kind, emptyList53));
            module.indexPrimaryType(factoryInstanceFactory53);
            new KoinDefinition(module, factoryInstanceFactory53);
            C139954 c139954 = new Function2<Scope, ParametersHolder, DebugPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.54
                @Override // kotlin.jvm.functions.Function2
                public final DebugPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new DebugPresenter((CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier54 = companion.getRootScopeQualifier();
            emptyList54 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory54 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier54, Reflection.getOrCreateKotlinClass(DebugPresenter.class), null, c139954, kind, emptyList54));
            module.indexPrimaryType(factoryInstanceFactory54);
            new KoinDefinition(module, factoryInstanceFactory54);
            C140055 c140055 = new Function2<Scope, ParametersHolder, WalletConnectPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.55
                @Override // kotlin.jvm.functions.Function2
                public final WalletConnectPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletConnectPresenter((CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (HintsPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(HintsPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (WalletConnectInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectInteractor.class), null, null), (WalletConnectManager) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier55 = companion.getRootScopeQualifier();
            emptyList55 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory55 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier55, Reflection.getOrCreateKotlinClass(WalletConnectPresenter.class), null, c140055, kind, emptyList55));
            module.indexPrimaryType(factoryInstanceFactory55);
            new KoinDefinition(module, factoryInstanceFactory55);
            C140156 c140156 = new Function2<Scope, ParametersHolder, WalletConnectSessionDetailsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.56
                @Override // kotlin.jvm.functions.Function2
                public final WalletConnectSessionDetailsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new WalletConnectSessionDetailsPresenter((WalletConnectSessionItem) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WalletConnectSessionItem.class)), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier56 = companion.getRootScopeQualifier();
            emptyList56 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory56 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier56, Reflection.getOrCreateKotlinClass(WalletConnectSessionDetailsPresenter.class), null, c140156, kind, emptyList56));
            module.indexPrimaryType(factoryInstanceFactory56);
            new KoinDefinition(module, factoryInstanceFactory56);
            C140257 c140257 = new Function2<Scope, ParametersHolder, WalletConnectNewSessionPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.57
                @Override // kotlin.jvm.functions.Function2
                public final WalletConnectNewSessionPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new WalletConnectNewSessionPresenter((WCSessionStoreItem) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WCSessionStoreItem.class)), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (WalletConnectManager) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier57 = companion.getRootScopeQualifier();
            emptyList57 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory57 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier57, Reflection.getOrCreateKotlinClass(WalletConnectNewSessionPresenter.class), null, c140257, kind, emptyList57));
            module.indexPrimaryType(factoryInstanceFactory57);
            new KoinDefinition(module, factoryInstanceFactory57);
            C140358 c140358 = new Function2<Scope, ParametersHolder, WalletConnectTransactionPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.58
                @Override // kotlin.jvm.functions.Function2
                public final WalletConnectTransactionPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new WalletConnectTransactionPresenter((WalletConnectTransactionScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WalletConnectTransactionScreenType.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (WalletConnectInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectInteractor.class), null, null), (WalletConnectManager) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier58 = companion.getRootScopeQualifier();
            emptyList58 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory58 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier58, Reflection.getOrCreateKotlinClass(WalletConnectTransactionPresenter.class), null, c140358, kind, emptyList58));
            module.indexPrimaryType(factoryInstanceFactory58);
            new KoinDefinition(module, factoryInstanceFactory58);
            C140459 c140459 = new Function2<Scope, ParametersHolder, WalletConnectMessageSignPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.59
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
            };
            StringQualifier rootScopeQualifier59 = companion.getRootScopeQualifier();
            emptyList59 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory59 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier59, Reflection.getOrCreateKotlinClass(WalletConnectMessageSignPresenter.class), null, c140459, kind, emptyList59));
            module.indexPrimaryType(factoryInstanceFactory59);
            new KoinDefinition(module, factoryInstanceFactory59);
            C140660 c140660 = new Function2<Scope, ParametersHolder, WalletConnectSwitchNetworkPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.60
                @Override // kotlin.jvm.functions.Function2
                public final WalletConnectSwitchNetworkPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new WalletConnectSwitchNetworkPresenter((String) parametersHolder.elementAt(2, Reflection.getOrCreateKotlinClass(String.class)), ((Number) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Long.class))).longValue(), (WalletConnectSessionItem) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(WalletConnectSessionItem.class)), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (WalletConnectManager) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier60 = companion.getRootScopeQualifier();
            emptyList60 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory60 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier60, Reflection.getOrCreateKotlinClass(WalletConnectSwitchNetworkPresenter.class), null, c140660, kind, emptyList60));
            module.indexPrimaryType(factoryInstanceFactory60);
            new KoinDefinition(module, factoryInstanceFactory60);
            C140761 c140761 = new Function2<Scope, ParametersHolder, CatalogRootPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.61
                @Override // kotlin.jvm.functions.Function2
                public final CatalogRootPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CatalogRootPresenter((CatalogInteractor) factory.get(Reflection.getOrCreateKotlinClass(CatalogInteractor.class), null, null), (PreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(PreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier61 = companion.getRootScopeQualifier();
            emptyList61 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory61 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier61, Reflection.getOrCreateKotlinClass(CatalogRootPresenter.class), null, c140761, kind, emptyList61));
            module.indexPrimaryType(factoryInstanceFactory61);
            new KoinDefinition(module, factoryInstanceFactory61);
            C140862 c140862 = new Function2<Scope, ParametersHolder, CatalogPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.62
                @Override // kotlin.jvm.functions.Function2
                public final CatalogPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CatalogPresenter();
                }
            };
            StringQualifier rootScopeQualifier62 = companion.getRootScopeQualifier();
            emptyList62 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory62 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier62, Reflection.getOrCreateKotlinClass(CatalogPresenter.class), null, c140862, kind, emptyList62));
            module.indexPrimaryType(factoryInstanceFactory62);
            new KoinDefinition(module, factoryInstanceFactory62);
            C140963 c140963 = new Function2<Scope, ParametersHolder, ChannelDetailsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.63
                @Override // kotlin.jvm.functions.Function2
                public final ChannelDetailsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new ChannelDetailsPresenter((CampaignItem) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(CampaignItem.class)), (TLRPC$Chat) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(TLRPC$Chat.class)), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier63 = companion.getRootScopeQualifier();
            emptyList63 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory63 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier63, Reflection.getOrCreateKotlinClass(ChannelDetailsPresenter.class), null, c140963, kind, emptyList63));
            module.indexPrimaryType(factoryInstanceFactory63);
            new KoinDefinition(module, factoryInstanceFactory63);
            C141064 c141064 = new Function2<Scope, ParametersHolder, CatalogAllPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.64
                @Override // kotlin.jvm.functions.Function2
                public final CatalogAllPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new CatalogAllPresenter((ChatType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(ChatType.class)), (CatalogInteractor) factory.get(Reflection.getOrCreateKotlinClass(CatalogInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier64 = companion.getRootScopeQualifier();
            emptyList64 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory64 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier64, Reflection.getOrCreateKotlinClass(CatalogAllPresenter.class), null, c141064, kind, emptyList64));
            module.indexPrimaryType(factoryInstanceFactory64);
            new KoinDefinition(module, factoryInstanceFactory64);
            C141165 c141165 = new Function2<Scope, ParametersHolder, CatalogCategoriesPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.65
                @Override // kotlin.jvm.functions.Function2
                public final CatalogCategoriesPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new CatalogCategoriesPresenter((ChatType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(ChatType.class)), (CatalogInteractor) factory.get(Reflection.getOrCreateKotlinClass(CatalogInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier65 = companion.getRootScopeQualifier();
            emptyList65 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory65 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier65, Reflection.getOrCreateKotlinClass(CatalogCategoriesPresenter.class), null, c141165, kind, emptyList65));
            module.indexPrimaryType(factoryInstanceFactory65);
            new KoinDefinition(module, factoryInstanceFactory65);
            C141266 c141266 = new Function2<Scope, ParametersHolder, CatalogUserChannelsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.66
                @Override // kotlin.jvm.functions.Function2
                public final CatalogUserChannelsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new CatalogUserChannelsPresenter((ChatType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(ChatType.class)));
                }
            };
            StringQualifier rootScopeQualifier66 = companion.getRootScopeQualifier();
            emptyList66 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory66 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier66, Reflection.getOrCreateKotlinClass(CatalogUserChannelsPresenter.class), null, c141266, kind, emptyList66));
            module.indexPrimaryType(factoryInstanceFactory66);
            new KoinDefinition(module, factoryInstanceFactory66);
            C141367 c141367 = new Function2<Scope, ParametersHolder, StakingPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.67
                @Override // kotlin.jvm.functions.Function2
                public final StakingPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new StakingPresenter((HintsPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(HintsPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (StakingInteractor) factory.get(Reflection.getOrCreateKotlinClass(StakingInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier67 = companion.getRootScopeQualifier();
            emptyList67 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory67 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier67, Reflection.getOrCreateKotlinClass(StakingPresenter.class), null, c141367, kind, emptyList67));
            module.indexPrimaryType(factoryInstanceFactory67);
            new KoinDefinition(module, factoryInstanceFactory67);
            C141468 c141468 = new Function2<Scope, ParametersHolder, StakingProgrammesPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.68
                @Override // kotlin.jvm.functions.Function2
                public final StakingProgrammesPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new StakingProgrammesPresenter((StakingTabType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(StakingTabType.class)), (AccountLevelInteractor) factory.get(Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (StakingInteractor) factory.get(Reflection.getOrCreateKotlinClass(StakingInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier68 = companion.getRootScopeQualifier();
            emptyList68 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory68 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier68, Reflection.getOrCreateKotlinClass(StakingProgrammesPresenter.class), null, c141468, kind, emptyList68));
            module.indexPrimaryType(factoryInstanceFactory68);
            new KoinDefinition(module, factoryInstanceFactory68);
            C141569 c141569 = new Function2<Scope, ParametersHolder, StakingConditionsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.69
                @Override // kotlin.jvm.functions.Function2
                public final StakingConditionsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new StakingConditionsPresenter((StakingDetailsItem) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(StakingDetailsItem.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier69 = companion.getRootScopeQualifier();
            emptyList69 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory69 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier69, Reflection.getOrCreateKotlinClass(StakingConditionsPresenter.class), null, c141569, kind, emptyList69));
            module.indexPrimaryType(factoryInstanceFactory69);
            new KoinDefinition(module, factoryInstanceFactory69);
            C141770 c141770 = new Function2<Scope, ParametersHolder, StakingTransactionPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.70
                @Override // kotlin.jvm.functions.Function2
                public final StakingTransactionPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new StakingTransactionPresenter((Double) parametersHolder.elementAt(2, Reflection.getOrCreateKotlinClass(Double.class)), ((Number) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Integer.class))).intValue(), (StakingDetailsItem) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(StakingDetailsItem.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (StakingInteractor) factory.get(Reflection.getOrCreateKotlinClass(StakingInteractor.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier70 = companion.getRootScopeQualifier();
            emptyList70 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory70 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier70, Reflection.getOrCreateKotlinClass(StakingTransactionPresenter.class), null, c141770, kind, emptyList70));
            module.indexPrimaryType(factoryInstanceFactory70);
            new KoinDefinition(module, factoryInstanceFactory70);
            C141871 c141871 = new Function2<Scope, ParametersHolder, StakingOperationsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.71
                @Override // kotlin.jvm.functions.Function2
                public final StakingOperationsPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new StakingOperationsPresenter((CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier71 = companion.getRootScopeQualifier();
            emptyList71 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory71 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier71, Reflection.getOrCreateKotlinClass(StakingOperationsPresenter.class), null, c141871, kind, emptyList71));
            module.indexPrimaryType(factoryInstanceFactory71);
            new KoinDefinition(module, factoryInstanceFactory71);
            C141972 c141972 = new Function2<Scope, ParametersHolder, StakingCalculatorPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.72
                @Override // kotlin.jvm.functions.Function2
                public final StakingCalculatorPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new StakingCalculatorPresenter((StakingDetailsItem) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(StakingDetailsItem.class)), (AccountLevelInteractor) factory.get(Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier72 = companion.getRootScopeQualifier();
            emptyList72 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory72 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier72, Reflection.getOrCreateKotlinClass(StakingCalculatorPresenter.class), null, c141972, kind, emptyList72));
            module.indexPrimaryType(factoryInstanceFactory72);
            new KoinDefinition(module, factoryInstanceFactory72);
            C142073 c142073 = new Function2<Scope, ParametersHolder, StakingCalculatorProgrammesPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.73
                @Override // kotlin.jvm.functions.Function2
                public final StakingCalculatorProgrammesPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new StakingCalculatorProgrammesPresenter((SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (StakingInteractor) factory.get(Reflection.getOrCreateKotlinClass(StakingInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier73 = companion.getRootScopeQualifier();
            emptyList73 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory73 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier73, Reflection.getOrCreateKotlinClass(StakingCalculatorProgrammesPresenter.class), null, c142073, kind, emptyList73));
            module.indexPrimaryType(factoryInstanceFactory73);
            new KoinDefinition(module, factoryInstanceFactory73);
        }
    }, 1, null);

    public static final Module getPresentationPresenterModule() {
        return presentationPresenterModule;
    }
}
