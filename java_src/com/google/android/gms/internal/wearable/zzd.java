package com.google.android.gms.internal.wearable;

import android.os.Build;
import org.telegram.tgnet.ConnectionsManager;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes4.dex */
public final class zzd {
    public static final int zza;

    static {
        zza = Build.VERSION.SDK_INT >= 31 ? ConnectionsManager.FileTypeVideo : 0;
    }
}
