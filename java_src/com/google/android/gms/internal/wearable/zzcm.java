package com.google.android.gms.internal.wearable;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
final class zzcm extends zzcq {
    private static final Class zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzcm() {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcm(zzcl zzclVar) {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.wearable.zzcq
    public final void zza(Object obj, long j) {
        Object unmodifiableList;
        List list = (List) zzeo.zzf(obj, j);
        if (list instanceof zzck) {
            unmodifiableList = ((zzck) list).zze();
        } else if (zza.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if (!(list instanceof zzdj) || !(list instanceof zzcc)) {
                unmodifiableList = Collections.unmodifiableList(list);
            } else {
                zzcc zzccVar = (zzcc) list;
                if (zzccVar.zzc()) {
                    zzccVar.zzb();
                    return;
                }
                return;
            }
        }
        zzeo.zzs(obj, j, unmodifiableList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.wearable.zzcq
    public final void zzb(Object obj, Object obj2, long j) {
        zzcj zzcjVar;
        List list = (List) zzeo.zzf(obj2, j);
        int size = list.size();
        List list2 = (List) zzeo.zzf(obj, j);
        if (list2.isEmpty()) {
            if (list2 instanceof zzck) {
                list2 = new zzcj(size);
            } else if (!(list2 instanceof zzdj) || !(list2 instanceof zzcc)) {
                list2 = new ArrayList(size);
            } else {
                list2 = ((zzcc) list2).zzd(size);
            }
            zzeo.zzs(obj, j, list2);
        } else {
            if (zza.isAssignableFrom(list2.getClass())) {
                ArrayList arrayList = new ArrayList(list2.size() + size);
                arrayList.addAll(list2);
                zzeo.zzs(obj, j, arrayList);
                zzcjVar = arrayList;
            } else if (list2 instanceof zzej) {
                zzcj zzcjVar2 = new zzcj(list2.size() + size);
                zzcjVar2.addAll(zzcjVar2.size(), (zzej) list2);
                zzeo.zzs(obj, j, zzcjVar2);
                zzcjVar = zzcjVar2;
            } else if ((list2 instanceof zzdj) && (list2 instanceof zzcc)) {
                zzcc zzccVar = (zzcc) list2;
                if (!zzccVar.zzc()) {
                    list2 = zzccVar.zzd(list2.size() + size);
                    zzeo.zzs(obj, j, list2);
                }
            }
            list2 = zzcjVar;
        }
        int size2 = list2.size();
        int size3 = list.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(list);
        }
        if (size2 > 0) {
            list = list2;
        }
        zzeo.zzs(obj, j, list);
    }
}
