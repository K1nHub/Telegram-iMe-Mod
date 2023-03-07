package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.firebase.p021ml.common.FirebaseMLException;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class zzpp {
    private final int type;
    private final int[] zzaxo;

    public zzpp(int i, int[] iArr) {
        Preconditions.checkNotNull(iArr, "Data dimensions should not be null.");
        Preconditions.checkArgument(iArr.length > 0, "Data dimensions can not be empty");
        for (int i2 : iArr) {
            Preconditions.checkArgument(i2 > 0, "Each dimension must be a positive integer");
        }
        this.type = i;
        this.zzaxo = Arrays.copyOf(iArr, iArr.length);
    }

    public final int getType() {
        return this.type;
    }

    public final int[] zzmy() {
        return this.zzaxo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzmz() throws FirebaseMLException {
        int i = this.type;
        int i2 = 4;
        if (i != 1 && i != 2) {
            if (i == 3) {
                i2 = 1;
            } else if (i != 4) {
                StringBuilder sb = new StringBuilder(36);
                sb.append("Not supported data type: ");
                sb.append(i);
                throw new FirebaseMLException(sb.toString(), 3);
            } else {
                i2 = 8;
            }
        }
        int i3 = 0;
        while (true) {
            int[] iArr = this.zzaxo;
            if (i3 >= iArr.length) {
                return i2;
            }
            i2 *= iArr[i3];
            i3++;
        }
    }

    public final zzlu.zzp.zzb zzna() {
        zzlu.zzp.zzb.EnumC6606zzb enumC6606zzb;
        ArrayList arrayList = new ArrayList();
        for (int i : this.zzaxo) {
            arrayList.add(Integer.valueOf(i));
        }
        zzlu.zzp.zzb.zza zzje = zzlu.zzp.zzb.zzje();
        int i2 = this.type;
        if (i2 == 1) {
            enumC6606zzb = zzlu.zzp.zzb.EnumC6606zzb.TYPE_FLOAT32;
        } else if (i2 == 2) {
            enumC6606zzb = zzlu.zzp.zzb.EnumC6606zzb.TYPE_INT32;
        } else if (i2 == 3) {
            enumC6606zzb = zzlu.zzp.zzb.EnumC6606zzb.TYPE_BYTE;
        } else if (i2 == 4) {
            enumC6606zzb = zzlu.zzp.zzb.EnumC6606zzb.TYPE_LONG;
        } else {
            enumC6606zzb = zzlu.zzp.zzb.EnumC6606zzb.UNKNOWN_DATA_TYPE;
        }
        return (zzlu.zzp.zzb) ((zzuu) zzje.zza(enumC6606zzb).zzi(arrayList).zzrq());
    }
}
