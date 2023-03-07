package com.google.android.play.core.assetpacks;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zzx implements com.google.android.play.core.internal.zzcs<Executor> {
    @Override // com.google.android.play.core.internal.zzcs
    public final /* bridge */ /* synthetic */ Executor zza() {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(zzo.zza);
        com.google.android.play.core.internal.zzcr.zza(newSingleThreadExecutor);
        return newSingleThreadExecutor;
    }
}
