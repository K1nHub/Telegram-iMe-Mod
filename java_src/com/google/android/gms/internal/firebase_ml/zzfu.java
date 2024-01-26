package com.google.android.gms.internal.firebase_ml;

import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class zzfu {
    static final Map<Character, zzfx> zzvb = new HashMap();

    private static Map<String, Object> zzb(Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, Object> entry : zzhj.zzf(obj).entrySet()) {
            Object value = entry.getValue();
            if (value != null && !zzhj.isNull(value)) {
                linkedHashMap.put(entry.getKey(), value);
            }
        }
        return linkedHashMap;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01f8 A[EDGE_INSN: B:89:0x01f8->B:87:0x01f8 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String zza(java.lang.String r12, java.lang.String r13, java.lang.Object r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 516
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_ml.zzfu.zza(java.lang.String, java.lang.String, java.lang.Object, boolean):java.lang.String");
    }

    private static String zza(String str, Iterator<?> it, boolean z, zzfx zzfxVar) {
        String str2;
        if (it.hasNext()) {
            StringBuilder sb = new StringBuilder();
            if (z) {
                str2 = zzfxVar.zzfk();
            } else {
                if (zzfxVar.zzfl()) {
                    sb.append(zzii.zzaq(str));
                    sb.append("=");
                }
                str2 = ",";
            }
            while (it.hasNext()) {
                if (z && zzfxVar.zzfl()) {
                    sb.append(zzii.zzaq(str));
                    sb.append("=");
                }
                sb.append(zzfxVar.zzah(it.next().toString()));
                if (it.hasNext()) {
                    sb.append(str2);
                }
            }
            return sb.toString();
        }
        return "";
    }

    static {
        zzfx.values();
    }
}
