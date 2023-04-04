package com.iMe.p024di.module;

import org.koin.core.module.Module;
import org.koin.core.qualifier.QualifierKt;
import org.koin.core.qualifier.StringQualifier;
import org.koin.dsl.ModuleDSLKt;
/* compiled from: NavigationModule.kt */
/* renamed from: com.iMe.di.module.NavigationModuleKt */
/* loaded from: classes3.dex */
public final class NavigationModuleKt {
    private static final StringQualifier COMMON_BOTTOM_NAVIGATOR = QualifierKt.named("COMMON_BOTTOM_NAVIGATOR");
    private static final StringQualifier COMMON_TABS_NAVIGATOR = QualifierKt.named("COMMON_TABS_NAVIGATOR");
    private static final StringQualifier WALLET_ROOT_NAVIGATOR = QualifierKt.named("WALLET_ROOT_NAVIGATOR");
    private static Module presentationNavigationModule = ModuleDSLKt.module$default(false, NavigationModuleKt$presentationNavigationModule$1.INSTANCE, 1, null);

    public static final StringQualifier getCOMMON_BOTTOM_NAVIGATOR() {
        return COMMON_BOTTOM_NAVIGATOR;
    }

    public static final StringQualifier getCOMMON_TABS_NAVIGATOR() {
        return COMMON_TABS_NAVIGATOR;
    }

    public static final StringQualifier getWALLET_ROOT_NAVIGATOR() {
        return WALLET_ROOT_NAVIGATOR;
    }

    public static final Module getPresentationNavigationModule() {
        return presentationNavigationModule;
    }
}
