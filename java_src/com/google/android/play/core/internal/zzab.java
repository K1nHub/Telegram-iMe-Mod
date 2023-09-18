package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public abstract class zzab extends zzl implements zzac {
    public static zzac zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.inappreview.protocol.IInAppReviewService");
        if (queryLocalInterface instanceof zzac) {
            return (zzac) queryLocalInterface;
        }
        return new zzaa(iBinder);
    }
}
