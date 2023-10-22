package p033j$.time.format;

import java.text.ParsePosition;
import java.util.Iterator;
import java.util.Set;
/* renamed from: j$.time.format.n */
/* loaded from: classes2.dex */
class C2704n {

    /* renamed from: a */
    protected String f547a;

    /* renamed from: b */
    protected String f548b;

    /* renamed from: c */
    protected char f549c;

    /* renamed from: d */
    protected C2704n f550d;

    /* renamed from: e */
    protected C2704n f551e;

    private C2704n(String str, String str2, C2704n c2704n) {
        this.f547a = str;
        this.f548b = str2;
        this.f550d = c2704n;
        this.f549c = str.length() == 0 ? (char) 65535 : this.f547a.charAt(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2704n(String str, String str2, C2704n c2704n, C2693c c2693c) {
        this(str, str2, c2704n);
    }

    /* renamed from: a */
    private boolean m889a(String str, String str2) {
        int i = 0;
        while (i < str.length() && i < this.f547a.length() && mo888b(str.charAt(i), this.f547a.charAt(i))) {
            i++;
        }
        if (i != this.f547a.length()) {
            C2704n mo886d = mo886d(this.f547a.substring(i), this.f548b, this.f550d);
            this.f547a = str.substring(0, i);
            this.f550d = mo886d;
            if (i < str.length()) {
                this.f550d.f551e = mo886d(str.substring(i), str2, null);
                this.f548b = null;
            } else {
                this.f548b = str2;
            }
            return true;
        } else if (i >= str.length()) {
            this.f548b = str2;
            return true;
        } else {
            String substring = str.substring(i);
            for (C2704n c2704n = this.f550d; c2704n != null; c2704n = c2704n.f551e) {
                if (mo888b(c2704n.f549c, substring.charAt(0))) {
                    return c2704n.m889a(substring, str2);
                }
            }
            C2704n mo886d2 = mo886d(substring, str2, null);
            mo886d2.f551e = this.f550d;
            this.f550d = mo886d2;
            return true;
        }
    }

    /* renamed from: e */
    public static C2704n m885e(Set set, C2710t c2710t) {
        C2704n c2704n = c2710t.m849j() ? new C2704n("", null, null) : new C2703m("", null, null, null);
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            c2704n.m889a(str, str);
        }
        return c2704n;
    }

    /* renamed from: b */
    protected boolean mo888b(char c, char c2) {
        return c == c2;
    }

    /* renamed from: c */
    public String m887c(CharSequence charSequence, ParsePosition parsePosition) {
        int index = parsePosition.getIndex();
        int length = charSequence.length();
        if (mo884f(charSequence, index, length)) {
            int length2 = this.f547a.length() + index;
            C2704n c2704n = this.f550d;
            if (c2704n != null && length2 != length) {
                while (true) {
                    if (!mo888b(c2704n.f549c, charSequence.charAt(length2))) {
                        c2704n = c2704n.f551e;
                        if (c2704n == null) {
                            break;
                        }
                    } else {
                        parsePosition.setIndex(length2);
                        String m887c = c2704n.m887c(charSequence, parsePosition);
                        if (m887c != null) {
                            return m887c;
                        }
                    }
                }
            }
            parsePosition.setIndex(length2);
            return this.f548b;
        }
        return null;
    }

    /* renamed from: d */
    protected C2704n mo886d(String str, String str2, C2704n c2704n) {
        return new C2704n(str, str2, c2704n);
    }

    /* renamed from: f */
    protected boolean mo884f(CharSequence charSequence, int i, int i2) {
        if (charSequence instanceof String) {
            return ((String) charSequence).startsWith(this.f547a, i);
        }
        int length = this.f547a.length();
        if (length > i2 - i) {
            return false;
        }
        int i3 = 0;
        while (true) {
            int i4 = length - 1;
            if (length <= 0) {
                return true;
            }
            int i5 = i3 + 1;
            int i6 = i + 1;
            if (!mo888b(this.f547a.charAt(i3), charSequence.charAt(i))) {
                return false;
            }
            i = i6;
            length = i4;
            i3 = i5;
        }
    }
}
