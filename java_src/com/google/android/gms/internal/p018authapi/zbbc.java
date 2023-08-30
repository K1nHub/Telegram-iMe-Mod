package com.google.android.gms.internal.p018authapi;

import android.os.Build;
import org.telegram.tgnet.ConnectionsManager;
/* compiled from: com.google.android.gms:play-services-auth@@20.4.0 */
/* renamed from: com.google.android.gms.internal.auth-api.zbbc */
/* loaded from: classes.dex */
public final class zbbc {
    public static final int zba;

    static {
        zba = Build.VERSION.SDK_INT >= 31 ? ConnectionsManager.FileTypeVideo : 0;
    }
}
