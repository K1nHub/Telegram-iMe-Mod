package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.p021ml.common.FirebaseMLException;
import com.google.firebase.p021ml.custom.FirebaseModelDataType;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class zzps {
    public static List<Integer> zzn(Object obj) throws FirebaseMLException {
        Preconditions.checkNotNull(obj, "Input Object can not be null");
        Preconditions.checkArgument(obj.getClass().isArray(), "Input Object should be an array");
        ArrayList arrayList = new ArrayList();
        while (obj.getClass().isArray()) {
            if (Array.getLength(obj) == 0) {
                throw new FirebaseMLException("Array should not be empty", 3);
            }
            arrayList.add(Integer.valueOf(Array.getLength(obj)));
            obj = Array.get(obj, 0);
        }
        return arrayList;
    }

    public static boolean zza(Object obj, List<Integer> list, int i) throws FirebaseMLException {
        Preconditions.checkNotNull(obj, "Input Object can not be null");
        Preconditions.checkNotNull(list, "Expected array shape can not be null");
        Preconditions.checkArgument(list.size() > 0, "Expected array shape can not be empty");
        for (Integer num : list) {
            if (num.intValue() <= 0) {
                throw new IllegalArgumentException("Expected array shape can not contain non-positive integer");
            }
        }
        if (obj.getClass().isArray()) {
            zza(obj, 0, list, i);
        }
        return true;
    }

    private static void zza(Object obj, int i, List<Integer> list, int i2) throws FirebaseMLException {
        if (i == list.size()) {
            if (obj.getClass().isArray()) {
                throw new FirebaseMLException(String.format("Expected primitive data type is: %s, but the real data type is: %s", Integer.valueOf(i2), obj.getClass()), 3);
            }
        } else if (i == list.size() - 1 && i2 != FirebaseModelDataType.zzm(obj)) {
            throw new FirebaseMLException(String.format("Expected primitive data type is: %s, but the real data type is: %s", Integer.valueOf(i2), obj.getClass()), 3);
        } else {
            if (!((obj == null || !obj.getClass().isArray() || Array.getLength(obj) == 0) ? false : true) || Array.getLength(obj) != list.get(i).intValue()) {
                String valueOf = String.valueOf(list);
                StringBuilder sb = new StringBuilder(valueOf.length() + 55);
                sb.append("Input array shape does not match expected array shape: ");
                sb.append(valueOf);
                throw new FirebaseMLException(sb.toString(), 3);
            }
            for (int i3 = 0; i3 < Array.getLength(obj); i3++) {
                zza(Array.get(obj, i3), i + 1, list, i2);
            }
        }
    }
}
