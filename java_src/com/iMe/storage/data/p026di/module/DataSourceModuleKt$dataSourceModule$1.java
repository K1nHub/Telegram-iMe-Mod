package com.iMe.storage.data.p026di.module;

import com.iMe.storage.data.datasource.approve.WalletApproveDataSource;
import com.iMe.storage.data.datasource.approve.WalletApproveDataSourceFactory;
import com.iMe.storage.data.datasource.approve.impl.EthWalletApproveDataSourceImpl;
import com.iMe.storage.data.datasource.boost.WalletBoostDataSourceFactory;
import com.iMe.storage.data.datasource.cancel.WalletCancelDataSource;
import com.iMe.storage.data.datasource.cancel.WalletCancelDataSourceFactory;
import com.iMe.storage.data.datasource.cancel.impl.EthWalletCancelDataSourceImpl;
import com.iMe.storage.data.datasource.swap.WalletSwapDataSource;
import com.iMe.storage.data.datasource.swap.WalletSwapDataSourceFactory;
import com.iMe.storage.data.datasource.swap.impl.DexWalletSwapDataSourceImpl;
import com.iMe.storage.data.datasource.transfer.WalletTransferDataSource;
import com.iMe.storage.data.datasource.transfer.WalletTransferDataSourceFactory;
import com.iMe.storage.data.datasource.transfer.impl.BTCWalletTransferDataSourceImpl;
import com.iMe.storage.data.datasource.transfer.impl.EVMWalletTransferDataSourceImpl;
import com.iMe.storage.data.datasource.transfer.impl.TONWalletTransferDataSourceImpl;
import com.iMe.storage.data.datasource.transfer.impl.TRONWalletTransferDataSourceImpl;
import com.iMe.storage.data.datasource.wallet_connect.WalletConnectDataSource;
import com.iMe.storage.data.datasource.wallet_connect.impl.WalletConnectDataSourceImpl;
import com.iMe.storage.data.network.api.own.CancelApi;
import com.iMe.storage.data.network.api.own.CryptoWalletApi;
import com.iMe.storage.data.network.api.own.SwapApi;
import com.iMe.storage.data.network.api.own.WalletConnectApi;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.manager.ton.TonController;
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
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
/* compiled from: DataSourceModule.kt */
/* renamed from: com.iMe.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1 */
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
    /* renamed from: com.iMe.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$1 */
    /* loaded from: classes3.dex */
    public static final class C16351 extends Lambda implements Function2<Scope, ParametersHolder, WalletTransferDataSourceFactory> {
        public static final C16351 INSTANCE = new C16351();

        C16351() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletTransferDataSourceFactory invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletTransferDataSourceFactory((WalletTransferDataSource) single.get(Reflection.getOrCreateKotlinClass(WalletTransferDataSource.class), DataSourceModuleKt.getEVM_CRYPTO_TRANSFER_DATA_SOURCE(), null), (WalletTransferDataSource) single.get(Reflection.getOrCreateKotlinClass(WalletTransferDataSource.class), DataSourceModuleKt.getTON_CRYPTO_TRANSFER_DATA_SOURCE(), null), (WalletTransferDataSource) single.get(Reflection.getOrCreateKotlinClass(WalletTransferDataSource.class), DataSourceModuleKt.getTRON_CRYPTO_TRANSFER_DATA_SOURCE(), null), (WalletTransferDataSource) single.get(Reflection.getOrCreateKotlinClass(WalletTransferDataSource.class), DataSourceModuleKt.getBTC_CRYPTO_TRANSFER_DATA_SOURCE(), null));
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
        List emptyList13;
        Intrinsics.checkNotNullParameter(module, "$this$module");
        C16351 c16351 = C16351.INSTANCE;
        ScopeRegistry.Companion companion = ScopeRegistry.Companion;
        StringQualifier rootScopeQualifier = companion.getRootScopeQualifier();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier, Reflection.getOrCreateKotlinClass(WalletTransferDataSourceFactory.class), null, c16351, kind, emptyList));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new KoinDefinition(module, singleInstanceFactory);
        C16402 c16402 = C16402.INSTANCE;
        StringQualifier rootScopeQualifier2 = companion.getRootScopeQualifier();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier2, Reflection.getOrCreateKotlinClass(WalletSwapDataSourceFactory.class), null, c16402, kind, emptyList2));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new KoinDefinition(module, singleInstanceFactory2);
        C16413 c16413 = C16413.INSTANCE;
        StringQualifier rootScopeQualifier3 = companion.getRootScopeQualifier();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier3, Reflection.getOrCreateKotlinClass(WalletApproveDataSourceFactory.class), null, c16413, kind, emptyList3));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new KoinDefinition(module, singleInstanceFactory3);
        C16424 c16424 = C16424.INSTANCE;
        StringQualifier rootScopeQualifier4 = companion.getRootScopeQualifier();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier4, Reflection.getOrCreateKotlinClass(WalletCancelDataSourceFactory.class), null, c16424, kind, emptyList4));
        module.indexPrimaryType(singleInstanceFactory4);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory4);
        }
        new KoinDefinition(module, singleInstanceFactory4);
        C16435 c16435 = C16435.INSTANCE;
        StringQualifier rootScopeQualifier5 = companion.getRootScopeQualifier();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory5 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier5, Reflection.getOrCreateKotlinClass(WalletBoostDataSourceFactory.class), null, c16435, kind, emptyList5));
        module.indexPrimaryType(singleInstanceFactory5);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory5);
        }
        new KoinDefinition(module, singleInstanceFactory5);
        StringQualifier evm_crypto_transfer_data_source = DataSourceModuleKt.getEVM_CRYPTO_TRANSFER_DATA_SOURCE();
        C16446 c16446 = C16446.INSTANCE;
        StringQualifier rootScopeQualifier6 = companion.getRootScopeQualifier();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory6 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier6, Reflection.getOrCreateKotlinClass(WalletTransferDataSource.class), evm_crypto_transfer_data_source, c16446, kind, emptyList6));
        module.indexPrimaryType(singleInstanceFactory6);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory6);
        }
        new KoinDefinition(module, singleInstanceFactory6);
        StringQualifier ton_crypto_transfer_data_source = DataSourceModuleKt.getTON_CRYPTO_TRANSFER_DATA_SOURCE();
        C16457 c16457 = C16457.INSTANCE;
        StringQualifier rootScopeQualifier7 = companion.getRootScopeQualifier();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory7 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier7, Reflection.getOrCreateKotlinClass(WalletTransferDataSource.class), ton_crypto_transfer_data_source, c16457, kind, emptyList7));
        module.indexPrimaryType(singleInstanceFactory7);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory7);
        }
        new KoinDefinition(module, singleInstanceFactory7);
        StringQualifier tron_crypto_transfer_data_source = DataSourceModuleKt.getTRON_CRYPTO_TRANSFER_DATA_SOURCE();
        C16468 c16468 = C16468.INSTANCE;
        StringQualifier rootScopeQualifier8 = companion.getRootScopeQualifier();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory8 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier8, Reflection.getOrCreateKotlinClass(WalletTransferDataSource.class), tron_crypto_transfer_data_source, c16468, kind, emptyList8));
        module.indexPrimaryType(singleInstanceFactory8);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory8);
        }
        new KoinDefinition(module, singleInstanceFactory8);
        StringQualifier btc_crypto_transfer_data_source = DataSourceModuleKt.getBTC_CRYPTO_TRANSFER_DATA_SOURCE();
        C16479 c16479 = C16479.INSTANCE;
        StringQualifier rootScopeQualifier9 = companion.getRootScopeQualifier();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory9 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier9, Reflection.getOrCreateKotlinClass(WalletTransferDataSource.class), btc_crypto_transfer_data_source, c16479, kind, emptyList9));
        module.indexPrimaryType(singleInstanceFactory9);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory9);
        }
        new KoinDefinition(module, singleInstanceFactory9);
        StringQualifier dex_swap_data_source = DataSourceModuleKt.getDEX_SWAP_DATA_SOURCE();
        C163610 c163610 = C163610.INSTANCE;
        StringQualifier rootScopeQualifier10 = companion.getRootScopeQualifier();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory10 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier10, Reflection.getOrCreateKotlinClass(WalletSwapDataSource.class), dex_swap_data_source, c163610, kind, emptyList10));
        module.indexPrimaryType(singleInstanceFactory10);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory10);
        }
        new KoinDefinition(module, singleInstanceFactory10);
        StringQualifier eth_approve_data_source = DataSourceModuleKt.getETH_APPROVE_DATA_SOURCE();
        C163711 c163711 = C163711.INSTANCE;
        StringQualifier rootScopeQualifier11 = companion.getRootScopeQualifier();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory11 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier11, Reflection.getOrCreateKotlinClass(WalletApproveDataSource.class), eth_approve_data_source, c163711, kind, emptyList11));
        module.indexPrimaryType(singleInstanceFactory11);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory11);
        }
        new KoinDefinition(module, singleInstanceFactory11);
        StringQualifier eth_cancel_data_source = DataSourceModuleKt.getETH_CANCEL_DATA_SOURCE();
        C163812 c163812 = C163812.INSTANCE;
        StringQualifier rootScopeQualifier12 = companion.getRootScopeQualifier();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory12 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier12, Reflection.getOrCreateKotlinClass(WalletCancelDataSource.class), eth_cancel_data_source, c163812, kind, emptyList12));
        module.indexPrimaryType(singleInstanceFactory12);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory12);
        }
        new KoinDefinition(module, singleInstanceFactory12);
        C163913 c163913 = C163913.INSTANCE;
        StringQualifier rootScopeQualifier13 = companion.getRootScopeQualifier();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        SingleInstanceFactory<?> singleInstanceFactory13 = new SingleInstanceFactory<>(new BeanDefinition(rootScopeQualifier13, Reflection.getOrCreateKotlinClass(WalletConnectDataSource.class), null, c163913, kind, emptyList13));
        module.indexPrimaryType(singleInstanceFactory13);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory13);
        }
        new KoinDefinition(module, singleInstanceFactory13);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataSourceModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$2 */
    /* loaded from: classes3.dex */
    public static final class C16402 extends Lambda implements Function2<Scope, ParametersHolder, WalletSwapDataSourceFactory> {
        public static final C16402 INSTANCE = new C16402();

        C16402() {
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
    /* renamed from: com.iMe.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$3 */
    /* loaded from: classes3.dex */
    public static final class C16413 extends Lambda implements Function2<Scope, ParametersHolder, WalletApproveDataSourceFactory> {
        public static final C16413 INSTANCE = new C16413();

        C16413() {
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
    /* renamed from: com.iMe.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$4 */
    /* loaded from: classes3.dex */
    public static final class C16424 extends Lambda implements Function2<Scope, ParametersHolder, WalletCancelDataSourceFactory> {
        public static final C16424 INSTANCE = new C16424();

        C16424() {
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
    /* renamed from: com.iMe.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$5 */
    /* loaded from: classes3.dex */
    public static final class C16435 extends Lambda implements Function2<Scope, ParametersHolder, WalletBoostDataSourceFactory> {
        public static final C16435 INSTANCE = new C16435();

        C16435() {
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
    /* renamed from: com.iMe.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$6 */
    /* loaded from: classes3.dex */
    public static final class C16446 extends Lambda implements Function2<Scope, ParametersHolder, WalletTransferDataSource> {
        public static final C16446 INSTANCE = new C16446();

        C16446() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletTransferDataSource invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new EVMWalletTransferDataSourceImpl((FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (CryptoWalletApi) single.get(Reflection.getOrCreateKotlinClass(CryptoWalletApi.class), null, null), (CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataSourceModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$8 */
    /* loaded from: classes3.dex */
    public static final class C16468 extends Lambda implements Function2<Scope, ParametersHolder, WalletTransferDataSource> {
        public static final C16468 INSTANCE = new C16468();

        C16468() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletTransferDataSource invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TRONWalletTransferDataSourceImpl((FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (CryptoWalletApi) single.get(Reflection.getOrCreateKotlinClass(CryptoWalletApi.class), null, null), (CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataSourceModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$9 */
    /* loaded from: classes3.dex */
    public static final class C16479 extends Lambda implements Function2<Scope, ParametersHolder, WalletTransferDataSource> {
        public static final C16479 INSTANCE = new C16479();

        C16479() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletTransferDataSource invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new BTCWalletTransferDataSourceImpl((FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (CryptoWalletApi) single.get(Reflection.getOrCreateKotlinClass(CryptoWalletApi.class), null, null), (CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataSourceModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$13 */
    /* loaded from: classes3.dex */
    public static final class C163913 extends Lambda implements Function2<Scope, ParametersHolder, WalletConnectDataSource> {
        public static final C163913 INSTANCE = new C163913();

        C163913() {
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
    /* renamed from: com.iMe.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$10 */
    /* loaded from: classes3.dex */
    public static final class C163610 extends Lambda implements Function2<Scope, ParametersHolder, WalletSwapDataSource> {
        public static final C163610 INSTANCE = new C163610();

        C163610() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletSwapDataSource invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new DexWalletSwapDataSourceImpl((SwapApi) single.get(Reflection.getOrCreateKotlinClass(SwapApi.class), null, null), (CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataSourceModule.kt */
    /* renamed from: com.iMe.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$11 */
    /* loaded from: classes3.dex */
    public static final class C163711 extends Lambda implements Function2<Scope, ParametersHolder, WalletApproveDataSource> {
        public static final C163711 INSTANCE = new C163711();

        C163711() {
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
    /* renamed from: com.iMe.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$12 */
    /* loaded from: classes3.dex */
    public static final class C163812 extends Lambda implements Function2<Scope, ParametersHolder, WalletCancelDataSource> {
        public static final C163812 INSTANCE = new C163812();

        C163812() {
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
    /* renamed from: com.iMe.storage.data.di.module.DataSourceModuleKt$dataSourceModule$1$7 */
    /* loaded from: classes3.dex */
    public static final class C16457 extends Lambda implements Function2<Scope, ParametersHolder, WalletTransferDataSource> {
        public static final C16457 INSTANCE = new C16457();

        C16457() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final WalletTransferDataSource invoke(Scope single, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(single, "$this$single");
            Intrinsics.checkNotNullParameter(it, "it");
            return new TONWalletTransferDataSourceImpl((CryptoAccessManager) single.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), null, null), (FirebaseFunctionsErrorHandler) single.get(Reflection.getOrCreateKotlinClass(FirebaseFunctionsErrorHandler.class), null, null), (CryptoWalletApi) single.get(Reflection.getOrCreateKotlinClass(CryptoWalletApi.class), null, null), (TonController) single.get(Reflection.getOrCreateKotlinClass(TonController.class), null, null));
        }
    }
}
