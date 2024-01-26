package p033j$.time.format;

import java.util.Objects;
import p033j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.time.format.x */
/* loaded from: classes2.dex */
public final class C2713x {

    /* renamed from: a */
    public static final C2713x f579a = new C2713x('0', '+', '-', '.');

    static {
        new ConcurrentHashMap(16, 0.75f, 2);
    }

    private C2713x(char c, char c2, char c3, char c4) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public String m834a(String str) {
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public int m833b(char c) {
        int i = c - '0';
        if (i < 0 || i > 9) {
            return -1;
        }
        return i;
    }

    /* renamed from: c */
    public char m832c() {
        return '.';
    }

    /* renamed from: d */
    public char m831d() {
        return '-';
    }

    /* renamed from: e */
    public char m830e() {
        return '+';
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2713x) {
            Objects.requireNonNull((C2713x) obj);
            return true;
        }
        return false;
    }

    /* renamed from: f */
    public char m829f() {
        return '0';
    }

    public int hashCode() {
        return 182;
    }

    public String toString() {
        return "DecimalStyle[0+-.]";
    }
}
