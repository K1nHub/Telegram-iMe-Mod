package com.google.android.gms.internal.firebase_ml;

import java.util.Comparator;
/* loaded from: classes.dex */
final class zztp implements Comparator<zztn> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zztn zztnVar, zztn zztnVar2) {
        int zzb;
        int zzb2;
        zztn zztnVar3 = zztnVar;
        zztn zztnVar4 = zztnVar2;
        zztw zztwVar = (zztw) zztnVar3.iterator();
        zztw zztwVar2 = (zztw) zztnVar4.iterator();
        while (zztwVar.hasNext() && zztwVar2.hasNext()) {
            zzb = zztn.zzb(zztwVar.nextByte());
            zzb2 = zztn.zzb(zztwVar2.nextByte());
            int compare = Integer.compare(zzb, zzb2);
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(zztnVar3.size(), zztnVar4.size());
    }
}
