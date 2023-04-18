package com.iMe.storage.data.network.api.google;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RemoteConfigApi.kt */
/* loaded from: classes3.dex */
public final class RemoteConfigApi$getBoolean$1 extends Lambda implements Function1<Boolean, Boolean> {
    final /* synthetic */ String $key;
    final /* synthetic */ RemoteConfigApi this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteConfigApi$getBoolean$1(RemoteConfigApi remoteConfigApi, String str) {
        super(1);
        this.this$0 = remoteConfigApi;
        this.$key = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(Boolean it) {
        FirebaseRemoteConfig firebaseRemoteConfig;
        Intrinsics.checkNotNullParameter(it, "it");
        firebaseRemoteConfig = this.this$0.remoteConfig;
        return Boolean.valueOf(firebaseRemoteConfig.getBoolean(this.$key));
    }
}
