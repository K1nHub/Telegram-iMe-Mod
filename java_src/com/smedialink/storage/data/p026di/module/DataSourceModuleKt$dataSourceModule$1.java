package com.smedialink.storage.data.p026di.module;

import com.smedialink.storage.data.datasource.approve.WalletApproveDataSource;
import com.smedialink.storage.data.datasource.approve.WalletApproveDataSourceFactory;
import com.smedialink.storage.data.datasource.approve.impl.EthWalletApproveDataSourceImpl;
import com.smedialink.storage.data.datasource.boost.WalletBoostDataSourceFactory;
import com.smedialink.storage.data.datasource.cancel.WalletCancelDataSource;
import com.smedialink.storage.data.datasource.cancel.WalletCancelDataSourceFactory;
import com.smedialink.storage.data.datasource.cancel.impl.EthWalletCancelDataSourceImpl;
import com.smedialink.storage.data.datasource.swap.WalletSwapDataSource;
import com.smedialink.storage.data.datasource.swap.WalletSwapDataSourceFactory;
import com.smedialink.storage.data.datasource.swap.impl.DexWalletSwapDataSourceImpl;
import com.smedialink.storage.data.datasource.transfer.WalletTransferDataSource;
import com.smedialink.storage.data.datasource.transfer.WalletTransferDataSourceFactory;
import com.smedialink.storage.data.datasource.transfer.impl.EVMWalletTransferDataSourceImpl;
import com.smedialink.storage.data.datasource.transfer.impl.TONWalletTransferDataSourceImpl;
import com.smedialink.storage.data.datasource.transfer.impl.TRONWalletTransferDataSourceImpl;
import com.smedialink.storage.data.datasource.wallet_connect.WalletConnectDataSource;
import com.smedialink.storage.data.datasource.wallet_connect.impl.WalletConnectDataSourceImpl;
import com.smedialink.storage.data.network.api.own.CancelApi;
import com.smedialink.storage.data.network.api.own.CryptoWalletApi;
import com.smedialink.storage.data.network.api.own.SwapApi;
import com.smedialink.storage.data.network.api.own.TonApi;
import com.smedialink.storage.data.network.api.own.WalletApi;
import com.smedialink.storage.data.network.api.own.WalletConnectApi;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.manager.ton.TonController;
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
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
/* compiled from: DataSourceModule.kt */
/* renamed from: com.smedialink.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1 */
/* loaded from: classes3.dex */
final class DataSourceModuleKt$dataSourceModule$1 extends Lambda implements Function1<Module, Unit> {
    public static final DataSourceModuleKt$dataSourceModule$1 INSTANCE = new DataSourceModuleKt$dataSourceModule$1();

