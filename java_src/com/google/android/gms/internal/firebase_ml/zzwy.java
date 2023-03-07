package com.google.android.gms.internal.firebase_ml;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzwy extends zzwz<FieldDescriptorType, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzwy(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwz
    public final void zzqa() {
        if (!isImmutable()) {
            for (int i = 0; i < zzte(); i++) {
                Map.Entry<FieldDescriptorType, Object> zzdq = zzdq(i);
                if (((zzuo) zzdq.getKey()).zzra()) {
                    zzdq.setValue(Collections.unmodifiableList((List) zzdq.getValue()));
                }
            }
            Iterator it = zztf().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((zzuo) entry.getKey()).zzra()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zzqa();
    }
}
