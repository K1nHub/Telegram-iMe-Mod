package com.iMe.storage.data.p027di.module;

import org.koin.core.module.Module;
import org.koin.core.qualifier.QualifierKt;
import org.koin.core.qualifier.StringQualifier;
import org.koin.dsl.ModuleDSLKt;
/* compiled from: ManagerModule.kt */
/* renamed from: com.iMe.storage.data.di.module.ManagerModuleKt */
/* loaded from: classes3.dex */
public final class ManagerModuleKt {
    private static final StringQualifier EVM_BLOCKCHAIN_CRYPTO_WALLET_MANAGER = QualifierKt.named("EVM_BLOCKCHAIN_CRYPTO_WALLET_MANAGER");
    private static final StringQualifier TON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER = QualifierKt.named("TON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER");
    private static final StringQualifier TRON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER = QualifierKt.named("TRON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER");
    private static Module dataManagerModule = ModuleDSLKt.module$default(false, ManagerModuleKt$dataManagerModule$1.INSTANCE, 1, null);

    public static final StringQualifier getEVM_BLOCKCHAIN_CRYPTO_WALLET_MANAGER() {
        return EVM_BLOCKCHAIN_CRYPTO_WALLET_MANAGER;
    }

    public static final StringQualifier getTON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER() {
        return TON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER;
    }

    public static final StringQualifier getTRON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER() {
        return TRON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER;
    }

    public static final Module getDataManagerModule() {
        return dataManagerModule;
    }
}
