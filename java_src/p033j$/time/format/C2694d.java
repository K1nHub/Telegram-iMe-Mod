package p033j$.time.format;

import java.util.Comparator;
import java.util.Map;
/* renamed from: j$.time.format.d */
/* loaded from: classes2.dex */
class C2694d implements Comparator {
    public C2694d(int i) {
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        return ((String) ((Map.Entry) obj2).getKey()).length() - ((String) ((Map.Entry) obj).getKey()).length();
    }
}
