package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public abstract class zzo extends zzl implements zzp {
    public static zzp zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.appupdate.protocol.IAppUpdateService");
        if (queryLocalInterface instanceof zzp) {
            return (zzp) queryLocalInterface;
        }
        return new zzn(iBinder);
    }
}
