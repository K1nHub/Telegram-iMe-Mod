package com.google.mlkit.common;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
/* compiled from: com.google.mlkit:common@@18.10.0 */
/* loaded from: classes3.dex */
public class MlKitException extends Exception {
    @KeepForSdk
    public MlKitException(String str, int i) {
        super(Preconditions.checkNotEmpty(str, "Provided message must not be empty."));
    }

    @KeepForSdk
    public MlKitException(String str, int i, Throwable th) {
        super(Preconditions.checkNotEmpty(str, "Provided message must not be empty."), th);
    }
}
