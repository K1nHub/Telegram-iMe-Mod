package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
final class zzkq extends zzku {
    private static final Class<?> zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzkq() {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzkq(zzkp zzkpVar) {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzku
    public final void zza(Object obj, long j) {
        Object unmodifiableList;
        List list = (List) zzms.zzf(obj, j);
        if (list instanceof zzko) {
            unmodifiableList = ((zzko) list).zze();
        } else if (zza.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if (!(list instanceof zzln) || !(list instanceof zzkg)) {
                unmodifiableList = Collections.unmodifiableList(list);
            } else {
                zzkg zzkgVar = (zzkg) list;
                if (zzkgVar.zzc()) {
                    zzkgVar.zzb();
                    return;
                }
                return;
            }
        }
        zzms.zzs(obj, j, unmodifiableList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzku
    public final <E> void zzb(Object obj, Object obj2, long j) {
        ArrayList arrayList;
        List list = (List) zzms.zzf(obj2, j);
        int size = list.size();
        List list2 = (List) zzms.zzf(obj, j);
        if (list2.isEmpty()) {
            if (list2 instanceof zzko) {
                list2 = new zzkn(size);
            } else if (!(list2 instanceof zzln) || !(list2 instanceof zzkg)) {
                list2 = new ArrayList(size);
            } else {
                list2 = ((zzkg) list2).zzd(size);
            }
            zzms.zzs(obj, j, list2);
        } else {
            if (zza.isAssignableFrom(list2.getClass())) {
                ArrayList arrayList2 = new ArrayList(list2.size() + size);
                arrayList2.addAll(list2);
                zzms.zzs(obj, j, arrayList2);
                arrayList = arrayList2;
            } else if (list2 instanceof zzmn) {
                zzkn zzknVar = new zzkn(list2.size() + size);
                zzknVar.addAll(zzknVar.size(), (zzmn) list2);
                zzms.zzs(obj, j, zzknVar);
                arrayList = zzknVar;
            } else if ((list2 instanceof zzln) && (list2 instanceof zzkg)) {
                zzkg zzkgVar = (zzkg) list2;
                if (!zzkgVar.zzc()) {
                    list2 = zzkgVar.zzd(list2.size() + size);
                    zzms.zzs(obj, j, list2);
                }
            }
            list2 = arrayList;
        }
        int size2 = list2.size();
        int size3 = list.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(list);
        }
        if (size2 > 0) {
            list = list2;
        }
        zzms.zzs(obj, j, list);
    }
}
