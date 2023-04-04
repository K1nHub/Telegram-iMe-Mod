package com.iMe.i_staking.p026di;

import org.koin.core.module.Module;
import org.koin.core.qualifier.QualifierKt;
import org.koin.core.qualifier.StringQualifier;
import org.koin.dsl.ModuleDSLKt;
/* compiled from: StakingModule.kt */
/* renamed from: com.iMe.i_staking.di.StakingModuleKt */
/* loaded from: classes3.dex */
public final class StakingModuleKt {
    private static final StringQualifier STAKING_RETROFIT = QualifierKt.named("STAKING_RETROFIT");
    private static final StringQualifier STAKING_CLIENT = QualifierKt.named("STAKING_CLIENT");
    private static Module stakingModule = ModuleDSLKt.module$default(false, StakingModuleKt$stakingModule$1.INSTANCE, 1, null);

    public static final StringQualifier getSTAKING_RETROFIT() {
        return STAKING_RETROFIT;
    }

    public static final StringQualifier getSTAKING_CLIENT() {
        return STAKING_CLIENT;
    }

    public static final Module getStakingModule() {
        return stakingModule;
    }
}
