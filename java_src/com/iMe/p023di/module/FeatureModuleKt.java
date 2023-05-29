package com.iMe.p023di.module;

import org.koin.core.module.Module;
import org.koin.dsl.ModuleDSLKt;
/* compiled from: FeatureModule.kt */
/* renamed from: com.iMe.di.module.FeatureModuleKt */
/* loaded from: classes3.dex */
public final class FeatureModuleKt {
    private static Module devToolsFeature = ModuleDSLKt.module$default(false, FeatureModuleKt$devToolsFeature$1.INSTANCE, 1, null);
    private static Module socialfeature = ModuleDSLKt.module$default(false, FeatureModuleKt$socialfeature$1.INSTANCE, 1, null);
    private static Module profileFeature = ModuleDSLKt.module$default(false, FeatureModuleKt$profileFeature$1.INSTANCE, 1, null);

    public static final Module getDevToolsFeature() {
        return devToolsFeature;
    }

    public static final Module getSocialfeature() {
        return socialfeature;
    }

    public static final Module getProfileFeature() {
        return profileFeature;
    }
}
