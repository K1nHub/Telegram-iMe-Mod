package com.google.mlkit.common.sdkinternal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.inject.Provider;
import java.util.concurrent.Executor;
/* compiled from: com.google.mlkit:common@@18.10.0 */
@KeepForSdk
/* loaded from: classes3.dex */
public class ExecutorSelector {
    private final Provider zza;

    public ExecutorSelector(Provider provider) {
        this.zza = provider;
    }

    @KeepForSdk
    public Executor getExecutorToUse(Executor executor) {
        return executor != null ? executor : (Executor) this.zza.get();
    }
}
