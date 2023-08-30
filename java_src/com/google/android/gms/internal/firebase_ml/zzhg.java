package com.google.android.gms.internal.firebase_ml;

import java.util.Comparator;
/* loaded from: classes.dex */
final class zzhg implements Comparator<String> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhg(zzhh zzhhVar) {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(String str, String str2) {
        String str3 = str;
        String str4 = str2;
        if (zzkq.equal(str3, str4)) {
            return 0;
        }
        if (str3 == null) {
            return -1;
        }
        if (str4 == null) {
            return 1;
        }
        return str3.compareTo(str4);
    }
}
