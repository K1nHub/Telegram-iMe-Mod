package com.google.mlkit.common.sdkinternal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.inject.Provider;
import java.util.concurrent.Executor;
/* compiled from: com.google.mlkit:common@@17.0.0 */
@KeepForSdk
/* loaded from: classes4.dex */
public class ExecutorSelector {
    private final Provider<? extends Executor> zza;

    public ExecutorSelector(Provider<? extends Executor> provider) {
        this.zza = provider;
    }

    @KeepForSdk
    public Executor getExecutorToUse(Executor executor) {
        return executor != null ? executor : this.zza.get();
    }
}
