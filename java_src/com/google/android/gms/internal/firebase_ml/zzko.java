package com.google.android.gms.internal.firebase_ml;

import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes.dex */
public final class zzko {
    private final String className;
    private final zzkn zzaax;
    private zzkn zzaay;
    private boolean zzaaz;

    private zzko(String str) {
        zzkn zzknVar = new zzkn();
        this.zzaax = zzknVar;
        this.zzaay = zzknVar;
        this.zzaaz = false;
        this.className = (String) zzkv.checkNotNull(str);
    }

    public final zzko zzh(String str, @NullableDecl Object obj) {
        return zzi(str, obj);
    }

    public final zzko zza(String str, boolean z) {
        return zzi(str, String.valueOf(z));
    }

    public final zzko zza(String str, float f) {
        return zzi(str, String.valueOf(f));
    }

    public final zzko zzb(String str, int i) {
        return zzi(str, String.valueOf(i));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.className);
        sb.append('{');
        zzkn zzknVar = this.zzaax.zzaaw;
        String str = "";
        while (zzknVar != null) {
            Object obj = zzknVar.value;
            sb.append(str);
            String str2 = zzknVar.name;
            if (str2 != null) {
                sb.append(str2);
                sb.append('=');
            }
            if (obj != null && obj.getClass().isArray()) {
                String deepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
            } else {
                sb.append(obj);
            }
            zzknVar = zzknVar.zzaaw;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }

    private final zzko zzi(String str, @NullableDecl Object obj) {
        zzkn zzknVar = new zzkn();
        this.zzaay.zzaaw = zzknVar;
        this.zzaay = zzknVar;
        zzknVar.value = obj;
        zzknVar.name = (String) zzkv.checkNotNull(str);
        return this;
    }
}
