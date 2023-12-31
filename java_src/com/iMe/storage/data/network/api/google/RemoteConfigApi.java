package com.iMe.storage.data.network.api.google;

import com.google.android.gms.tasks.Task;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt;
import io.reactivex.Single;
import io.reactivex.functions.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RemoteConfigApi.kt */
/* loaded from: classes3.dex */
public final class RemoteConfigApi {
    private final FirebaseRemoteConfig remoteConfig;

    public RemoteConfigApi(FirebaseRemoteConfig remoteConfig) {
        Intrinsics.checkNotNullParameter(remoteConfig, "remoteConfig");
        this.remoteConfig = remoteConfig;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean getBoolean$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Boolean) tmp0.invoke(obj);
    }

    public final Single<Boolean> getBoolean(final String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Single<Boolean> fetchAndActivate = fetchAndActivate();
        final Function1<Boolean, Boolean> function1 = new Function1<Boolean, Boolean>() { // from class: com.iMe.storage.data.network.api.google.RemoteConfigApi$getBoolean$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(Boolean it) {
                FirebaseRemoteConfig firebaseRemoteConfig;
                Intrinsics.checkNotNullParameter(it, "it");
                firebaseRemoteConfig = RemoteConfigApi.this.remoteConfig;
                return Boolean.valueOf(firebaseRemoteConfig.getBoolean(key));
            }
        };
        Single map = fetchAndActivate.map(new Function() { // from class: com.iMe.storage.data.network.api.google.RemoteConfigApi$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Boolean boolean$lambda$0;
                boolean$lambda$0 = RemoteConfigApi.getBoolean$lambda$0(Function1.this, obj);
                return boolean$lambda$0;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "fun getBoolean(key: Stri…eConfig.getBoolean(key) }");
        return map;
    }

    private final Single<Boolean> fetchAndActivate() {
        Task<Boolean> fetchAndActivate = this.remoteConfig.fetchAndActivate();
        Intrinsics.checkNotNullExpressionValue(fetchAndActivate, "remoteConfig\n            .fetchAndActivate()");
        return FirebaseExtKt.asSingleTask(fetchAndActivate);
    }
}
