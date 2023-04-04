package com.iMe.storage.data.p027di.module;

import com.google.firebase.FirebaseApp;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigSettings;
import com.iMe.storage.data.common.RemoteConfigConstants;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.module.Module;
import org.koin.dsl.ModuleDSLKt;
/* compiled from: FirebaseModule.kt */
/* renamed from: com.iMe.storage.data.di.module.FirebaseModuleKt */
/* loaded from: classes3.dex */
public final class FirebaseModuleKt {
    private static Module firebaseModule = ModuleDSLKt.module$default(false, FirebaseModuleKt$firebaseModule$1.INSTANCE, 1, null);

    public static final Module getFirebaseModule() {
        return firebaseModule;
    }

    public static final FirebaseRemoteConfig initRemoteConfig(FirebaseApp app) {
        Intrinsics.checkNotNullParameter(app, "app");
        FirebaseRemoteConfig firebaseRemoteConfig = FirebaseRemoteConfig.getInstance(app);
        Intrinsics.checkNotNullExpressionValue(firebaseRemoteConfig, "getInstance(app)");
        FirebaseRemoteConfigSettings.Builder builder = new FirebaseRemoteConfigSettings.Builder();
        RemoteConfigConstants remoteConfigConstants = RemoteConfigConstants.INSTANCE;
        FirebaseRemoteConfigSettings build = builder.setMinimumFetchIntervalInSeconds(remoteConfigConstants.getMinFetchInterval()).build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder()\n              …\n                .build()");
        firebaseRemoteConfig.setDefaultsAsync(remoteConfigConstants.getDefaultValues());
        firebaseRemoteConfig.setConfigSettingsAsync(build);
        return firebaseRemoteConfig;
    }
}
