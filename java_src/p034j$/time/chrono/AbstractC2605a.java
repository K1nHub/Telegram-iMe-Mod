package p034j$.time.chrono;

import java.util.Locale;
import java.util.Objects;
import p034j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.time.chrono.a */
/* loaded from: classes2.dex */
public abstract class AbstractC2605a implements InterfaceC2606b {
    static {
        new ConcurrentHashMap();
        new ConcurrentHashMap();
        new Locale("ja", "JP", "JP");
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        Objects.requireNonNull((InterfaceC2606b) obj);
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AbstractC2605a) {
            Objects.requireNonNull((AbstractC2605a) obj);
            return true;
        }
        return false;
    }

    public int hashCode() {
        return getClass().hashCode() ^ 72805;
    }

    public String toString() {
        return "ISO";
    }
}
