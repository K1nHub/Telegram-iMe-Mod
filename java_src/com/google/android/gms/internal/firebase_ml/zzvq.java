package com.google.android.gms.internal.firebase_ml;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
final class zzvq extends zzvo {
    private static final Class<?> zzbuo = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzvq() {
        super();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zzvo
    public final void zzb(Object obj, long j) {
        Object unmodifiableList;
        List list = (List) zzxs.zzp(obj, j);
        if (list instanceof zzvp) {
            unmodifiableList = ((zzvp) list).zzsd();
        } else if (zzbuo.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof zzwq) && (list instanceof zzvf)) {
                zzvf zzvfVar = (zzvf) list;
                if (zzvfVar.zzpz()) {
                    zzvfVar.zzqa();
                    return;
                }
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        }
        zzxs.zza(obj, j, unmodifiableList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zzvo
    public final <E> void zza(Object obj, Object obj2, long j) {
        ArrayList arrayList;
        List zzc = zzc(obj2, j);
        int size = zzc.size();
        List zzc2 = zzc(obj, j);
        if (zzc2.isEmpty()) {
            if (zzc2 instanceof zzvp) {
                zzc2 = new zzvm(size);
            } else if ((zzc2 instanceof zzwq) && (zzc2 instanceof zzvf)) {
                zzc2 = ((zzvf) zzc2).zzcl(size);
            } else {
                zzc2 = new ArrayList(size);
            }
            zzxs.zza(obj, j, zzc2);
        } else {
            if (zzbuo.isAssignableFrom(zzc2.getClass())) {
                ArrayList arrayList2 = new ArrayList(zzc2.size() + size);
                arrayList2.addAll(zzc2);
                zzxs.zza(obj, j, arrayList2);
                arrayList = arrayList2;
            } else if (zzc2 instanceof zzxr) {
                List zzvmVar = new zzvm(zzc2.size() + size);
                zzvmVar.addAll((zzxr) zzc2);
                zzxs.zza(obj, j, zzvmVar);
                arrayList = zzvmVar;
            } else if ((zzc2 instanceof zzwq) && (zzc2 instanceof zzvf)) {
                zzvf zzvfVar = (zzvf) zzc2;
                if (!zzvfVar.zzpz()) {
                    zzc2 = zzvfVar.zzcl(zzc2.size() + size);
                    zzxs.zza(obj, j, zzc2);
                }
            }
            zzc2 = arrayList;
        }
        int size2 = zzc2.size();
        int size3 = zzc.size();
        if (size2 > 0 && size3 > 0) {
            zzc2.addAll(zzc);
        }
        if (size2 > 0) {
            zzc = zzc2;
        }
        zzxs.zza(obj, j, zzc);
    }

    private static <E> List<E> zzc(Object obj, long j) {
        return (List) zzxs.zzp(obj, j);
    }
}
