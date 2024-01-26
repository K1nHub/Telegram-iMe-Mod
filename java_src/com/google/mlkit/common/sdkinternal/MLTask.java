package com.google.mlkit.common.sdkinternal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.sdkinternal.MLTaskInput;
/* compiled from: com.google.mlkit:common@@18.10.0 */
@KeepForSdk
/* loaded from: classes3.dex */
public abstract class MLTask<T, S extends MLTaskInput> extends ModelResource {
    @KeepForSdk
    public abstract T run(S s) throws MlKitException;
}
