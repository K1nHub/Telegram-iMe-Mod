package p033j$.time.chrono;

import java.util.Locale;
import java.util.Objects;
import p033j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.time.chrono.a */
/* loaded from: classes2.dex */
public abstract class AbstractC2731a implements InterfaceC2732b {
    static {
        new ConcurrentHashMap();
        new ConcurrentHashMap();
        new Locale("ja", "JP", "JP");
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        Objects.requireNonNull((InterfaceC2732b) obj);
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AbstractC2731a) {
            Objects.requireNonNull((AbstractC2731a) obj);
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
