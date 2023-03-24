package com.smedialink.storage.data.p026di.module;

import org.koin.core.module.Module;
import org.koin.core.qualifier.QualifierKt;
import org.koin.core.qualifier.StringQualifier;
import org.koin.dsl.ModuleDSLKt;
/* compiled from: DataSourceModule.kt */
/* renamed from: com.smedialink.storage.data.di.module.DataSourceModuleKt */
/* loaded from: classes3.dex */
public final class DataSourceModuleKt {
    private static final StringQualifier EVM_CRYPTO_TRANSFER_DATA_SOURCE = QualifierKt.named("EVM_CRYPTO_TRANSFER_DATA_SOURCE");
    private static final StringQualifier TON_CRYPTO_TRANSFER_DATA_SOURCE = QualifierKt.named("TON_CRYPTO_TRANSFER_DATA_SOURCE");
    private static final StringQualifier TRON_CRYPTO_TRANSFER_DATA_SOURCE = QualifierKt.named("TRON_CRYPTO_TRANSFER_DATA_SOURCE");
    private static final StringQualifier DEX_SWAP_DATA_SOURCE = QualifierKt.named("DEX_SWAP_DATA_SOURCE");
    private static final StringQualifier ETH_APPROVE_DATA_SOURCE = QualifierKt.named("ETH_APPROVE_DATA_SOURCE");
    private static final StringQualifier ETH_CANCEL_DATA_SOURCE = QualifierKt.named("ETH_CANCEL_DATA_SOURCE");
    private static Module dataSourceModule = ModuleDSLKt.module$default(false, DataSourceModuleKt$dataSourceModule$1.INSTANCE, 1, null);

    public static final StringQualifier getEVM_CRYPTO_TRANSFER_DATA_SOURCE() {
        return EVM_CRYPTO_TRANSFER_DATA_SOURCE;
    }

    public static final StringQualifier getTON_CRYPTO_TRANSFER_DATA_SOURCE() {
        return TON_CRYPTO_TRANSFER_DATA_SOURCE;
    }

    public static final StringQualifier getTRON_CRYPTO_TRANSFER_DATA_SOURCE() {
        return TRON_CRYPTO_TRANSFER_DATA_SOURCE;
    }

    public static final StringQualifier getDEX_SWAP_DATA_SOURCE() {
        return DEX_SWAP_DATA_SOURCE;
    }

    public static final StringQualifier getETH_APPROVE_DATA_SOURCE() {
        return ETH_APPROVE_DATA_SOURCE;
    }

    public static final StringQualifier getETH_CANCEL_DATA_SOURCE() {
        return ETH_CANCEL_DATA_SOURCE;
    }

    public static final Module getDataSourceModule() {
        return dataSourceModule;
    }
}
