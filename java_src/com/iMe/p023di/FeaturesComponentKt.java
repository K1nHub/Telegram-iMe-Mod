package com.iMe.p023di;

import com.iMe.p023di.module.FeatureModuleKt;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import org.koin.core.module.Module;
/* compiled from: FeaturesComponent.kt */
/* renamed from: com.iMe.di.FeaturesComponentKt */
/* loaded from: classes3.dex */
public final class FeaturesComponentKt {
    private static List<Module> featureModules;

    public static final List<Module> getFeatureModules() {
        return featureModules;
    }

    static {
        List<Module> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Module[]{FeatureModuleKt.getDevToolsFeature(), FeatureModuleKt.getSocialfeature(), FeatureModuleKt.getProfileFeature()});
        featureModules = listOf;
    }
}
