package com.iMe.p022di.module;

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
import com.iMe.model.wallet.crypto.settings.BlockchainManagementItem;
import com.iMe.model.wallet.crypto.swap.SwapFeeScreenArgs;
import com.iMe.model.wallet.crypto.tutorial.TutorialType;
import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectTransactionScreenType;
import com.iMe.model.wallet.details.TokenDetailsArgs;
import com.iMe.model.wallet.fragment.TonFragmentItem;
import com.iMe.model.wallet.home.pay.BinancePayScreenArgs;
import com.iMe.model.wallet.notification.NotificationItem;
import com.iMe.model.wallet.pin.WalletPinScreenArgs;
import com.iMe.model.wallet.select.SelectTokenScreenType;
import com.iMe.model.wallet.send.WalletSendScreenType;
import com.iMe.model.wallet.staking.StakingScreenType;
import com.iMe.model.wallet.swap.WalletSwapScreenType;
import com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType;
import com.iMe.model.wallet.transaction.WalletTransactionsScreenType;
import com.iMe.model.wallet.transfer.TransferScreenArgs;
import com.iMe.p030ui.catalog.CatalogRootPresenter;
import com.iMe.p030ui.catalog.details.ChannelDetailsPresenter;
import com.iMe.p030ui.catalog.tabs.CatalogPresenter;
import com.iMe.p030ui.catalog.tabs.all.CatalogAllPresenter;
import com.iMe.p030ui.catalog.tabs.categories.CatalogCategoriesPresenter;
import com.iMe.p030ui.catalog.tabs.user_channels.CatalogUserChannelsPresenter;
import com.iMe.p030ui.chat.ChatPresenter;
import com.iMe.p030ui.contacts.ContactsPresenter;
import com.iMe.p030ui.custom.backup.switcher.BackupWordSwitcherPresenter;
import com.iMe.p030ui.debug.DebugPresenter;
import com.iMe.p030ui.kikliko.EmojiViewPresenter;
import com.iMe.p030ui.reaction.ReactionPresenter;
import com.iMe.p030ui.recognition.PhotoViewerPresenter;
import com.iMe.p030ui.translate.TranslationPresenter;
import com.iMe.p030ui.wallet.actions.send.recipient.WalletSendRecipientPresenter;
import com.iMe.p030ui.wallet.airdrop.WalletAirdropPresenter;
import com.iMe.p030ui.wallet.airdrop.dialog.WalletAirdropDialogPresenter;
import com.iMe.p030ui.wallet.common.WalletRootPresenter;
import com.iMe.p030ui.wallet.crypto.address_mismatch.AddressMismatchPresenter;
import com.iMe.p030ui.wallet.crypto.buy.BuyCryptoProductPresenter;
import com.iMe.p030ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPricePresenter;
import com.iMe.p030ui.wallet.crypto.buy.processing.SimplexWebViewProcessingPresenter;
import com.iMe.p030ui.wallet.crypto.create.CreateWalletPresenter;
import com.iMe.p030ui.wallet.crypto.create.intro.CreateWalletIntroPresenter;
import com.iMe.p030ui.wallet.crypto.create.pin.CreateWalletPinPresenter;
import com.iMe.p030ui.wallet.crypto.create.secret_words_count.SecretWordsCountPresenter;
import com.iMe.p030ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter;
import com.iMe.p030ui.wallet.crypto.enter.pin.EnterWalletPinPresenter;
import com.iMe.p030ui.wallet.crypto.settings.WalletAccountSettingsPresenter;
import com.iMe.p030ui.wallet.crypto.settings.blockchains.BlockchainsManagementPresenter;
import com.iMe.p030ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsPresenter;
import com.iMe.p030ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter;
import com.iMe.p030ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter;
import com.iMe.p030ui.wallet.crypto.token.TokenManagementFragment;
import com.iMe.p030ui.wallet.crypto.token.TokenManagementPresenter;
import com.iMe.p030ui.wallet.crypto.tutorial.CreateWalletTutorialPresenter;
import com.iMe.p030ui.wallet.crypto.wallet_connect.WalletConnectPresenter;
import com.iMe.p030ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignPresenter;
import com.iMe.p030ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkPresenter;
import com.iMe.p030ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionPresenter;
import com.iMe.p030ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsPresenter;
import com.iMe.p030ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionPresenter;
import com.iMe.p030ui.wallet.cryptobox.CryptoBoxesPresenter;
import com.iMe.p030ui.wallet.cryptobox.conditions.CryptoBoxConditionsPresenter;
import com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxPresenter;
import com.iMe.p030ui.wallet.cryptobox.statuses_description.CryptoBoxStatusInfoPresenter;
import com.iMe.p030ui.wallet.cryptobox.suspension.CryptoBoxSuspensionPresenter;
import com.iMe.p030ui.wallet.donations.WalletDonationsPresenter;
import com.iMe.p030ui.wallet.fragment.premium.FragmentPremiumPresenter;
import com.iMe.p030ui.wallet.fragment.usernames.FragmentUsernamesPresenter;
import com.iMe.p030ui.wallet.fragment.usernames.details.TonFragmentProductDetailsPresenter;
import com.iMe.p030ui.wallet.home.WalletHomePresenter;
import com.iMe.p030ui.wallet.home.attach.WalletAttachAlertPresenter;
import com.iMe.p030ui.wallet.home.details.WalletTokenDetailsPresenter;
import com.iMe.p030ui.wallet.home.tabs.binancepay.WalletHomeBinancePayPresenter;
import com.iMe.p030ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment;
import com.iMe.p030ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryPresenter;
import com.iMe.p030ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter;
import com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter;
import com.iMe.p030ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter;
import com.iMe.p030ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyPresenter;
import com.iMe.p030ui.wallet.home.tabs.services.WalletHomeServicesPresenter;
import com.iMe.p030ui.wallet.notifications.WalletNotificationsPresenter;
import com.iMe.p030ui.wallet.notifications.details.WalletNotificationDetailsPresenter;
import com.iMe.p030ui.wallet.send.WalletSendPresenter;
import com.iMe.p030ui.wallet.settings.WalletSettingsPresenter;
import com.iMe.p030ui.wallet.settings.appearance.WalletAppearanceSettingsPresenter;
import com.iMe.p030ui.wallet.settings.appearance.networks.WalletNetworksSettingsPresenter;
import com.iMe.p030ui.wallet.staking.StakingPresenter;
import com.iMe.p030ui.wallet.staking.calculator.StakingCalculatorPresenter;
import com.iMe.p030ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesPresenter;
import com.iMe.p030ui.wallet.staking.conditions.StakingConditionsPresenter;
import com.iMe.p030ui.wallet.staking.operations.StakingOperationsPresenter;
import com.iMe.p030ui.wallet.staking.programmes.StakingProgrammesPresenter;
import com.iMe.p030ui.wallet.staking.transaction.StakingTransactionPresenter;
import com.iMe.p030ui.wallet.swap.WalletSwapProtocolsPresenter;
import com.iMe.p030ui.wallet.swap.fee.WalletSwapFeePresenter;
import com.iMe.p030ui.wallet.swap.process.WalletSwapProcessPresenter;
import com.iMe.p030ui.wallet.swap.token.WalletSelectTokenPresenter;
import com.iMe.p030ui.wallet.transaction.WalletTransactionsPresenter;
import com.iMe.p030ui.wallet.transaction.details.WalletTransactionDetailsPresenter;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.iMe.storage.domain.interactor.catalog.CatalogInteractor;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.interactor.crypto.airdrop.AirdropInteractor;
import com.iMe.storage.domain.interactor.crypto.boost.BoostInteractor;
import com.iMe.storage.domain.interactor.crypto.cancel.CancelInteractor;
import com.iMe.storage.domain.interactor.crypto.cryptobox.CryptoBoxInteractor;
import com.iMe.storage.domain.interactor.crypto.donations.DonationsInteractor;
import com.iMe.storage.domain.interactor.crypto.fragment.TonFragmentInteractor;
import com.iMe.storage.domain.interactor.crypto.level.AccountLevelInteractor;
import com.iMe.storage.domain.interactor.crypto.nft.avatar.NftInteractor;
import com.iMe.storage.domain.interactor.crypto.permission.CryptoPermissionInteractor;
import com.iMe.storage.domain.interactor.crypto.pin.PinCodeInteractor;
import com.iMe.storage.domain.interactor.crypto.simplex.SimplexInteractor;
import com.iMe.storage.domain.interactor.crypto.swap.SwapInteractor;
import com.iMe.storage.domain.interactor.crypto.wallet_connect.WalletConnectInteractor;
import com.iMe.storage.domain.interactor.firebase.DynamicLinksInteractor;
import com.iMe.storage.domain.interactor.google.GoogleServicesInteractor;
import com.iMe.storage.domain.interactor.kikliko.KiklikoInteractor;
import com.iMe.storage.domain.interactor.notification.PushNotificationInteractor;
import com.iMe.storage.domain.interactor.socialEmotion.ReactionInteractor;
import com.iMe.storage.domain.interactor.translate.TranslationInteractor;
import com.iMe.storage.domain.interactor.twitter.TwitterInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.manager.binancepay.BinancePayManager;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.iMe.storage.domain.model.catalog.ChatType;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxInfo;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTransactionAction;
import com.iMe.storage.domain.model.staking.StakingTabType;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.storage.HintsPreferenceHelper;
import com.iMe.storage.domain.storage.PreferenceHelper;
import com.iMe.storage.domain.storage.TwitterPreferenceHelper;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
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
            List emptyList74;
            List emptyList75;
            List emptyList76;
            List emptyList77;
            List emptyList78;
            List emptyList79;
            List emptyList80;
            List emptyList81;
            List emptyList82;
            Intrinsics.checkNotNullParameter(module, "$this$module");
            C12581 c12581 = new Function2<Scope, ParametersHolder, TranslationPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.1
                @Override // kotlin.jvm.functions.Function2
                public final TranslationPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    TranslationArgs translationArgs = (TranslationArgs) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(TranslationArgs.class));
                    ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
                    return new TranslationPresenter(translationArgs, (TranslationInteractor) factory.get(Reflection.getOrCreateKotlinClass(TranslationInteractor.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), resourceManager, (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null));
                }
            };
            ScopeRegistry.Companion companion = ScopeRegistry.Companion;
            StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
            Kind kind = Kind.Factory;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(TranslationPresenter.class), null, c12581, kind, emptyList));
            module.indexPrimaryType(factoryInstanceFactory);
            new KoinDefinition(module, factoryInstanceFactory);
            C12692 c12692 = new Function2<Scope, ParametersHolder, ChatPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.2
                @Override // kotlin.jvm.functions.Function2
                public final ChatPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    TLRPC$Chat tLRPC$Chat = (TLRPC$Chat) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(TLRPC$Chat.class));
                    return new ChatPresenter((BinancePayProcessManager) factory.get(Reflection.getOrCreateKotlinClass(BinancePayProcessManager.class), null, null), (CryptoBoxInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoBoxInteractor.class), null, null), (DynamicLinksInteractor) factory.get(Reflection.getOrCreateKotlinClass(DynamicLinksInteractor.class), null, null), (GoogleServicesInteractor) factory.get(Reflection.getOrCreateKotlinClass(GoogleServicesInteractor.class), null, null), (MultiReplyInteractor) factory.get(Reflection.getOrCreateKotlinClass(MultiReplyInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null), (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (TranslationInteractor) factory.get(Reflection.getOrCreateKotlinClass(TranslationInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory2 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(ChatPresenter.class), null, c12692, kind, emptyList2));
            module.indexPrimaryType(factoryInstanceFactory2);
            new KoinDefinition(module, factoryInstanceFactory2);
            C12803 c12803 = new Function2<Scope, ParametersHolder, PhotoViewerPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.3
                @Override // kotlin.jvm.functions.Function2
                public final PhotoViewerPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new PhotoViewerPresenter((GoogleServicesInteractor) factory.get(Reflection.getOrCreateKotlinClass(GoogleServicesInteractor.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
            emptyList3 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory3 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(PhotoViewerPresenter.class), null, c12803, kind, emptyList3));
            module.indexPrimaryType(factoryInstanceFactory3);
            new KoinDefinition(module, factoryInstanceFactory3);
            C12914 c12914 = new Function2<Scope, ParametersHolder, ReactionPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.4
                @Override // kotlin.jvm.functions.Function2
                public final ReactionPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    long longValue = ((Number) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Long.class))).longValue();
                    return new ReactionPresenter((ReactionInteractor) factory.get(Reflection.getOrCreateKotlinClass(ReactionInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null), (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), longValue);
                }
            };
            StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
            emptyList4 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory4 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(ReactionPresenter.class), null, c12914, kind, emptyList4));
            module.indexPrimaryType(factoryInstanceFactory4);
            new KoinDefinition(module, factoryInstanceFactory4);
            C13025 c13025 = new Function2<Scope, ParametersHolder, ContactsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.5
                @Override // kotlin.jvm.functions.Function2
                public final ContactsPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new ContactsPresenter((SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (ContactsInteractor) factory.get(Reflection.getOrCreateKotlinClass(ContactsInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
            emptyList5 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory5 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(ContactsPresenter.class), null, c13025, kind, emptyList5));
            module.indexPrimaryType(factoryInstanceFactory5);
            new KoinDefinition(module, factoryInstanceFactory5);
            C13136 c13136 = new Function2<Scope, ParametersHolder, ProfilePresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.6
                @Override // kotlin.jvm.functions.Function2
                public final ProfilePresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    ProfileData profileData = (ProfileData) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(ProfileData.class));
                    AccountLevelInteractor accountLevelInteractor = (AccountLevelInteractor) factory.get(Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, null);
                    GroupMembershipUseCase groupMembershipUseCase = (GroupMembershipUseCase) factory.get(Reflection.getOrCreateKotlinClass(GroupMembershipUseCase.class), null, null);
                    ProfileUseCase profileUseCase = (ProfileUseCase) factory.get(Reflection.getOrCreateKotlinClass(ProfileUseCase.class), null, null);
                    return new ProfilePresenter(profileData, (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (TwitterInteractor) factory.get(Reflection.getOrCreateKotlinClass(TwitterInteractor.class), null, null), accountLevelInteractor, profileUseCase, (SocialUseCase) factory.get(Reflection.getOrCreateKotlinClass(SocialUseCase.class), null, null), groupMembershipUseCase);
                }
            };
            StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
            emptyList6 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory6 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(ProfilePresenter.class), null, c13136, kind, emptyList6));
            module.indexPrimaryType(factoryInstanceFactory6);
            new KoinDefinition(module, factoryInstanceFactory6);
            C13247 c13247 = new Function2<Scope, ParametersHolder, EmojiViewPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.7
                @Override // kotlin.jvm.functions.Function2
                public final EmojiViewPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new EmojiViewPresenter((KiklikoInteractor) factory.get(Reflection.getOrCreateKotlinClass(KiklikoInteractor.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
            emptyList7 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory7 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(EmojiViewPresenter.class), null, c13247, kind, emptyList7));
            module.indexPrimaryType(factoryInstanceFactory7);
            new KoinDefinition(module, factoryInstanceFactory7);
            C13358 c13358 = new Function2<Scope, ParametersHolder, TwitterPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.8
                @Override // kotlin.jvm.functions.Function2
                public final TwitterPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new TwitterPresenter(((Number) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Long.class))).longValue(), (SocialNetwork) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(SocialNetwork.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (TwitterInteractor) factory.get(Reflection.getOrCreateKotlinClass(TwitterInteractor.class), null, null), (SocialUseCase) factory.get(Reflection.getOrCreateKotlinClass(SocialUseCase.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
            emptyList8 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory8 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(TwitterPresenter.class), null, c13358, kind, emptyList8));
            module.indexPrimaryType(factoryInstanceFactory8);
            new KoinDefinition(module, factoryInstanceFactory8);
            C13399 c13399 = new Function2<Scope, ParametersHolder, TwitterSearchPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.9
                @Override // kotlin.jvm.functions.Function2
                public final TwitterSearchPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new TwitterSearchPresenter((TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (BlockchainType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(BlockchainType.class)), (CryptoRecipientManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoRecipientManager.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null), (TwitterInteractor) factory.get(Reflection.getOrCreateKotlinClass(TwitterInteractor.class), null, null), (TwitterPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(TwitterPreferenceHelper.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
            emptyList9 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory9 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(TwitterSearchPresenter.class), null, c13399, kind, emptyList9));
            module.indexPrimaryType(factoryInstanceFactory9);
            new KoinDefinition(module, factoryInstanceFactory9);
            C125910 c125910 = new Function2<Scope, ParametersHolder, WalletAttachAlertPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.10
                @Override // kotlin.jvm.functions.Function2
                public final WalletAttachAlertPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    CryptoAccessManager cryptoAccessManager = (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null);
                    CryptoPreferenceHelper cryptoPreferenceHelper = (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null);
                    CryptoRecipientManager cryptoRecipientManager = (CryptoRecipientManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoRecipientManager.class), null, null);
                    ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
                    return new WalletAttachAlertPresenter((WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null), cryptoAccessManager, cryptoPreferenceHelper, (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), resourceManager, cryptoRecipientManager);
                }
            };
            StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
            emptyList10 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory10 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(WalletAttachAlertPresenter.class), null, c125910, kind, emptyList10));
            module.indexPrimaryType(factoryInstanceFactory10);
            new KoinDefinition(module, factoryInstanceFactory10);
            C126011 c126011 = new Function2<Scope, ParametersHolder, WalletSendRecipientPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.11
                @Override // kotlin.jvm.functions.Function2
                public final WalletSendRecipientPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new WalletSendRecipientPresenter((String) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(String.class)), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (CryptoRecipientManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoRecipientManager.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
            emptyList11 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory11 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(WalletSendRecipientPresenter.class), null, c126011, kind, emptyList11));
            module.indexPrimaryType(factoryInstanceFactory11);
            new KoinDefinition(module, factoryInstanceFactory11);
            C126112 c126112 = new Function2<Scope, ParametersHolder, WalletSendPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.12
                @Override // kotlin.jvm.functions.Function2
                public final WalletSendPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new WalletSendPresenter((WalletSendScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WalletSendScreenType.class)), (TransferScreenArgs) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(TransferScreenArgs.class)), (BinanceInternalInteractor) factory.get(Reflection.getOrCreateKotlinClass(BinanceInternalInteractor.class), null, null), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (DonationsInteractor) factory.get(Reflection.getOrCreateKotlinClass(DonationsInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null), (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
            emptyList12 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory12 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(WalletSendPresenter.class), null, c126112, kind, emptyList12));
            module.indexPrimaryType(factoryInstanceFactory12);
            new KoinDefinition(module, factoryInstanceFactory12);
            C126213 c126213 = new Function2<Scope, ParametersHolder, WalletDonationsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.13
                @Override // kotlin.jvm.functions.Function2
                public final WalletDonationsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    int intValue = ((Number) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Integer.class))).intValue();
                    long longValue = ((Number) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(Long.class))).longValue();
                    CryptoAccessManager cryptoAccessManager = (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null);
                    CryptoWalletInteractor cryptoWalletInteractor = (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null);
                    return new WalletDonationsPresenter(longValue, intValue, (DonationsInteractor) factory.get(Reflection.getOrCreateKotlinClass(DonationsInteractor.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), cryptoAccessManager, (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), cryptoWalletInteractor);
                }
            };
            StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
            emptyList13 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory13 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(WalletDonationsPresenter.class), null, c126213, kind, emptyList13));
            module.indexPrimaryType(factoryInstanceFactory13);
            new KoinDefinition(module, factoryInstanceFactory13);
            C126314 c126314 = new Function2<Scope, ParametersHolder, WalletRootPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.14
                @Override // kotlin.jvm.functions.Function2
                public final WalletRootPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletRootPresenter((CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier14 = companion.getRootScopeQualifier();
            emptyList14 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory14 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier14, Reflection.getOrCreateKotlinClass(WalletRootPresenter.class), null, c126314, kind, emptyList14));
            module.indexPrimaryType(factoryInstanceFactory14);
            new KoinDefinition(module, factoryInstanceFactory14);
            C126415 c126415 = new Function2<Scope, ParametersHolder, WalletSettingsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.15
                @Override // kotlin.jvm.functions.Function2
                public final WalletSettingsPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletSettingsPresenter((CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier15 = companion.getRootScopeQualifier();
            emptyList15 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory15 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier15, Reflection.getOrCreateKotlinClass(WalletSettingsPresenter.class), null, c126415, kind, emptyList15));
            module.indexPrimaryType(factoryInstanceFactory15);
            new KoinDefinition(module, factoryInstanceFactory15);
            C126516 c126516 = new Function2<Scope, ParametersHolder, WalletHomePresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.16
                @Override // kotlin.jvm.functions.Function2
                public final WalletHomePresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletHomePresenter((RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier16 = companion.getRootScopeQualifier();
            emptyList16 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory16 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier16, Reflection.getOrCreateKotlinClass(WalletHomePresenter.class), null, c126516, kind, emptyList16));
            module.indexPrimaryType(factoryInstanceFactory16);
            new KoinDefinition(module, factoryInstanceFactory16);
            C126617 c126617 = new Function2<Scope, ParametersHolder, WalletHomeCryptoPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.17
                @Override // kotlin.jvm.functions.Function2
                public final WalletHomeCryptoPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletHomeCryptoPresenter((CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (HintsPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(HintsPreferenceHelper.class), null, null), (NftInteractor) factory.get(Reflection.getOrCreateKotlinClass(NftInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null), (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (WalletCreateManager) factory.get(Reflection.getOrCreateKotlinClass(WalletCreateManager.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier17 = companion.getRootScopeQualifier();
            emptyList17 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory17 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier17, Reflection.getOrCreateKotlinClass(WalletHomeCryptoPresenter.class), null, c126617, kind, emptyList17));
            module.indexPrimaryType(factoryInstanceFactory17);
            new KoinDefinition(module, factoryInstanceFactory17);
            C126718 c126718 = new Function2<Scope, ParametersHolder, WalletHomeCryptoTokensSettingsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.18
                @Override // kotlin.jvm.functions.Function2
                public final WalletHomeCryptoTokensSettingsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    TokensScreenType tokensScreenType = (TokensScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(TokensScreenType.class));
                    CryptoPreferenceHelper cryptoPreferenceHelper = (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null);
                    ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
                    return new WalletHomeCryptoTokensSettingsPresenter(cryptoPreferenceHelper, (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), resourceManager, tokensScreenType, (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier18 = companion.getRootScopeQualifier();
            emptyList18 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory18 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier18, Reflection.getOrCreateKotlinClass(WalletHomeCryptoTokensSettingsPresenter.class), null, c126718, kind, emptyList18));
            module.indexPrimaryType(factoryInstanceFactory18);
            new KoinDefinition(module, factoryInstanceFactory18);
            C126819 c126819 = new Function2<Scope, ParametersHolder, WalletHomeServicesPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.19
                @Override // kotlin.jvm.functions.Function2
                public final WalletHomeServicesPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletHomeServicesPresenter((CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier19 = companion.getRootScopeQualifier();
            emptyList19 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory19 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier19, Reflection.getOrCreateKotlinClass(WalletHomeServicesPresenter.class), null, c126819, kind, emptyList19));
            module.indexPrimaryType(factoryInstanceFactory19);
            new KoinDefinition(module, factoryInstanceFactory19);
            C127020 c127020 = new Function2<Scope, ParametersHolder, WalletTokenDetailsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.20
                @Override // kotlin.jvm.functions.Function2
                public final WalletTokenDetailsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new WalletTokenDetailsPresenter((TokenDetailsArgs) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(TokenDetailsArgs.class)), (AccountLevelInteractor) factory.get(Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, null), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoBoxInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoBoxInteractor.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (StakingInteractor) factory.get(Reflection.getOrCreateKotlinClass(StakingInteractor.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null), (WalletCreateManager) factory.get(Reflection.getOrCreateKotlinClass(WalletCreateManager.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier20 = companion.getRootScopeQualifier();
            emptyList20 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory20 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier20, Reflection.getOrCreateKotlinClass(WalletTokenDetailsPresenter.class), null, c127020, kind, emptyList20));
            module.indexPrimaryType(factoryInstanceFactory20);
            new KoinDefinition(module, factoryInstanceFactory20);
            C127121 c127121 = new Function2<Scope, ParametersHolder, TokenManagementPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.21
                @Override // kotlin.jvm.functions.Function2
                public final TokenManagementPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new TokenManagementPresenter((TokenManagementFragment.ScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(TokenManagementFragment.ScreenType.class)), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier21 = companion.getRootScopeQualifier();
            emptyList21 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory21 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier21, Reflection.getOrCreateKotlinClass(TokenManagementPresenter.class), null, c127121, kind, emptyList21));
            module.indexPrimaryType(factoryInstanceFactory21);
            new KoinDefinition(module, factoryInstanceFactory21);
            C127222 c127222 = new Function2<Scope, ParametersHolder, TokenFamilyPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.22
                @Override // kotlin.jvm.functions.Function2
                public final TokenFamilyPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new TokenFamilyPresenter((List) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(List.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier22 = companion.getRootScopeQualifier();
            emptyList22 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory22 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier22, Reflection.getOrCreateKotlinClass(TokenFamilyPresenter.class), null, c127222, kind, emptyList22));
            module.indexPrimaryType(factoryInstanceFactory22);
            new KoinDefinition(module, factoryInstanceFactory22);
            C127323 c127323 = new Function2<Scope, ParametersHolder, WalletNotificationsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.23
                @Override // kotlin.jvm.functions.Function2
                public final WalletNotificationsPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletNotificationsPresenter((PushNotificationInteractor) factory.get(Reflection.getOrCreateKotlinClass(PushNotificationInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier23 = companion.getRootScopeQualifier();
            emptyList23 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory23 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier23, Reflection.getOrCreateKotlinClass(WalletNotificationsPresenter.class), null, c127323, kind, emptyList23));
            module.indexPrimaryType(factoryInstanceFactory23);
            new KoinDefinition(module, factoryInstanceFactory23);
            C127424 c127424 = new Function2<Scope, ParametersHolder, WalletTransactionsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.24
                @Override // kotlin.jvm.functions.Function2
                public final WalletTransactionsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new WalletTransactionsPresenter((Token) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(Token.class)), (WalletTransactionsScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WalletTransactionsScreenType.class)), (CryptoBoxInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoBoxInteractor.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (HintsPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(HintsPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (StakingInteractor) factory.get(Reflection.getOrCreateKotlinClass(StakingInteractor.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier24 = companion.getRootScopeQualifier();
            emptyList24 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory24 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier24, Reflection.getOrCreateKotlinClass(WalletTransactionsPresenter.class), null, c127424, kind, emptyList24));
            module.indexPrimaryType(factoryInstanceFactory24);
            new KoinDefinition(module, factoryInstanceFactory24);
            C127525 c127525 = new Function2<Scope, ParametersHolder, WalletNotificationDetailsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.25
                @Override // kotlin.jvm.functions.Function2
                public final WalletNotificationDetailsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new WalletNotificationDetailsPresenter((NotificationItem) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(NotificationItem.class)), (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier25 = companion.getRootScopeQualifier();
            emptyList25 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory25 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier25, Reflection.getOrCreateKotlinClass(WalletNotificationDetailsPresenter.class), null, c127525, kind, emptyList25));
            module.indexPrimaryType(factoryInstanceFactory25);
            new KoinDefinition(module, factoryInstanceFactory25);
            C127626 c127626 = new Function2<Scope, ParametersHolder, WalletTransactionDetailsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.26
                @Override // kotlin.jvm.functions.Function2
                public final WalletTransactionDetailsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    WalletTransactionDetailsScreenType walletTransactionDetailsScreenType = (WalletTransactionDetailsScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WalletTransactionDetailsScreenType.class));
                    BoostInteractor boostInteractor = (BoostInteractor) factory.get(Reflection.getOrCreateKotlinClass(BoostInteractor.class), null, null);
                    return new WalletTransactionDetailsPresenter(walletTransactionDetailsScreenType, (CancelInteractor) factory.get(Reflection.getOrCreateKotlinClass(CancelInteractor.class), null, null), boostInteractor, (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier26 = companion.getRootScopeQualifier();
            emptyList26 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory26 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier26, Reflection.getOrCreateKotlinClass(WalletTransactionDetailsPresenter.class), null, c127626, kind, emptyList26));
            module.indexPrimaryType(factoryInstanceFactory26);
            new KoinDefinition(module, factoryInstanceFactory26);
            C127727 c127727 = new Function2<Scope, ParametersHolder, CreateWalletIntroPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.27
                @Override // kotlin.jvm.functions.Function2
                public final CreateWalletIntroPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new CreateWalletIntroPresenter((BlockchainType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(BlockchainType.class)), (String) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(String.class)), (WalletCreationType.Initial) parametersHolder.elementAt(2, Reflection.getOrCreateKotlinClass(WalletCreationType.Initial.class)), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier27 = companion.getRootScopeQualifier();
            emptyList27 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory27 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier27, Reflection.getOrCreateKotlinClass(CreateWalletIntroPresenter.class), null, c127727, kind, emptyList27));
            module.indexPrimaryType(factoryInstanceFactory27);
            new KoinDefinition(module, factoryInstanceFactory27);
            C127828 c127828 = new Function2<Scope, ParametersHolder, CreateWalletTutorialPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.28
                @Override // kotlin.jvm.functions.Function2
                public final CreateWalletTutorialPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new CreateWalletTutorialPresenter((TutorialType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(TutorialType.class)));
                }
            };
            StringQualifier rootScopeQualifier28 = companion.getRootScopeQualifier();
            emptyList28 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory28 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier28, Reflection.getOrCreateKotlinClass(CreateWalletTutorialPresenter.class), null, c127828, kind, emptyList28));
            module.indexPrimaryType(factoryInstanceFactory28);
            new KoinDefinition(module, factoryInstanceFactory28);
            C127929 c127929 = new Function2<Scope, ParametersHolder, BuyCryptoProductPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.29
                @Override // kotlin.jvm.functions.Function2
                public final BuyCryptoProductPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    TokenDetailed tokenDetailed = (TokenDetailed) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(TokenDetailed.class));
                    CryptoPreferenceHelper cryptoPreferenceHelper = (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null);
                    ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
                    RxEventBus rxEventBus = (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null);
                    return new BuyCryptoProductPresenter(tokenDetailed, (SimplexInteractor) factory.get(Reflection.getOrCreateKotlinClass(SimplexInteractor.class), null, null), resourceManager, cryptoPreferenceHelper, (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), rxEventBus);
                }
            };
            StringQualifier rootScopeQualifier29 = companion.getRootScopeQualifier();
            emptyList29 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory29 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier29, Reflection.getOrCreateKotlinClass(BuyCryptoProductPresenter.class), null, c127929, kind, emptyList29));
            module.indexPrimaryType(factoryInstanceFactory29);
            new KoinDefinition(module, factoryInstanceFactory29);
            C128130 c128130 = new Function2<Scope, ParametersHolder, CryptoBuyCustomPricePresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.30
                @Override // kotlin.jvm.functions.Function2
                public final CryptoBuyCustomPricePresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
                    return new CryptoBuyCustomPricePresenter((CryptoBuyItem) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(CryptoBuyItem.class)), (SimplexInteractor) factory.get(Reflection.getOrCreateKotlinClass(SimplexInteractor.class), null, null), resourceManager, (CustomPriceValidator) factory.get(Reflection.getOrCreateKotlinClass(CustomPriceValidator.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier30 = companion.getRootScopeQualifier();
            emptyList30 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory30 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier30, Reflection.getOrCreateKotlinClass(CryptoBuyCustomPricePresenter.class), null, c128130, kind, emptyList30));
            module.indexPrimaryType(factoryInstanceFactory30);
            new KoinDefinition(module, factoryInstanceFactory30);
            C128231 c128231 = new Function2<Scope, ParametersHolder, CreateWalletPinPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.31
                @Override // kotlin.jvm.functions.Function2
                public final CreateWalletPinPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new CreateWalletPinPresenter((WalletPinScreenArgs) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WalletPinScreenArgs.class)), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier31 = companion.getRootScopeQualifier();
            emptyList31 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory31 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier31, Reflection.getOrCreateKotlinClass(CreateWalletPinPresenter.class), null, c128231, kind, emptyList31));
            module.indexPrimaryType(factoryInstanceFactory31);
            new KoinDefinition(module, factoryInstanceFactory31);
            C128332 c128332 = new Function2<Scope, ParametersHolder, WalletPrivacySettingPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.32
                @Override // kotlin.jvm.functions.Function2
                public final WalletPrivacySettingPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new WalletPrivacySettingPresenter(((Number) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Integer.class))).intValue(), (AccountLevelInteractor) factory.get(Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, null), (CryptoPermissionInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoPermissionInteractor.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier32 = companion.getRootScopeQualifier();
            emptyList32 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory32 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier32, Reflection.getOrCreateKotlinClass(WalletPrivacySettingPresenter.class), null, c128332, kind, emptyList32));
            module.indexPrimaryType(factoryInstanceFactory32);
            new KoinDefinition(module, factoryInstanceFactory32);
            C128433 c128433 = new Function2<Scope, ParametersHolder, EnterWalletPinPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.33
                @Override // kotlin.jvm.functions.Function2
                public final EnterWalletPinPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new EnterWalletPinPresenter((EnterPinCodeScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(EnterPinCodeScreenType.class)), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (PinCodeInteractor) factory.get(Reflection.getOrCreateKotlinClass(PinCodeInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier33 = companion.getRootScopeQualifier();
            emptyList33 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory33 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier33, Reflection.getOrCreateKotlinClass(EnterWalletPinPresenter.class), null, c128433, kind, emptyList33));
            module.indexPrimaryType(factoryInstanceFactory33);
            new KoinDefinition(module, factoryInstanceFactory33);
            C128534 c128534 = new Function2<Scope, ParametersHolder, EnterWalletPasswordPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.34
                @Override // kotlin.jvm.functions.Function2
                public final EnterWalletPasswordPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new EnterWalletPasswordPresenter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier34 = companion.getRootScopeQualifier();
            emptyList34 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory34 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier34, Reflection.getOrCreateKotlinClass(EnterWalletPasswordPresenter.class), null, c128534, kind, emptyList34));
            module.indexPrimaryType(factoryInstanceFactory34);
            new KoinDefinition(module, factoryInstanceFactory34);
            C128635 c128635 = new Function2<Scope, ParametersHolder, WalletBinancePayHistoryPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.35
                @Override // kotlin.jvm.functions.Function2
                public final WalletBinancePayHistoryPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    WalletBinancePayHistoryFragment.ScreenType screenType = (WalletBinancePayHistoryFragment.ScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WalletBinancePayHistoryFragment.ScreenType.class));
                    String str = (String) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(String.class));
                    BinanceInternalInteractor binanceInternalInteractor = (BinanceInternalInteractor) factory.get(Reflection.getOrCreateKotlinClass(BinanceInternalInteractor.class), null, null);
                    return new WalletBinancePayHistoryPresenter(screenType, str, (BinancePayProcessManager) factory.get(Reflection.getOrCreateKotlinClass(BinancePayProcessManager.class), null, null), binanceInternalInteractor, (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier35 = companion.getRootScopeQualifier();
            emptyList35 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory35 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier35, Reflection.getOrCreateKotlinClass(WalletBinancePayHistoryPresenter.class), null, c128635, kind, emptyList35));
            module.indexPrimaryType(factoryInstanceFactory35);
            new KoinDefinition(module, factoryInstanceFactory35);
            C128736 c128736 = new Function2<Scope, ParametersHolder, WalletHomeBinancePayPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.36
                @Override // kotlin.jvm.functions.Function2
                public final WalletHomeBinancePayPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    BinanceAPI binanceAPI = (BinanceAPI) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(BinanceAPI.class));
                    CryptoAccessManager cryptoAccessManager = (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null);
                    BinanceInternalInteractor binanceInternalInteractor = (BinanceInternalInteractor) factory.get(Reflection.getOrCreateKotlinClass(BinanceInternalInteractor.class), null, null);
                    BinancePayProcessManager binancePayProcessManager = (BinancePayProcessManager) factory.get(Reflection.getOrCreateKotlinClass(BinancePayProcessManager.class), null, null);
                    BinancePayManager binancePayManager = (BinancePayManager) factory.get(Reflection.getOrCreateKotlinClass(BinancePayManager.class), null, null);
                    return new WalletHomeBinancePayPresenter(binanceAPI, binancePayProcessManager, (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), binanceInternalInteractor, (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), binancePayManager, cryptoAccessManager, (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier36 = companion.getRootScopeQualifier();
            emptyList36 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory36 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier36, Reflection.getOrCreateKotlinClass(WalletHomeBinancePayPresenter.class), null, c128736, kind, emptyList36));
            module.indexPrimaryType(factoryInstanceFactory36);
            new KoinDefinition(module, factoryInstanceFactory36);
            C128837 c128837 = new Function2<Scope, ParametersHolder, WalletReceiveBinancePayPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.37
                @Override // kotlin.jvm.functions.Function2
                public final WalletReceiveBinancePayPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    int intValue = ((Number) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Integer.class))).intValue();
                    BinancePayScreenArgs binancePayScreenArgs = (BinancePayScreenArgs) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(BinancePayScreenArgs.class));
                    BinanceInternalInteractor binanceInternalInteractor = (BinanceInternalInteractor) factory.get(Reflection.getOrCreateKotlinClass(BinanceInternalInteractor.class), null, null);
                    CryptoPreferenceHelper cryptoPreferenceHelper = (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null);
                    ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
                    SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
                    return new WalletReceiveBinancePayPresenter(intValue, binancePayScreenArgs, (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null), (TelegramGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null), binanceInternalInteractor, schedulersProvider, cryptoPreferenceHelper, resourceManager);
                }
            };
            StringQualifier rootScopeQualifier37 = companion.getRootScopeQualifier();
            emptyList37 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory37 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier37, Reflection.getOrCreateKotlinClass(WalletReceiveBinancePayPresenter.class), null, c128837, kind, emptyList37));
            module.indexPrimaryType(factoryInstanceFactory37);
            new KoinDefinition(module, factoryInstanceFactory37);
            C128938 c128938 = new Function2<Scope, ParametersHolder, CreateWalletPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.38
                @Override // kotlin.jvm.functions.Function2
                public final CreateWalletPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new CreateWalletPresenter((CreateWalletScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(CreateWalletScreenType.class)), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier38 = companion.getRootScopeQualifier();
            emptyList38 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory38 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier38, Reflection.getOrCreateKotlinClass(CreateWalletPresenter.class), null, c128938, kind, emptyList38));
            module.indexPrimaryType(factoryInstanceFactory38);
            new KoinDefinition(module, factoryInstanceFactory38);
            C129039 c129039 = new Function2<Scope, ParametersHolder, SecretWordsCountPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.39
                @Override // kotlin.jvm.functions.Function2
                public final SecretWordsCountPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new SecretWordsCountPresenter();
                }
            };
            StringQualifier rootScopeQualifier39 = companion.getRootScopeQualifier();
            emptyList39 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory39 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier39, Reflection.getOrCreateKotlinClass(SecretWordsCountPresenter.class), null, c129039, kind, emptyList39));
            module.indexPrimaryType(factoryInstanceFactory39);
            new KoinDefinition(module, factoryInstanceFactory39);
            C129240 c129240 = new Function2<Scope, ParametersHolder, WalletAccountSettingsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.40
                @Override // kotlin.jvm.functions.Function2
                public final WalletAccountSettingsPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletAccountSettingsPresenter((CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier40 = companion.getRootScopeQualifier();
            emptyList40 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory40 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier40, Reflection.getOrCreateKotlinClass(WalletAccountSettingsPresenter.class), null, c129240, kind, emptyList40));
            module.indexPrimaryType(factoryInstanceFactory40);
            new KoinDefinition(module, factoryInstanceFactory40);
            C129341 c129341 = new Function2<Scope, ParametersHolder, BlockchainsManagementPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.41
                @Override // kotlin.jvm.functions.Function2
                public final BlockchainsManagementPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new BlockchainsManagementPresenter((CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (WalletCreateManager) factory.get(Reflection.getOrCreateKotlinClass(WalletCreateManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier41 = companion.getRootScopeQualifier();
            emptyList41 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory41 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier41, Reflection.getOrCreateKotlinClass(BlockchainsManagementPresenter.class), null, c129341, kind, emptyList41));
            module.indexPrimaryType(factoryInstanceFactory41);
            new KoinDefinition(module, factoryInstanceFactory41);
            C129442 c129442 = new Function2<Scope, ParametersHolder, BlockchainWalletDetailsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.42
                @Override // kotlin.jvm.functions.Function2
                public final BlockchainWalletDetailsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new BlockchainWalletDetailsPresenter((BlockchainManagementItem.Wallet) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(BlockchainManagementItem.Wallet.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier42 = companion.getRootScopeQualifier();
            emptyList42 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory42 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier42, Reflection.getOrCreateKotlinClass(BlockchainWalletDetailsPresenter.class), null, c129442, kind, emptyList42));
            module.indexPrimaryType(factoryInstanceFactory42);
            new KoinDefinition(module, factoryInstanceFactory42);
            C129543 c129543 = new Function2<Scope, ParametersHolder, CustomTokensPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.43
                @Override // kotlin.jvm.functions.Function2
                public final CustomTokensPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CustomTokensPresenter((RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier43 = companion.getRootScopeQualifier();
            emptyList43 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory43 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier43, Reflection.getOrCreateKotlinClass(CustomTokensPresenter.class), null, c129543, kind, emptyList43));
            module.indexPrimaryType(factoryInstanceFactory43);
            new KoinDefinition(module, factoryInstanceFactory43);
            C129644 c129644 = new Function2<Scope, ParametersHolder, BackupWordSwitcherPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.44
                @Override // kotlin.jvm.functions.Function2
                public final BackupWordSwitcherPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new BackupWordSwitcherPresenter();
                }
            };
            StringQualifier rootScopeQualifier44 = companion.getRootScopeQualifier();
            emptyList44 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory44 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier44, Reflection.getOrCreateKotlinClass(BackupWordSwitcherPresenter.class), null, c129644, kind, emptyList44));
            module.indexPrimaryType(factoryInstanceFactory44);
            new KoinDefinition(module, factoryInstanceFactory44);
            C129745 c129745 = new Function2<Scope, ParametersHolder, AddressMismatchPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.45
                @Override // kotlin.jvm.functions.Function2
                public final AddressMismatchPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    CryptoPreferenceHelper cryptoPreferenceHelper = (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null);
                    CryptoWalletInteractor cryptoWalletInteractor = (CryptoWalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoWalletInteractor.class), null, null);
                    return new AddressMismatchPresenter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), cryptoPreferenceHelper, cryptoWalletInteractor, (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier45 = companion.getRootScopeQualifier();
            emptyList45 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory45 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier45, Reflection.getOrCreateKotlinClass(AddressMismatchPresenter.class), null, c129745, kind, emptyList45));
            module.indexPrimaryType(factoryInstanceFactory45);
            new KoinDefinition(module, factoryInstanceFactory45);
            C129846 c129846 = new Function2<Scope, ParametersHolder, WalletSwapProtocolsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.46
                @Override // kotlin.jvm.functions.Function2
                public final WalletSwapProtocolsPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    CryptoPreferenceHelper cryptoPreferenceHelper = (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null);
                    return new WalletSwapProtocolsPresenter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), cryptoPreferenceHelper, (BinancePayManager) factory.get(Reflection.getOrCreateKotlinClass(BinancePayManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier46 = companion.getRootScopeQualifier();
            emptyList46 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory46 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier46, Reflection.getOrCreateKotlinClass(WalletSwapProtocolsPresenter.class), null, c129846, kind, emptyList46));
            module.indexPrimaryType(factoryInstanceFactory46);
            new KoinDefinition(module, factoryInstanceFactory46);
            C129947 c129947 = new Function2<Scope, ParametersHolder, WalletSwapProcessPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.47
                @Override // kotlin.jvm.functions.Function2
                public final WalletSwapProcessPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    WalletSwapScreenType walletSwapScreenType = (WalletSwapScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WalletSwapScreenType.class));
                    BinanceInternalInteractor binanceInternalInteractor = (BinanceInternalInteractor) factory.get(Reflection.getOrCreateKotlinClass(BinanceInternalInteractor.class), null, null);
                    CryptoPreferenceHelper cryptoPreferenceHelper = (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null);
                    HintsPreferenceHelper hintsPreferenceHelper = (HintsPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(HintsPreferenceHelper.class), null, null);
                    ResourceManager resourceManager = (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null);
                    SchedulersProvider schedulersProvider = (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null);
                    return new WalletSwapProcessPresenter(walletSwapScreenType, (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null), binanceInternalInteractor, (SwapInteractor) factory.get(Reflection.getOrCreateKotlinClass(SwapInteractor.class), null, null), schedulersProvider, cryptoPreferenceHelper, resourceManager, hintsPreferenceHelper);
                }
            };
            StringQualifier rootScopeQualifier47 = companion.getRootScopeQualifier();
            emptyList47 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory47 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier47, Reflection.getOrCreateKotlinClass(WalletSwapProcessPresenter.class), null, c129947, kind, emptyList47));
            module.indexPrimaryType(factoryInstanceFactory47);
            new KoinDefinition(module, factoryInstanceFactory47);
            C130048 c130048 = new Function2<Scope, ParametersHolder, WalletSelectTokenPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.48
                @Override // kotlin.jvm.functions.Function2
                public final WalletSelectTokenPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new WalletSelectTokenPresenter((SelectTokenScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(SelectTokenScreenType.class)), (TokenDetailed) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(TokenDetailed.class)), (String) parametersHolder.elementAt(2, Reflection.getOrCreateKotlinClass(String.class)), ((Boolean) parametersHolder.elementAt(3, Reflection.getOrCreateKotlinClass(Boolean.class))).booleanValue(), (BinanceInternalInteractor) factory.get(Reflection.getOrCreateKotlinClass(BinanceInternalInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (SwapInteractor) factory.get(Reflection.getOrCreateKotlinClass(SwapInteractor.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier48 = companion.getRootScopeQualifier();
            emptyList48 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory48 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier48, Reflection.getOrCreateKotlinClass(WalletSelectTokenPresenter.class), null, c130048, kind, emptyList48));
            module.indexPrimaryType(factoryInstanceFactory48);
            new KoinDefinition(module, factoryInstanceFactory48);
            C130149 c130149 = new Function2<Scope, ParametersHolder, WalletSwapFeePresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.49
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
            FactoryInstanceFactory factoryInstanceFactory49 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier49, Reflection.getOrCreateKotlinClass(WalletSwapFeePresenter.class), null, c130149, kind, emptyList49));
            module.indexPrimaryType(factoryInstanceFactory49);
            new KoinDefinition(module, factoryInstanceFactory49);
            C130350 c130350 = new Function2<Scope, ParametersHolder, SimplexWebViewProcessingPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.50
                @Override // kotlin.jvm.functions.Function2
                public final SimplexWebViewProcessingPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new SimplexWebViewProcessingPresenter();
                }
            };
            StringQualifier rootScopeQualifier50 = companion.getRootScopeQualifier();
            emptyList50 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory50 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier50, Reflection.getOrCreateKotlinClass(SimplexWebViewProcessingPresenter.class), null, c130350, kind, emptyList50));
            module.indexPrimaryType(factoryInstanceFactory50);
            new KoinDefinition(module, factoryInstanceFactory50);
            C130451 c130451 = new Function2<Scope, ParametersHolder, WalletAppearanceSettingsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.51
                @Override // kotlin.jvm.functions.Function2
                public final WalletAppearanceSettingsPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletAppearanceSettingsPresenter((CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier51 = companion.getRootScopeQualifier();
            emptyList51 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory51 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier51, Reflection.getOrCreateKotlinClass(WalletAppearanceSettingsPresenter.class), null, c130451, kind, emptyList51));
            module.indexPrimaryType(factoryInstanceFactory51);
            new KoinDefinition(module, factoryInstanceFactory51);
            C130552 c130552 = new Function2<Scope, ParametersHolder, WalletNetworksSettingsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.52
                @Override // kotlin.jvm.functions.Function2
                public final WalletNetworksSettingsPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletNetworksSettingsPresenter((CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier52 = companion.getRootScopeQualifier();
            emptyList52 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory52 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier52, Reflection.getOrCreateKotlinClass(WalletNetworksSettingsPresenter.class), null, c130552, kind, emptyList52));
            module.indexPrimaryType(factoryInstanceFactory52);
            new KoinDefinition(module, factoryInstanceFactory52);
            C130653 c130653 = new Function2<Scope, ParametersHolder, WalletAirdropPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.53
                @Override // kotlin.jvm.functions.Function2
                public final WalletAirdropPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletAirdropPresenter((AirdropInteractor) factory.get(Reflection.getOrCreateKotlinClass(AirdropInteractor.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier53 = companion.getRootScopeQualifier();
            emptyList53 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory53 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier53, Reflection.getOrCreateKotlinClass(WalletAirdropPresenter.class), null, c130653, kind, emptyList53));
            module.indexPrimaryType(factoryInstanceFactory53);
            new KoinDefinition(module, factoryInstanceFactory53);
            C130754 c130754 = new Function2<Scope, ParametersHolder, WalletAirdropDialogPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.54
                @Override // kotlin.jvm.functions.Function2
                public final WalletAirdropDialogPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletAirdropDialogPresenter((AirdropInteractor) factory.get(Reflection.getOrCreateKotlinClass(AirdropInteractor.class), null, null), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier54 = companion.getRootScopeQualifier();
            emptyList54 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory54 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier54, Reflection.getOrCreateKotlinClass(WalletAirdropDialogPresenter.class), null, c130754, kind, emptyList54));
            module.indexPrimaryType(factoryInstanceFactory54);
            new KoinDefinition(module, factoryInstanceFactory54);
            C130855 c130855 = new Function2<Scope, ParametersHolder, DebugPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.55
                @Override // kotlin.jvm.functions.Function2
                public final DebugPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new DebugPresenter((CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier55 = companion.getRootScopeQualifier();
            emptyList55 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory55 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier55, Reflection.getOrCreateKotlinClass(DebugPresenter.class), null, c130855, kind, emptyList55));
            module.indexPrimaryType(factoryInstanceFactory55);
            new KoinDefinition(module, factoryInstanceFactory55);
            C130956 c130956 = new Function2<Scope, ParametersHolder, WalletConnectPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.56
                @Override // kotlin.jvm.functions.Function2
                public final WalletConnectPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new WalletConnectPresenter((CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (HintsPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(HintsPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (WalletConnectInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectInteractor.class), null, null), (WalletConnectManager) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier56 = companion.getRootScopeQualifier();
            emptyList56 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory56 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier56, Reflection.getOrCreateKotlinClass(WalletConnectPresenter.class), null, c130956, kind, emptyList56));
            module.indexPrimaryType(factoryInstanceFactory56);
            new KoinDefinition(module, factoryInstanceFactory56);
            C131057 c131057 = new Function2<Scope, ParametersHolder, WalletConnectSessionDetailsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.57
                @Override // kotlin.jvm.functions.Function2
                public final WalletConnectSessionDetailsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new WalletConnectSessionDetailsPresenter((WalletConnectSessionItem) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WalletConnectSessionItem.class)), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier57 = companion.getRootScopeQualifier();
            emptyList57 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory57 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier57, Reflection.getOrCreateKotlinClass(WalletConnectSessionDetailsPresenter.class), null, c131057, kind, emptyList57));
            module.indexPrimaryType(factoryInstanceFactory57);
            new KoinDefinition(module, factoryInstanceFactory57);
            C131158 c131158 = new Function2<Scope, ParametersHolder, WalletConnectNewSessionPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.58
                @Override // kotlin.jvm.functions.Function2
                public final WalletConnectNewSessionPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new WalletConnectNewSessionPresenter((WCSessionStoreItem) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WCSessionStoreItem.class)), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (WalletConnectManager) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier58 = companion.getRootScopeQualifier();
            emptyList58 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory58 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier58, Reflection.getOrCreateKotlinClass(WalletConnectNewSessionPresenter.class), null, c131158, kind, emptyList58));
            module.indexPrimaryType(factoryInstanceFactory58);
            new KoinDefinition(module, factoryInstanceFactory58);
            C131259 c131259 = new Function2<Scope, ParametersHolder, WalletConnectTransactionPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.59
                @Override // kotlin.jvm.functions.Function2
                public final WalletConnectTransactionPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new WalletConnectTransactionPresenter((WalletConnectTransactionScreenType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WalletConnectTransactionScreenType.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (WalletConnectInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectInteractor.class), null, null), (WalletConnectManager) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier59 = companion.getRootScopeQualifier();
            emptyList59 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory59 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier59, Reflection.getOrCreateKotlinClass(WalletConnectTransactionPresenter.class), null, c131259, kind, emptyList59));
            module.indexPrimaryType(factoryInstanceFactory59);
            new KoinDefinition(module, factoryInstanceFactory59);
            C131460 c131460 = new Function2<Scope, ParametersHolder, WalletConnectMessageSignPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.60
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
            StringQualifier rootScopeQualifier60 = companion.getRootScopeQualifier();
            emptyList60 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory60 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier60, Reflection.getOrCreateKotlinClass(WalletConnectMessageSignPresenter.class), null, c131460, kind, emptyList60));
            module.indexPrimaryType(factoryInstanceFactory60);
            new KoinDefinition(module, factoryInstanceFactory60);
            C131561 c131561 = new Function2<Scope, ParametersHolder, WalletConnectSwitchNetworkPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.61
                @Override // kotlin.jvm.functions.Function2
                public final WalletConnectSwitchNetworkPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new WalletConnectSwitchNetworkPresenter((String) parametersHolder.elementAt(2, Reflection.getOrCreateKotlinClass(String.class)), ((Number) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Long.class))).longValue(), (WalletConnectSessionItem) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(WalletConnectSessionItem.class)), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (WalletConnectManager) factory.get(Reflection.getOrCreateKotlinClass(WalletConnectManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier61 = companion.getRootScopeQualifier();
            emptyList61 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory61 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier61, Reflection.getOrCreateKotlinClass(WalletConnectSwitchNetworkPresenter.class), null, c131561, kind, emptyList61));
            module.indexPrimaryType(factoryInstanceFactory61);
            new KoinDefinition(module, factoryInstanceFactory61);
            C131662 c131662 = new Function2<Scope, ParametersHolder, CatalogRootPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.62
                @Override // kotlin.jvm.functions.Function2
                public final CatalogRootPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CatalogRootPresenter((CatalogInteractor) factory.get(Reflection.getOrCreateKotlinClass(CatalogInteractor.class), null, null), (PreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(PreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier62 = companion.getRootScopeQualifier();
            emptyList62 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory62 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier62, Reflection.getOrCreateKotlinClass(CatalogRootPresenter.class), null, c131662, kind, emptyList62));
            module.indexPrimaryType(factoryInstanceFactory62);
            new KoinDefinition(module, factoryInstanceFactory62);
            C131763 c131763 = new Function2<Scope, ParametersHolder, CatalogPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.63
                @Override // kotlin.jvm.functions.Function2
                public final CatalogPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CatalogPresenter();
                }
            };
            StringQualifier rootScopeQualifier63 = companion.getRootScopeQualifier();
            emptyList63 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory63 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier63, Reflection.getOrCreateKotlinClass(CatalogPresenter.class), null, c131763, kind, emptyList63));
            module.indexPrimaryType(factoryInstanceFactory63);
            new KoinDefinition(module, factoryInstanceFactory63);
            C131864 c131864 = new Function2<Scope, ParametersHolder, ChannelDetailsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.64
                @Override // kotlin.jvm.functions.Function2
                public final ChannelDetailsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new ChannelDetailsPresenter((CampaignItem) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(CampaignItem.class)), (TLRPC$Chat) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(TLRPC$Chat.class)), (ChatType) parametersHolder.elementAt(2, Reflection.getOrCreateKotlinClass(ChatType.class)), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier64 = companion.getRootScopeQualifier();
            emptyList64 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory64 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier64, Reflection.getOrCreateKotlinClass(ChannelDetailsPresenter.class), null, c131864, kind, emptyList64));
            module.indexPrimaryType(factoryInstanceFactory64);
            new KoinDefinition(module, factoryInstanceFactory64);
            C131965 c131965 = new Function2<Scope, ParametersHolder, CatalogAllPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.65
                @Override // kotlin.jvm.functions.Function2
                public final CatalogAllPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new CatalogAllPresenter((ChatType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(ChatType.class)), (CatalogInteractor) factory.get(Reflection.getOrCreateKotlinClass(CatalogInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier65 = companion.getRootScopeQualifier();
            emptyList65 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory65 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier65, Reflection.getOrCreateKotlinClass(CatalogAllPresenter.class), null, c131965, kind, emptyList65));
            module.indexPrimaryType(factoryInstanceFactory65);
            new KoinDefinition(module, factoryInstanceFactory65);
            C132066 c132066 = new Function2<Scope, ParametersHolder, CatalogCategoriesPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.66
                @Override // kotlin.jvm.functions.Function2
                public final CatalogCategoriesPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new CatalogCategoriesPresenter((ChatType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(ChatType.class)), (CatalogInteractor) factory.get(Reflection.getOrCreateKotlinClass(CatalogInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier66 = companion.getRootScopeQualifier();
            emptyList66 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory66 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier66, Reflection.getOrCreateKotlinClass(CatalogCategoriesPresenter.class), null, c132066, kind, emptyList66));
            module.indexPrimaryType(factoryInstanceFactory66);
            new KoinDefinition(module, factoryInstanceFactory66);
            C132167 c132167 = new Function2<Scope, ParametersHolder, CatalogUserChannelsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.67
                @Override // kotlin.jvm.functions.Function2
                public final CatalogUserChannelsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new CatalogUserChannelsPresenter((ChatType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(ChatType.class)));
                }
            };
            StringQualifier rootScopeQualifier67 = companion.getRootScopeQualifier();
            emptyList67 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory67 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier67, Reflection.getOrCreateKotlinClass(CatalogUserChannelsPresenter.class), null, c132167, kind, emptyList67));
            module.indexPrimaryType(factoryInstanceFactory67);
            new KoinDefinition(module, factoryInstanceFactory67);
            C132268 c132268 = new Function2<Scope, ParametersHolder, StakingPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.68
                @Override // kotlin.jvm.functions.Function2
                public final StakingPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new StakingPresenter((HintsPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(HintsPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (StakingInteractor) factory.get(Reflection.getOrCreateKotlinClass(StakingInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier68 = companion.getRootScopeQualifier();
            emptyList68 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory68 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier68, Reflection.getOrCreateKotlinClass(StakingPresenter.class), null, c132268, kind, emptyList68));
            module.indexPrimaryType(factoryInstanceFactory68);
            new KoinDefinition(module, factoryInstanceFactory68);
            C132369 c132369 = new Function2<Scope, ParametersHolder, StakingProgrammesPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.69
                @Override // kotlin.jvm.functions.Function2
                public final StakingProgrammesPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new StakingProgrammesPresenter((StakingTabType) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(StakingTabType.class)), (AccountLevelInteractor) factory.get(Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (StakingInteractor) factory.get(Reflection.getOrCreateKotlinClass(StakingInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier69 = companion.getRootScopeQualifier();
            emptyList69 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory69 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier69, Reflection.getOrCreateKotlinClass(StakingProgrammesPresenter.class), null, c132369, kind, emptyList69));
            module.indexPrimaryType(factoryInstanceFactory69);
            new KoinDefinition(module, factoryInstanceFactory69);
            C132570 c132570 = new Function2<Scope, ParametersHolder, StakingConditionsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.70
                @Override // kotlin.jvm.functions.Function2
                public final StakingConditionsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new StakingConditionsPresenter((StakingDetailsItem) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(StakingDetailsItem.class)), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier70 = companion.getRootScopeQualifier();
            emptyList70 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory70 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier70, Reflection.getOrCreateKotlinClass(StakingConditionsPresenter.class), null, c132570, kind, emptyList70));
            module.indexPrimaryType(factoryInstanceFactory70);
            new KoinDefinition(module, factoryInstanceFactory70);
            C132671 c132671 = new Function2<Scope, ParametersHolder, StakingTransactionPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.71
                @Override // kotlin.jvm.functions.Function2
                public final StakingTransactionPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new StakingTransactionPresenter((Double) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Double.class)), (StakingScreenType) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(StakingScreenType.class)), (StakingDetailsItem) parametersHolder.elementAt(2, Reflection.getOrCreateKotlinClass(StakingDetailsItem.class)), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (StakingInteractor) factory.get(Reflection.getOrCreateKotlinClass(StakingInteractor.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier71 = companion.getRootScopeQualifier();
            emptyList71 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory71 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier71, Reflection.getOrCreateKotlinClass(StakingTransactionPresenter.class), null, c132671, kind, emptyList71));
            module.indexPrimaryType(factoryInstanceFactory71);
            new KoinDefinition(module, factoryInstanceFactory71);
            C132772 c132772 = new Function2<Scope, ParametersHolder, StakingOperationsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.72
                @Override // kotlin.jvm.functions.Function2
                public final StakingOperationsPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new StakingOperationsPresenter((CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier72 = companion.getRootScopeQualifier();
            emptyList72 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory72 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier72, Reflection.getOrCreateKotlinClass(StakingOperationsPresenter.class), null, c132772, kind, emptyList72));
            module.indexPrimaryType(factoryInstanceFactory72);
            new KoinDefinition(module, factoryInstanceFactory72);
            C132873 c132873 = new Function2<Scope, ParametersHolder, StakingCalculatorPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.73
                @Override // kotlin.jvm.functions.Function2
                public final StakingCalculatorPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new StakingCalculatorPresenter((StakingDetailsItem) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(StakingDetailsItem.class)), (AccountLevelInteractor) factory.get(Reflection.getOrCreateKotlinClass(AccountLevelInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier73 = companion.getRootScopeQualifier();
            emptyList73 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory73 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier73, Reflection.getOrCreateKotlinClass(StakingCalculatorPresenter.class), null, c132873, kind, emptyList73));
            module.indexPrimaryType(factoryInstanceFactory73);
            new KoinDefinition(module, factoryInstanceFactory73);
            C132974 c132974 = new Function2<Scope, ParametersHolder, StakingCalculatorProgrammesPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.74
                @Override // kotlin.jvm.functions.Function2
                public final StakingCalculatorProgrammesPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new StakingCalculatorProgrammesPresenter((SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (StakingInteractor) factory.get(Reflection.getOrCreateKotlinClass(StakingInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier74 = companion.getRootScopeQualifier();
            emptyList74 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory74 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier74, Reflection.getOrCreateKotlinClass(StakingCalculatorProgrammesPresenter.class), null, c132974, kind, emptyList74));
            module.indexPrimaryType(factoryInstanceFactory74);
            new KoinDefinition(module, factoryInstanceFactory74);
            C133075 c133075 = new Function2<Scope, ParametersHolder, CreateCryptoBoxPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.75
                @Override // kotlin.jvm.functions.Function2
                public final CreateCryptoBoxPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new CreateCryptoBoxPresenter((TLRPC$Chat) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(TLRPC$Chat.class)), (Network) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(Network.class)), (CryptoBoxInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoBoxInteractor.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramControllersGateway) factory.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier75 = companion.getRootScopeQualifier();
            emptyList75 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory75 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier75, Reflection.getOrCreateKotlinClass(CreateCryptoBoxPresenter.class), null, c133075, kind, emptyList75));
            module.indexPrimaryType(factoryInstanceFactory75);
            new KoinDefinition(module, factoryInstanceFactory75);
            C133176 c133176 = new Function2<Scope, ParametersHolder, CryptoBoxesPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.76
                @Override // kotlin.jvm.functions.Function2
                public final CryptoBoxesPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new CryptoBoxesPresenter((TLRPC$Chat) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(TLRPC$Chat.class)), (CryptoBoxInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoBoxInteractor.class), null, null), (CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (RxEventBus) factory.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier76 = companion.getRootScopeQualifier();
            emptyList76 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory76 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier76, Reflection.getOrCreateKotlinClass(CryptoBoxesPresenter.class), null, c133176, kind, emptyList76));
            module.indexPrimaryType(factoryInstanceFactory76);
            new KoinDefinition(module, factoryInstanceFactory76);
            C133277 c133277 = new Function2<Scope, ParametersHolder, CryptoBoxSuspensionPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.77
                @Override // kotlin.jvm.functions.Function2
                public final CryptoBoxSuspensionPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new CryptoBoxSuspensionPresenter((CryptoBoxTransactionAction) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(CryptoBoxTransactionAction.class)), (CryptoBoxInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoBoxInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier77 = companion.getRootScopeQualifier();
            emptyList77 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory77 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier77, Reflection.getOrCreateKotlinClass(CryptoBoxSuspensionPresenter.class), null, c133277, kind, emptyList77));
            module.indexPrimaryType(factoryInstanceFactory77);
            new KoinDefinition(module, factoryInstanceFactory77);
            C133378 c133378 = new Function2<Scope, ParametersHolder, CryptoBoxConditionsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.78
                @Override // kotlin.jvm.functions.Function2
                public final CryptoBoxConditionsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new CryptoBoxConditionsPresenter((TLRPC$Chat) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(TLRPC$Chat.class)), (CryptoBoxInfo) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(CryptoBoxInfo.class)), (CryptoAccessManager) factory.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (CryptoBoxInteractor) factory.get(Reflection.getOrCreateKotlinClass(CryptoBoxInteractor.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TelegramApi) factory.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), null, null), (WalletCreateManager) factory.get(Reflection.getOrCreateKotlinClass(WalletCreateManager.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier78 = companion.getRootScopeQualifier();
            emptyList78 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory78 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier78, Reflection.getOrCreateKotlinClass(CryptoBoxConditionsPresenter.class), null, c133378, kind, emptyList78));
            module.indexPrimaryType(factoryInstanceFactory78);
            new KoinDefinition(module, factoryInstanceFactory78);
            C133479 c133479 = new Function2<Scope, ParametersHolder, CryptoBoxStatusInfoPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.79
                @Override // kotlin.jvm.functions.Function2
                public final CryptoBoxStatusInfoPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new CryptoBoxStatusInfoPresenter();
                }
            };
            StringQualifier rootScopeQualifier79 = companion.getRootScopeQualifier();
            emptyList79 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory79 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier79, Reflection.getOrCreateKotlinClass(CryptoBoxStatusInfoPresenter.class), null, c133479, kind, emptyList79));
            module.indexPrimaryType(factoryInstanceFactory79);
            new KoinDefinition(module, factoryInstanceFactory79);
            C133680 c133680 = new Function2<Scope, ParametersHolder, FragmentPremiumPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.80
                @Override // kotlin.jvm.functions.Function2
                public final FragmentPremiumPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new FragmentPremiumPresenter((ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TonFragmentInteractor) factory.get(Reflection.getOrCreateKotlinClass(TonFragmentInteractor.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier80 = companion.getRootScopeQualifier();
            emptyList80 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory80 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier80, Reflection.getOrCreateKotlinClass(FragmentPremiumPresenter.class), null, c133680, kind, emptyList80));
            module.indexPrimaryType(factoryInstanceFactory80);
            new KoinDefinition(module, factoryInstanceFactory80);
            C133781 c133781 = new Function2<Scope, ParametersHolder, FragmentUsernamesPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.81
                @Override // kotlin.jvm.functions.Function2
                public final FragmentUsernamesPresenter invoke(Scope factory, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new FragmentUsernamesPresenter((CryptoPreferenceHelper) factory.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), null, null), (ResourceManager) factory.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), null, null), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null), (TonFragmentInteractor) factory.get(Reflection.getOrCreateKotlinClass(TonFragmentInteractor.class), null, null), (WalletInteractor) factory.get(Reflection.getOrCreateKotlinClass(WalletInteractor.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier81 = companion.getRootScopeQualifier();
            emptyList81 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory81 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier81, Reflection.getOrCreateKotlinClass(FragmentUsernamesPresenter.class), null, c133781, kind, emptyList81));
            module.indexPrimaryType(factoryInstanceFactory81);
            new KoinDefinition(module, factoryInstanceFactory81);
            C133882 c133882 = new Function2<Scope, ParametersHolder, TonFragmentProductDetailsPresenter>() { // from class: com.iMe.di.module.PresenterModuleKt$presentationPresenterModule$1.82
                @Override // kotlin.jvm.functions.Function2
                public final TonFragmentProductDetailsPresenter invoke(Scope factory, ParametersHolder parametersHolder) {
                    Intrinsics.checkNotNullParameter(factory, "$this$factory");
                    Intrinsics.checkNotNullParameter(parametersHolder, "<name for destructuring parameter 0>");
                    return new TonFragmentProductDetailsPresenter((TonFragmentItem.Product) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(TonFragmentItem.Product.class)), (SchedulersProvider) factory.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), null, null));
                }
            };
            StringQualifier rootScopeQualifier82 = companion.getRootScopeQualifier();
            emptyList82 = CollectionsKt__CollectionsKt.emptyList();
            FactoryInstanceFactory factoryInstanceFactory82 = new FactoryInstanceFactory(new BeanDefinition(rootScopeQualifier82, Reflection.getOrCreateKotlinClass(TonFragmentProductDetailsPresenter.class), null, c133882, kind, emptyList82));
            module.indexPrimaryType(factoryInstanceFactory82);
            new KoinDefinition(module, factoryInstanceFactory82);
        }
    }, 1, null);

    public static final Module getPresentationPresenterModule() {
        return presentationPresenterModule;
    }
}