    DataSourceModuleKt$dataSourceModule$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Module module) {
        invoke2(module);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataSourceModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C15081 extends Lambda implements Function2<Scope, ParametersHolder, WalletTransferDataSourceFactory> {
        public static final C15081 INSTANCE = new C15081();

        C15081() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletTransferDataSourceFactory invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletTransferDataSourceFactory((WalletTransferDataSource) single.get(Reflection.getOrCreateKotlinClass(WalletTransferDataSource.class), DataSourceModuleKt.getEVM_CRYPTO_TRANSFER_DATA_SOURCE(), null), (WalletTransferDataSource) single.get(Reflection.getOrCreateKotlinClass(WalletTransferDataSource.class), DataSourceModuleKt.getTON_CRYPTO_TRANSFER_DATA_SOURCE(), null), (WalletTransferDataSource) single.get(Reflection.getOrCreateKotlinClass(WalletTransferDataSource.class), DataSourceModuleKt.getTRON_CRYPTO_TRANSFER_DATA_SOURCE(), null));
        }
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
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C15081 c15081 = C15081.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(WalletTransferDataSourceFactory.class), null, c15081, kind, emptyList));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new Pair(module, singleInstanceFactory);
        C15122 c15122 = C15122.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(WalletSwapDataSourceFactory.class), null, c15122, kind, emptyList2));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new Pair(module, singleInstanceFactory2);
        C15133 c15133 = C15133.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(WalletApproveDataSourceFactory.class), null, c15133, kind, emptyList3));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new Pair(module, singleInstanceFactory3);
        C15144 c15144 = C15144.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(WalletCancelDataSourceFactory.class), null, c15144, kind, emptyList4));
        module.indexPrimaryType(singleInstanceFactory4);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory4);
        }
        new Pair(module, singleInstanceFactory4);
        C15155 c15155 = C15155.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory5 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(WalletBoostDataSourceFactory.class), null, c15155, kind, emptyList5));
        module.indexPrimaryType(singleInstanceFactory5);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory5);
        }
        new Pair(module, singleInstanceFactory5);
        StringQualifier evm_crypto_transfer_data_source = DataSourceModuleKt.getEVM_CRYPTO_TRANSFER_DATA_SOURCE();
        C15166 c15166 = C15166.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory6 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(WalletTransferDataSource.class), evm_crypto_transfer_data_source, c15166, kind, emptyList6));
        module.indexPrimaryType(singleInstanceFactory6);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory6);
        }
        new Pair(module, singleInstanceFactory6);
        StringQualifier ton_crypto_transfer_data_source = DataSourceModuleKt.getTON_CRYPTO_TRANSFER_DATA_SOURCE();
        C15177 c15177 = C15177.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory7 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(WalletTransferDataSource.class), ton_crypto_transfer_data_source, c15177, kind, emptyList7));
        module.indexPrimaryType(singleInstanceFactory7);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory7);
        }
        new Pair(module, singleInstanceFactory7);
        StringQualifier tron_crypto_transfer_data_source = DataSourceModuleKt.getTRON_CRYPTO_TRANSFER_DATA_SOURCE();
        C15188 c15188 = C15188.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory8 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(WalletTransferDataSource.class), tron_crypto_transfer_data_source, c15188, kind, emptyList8));
        module.indexPrimaryType(singleInstanceFactory8);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory8);
        }
        new Pair(module, singleInstanceFactory8);
        StringQualifier dex_swap_data_source = DataSourceModuleKt.getDEX_SWAP_DATA_SOURCE();
        C15199 c15199 = C15199.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory9 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(WalletSwapDataSource.class), dex_swap_data_source, c15199, kind, emptyList9));
        module.indexPrimaryType(singleInstanceFactory9);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory9);
        }
        new Pair(module, singleInstanceFactory9);
        StringQualifier eth_approve_data_source = DataSourceModuleKt.getETH_APPROVE_DATA_SOURCE();
        C150910 c150910 = C150910.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory10 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(WalletApproveDataSource.class), eth_approve_data_source, c150910, kind, emptyList10));
        module.indexPrimaryType(singleInstanceFactory10);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory10);
        }
        new Pair(module, singleInstanceFactory10);
        StringQualifier eth_cancel_data_source = DataSourceModuleKt.getETH_CANCEL_DATA_SOURCE();
        C151011 c151011 = C151011.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory11 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(WalletCancelDataSource.class), eth_cancel_data_source, c151011, kind, emptyList11));
        module.indexPrimaryType(singleInstanceFactory11);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory11);
        }
        new Pair(module, singleInstanceFactory11);
        C151112 c151112 = C151112.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory12 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(WalletConnectDataSource.class), null, c151112, kind, emptyList12));
        module.indexPrimaryType(singleInstanceFactory12);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory12);
        }
        new Pair(module, singleInstanceFactory12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataSourceModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C15122 extends Lambda implements Function2<Scope, ParametersHolder, WalletSwapDataSourceFactory> {
        public static final C15122 INSTANCE = new C15122();

        C15122() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletSwapDataSourceFactory invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletSwapDataSourceFactory((WalletSwapDataSource) single.get(Reflection.getOrCreateKotlinClass(WalletSwapDataSource.class), DataSourceModuleKt.getDEX_SWAP_DATA_SOURCE(), null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataSourceModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C15133 extends Lambda implements Function2<Scope, ParametersHolder, WalletApproveDataSourceFactory> {
        public static final C15133 INSTANCE = new C15133();

        C15133() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletApproveDataSourceFactory invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletApproveDataSourceFactory((WalletApproveDataSource) single.get(Reflection.getOrCreateKotlinClass(WalletApproveDataSource.class), DataSourceModuleKt.getETH_APPROVE_DATA_SOURCE(), null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataSourceModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C15144 extends Lambda implements Function2<Scope, ParametersHolder, WalletCancelDataSourceFactory> {
        public static final C15144 INSTANCE = new C15144();

        C15144() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletCancelDataSourceFactory invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletCancelDataSourceFactory((WalletCancelDataSource) single.get(Reflection.getOrCreateKotlinClass(WalletCancelDataSource.class), DataSourceModuleKt.getETH_CANCEL_DATA_SOURCE(), null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataSourceModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$5 */
    /* loaded from: classes3.dex */
    public static final class C15155 extends Lambda implements Function2<Scope, ParametersHolder, WalletBoostDataSourceFactory> {
        public static final C15155 INSTANCE = new C15155();

        C15155() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletBoostDataSourceFactory invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            StringQualifier eth_approve_data_source = DataSourceModuleKt.getETH_APPROVE_DATA_SOURCE();
            return new WalletBoostDataSourceFactory((WalletTransferDataSource) single.get(Reflection.getOrCreateKotlinClass(WalletTransferDataSource.class), DataSourceModuleKt.getEVM_CRYPTO_TRANSFER_DATA_SOURCE(), null), (WalletApproveDataSource) single.get(Reflection.getOrCreateKotlinClass(WalletApproveDataSource.class), eth_approve_data_source, null), (WalletSwapDataSource) single.get(Reflection.getOrCreateKotlinClass(WalletSwapDataSource.class), DataSourceModuleKt.getDEX_SWAP_DATA_SOURCE(), null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataSourceModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$6 */
    /* loaded from: classes3.dex */
    public static final class C15166 extends Lambda implements Function2<Scope, ParametersHolder, WalletTransferDataSource> {
        public static final C15166 INSTANCE = new C15166();

        C15166() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletTransferDataSource invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new EVMWalletTransferDataSourceImpl((FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (CryptoWalletApi) single.get(Reflection.getOrCreateKotlinClass(CryptoWalletApi.class), null, null), (CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (WalletApi) single.get(Reflection.getOrCreateKotlinClass(WalletApi.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataSourceModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$7 */
    /* loaded from: classes3.dex */
    public static final class C15177 extends Lambda implements Function2<Scope, ParametersHolder, WalletTransferDataSource> {
        public static final C15177 INSTANCE = new C15177();

        C15177() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletTransferDataSource invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TONWalletTransferDataSourceImpl((CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (TonApi) single.get(Reflection.getOrCreateKotlinClass(TonApi.class), null, null), (TonController) single.get(Reflection.getOrCreateKotlinClass(TonController.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataSourceModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$8 */
    /* loaded from: classes3.dex */
    public static final class C15188 extends Lambda implements Function2<Scope, ParametersHolder, WalletTransferDataSource> {
        public static final C15188 INSTANCE = new C15188();

        C15188() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletTransferDataSource invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TRONWalletTransferDataSourceImpl((FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (CryptoWalletApi) single.get(Reflection.getOrCreateKotlinClass(CryptoWalletApi.class), null, null), (CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (WalletApi) single.get(Reflection.getOrCreateKotlinClass(WalletApi.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataSourceModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$12 */
    /* loaded from: classes3.dex */
    public static final class C151112 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectDataSource> {
        public static final C151112 INSTANCE = new C151112();

        C151112() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletConnectDataSource invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletConnectDataSourceImpl((CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (WalletConnectApi) single.get(Reflection.getOrCreateKotlinClass(WalletConnectApi.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataSourceModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$10 */
    /* loaded from: classes3.dex */
    public static final class C150910 extends Lambda implements Function2<Scope, ParametersHolder, WalletApproveDataSource> {
        public static final C150910 INSTANCE = new C150910();

        C150910() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletApproveDataSource invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new EthWalletApproveDataSourceImpl((SwapApi) single.get(Reflection.getOrCreateKotlinClass(SwapApi.class), null, null), (CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataSourceModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$11 */
    /* loaded from: classes3.dex */
    public static final class C151011 extends Lambda implements Function2<Scope, ParametersHolder, WalletCancelDataSource> {
        public static final C151011 INSTANCE = new C151011();

        C151011() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletCancelDataSource invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new EthWalletCancelDataSourceImpl((CancelApi) single.get(Reflection.getOrCreateKotlinClass(CancelApi.class), null, null), (CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataSourceModule.kt */
    /* renamed from: com.smedialink.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$9 */
    /* loaded from: classes3.dex */
    public static final class C15199 extends Lambda implements Function2<Scope, ParametersHolder, WalletSwapDataSource> {
        public static final C15199 INSTANCE = new C15199();

        C15199() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletSwapDataSource invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new DexWalletSwapDataSourceImpl((SwapApi) single.get(Reflection.getOrCreateKotlinClass(SwapApi.class), null, null), (CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null));
        }
    }
}
